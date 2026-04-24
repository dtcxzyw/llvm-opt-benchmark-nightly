inline.NumInlined: 272
inline.NumDeleted: 70
begin_hunk_0_@builtin_compile:bb.a
  br label %builtin_compile_impl.exit

bb.ap:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ai
  %.066.i = phi i64 [ 2, %bb.ak ], [ 0, %bb.ai ], [ 1, %bb.aj ], [ 3, %bb.am ]
  %.066.i.a = phi i32 [ 2, %bb.ak ], [ 0, %bb.ai ], [ 1, %bb.aj ], [ 3, %bb.am ]
  %i.ca = call i32 @PyAST_Check(ptr noundef %i.o) #10
  switch i32 %i.ca, label %bb.aq [
    i32 -1, label %builtin_compile_impl.exit
end_hunk_0
begin_hunk_1_@builtin_compile:bb.a
  br i1 %i.cp, label %builtin_compile_impl.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cq = getelementptr [4 x i8], ptr @__const.builtin_compile_impl.start, i64 %.066.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !7
  %i.cs = call ptr @_Py_CompileStringObjectWithModule(ptr noundef nonnull %i.co, ptr noundef %i.ba, i32 noundef %i.cr, ptr noundef nonnull %4, i32 noundef %.052106, ptr noundef %.065.i) #10 ; 4 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
end_hunk_1
