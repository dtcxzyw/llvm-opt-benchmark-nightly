begin_hunk_0
@.str.63 = private unnamed_addr constant [18 x i8] c"uncaught throw %p\00", align 1
@rb_eUncaughtThrow = internal unnamed_addr global i64 0, align 8
@eval_default_path = internal unnamed_addr global i64 0, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"(eval at \00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"../vm_eval.c\00", align 1
@__func__.rb_current_ifunc = private unnamed_addr constant [17 x i8] c"rb_current_ifunc\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"imemo_type_p(ifunc, imemo_ifunc)\00", align 1
end_hunk_0
begin_hunk_1
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
end_hunk_1
begin_hunk_2
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.ae, ptr noundef nonnull dereferenceable(9) @.str.64, i64 9)
  %i.aj = icmp eq i32 %bcmp, 0
  br i1 %i.aj, label %vm_get_ruby_level_caller_cfp.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %RSTRING_PTR.exit
end_hunk_2
