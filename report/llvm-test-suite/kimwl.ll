begin_hunk_0
@.str.11 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"afterforeach\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@g_options = external global %struct.cmdline_options, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"yystype.h\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Name of yystype header is set to \00", align 1
end_hunk_0
begin_hunk_1
  br i1 %.not184, label %.loopexit, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(13) @yytext, ptr noundef nonnull dereferenceable(13) @.str.15, i64 13)
  %i.aun = icmp eq i32 %bcmp, 0
  br i1 %i.aun, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %bcmp185 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @yytext, ptr noundef nonnull dereferenceable(5) @.str.16, i64 5)
  %i.auo = icmp eq i32 %bcmp185, 0
  br i1 %i.auo, label %.loopexit, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
end_hunk_1
