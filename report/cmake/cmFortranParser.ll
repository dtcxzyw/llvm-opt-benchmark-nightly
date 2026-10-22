Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFortranParser?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmFortran_yystype = type { ptr }

@_ZL6yypact = internal unnamed_addr constant [123 x i16] [i16 -39, i16 21, i16 -39, i16 5, i16 -39, i16 -23, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -25, i16 -19, i16 20, i16 -8, i16 -15, i16 -22, i16 -39, i16 -6, i16 14, i16 15, i16 16, i16 17, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 59, i16 51, i16 48, i16 -39, i16 63, i16 64, i16 35, i16 36, i16 37, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 75, i16 113, i16 128, i16 166, i16 181, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 68, i16 -39, i16 -39, i16 -39, i16 -20, i16 44, i16 -39, i16 219, i16 234, i16 272, i16 287, i16 325, i16 340, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 40, i16 41, i16 42, i16 378, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 -39, i16 46, i16 79, i16 -39, i16 -39, i16 50, i16 -39, i16 393, i16 90, i16 -39, i16 -39], align 16
@_ZL11yytranslate = internal unnamed_addr constant [296 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'(", align 16
@_ZL7yycheck = internal unnamed_addr constant [434 x i8] c"&'()\1A+\1C\1B\03 \1E!% \1D56789:\00\01\03\03! \06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19!!!!\03Z!\03\22#$%&'(\03\04\05\06\03\03!!!\03\1C!!!\1Es\03\04\05\06\03!!\1A\1B\1C\1D\1E\1F !\03#$%&'(\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(\03\04\05\06\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\04\05\06\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\FF#$%&'(\1A\1B\1C\1D\1E\1F !\FF#$%&'(", align 16
@_ZL7yytable = internal unnamed_addr constant [434 x i8] c";<=>3?4g*+h5-.2[\\]^_`\02\03/\0416\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18789:Uj0S\19\1A\1B\1C\1D\1E\1F@ABCVWXYZfiqrsuwaABCvxTDEFGHIJKzLMNOPQ\00DEFGHIJK\00LMNOPQbABC\00\00\00\00\00\00\00\00\00\00\00cABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQdABC\00\00\00\00\00\00\00\00\00\00\00eABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQkABC\00\00\00\00\00\00\00\00\00\00\00lABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQmABC\00\00\00\00\00\00\00\00\00\00\00nABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQoABC\00\00\00\00\00\00\00\00\00\00\00pABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQtABC\00\00\00\00\00\00\00\00\00\00\00yABC\00\00\00\00DEFGHIJK\00LMNOPQDEFGHIJK\00LMNOPQ", align 16
@_ZL8yydefact = internal unnamed_addr constant [123 x i8] c"\02\00\01\00\1A\00\1C\1D\1E \1F\22!#%'+)-$&(,*./\00\00\00\00\00\00\03\00\00\00\00\00////\1B/\00\00\00\04\00\00\00\00\00//////\00\00\00\00\00\10:9A?;<=>@812345670\0B\00\0E\09\06\00\00/\00\00\00\00\00\00\16\17\18\19\0F\0A\00\00\00\00\05\11\12\13\14\15\00\00/\0C\00\07\00\00\0D\08", align 16
@_ZL4yyr2 = internal unnamed_addr constant [66 x i8] c"\00\02\00\02\02\04\03\06\08\03\04\03\05\07\03\04\03\04\04\04\04\04\03\03\03\03\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str = private unnamed_addr constant [14 x i8] c"non_intrinsic\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"intrinsic\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [66 x i8] c"\00)**++++++++++++++++++++++++,,,--..//00112233445566666666666666666", align 16
@_ZL7yypgoto = internal unnamed_addr constant [14 x i8] c"\D9\D9\D9\D9\D9\D9\D9\D9\D9\D9\D9\D9\DA\D9", align 1
@_ZL9yydefgoto = internal unnamed_addr constant [14 x i8] c"\00\01 !\22#$%&'(),R", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@_ZL6yystos = internal unnamed_addr constant [123 x i8] c"\00*\00\01\03\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\22#$%&'(+,-./01234\03 5% \03!!\1D\1A\1C! !!!!55555\03\04\05\06\1A\1B\1C\1D\1E\1F !#$%&'(6\03!\03\03\03!!!555555\03\03\03\03\03\03\1B\1E\1C5\03\03\03\03\03\03!!!\03\1E\035!\03\03", align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@_ZL7yytname = internal unnamed_addr constant [56 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"\22end of file\22\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\22invalid token\22\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"EOSTMT\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"ASSIGNMENT_OP\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"GARBAGE\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"CPP_LINE_DIRECTIVE\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"CPP_INCLUDE\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"F90PPR_INCLUDE\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"COCO_INCLUDE\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"F90PPR_DEFINE\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"CPP_DEFINE\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"F90PPR_UNDEF\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CPP_UNDEF\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"CPP_IFDEF\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"CPP_IFNDEF\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"CPP_IF\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"CPP_ELSE\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"CPP_ELIF\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"CPP_ENDIF\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"F90PPR_IFDEF\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"F90PPR_IFNDEF\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"F90PPR_IF\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"F90PPR_ELSE\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"F90PPR_ELIF\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"F90PPR_ENDIF\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"COMMA\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"COLON\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"DCOLON\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"LPAREN\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"RPAREN\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"UNTERMINATED_STRING\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"CPP_INCLUDE_ANGLE\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"INCLUDE\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"MODULE\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"SUBMODULE\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"USE\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"misc_code\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_Z17cmFortran_yyparsePv(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cmFortran_yystype, align 8  ; 8 uses
  %i.a = alloca [200 x i8], align 16              ; 10 uses
  %2 = alloca [200 x %struct.cmFortran_yystype], align 16 ; 3 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i64 0, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 128, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.a, align 16, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.bq, %bb.ax, %bb.o
  %.0 = phi ptr [ %.4288, %bb.bq ], [ %.1285353, %bb.ax ], [ %.1285353, %bb.o ] ; 2 uses
  %.0229 = phi ptr [ %i.fv, %bb.bq ], [ %i.ee, %bb.ax ], [ %i.ad, %bb.o ] ; 2 uses
  %.0223.idx = phi i64 [ %.2225.idx, %bb.bq ], [ %.1224.add, %bb.ax ], [ %.1224.idx355, %bb.o ] ; 2 uses
  %.0220 = phi i32 [ 3, %bb.bq ], [ %.1221356, %bb.ax ], [ %spec.select, %bb.o ]
  %.0217 = phi i32 [ %16, %bb.bq ], [ %i.ex, %bb.ax ], [ %i.aa, %bb.o ] ; 2 uses
  %.0212 = phi i32 [ %.6, %bb.bq ], [ %.5, %bb.ax ], [ -2, %bb.o ] ; 2 uses
  %.0223.add = add nsw i64 %.0223.idx, 1          ; 2 uses
  %.1224.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0223.add ; 3 uses
  %i.d = trunc nsw i32 %.0217 to i8
  store i8 %i.d, ptr %.1224.ptr, align 1, !tbaa !14
  %.not = icmp slt i64 %.0223.idx, 198
  br i1 %.not, label %bb.c, label %bb.br

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1224.ptr360 = phi ptr [ %i.a, %bb.a ], [ %.1224.ptr, %bb.b ] ; 5 uses
  %.1359 = phi i32 [ -2, %bb.a ], [ %.0212, %bb.b ] ; 4 uses
  %.1218357 = phi i32 [ 0, %bb.a ], [ %.0217, %bb.b ] ; 3 uses
  %.1221356 = phi i32 [ 0, %bb.a ], [ %.0220, %bb.b ] ; 3 uses
  %.1224.idx355 = phi i64 [ 0, %bb.a ], [ %.0223.add, %bb.b ] ; 3 uses
  %.1230354 = phi ptr [ %2, %bb.a ], [ %.0229, %bb.b ] ; 31 uses
  %.1285353 = phi ptr [ %i.b, %bb.a ], [ %.0, %bb.b ] ; 15 uses
  %i.e = icmp eq i32 %.1218357, 2
  br i1 %i.e, label %.loopexit336, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %.1218357 to i64                ; 2 uses
  %i.g = getelementptr inbounds [2 x i8], ptr @_ZL6yypact, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !16   ; 3 uses
  %i.i = sext i16 %i.h to i32
  %i.j = icmp eq i16 %i.h, -39
  br i1 %i.j, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %.1359, -2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef i32 @_Z15cmFortran_yylexP17cmFortran_yystypePv(ptr noundef nonnull %1, ptr noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.l, %bb.f ], [ %.1359, %bb.e ] ; 6 uses
  %i.m = icmp slt i32 %.2, 1
  br i1 %i.m, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %.2, 256
  br i1 %i.n, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i32 %.2, 296
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = sext i8 %i.r to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.0237 = phi i32 [ 0, %bb.g ], [ %i.s, %bb.j ], [ 2, %bb.i ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.g ], [ %.2, %bb.j ], [ %.2, %bb.i ] ; 3 uses
  %i.t = add nsw i32 %.0237, %i.i                 ; 2 uses
  %or.cond3 = icmp ugt i32 %i.t, 433
  br i1 %or.cond3, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZL7yycheck, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = sext i8 %i.w to i32
  %.not256 = icmp eq i32 %.0237, %i.x
  br i1 %.not256, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL7yytable, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = sext i8 %i.z to i32                     ; 2 uses
  %i.ab = icmp slt i8 %i.z, 1
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = sub nsw i32 0, %i.aa
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1221356, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.1230354, i64 8 ; 2 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !11
  br label %bb.b

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.d
  %.4 = phi i32 [ %.1359, %bb.d ], [ %.3, %bb.k ], [ %.3, %bb.l ] ; 10 uses
  %i.af = getelementptr inbounds i8, ptr @_ZL8yydefact, i64 %i.f
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = sext i8 %i.ag to i32
  %i.ai = icmp eq i8 %i.ag, 0
  br i1 %i.ai, label %bb.ay, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0235 = phi i32 [ %i.ah, %bb.p ], [ %i.ac, %bb.n ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.p ], [ %.3, %bb.n ]
  %i.aj = sext i32 %.0235 to i64                  ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr @_ZL4yyr2, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = sext i8 %i.al to i64                    ; 3 uses
  %i.an = sub nsw i64 1, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %.1230354, i64 %i.an
  %.sroa.0.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !11
  switch i32 %.0235, label %bb.at [
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 10, label %bb.x
    i32 11, label %bb.y
    i32 12, label %bb.z
    i32 13, label %bb.aa
    i32 14, label %bb.af
    i32 15, label %bb.ag
    i32 16, label %bb.ah
    i32 17, label %bb.ai
    i32 18, label %bb.aj
    i32 19, label %bb.ak
    i32 20, label %bb.al
    i32 21, label %bb.am
    i32 22, label %bb.an
    i32 23, label %bb.ao
    i32 24, label %bb.ap
    i32 25, label %bb.aq
    i32 49, label %bb.ar
    i32 56, label %bb.as
  ]

bb.r:                                             ; preds = %bb.q
  %i.ap = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z30cmFortranParser_SetInInterfaceP17cmFortranParser_sb(ptr noundef %i.ap, i1 noundef zeroext true)
  br label %bb.at

bb.s:                                             ; preds = %bb.q
  %i.aq = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.ar = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  call void @_Z23cmFortranParser_RuleUseP17cmFortranParser_sPKc(ptr noundef %i.aq, ptr noundef %i.as)
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !21
  call void @free(ptr noundef %i.at) #9
  br label %bb.at

bb.t:                                             ; preds = %bb.q
  %i.au = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.av = getelementptr inbounds i8, ptr %.1230354, i64 -8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @_Z26cmFortranParser_RuleModuleP17cmFortranParser_sPKc(ptr noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !21
  call void @free(ptr noundef %i.ax) #9
  br label %bb.at

bb.u:                                             ; preds = %bb.q
  %i.ay = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.az = getelementptr inbounds i8, ptr %.1230354, i64 -24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bb = getelementptr inbounds i8, ptr %.1230354, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  call void @_Z29cmFortranParser_RuleSubmoduleP17cmFortranParser_sPKcS2_(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.bc)
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !21
  call void @free(ptr noundef %i.bd) #9
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !21
  call void @free(ptr noundef %i.be) #9
  br label %bb.at

bb.v:                                             ; preds = %bb.q
  %i.bf = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.bg = getelementptr inbounds i8, ptr %.1230354, i64 -40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = getelementptr inbounds i8, ptr %.1230354, i64 -24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds i8, ptr %.1230354, i64 -8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !21
  call void @_Z35cmFortranParser_RuleSubmoduleNestedP17cmFortranParser_sPKcS2_S2_(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bj, ptr noundef %i.bl)
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !21
  call void @free(ptr noundef %i.bm) #9
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !21
  call void @free(ptr noundef %i.bn) #9
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !21
  call void @free(ptr noundef %i.bo) #9
  br label %bb.at

bb.w:                                             ; preds = %bb.q
  %i.bp = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z30cmFortranParser_SetInInterfaceP17cmFortranParser_sb(ptr noundef %i.bp, i1 noundef zeroext true)
  %i.bq = getelementptr inbounds i8, ptr %.1230354, i64 -8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  call void @free(ptr noundef %i.br) #9
  br label %bb.at

bb.x:                                             ; preds = %bb.q
  %i.bs = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z30cmFortranParser_SetInInterfaceP17cmFortranParser_sb(ptr noundef %i.bs, i1 noundef zeroext false)
  %i.bt = getelementptr inbounds i8, ptr %.1230354, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  call void @free(ptr noundef %i.bu) #9
  br label %bb.at

bb.y:                                             ; preds = %bb.q
  %i.bv = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z30cmFortranParser_SetInInterfaceP17cmFortranParser_sb(ptr noundef %i.bv, i1 noundef zeroext false)
  br label %bb.at

bb.z:                                             ; preds = %bb.q
  %i.bw = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.bx = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21
  call void @_Z23cmFortranParser_RuleUseP17cmFortranParser_sPKc(ptr noundef %i.bw, ptr noundef %i.by)
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !21
  call void @free(ptr noundef %i.bz) #9
  br label %bb.at

bb.aa:                                            ; preds = %bb.q
  %i.ca = getelementptr inbounds i8, ptr %.1230354, i64 -32 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = call i32 @cmsysString_strcasecmp(ptr noundef %i.cb, ptr noundef nonnull @.str)
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ce = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.cf = getelementptr inbounds i8, ptr %.1230354, i64 -16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21
  call void @_Z23cmFortranParser_RuleUseP17cmFortranParser_sPKc(ptr noundef %i.ce, ptr noundef %i.cg)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.ci = call i32 @cmsysString_strcasecmp(ptr noundef %i.ch, ptr noundef nonnull @.str.1)
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.cl = getelementptr inbounds i8, ptr %.1230354, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  call void @_Z32cmFortranParser_RuleUseIntrinsicP17cmFortranParser_sPKc(ptr noundef %i.ck, ptr noundef %i.cm)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !21
  call void @free(ptr noundef %i.cn) #9
  %i.co = getelementptr inbounds i8, ptr %.1230354, i64 -16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !21
  call void @free(ptr noundef %i.cp) #9
  br label %bb.at

bb.af:                                            ; preds = %bb.q
  %i.cq = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.cr = getelementptr inbounds i8, ptr %.1230354, i64 -8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  call void @_Z27cmFortranParser_RuleIncludeP17cmFortranParser_sPKc(ptr noundef %i.cq, ptr noundef %i.cs)
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !21
  call void @free(ptr noundef %i.ct) #9
  br label %bb.at

bb.ag:                                            ; preds = %bb.q
  %i.cu = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.cv = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21
  call void @_Z33cmFortranParser_RuleLineDirectiveP17cmFortranParser_sPKc(ptr noundef %i.cu, ptr noundef %i.cw)
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !21
  call void @free(ptr noundef %i.cx) #9
  br label %bb.at

bb.ah:                                            ; preds = %bb.q
  %i.cy = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.cz = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  call void @_Z27cmFortranParser_RuleIncludeP17cmFortranParser_sPKc(ptr noundef %i.cy, ptr noundef %i.da)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !21
  call void @free(ptr noundef %i.db) #9
  br label %bb.at

bb.ai:                                            ; preds = %bb.q
  %i.dc = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.dd = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !21
  call void @_Z27cmFortranParser_RuleIncludeP17cmFortranParser_sPKc(ptr noundef %i.dc, ptr noundef %i.de)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !21
  call void @free(ptr noundef %i.df) #9
  br label %bb.at

bb.aj:                                            ; preds = %bb.q
  %i.dg = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.dh = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  call void @_Z26cmFortranParser_RuleDefineP17cmFortranParser_sPKc(ptr noundef %i.dg, ptr noundef %i.di)
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #9
  br label %bb.at

bb.ak:                                            ; preds = %bb.q
  %i.dk = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.dl = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !21
  call void @_Z25cmFortranParser_RuleUndefP17cmFortranParser_sPKc(ptr noundef %i.dk, ptr noundef %i.dm)
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !21
  call void @free(ptr noundef %i.dn) #9
  br label %bb.at

bb.al:                                            ; preds = %bb.q
  %i.do = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.dp = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  call void @_Z25cmFortranParser_RuleIfdefP17cmFortranParser_sPKc(ptr noundef %i.do, ptr noundef %i.dq)
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !21
  call void @free(ptr noundef %i.dr) #9
  br label %bb.at

bb.am:                                            ; preds = %bb.q
  %i.ds = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  %i.dt = getelementptr inbounds i8, ptr %.1230354, i64 -16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !21
  call void @_Z26cmFortranParser_RuleIfndefP17cmFortranParser_sPKc(ptr noundef %i.ds, ptr noundef %i.du)
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !21
  call void @free(ptr noundef %i.dv) #9
  br label %bb.at

bb.an:                                            ; preds = %bb.q
  %i.dw = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z22cmFortranParser_RuleIfP17cmFortranParser_s(ptr noundef %i.dw)
  br label %bb.at

bb.ao:                                            ; preds = %bb.q
  %i.dx = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z24cmFortranParser_RuleElifP17cmFortranParser_s(ptr noundef %i.dx)
  br label %bb.at

bb.ap:                                            ; preds = %bb.q
  %i.dy = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z24cmFortranParser_RuleElseP17cmFortranParser_s(ptr noundef %i.dy)
  br label %bb.at

bb.aq:                                            ; preds = %bb.q
  %i.dz = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z25cmFortranParser_RuleEndifP17cmFortranParser_s(ptr noundef %i.dz)
  br label %bb.at

bb.ar:                                            ; preds = %bb.q
  %i.ea = load ptr, ptr %.1230354, align 8, !tbaa !21
  call void @free(ptr noundef %i.ea) #9
  br label %bb.at

bb.as:                                            ; preds = %bb.q
  %i.eb = load ptr, ptr %.1230354, align 8, !tbaa !21
  call void @free(ptr noundef %i.eb) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.q, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.ec = sub nsw i64 0, %i.am
  %i.ed = getelementptr inbounds [8 x i8], ptr %.1230354, i64 %i.ec
  %.1224.add = sub nsw i64 %.1224.idx355, %i.am   ; 2 uses
  %.ptr254 = getelementptr inbounds i8, ptr %i.a, i64 %.1224.add
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.ee, align 8, !tbaa !11
  %i.ef = getelementptr inbounds i8, ptr @_ZL4yyr1, i64 %i.aj
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.eh = sext i8 %i.eg to i64
  %i.ei = add nsw i64 %i.eh, -41                  ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr @_ZL7yypgoto, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !14
  %i.el = sext i8 %i.ek to i32
  %i.em = load i8, ptr %.ptr254, align 1, !tbaa !14 ; 2 uses
  %i.en = sext i8 %i.em to i32
  %i.eo = add nsw i32 %i.en, %i.el                ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.eq = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr @_ZL7yycheck, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !14
  %i.et = icmp eq i8 %i.es, %i.em
  br i1 %i.et, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr @_ZL7yytable, i64 %i.eq
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.ev = getelementptr inbounds i8, ptr @_ZL9yydefgoto, i64 %i.ei
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.in = phi ptr [ %i.eu, %bb.av ], [ %i.ev, %bb.aw ]
  %i.ew = load i8, ptr %.in, align 1, !tbaa !14
  %i.ex = sext i8 %i.ew to i32
  br label %bb.b

bb.ay:                                            ; preds = %bb.p
  %i.ey = icmp eq i32 %.4, -2
  br i1 %i.ey, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %or.cond7 = icmp ult i32 %.4, 296
  br i1 %or.cond7, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ez = zext nneg i32 %.4 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = sext i8 %i.fb to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.fd = phi i32 [ -2, %bb.ay ], [ %i.fc, %bb.ba ], [ 2, %bb.az ] ; 3 uses
  switch i32 %.1221356, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit [
    i32 0, label %bb.bc
    i32 3, label %bb.bk
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fe = call fastcc noundef i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr noundef %i.c, ptr %.1285353, ptr nonnull %.1224.ptr360, i32 %i.fd)
  switch i32 %i.fe, label %bb.bj [
    i32 0, label %bb.bd
    i32 -1, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %.not259 = icmp eq ptr %.1285353, %i.b
  br i1 %.not259, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef %.1285353) #9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ff = load i64, ptr %i.c, align 8, !tbaa !13
  %i.fg = call noalias ptr @malloc(i64 noundef %i.ff) #10 ; 4 uses
  %.not260 = icmp eq ptr %i.fg, null
  br i1 %.not260, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fh = call fastcc noundef i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr noundef %i.c, ptr nonnull %i.fg, ptr nonnull %.1224.ptr360, i32 %i.fd)
  %i.fi = icmp eq i32 %i.fh, -2
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  store i64 128, ptr %i.c, align 8, !tbaa !13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bc, %bb.bi, %bb.bh, %bb.bd
  %.2286 = phi ptr [ %.1285353, %bb.bc ], [ %.1285353, %bb.bd ], [ %i.b, %bb.bi ], [ %i.fg, %bb.bh ] ; 2 uses
  %.0210 = phi ptr [ @.str.2, %bb.bc ], [ %.1285353, %bb.bd ], [ @.str.2, %bb.bi ], [ %i.fg, %bb.bh ]
  %.0209 = phi i1 [ true, %bb.bc ], [ false, %bb.bd ], [ true, %bb.bi ], [ %i.fi, %bb.bh ]
  %i.fj = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z21cmFortranParser_ErrorP17cmFortranParser_sPKc(ptr noundef %i.fj, ptr noundef %.0210)
  br i1 %.0209, label %bb.br, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit

bb.bk:                                            ; preds = %bb.bb
  %i.fk = icmp slt i32 %.4, 1
  br i1 %i.fk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fl = icmp eq i32 %.4, 0
  br i1 %i.fl, label %.thread309, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit

bb.bm:                                            ; preds = %bb.bk
  %.off.i = add nsw i32 %i.fd, -32
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %.sink.split.i, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit

.sink.split.i:                                    ; preds = %bb.bm
  %i.fm = load ptr, ptr %1, align 8, !tbaa !21
  call void @free(ptr noundef %i.fm) #9
  br label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit

_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit: ; preds = %bb.bb, %bb.bj, %.sink.split.i, %bb.bm, %bb.h, %bb.bl
  %.4288 = phi ptr [ %.1285353, %bb.bl ], [ %.1285353, %.sink.split.i ], [ %.1285353, %bb.bb ], [ %.1285353, %bb.h ], [ %.1285353, %bb.bm ], [ %.2286, %bb.bj ] ; 2 uses
  %.6 = phi i32 [ %.4, %bb.bl ], [ -2, %.sink.split.i ], [ %.4, %bb.bb ], [ 257, %bb.h ], [ -2, %bb.bm ], [ %.4, %bb.bj ] ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit
  %3 = phi i16 [ %i.h, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit ], [ %.pre, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272 ] ; 2 uses
  %.2231 = phi ptr [ %.1230354, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit ], [ %i.fs, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272 ] ; 4 uses
  %.2225.idx = phi i64 [ %.1224.idx355, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit ], [ %.2225.add, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272 ] ; 3 uses
  %.2219 = phi i32 [ %.1218357, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit ], [ %i.fu, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272 ]
  %4 = sext i32 %.2219 to i64
  %5 = icmp sgt i16 %3, -2
  br i1 %5, label %bb.bo, label %14

bb.bo:                                            ; preds = %bb.bn
  %6 = sext i16 %3 to i64
  %7 = add nsw i64 %6, 1                          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr @_ZL7yycheck, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %i.fn = icmp eq i8 %9, 1
  br i1 %i.fn, label %10, label %14

10:                                               ; preds = %bb.bo
  %11 = getelementptr inbounds nuw i8, ptr @_ZL7yytable, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !14      ; 2 uses
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %bb.bq, label %14

14:                                               ; preds = %bb.bo, %10, %bb.bn
  %15 = icmp eq i64 %.2225.idx, 0
  br i1 %15, label %.loopexit336, label %bb.bp

bb.bp:                                            ; preds = %14
  %i.fo = getelementptr inbounds i8, ptr @_ZL6yystos, i64 %4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !14
  %i.fq = sext i8 %i.fp to i32
  %.off.i269 = add nsw i32 %i.fq, -32
  %switch.i270 = icmp ult i32 %.off.i269, 3
  br i1 %switch.i270, label %.sink.split.i271, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272

.sink.split.i271:                                 ; preds = %bb.bp
  %i.fr = load ptr, ptr %.2231, align 8, !tbaa !21
  call void @free(ptr noundef %i.fr) #9
  br label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272

_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit272: ; preds = %bb.bp, %.sink.split.i271
  %i.fs = getelementptr inbounds i8, ptr %.2231, i64 -8
  %.2225.add = add nsw i64 %.2225.idx, -1         ; 2 uses
  %.ptr255 = getelementptr inbounds i8, ptr %i.a, i64 %.2225.add
  %i.ft = load i8, ptr %.ptr255, align 1, !tbaa !14 ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %.phi.trans.insert = sext i8 %i.ft to i64
  %.phi.trans.insert378 = getelementptr inbounds [2 x i8], ptr @_ZL6yypact, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert378, align 2, !tbaa !16
  br label %bb.bn, !llvm.loop !18

bb.bq:                                            ; preds = %10
  %16 = zext nneg i8 %12 to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.2231, i64 8 ; 2 uses
  %i.fw = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !11
  br label %bb.b

bb.br:                                            ; preds = %bb.bj, %bb.b
  %.1230.lcssa = phi ptr [ %.1230354, %bb.bj ], [ %.0229, %bb.b ]
  %.1224.ptr.lcssa = phi ptr [ %.1224.ptr360, %bb.bj ], [ %.1224.ptr, %bb.b ]
  %.5289 = phi ptr [ %.2286, %bb.bj ], [ %.0, %bb.b ]
  %.8 = phi i32 [ %.4, %bb.bj ], [ %.0212, %bb.b ]
  %i.fx = call noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef %0)
  call void @_Z21cmFortranParser_ErrorP17cmFortranParser_sPKc(ptr noundef %i.fx, ptr noundef nonnull @.str.5)
  br label %.loopexit336

.loopexit336:                                     ; preds = %bb.c, %14, %bb.br
  %.6290 = phi ptr [ %.4288, %14 ], [ %.5289, %bb.br ], [ %.1285353, %bb.c ] ; 2 uses
  %.0236 = phi i32 [ 1, %14 ], [ 2, %bb.br ], [ 0, %bb.c ] ; 2 uses
  %.4233 = phi ptr [ %.2231, %14 ], [ %.1230.lcssa, %bb.br ], [ %.1230354, %bb.c ] ; 2 uses
  %.4227 = phi ptr [ %i.a, %14 ], [ %.1224.ptr.lcssa, %bb.br ], [ %.1224.ptr360, %bb.c ] ; 2 uses
  %.9 = phi i32 [ %.6, %14 ], [ %.8, %bb.br ], [ %.1359, %bb.c ] ; 2 uses
  %or.cond11 = icmp ult i32 %.9, 296
  br i1 %or.cond11, label %.thread309, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276

.thread309:                                       ; preds = %bb.bl, %.loopexit336
  %.6290300324 = phi ptr [ %.6290, %.loopexit336 ], [ %.1285353, %bb.bl ] ; 2 uses
  %.0236302322 = phi i32 [ %.0236, %.loopexit336 ], [ 1, %bb.bl ] ; 2 uses
  %.4233304320 = phi ptr [ %.4233, %.loopexit336 ], [ %.1230354, %bb.bl ] ; 2 uses
  %.4227306318 = phi ptr [ %.4227, %.loopexit336 ], [ %.1224.ptr360, %bb.bl ] ; 2 uses
  %.9308316 = phi i32 [ %.9, %.loopexit336 ], [ 0, %bb.bl ]
  %i.fy = zext nneg i32 %.9308316 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14
  %i.gb = sext i8 %i.ga to i32
  %.off.i273 = add nsw i32 %i.gb, -32
  %switch.i274 = icmp ult i32 %.off.i273, 3
  br i1 %switch.i274, label %.sink.split.i275, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276

.sink.split.i275:                                 ; preds = %.thread309
  %i.gc = load ptr, ptr %1, align 8, !tbaa !21
  call void @free(ptr noundef %i.gc) #9
  br label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276

_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276: ; preds = %.sink.split.i275, %.thread309, %.loopexit336
  %.4227307 = phi ptr [ %.4227, %.loopexit336 ], [ %.4227306318, %.sink.split.i275 ], [ %.4227306318, %.thread309 ] ; 2 uses
  %.4233305 = phi ptr [ %.4233, %.loopexit336 ], [ %.4233304320, %.sink.split.i275 ], [ %.4233304320, %.thread309 ]
  %.0236303 = phi i32 [ %.0236, %.loopexit336 ], [ %.0236302322, %.sink.split.i275 ], [ %.0236302322, %.thread309 ]
  %.6290301 = phi ptr [ %.6290, %.loopexit336 ], [ %.6290300324, %.sink.split.i275 ], [ %.6290300324, %.thread309 ] ; 2 uses
  %.not262361 = icmp eq ptr %.4227307, %i.a
  br i1 %.not262361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280
  %.5228363 = phi ptr [ %i.gk, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280 ], [ %.4227307, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276 ] ; 2 uses
  %.5234362 = phi ptr [ %i.gj, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280 ], [ %.4233305, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276 ] ; 2 uses
  %i.gd = load i8, ptr %.5228363, align 1, !tbaa !14
  %i.ge = sext i8 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @_ZL6yystos, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = sext i8 %i.gg to i32
  %.off.i277 = add nsw i32 %i.gh, -32
  %switch.i278 = icmp ult i32 %.off.i277, 3
  br i1 %switch.i278, label %.sink.split.i279, label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280

.sink.split.i279:                                 ; preds = %.lr.ph
  %i.gi = load ptr, ptr %.5234362, align 8, !tbaa !21
  call void @free(ptr noundef %i.gi) #9
  br label %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280

_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280: ; preds = %.lr.ph, %.sink.split.i279
  %i.gj = getelementptr inbounds i8, ptr %.5234362, i64 -8
  %i.gk = getelementptr inbounds i8, ptr %.5228363, i64 -1 ; 2 uses
  %.not262 = icmp eq ptr %i.gk, %i.a
  br i1 %.not262, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit280, %_ZL10yydestructPKc15yysymbol_kind_tP17cmFortran_yystypePv.exit276
  %.not263 = icmp eq ptr %.6290301, %i.b
  br i1 %.not263, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.6290301) #9
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.0236303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z15cmFortran_yylexP17cmFortran_yystypePv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z21cmFortran_yyget_extraPv(ptr noundef) local_unnamed_addr #2

declare void @_Z30cmFortranParser_SetInInterfaceP17cmFortranParser_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z23cmFortranParser_RuleUseP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @_Z26cmFortranParser_RuleModuleP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z29cmFortranParser_RuleSubmoduleP17cmFortranParser_sPKcS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z35cmFortranParser_RuleSubmoduleNestedP17cmFortranParser_sPKcS2_S2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsysString_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z32cmFortranParser_RuleUseIntrinsicP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z27cmFortranParser_RuleIncludeP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z33cmFortranParser_RuleLineDirectiveP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z26cmFortranParser_RuleDefineP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z25cmFortranParser_RuleUndefP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z25cmFortranParser_RuleIfdefP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z26cmFortranParser_RuleIfndefP17cmFortranParser_sPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z22cmFortranParser_RuleIfP17cmFortranParser_s(ptr noundef) local_unnamed_addr #2

declare void @_Z24cmFortranParser_RuleElifP17cmFortranParser_s(ptr noundef) local_unnamed_addr #2

declare void @_Z24cmFortranParser_RuleElseP17cmFortranParser_s(ptr noundef) local_unnamed_addr #2

declare void @_Z25cmFortranParser_RuleEndifP17cmFortranParser_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -2, 1) i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i8, ptr %.0.val1, align 1, !tbaa !14
  %i.c = sext i8 %.val.val.i to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @_ZL6yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !16   ; 4 uses
  %i.f = icmp eq i16 %i.e, -39
  br i1 %i.f, label %.critedge.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i16 %i.e to i32                     ; 2 uses
  %i.h = icmp slt i16 %i.e, 0
  %i.i = sub nsw i32 0, %i.g
  %i.j = select i1 %i.h, i32 %i.i, i32 0          ; 2 uses
  %i.k = sub nsw i32 434, %i.g
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 41) ; 2 uses
  %.not4.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not4.i.i, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.m = sext i32 %i.j to i64
  %i.n = sext i16 %i.e to i64
  %i.o = sext i32 %i.l to i64
  %invariant.gep.i.i = getelementptr i8, ptr @_ZL7yycheck, i64 %i.n
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.m, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 4 uses
  %.0345.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.p = load i8, ptr %gep.i.i, align 1, !tbaa !14
  %i.q = sext i8 %i.p to i32                      ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv.i.i to i32
  %i.s = icmp eq i32 %i.r, %i.q
  %i.t = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.t, %i.s
  br i1 %or.cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq i32 %.0345.i.i, 4
  br i1 %i.u, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %.0345.i.i, 1
  %i.w = sext i32 %.0345.i.i to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.w
  store i32 %i.q, ptr %i.x, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.v, %bb.e ], [ %.0345.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.o
  br i1 %exitcond.not.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !22

.critedge.i.i:                                    ; preds = %bb.f
  switch i32 %.1.i.i, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit [
    i32 0, label %.critedge.thread.i.i
    i32 -2, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8
  ]

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.c, %bb.b
  store i32 -2, ptr %i.b, align 4, !tbaa !27
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit: ; preds = %.critedge.i.i
  %i.y = add nsw i32 %.1.i.i, 1                   ; 8 uses
  switch i32 %i.y, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6 [
    i32 -2, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8
    i32 5, label %bb.k
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
end_hunk_0
