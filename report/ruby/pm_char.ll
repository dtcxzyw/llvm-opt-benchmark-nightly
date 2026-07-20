inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pm_byte_table = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\03\01\03\03\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", [133 x i8] zeroinitializer }>, align 16
@pm_number_table = internal unnamed_addr constant <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FC\FC\FC\FC\FC\FC\F0\F0\00\00\00\00\00\00\00\C0\C0\C0\C0\C0\C0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AA\00\C0\C0\C0\C0\C0\C0", [153 x i8] zeroinitializer }>, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_whitespace(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_char_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0911.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_byte_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %2 = and i8 %i.f, 1
  %.not.i = icmp eq i8 %2, 0
  br i1 %.not.i, label %pm_strspn_char_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.g = add nuw nsw i64 %.0911.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, %1
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit:                         ; preds = %.preheader.i, %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.0911.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @pm_strspn_whitespace_newlines(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.01315 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.01315    ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_byte_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %3 = and i8 %i.f, 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = icmp eq i8 %i.c, 10
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @pm_newline_list_append(ptr noundef %2, ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw i64 %.01315, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !14

.critedge:                                        ; preds = %.preheader, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %1, %bb.d ], [ %.01315, %.preheader ]
  ret i64 %.0
}

declare zeroext i1 @pm_newline_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_inline_whitespace(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_char_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_byte_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %pm_strspn_char_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = add nuw nsw i64 %.0911.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit:                         ; preds = %.preheader.i, %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.0911.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_regexp_option(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_char_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_byte_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 4
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %pm_strspn_char_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = add nuw nsw i64 %.0911.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %pm_strspn_char_kind.exit, label %.preheader.i, !llvm.loop !12

pm_strspn_char_kind.exit:                         ; preds = %.preheader.i, %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.0911.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @pm_byte_table, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = trunc i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @pm_byte_table, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = and i8 %i.c, 2
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_binary_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ]
  %.02229.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02229.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.h
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02229.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02228.i = phi i64 [ %.02229.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.02228.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !15
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.021.i = phi i64 [ 0, %bb.a ], [ %.02228.i, %bb.e ], [ %.02228.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.021.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_octal_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ]
  %.02229.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02229.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.h
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02229.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02228.i = phi i64 [ %.02229.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.02228.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !15
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.021.i = phi i64 [ 0, %bb.a ], [ %.02228.i, %bb.e ], [ %.02228.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.021.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_decimal_digit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0911.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = add i8 %i.c, -58
  %.not.i = icmp ult i8 %i.d, -10
  br i1 %.not.i, label %pm_strspn_number_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.e = add nuw nsw i64 %.0911.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %1
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit, label %.preheader.i, !llvm.loop !19

pm_strspn_number_kind.exit:                       ; preds = %.preheader.i, %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.0911.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_decimal_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ]
  %.02229.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02229.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 32
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.h
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02229.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02228.i = phi i64 [ %.02229.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.02228.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !15
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.021.i = phi i64 [ 0, %bb.a ], [ %.02228.i, %bb.e ], [ %.02228.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.021.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_hexadecimal_digit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.0911.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.0911.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = and i8 %i.f, 64
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %pm_strspn_number_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = add nuw nsw i64 %.0911.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit, label %.preheader.i, !llvm.loop !19

pm_strspn_number_kind.exit:                       ; preds = %.preheader.i, %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.0911.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_hexadecimal_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.g, %bb.d ], [ false, %bb.a ]
  %.02229.i = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02229.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %.not.i = icmp sgt i8 %i.f, -1
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.g
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !18

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02229.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02228.i = phi i64 [ %.02229.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 %.02228.i
  %i.j = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = icmp eq i8 %i.k, 95
  br i1 %i.l, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.j, ptr %2, align 8, !tbaa !15
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.021.i = phi i64 [ 0, %bb.a ], [ %.02228.i, %bb.e ], [ %.02228.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.021.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_binary_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @pm_number_table, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = trunc i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @pm_char_is_octal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i8 %0, -8
  %i.b = icmp eq i8 %i.a, 48
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_hexadecimal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @pm_number_table, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = and i8 %i.c, 64
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
end_hunk_0
