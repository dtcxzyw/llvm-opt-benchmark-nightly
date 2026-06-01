begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ENDMARKER\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NEWLINE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"INDENT\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DEDENT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LPAR\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"RPAR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LSQB\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"RSQB\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"COLON\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"COMMA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"SEMI\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PLUS\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"MINUS\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"STAR\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"SLASH\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"VBAR\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"AMPER\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LESS\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"GREATER\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"EQUAL\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"PERCENT\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"LBRACE\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"RBRACE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"EQEQUAL\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"NOTEQUAL\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"LESSEQUAL\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"GREATEREQUAL\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"TILDE\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"CIRCUMFLEX\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"LEFTSHIFT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"RIGHTSHIFT\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"DOUBLESTAR\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"PLUSEQUAL\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"MINEQUAL\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"STAREQUAL\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"SLASHEQUAL\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"PERCENTEQUAL\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"AMPEREQUAL\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"VBAREQUAL\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"CIRCUMFLEXEQUAL\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"LEFTSHIFTEQUAL\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"RIGHTSHIFTEQUAL\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"DOUBLESTAREQUAL\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"DOUBLESLASH\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"DOUBLESLASHEQUAL\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"ATEQUAL\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"RARROW\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"COLONEQUAL\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"EXCLAMATION\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"OP\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"TYPE_IGNORE\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"TYPE_COMMENT\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"SOFT_KEYWORD\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"FSTRING_START\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"FSTRING_MIDDLE\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"FSTRING_END\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"TSTRING_START\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"TSTRING_MIDDLE\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"TSTRING_END\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"NL\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"<ERRORTOKEN>\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"<ENCODING>\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"<N_TOKENS>\00", align 1
@_PyParser_TokenNames = dso_local local_unnamed_addr constant [70 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 16
@switch.table._PyToken_TwoChars = private unnamed_addr constant [3 x i32] [i32 33, i32 29, i32 28], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 7, 56) i32 @_PyToken_OneChar(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %bb.b [
    i32 33, label %bb.c
    i32 37, label %2
    i32 38, label %3
    i32 40, label %4
    i32 41, label %5
    i32 42, label %6
    i32 43, label %7
    i32 44, label %8
    i32 45, label %9
    i32 46, label %10
    i32 47, label %11
    i32 58, label %12
    i32 59, label %13
    i32 60, label %14
    i32 61, label %15
    i32 62, label %16
    i32 64, label %17
    i32 91, label %18
    i32 93, label %19
    i32 94, label %20
    i32 123, label %21
    i32 124, label %22
    i32 125, label %23
    i32 126, label %bb.a
  ]

2:                                                ; preds = %1
  br label %bb.c

3:                                                ; preds = %1
  br label %bb.c

4:                                                ; preds = %1
  br label %bb.c

5:                                                ; preds = %1
  br label %bb.c

6:                                                ; preds = %1
  br label %bb.c

7:                                                ; preds = %1
  br label %bb.c

8:                                                ; preds = %1
  br label %bb.c

9:                                                ; preds = %1
  br label %bb.c

10:                                               ; preds = %1
  br label %bb.c

11:                                               ; preds = %1
  br label %bb.c

12:                                               ; preds = %1
  br label %bb.c

13:                                               ; preds = %1
  br label %bb.c

14:                                               ; preds = %1
  br label %bb.c

15:                                               ; preds = %1
  br label %bb.c

16:                                               ; preds = %1
  br label %bb.c

17:                                               ; preds = %1
  br label %bb.c

18:                                               ; preds = %1
  br label %bb.c

19:                                               ; preds = %1
  br label %bb.c

20:                                               ; preds = %1
  br label %bb.c

21:                                               ; preds = %1
  br label %bb.c

22:                                               ; preds = %1
  br label %bb.c

23:                                               ; preds = %1
  br label %bb.c

bb.a:                                             ; preds = %1
  br label %bb.c

bb.b:                                             ; preds = %1
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.b, %bb.a, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %.0 = phi i32 [ 55, %bb.b ], [ 31, %bb.a ], [ 24, %2 ], [ 19, %3 ], [ 7, %4 ], [ 8, %5 ], [ 16, %6 ], [ 14, %7 ], [ 12, %8 ], [ 15, %9 ], [ 23, %10 ], [ 17, %11 ], [ 11, %12 ], [ 13, %13 ], [ 20, %14 ], [ 22, %15 ], [ 21, %16 ], [ 49, %17 ], [ 9, %18 ], [ 10, %19 ], [ 32, %20 ], [ 25, %21 ], [ 18, %22 ], [ 26, %23 ], [ 54, %1 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 27, 56) i32 @_PyToken_TwoChars(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.p [
    i32 33, label %bb.b
    i32 37, label %bb.c
    i32 38, label %bb.d
    i32 42, label %bb.e
    i32 43, label %bb.f
    i32 45, label %bb.g
    i32 47, label %bb.h
    i32 58, label %bb.i
    i32 60, label %bb.j
    i32 61, label %bb.k
    i32 62, label %bb.l
    i32 64, label %bb.m
    i32 94, label %bb.n
    i32 124, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %cond8 = icmp eq i32 %1, 61
  br i1 %cond8, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.a
  %cond7 = icmp eq i32 %1, 61
  br i1 %cond7, label %bb.q, label %bb.p

bb.d:                                             ; preds = %bb.a
  %cond6 = icmp eq i32 %1, 61
  br i1 %cond6, label %bb.q, label %bb.p

bb.e:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %1, 61
  %switch.select = select i1 %switch.selectcmp, i32 38, i32 55
  %switch.selectcmp24 = icmp eq i32 %1, 42
  %switch.select25 = select i1 %switch.selectcmp24, i32 35, i32 %switch.select
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %cond5 = icmp eq i32 %1, 61
  br i1 %cond5, label %bb.q, label %bb.p

bb.g:                                             ; preds = %bb.a
  %switch.selectcmp26 = icmp eq i32 %1, 62
  %switch.select27 = select i1 %switch.selectcmp26, i32 51, i32 55
  %switch.selectcmp28 = icmp eq i32 %1, 61
  %switch.select29 = select i1 %switch.selectcmp28, i32 37, i32 %switch.select27
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %switch.selectcmp30 = icmp eq i32 %1, 61
  %switch.select31 = select i1 %switch.selectcmp30, i32 39, i32 55
  %switch.selectcmp32 = icmp eq i32 %1, 47
  %switch.select33 = select i1 %switch.selectcmp32, i32 47, i32 %switch.select31
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %cond4 = icmp eq i32 %1, 61
  br i1 %cond4, label %bb.q, label %bb.p

bb.j:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -60              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.p

bb.k:                                             ; preds = %bb.a
  %cond3 = icmp eq i32 %1, 61
  br i1 %cond3, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.a
  %switch.selectcmp34 = icmp eq i32 %1, 62
  %switch.select35 = select i1 %switch.selectcmp34, i32 34, i32 55
  %switch.selectcmp36 = icmp eq i32 %1, 61
  %switch.select37 = select i1 %switch.selectcmp36, i32 30, i32 %switch.select35
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %cond2 = icmp eq i32 %1, 61
  br i1 %cond2, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.a
  %cond1 = icmp eq i32 %1, 61
  br i1 %cond1, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.a
  %cond = icmp eq i32 %1, 61
  br i1 %cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.q

switch.lookup:                                    ; preds = %bb.j
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._PyToken_TwoChars, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.q

bb.q:                                             ; preds = %switch.lookup, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.p
  %.0 = phi i32 [ 55, %bb.p ], [ 43, %bb.n ], [ 28, %bb.b ], [ 40, %bb.c ], [ %switch.select25, %bb.e ], [ 41, %bb.d ], [ 50, %bb.m ], [ %switch.select29, %bb.g ], [ 36, %bb.f ], [ %switch.select33, %bb.h ], [ %switch.select37, %bb.l ], [ 27, %bb.k ], [ 53, %bb.i ], [ 42, %bb.o ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 44, 56) i32 @_PyToken_ThreeChars(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.g [
    i32 42, label %bb.b
    i32 46, label %bb.c
    i32 47, label %bb.d
    i32 60, label %bb.e
    i32 62, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %cond8 = icmp eq i32 %1, 42
  %cond9 = icmp eq i32 %2, 61
  %or.cond = and i1 %cond8, %cond9
  br i1 %or.cond, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  %cond6 = icmp eq i32 %1, 46
  %cond7 = icmp eq i32 %2, 46
  %or.cond10 = and i1 %cond6, %cond7
  br i1 %or.cond10, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %cond4 = icmp eq i32 %1, 47
  %cond5 = icmp eq i32 %2, 61
  %or.cond11 = and i1 %cond4, %cond5
  br i1 %or.cond11, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  %cond2 = icmp eq i32 %1, 60
  %cond3 = icmp eq i32 %2, 61
  %or.cond12 = and i1 %cond2, %cond3
  br i1 %or.cond12, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.a
  %cond = icmp eq i32 %1, 62
  %cond1 = icmp eq i32 %2, 61
  %or.cond13 = and i1 %cond, %cond1
  br i1 %or.cond13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.0 = phi i32 [ 55, %bb.g ], [ 44, %bb.e ], [ 46, %bb.b ], [ 52, %bb.c ], [ 48, %bb.d ], [ 45, %bb.f ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
end_hunk_0
