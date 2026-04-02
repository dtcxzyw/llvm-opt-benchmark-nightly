begin_hunk_0
@.str.11 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@g_options = external global %struct.cmdline_options, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"yystype.h\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Name of yystype header is set to \00", align 1
end_hunk_0
begin_hunk_1
  br i1 %.not184, label %.loopexit, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %0 = load i64, ptr @yytext, align 16
  %1 = xor i64 %0, 8245922084253099617
  %2 = load i64, ptr getelementptr (i8, ptr @yytext, i64 5), align 1
  %3 = xor i64 %2, 29382667542884198
  %4 = or i64 %1, %3
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  %i.aun = icmp eq i32 %6, 0
  br i1 %i.aun, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %7 = load i32, ptr @yytext, align 16
  %8 = xor i32 %7, 1752459639
  %9 = load i8, ptr getelementptr (i8, ptr @yytext, i64 4), align 4
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %i.auo = icmp eq i32 %13, 0
  br i1 %i.auo, label %.loopexit, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
end_hunk_1
