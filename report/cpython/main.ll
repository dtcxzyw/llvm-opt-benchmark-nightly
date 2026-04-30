inline.NumInlined: 64
inline.NumDeleted: 26
begin_hunk_0_@Py_RunMain:bb.a
bb.cd:                                            ; preds = %bb.cc
  store i32 1, ptr %i.es, align 4, !tbaa !193
  store i32 1, ptr @Py_InspectFlag, align 4, !tbaa !7
  br label %.thread.i.i

bb.ce:                                            ; preds = %bb.cc
  %.pr.i.i = load i32, ptr %i.es, align 4, !tbaa !193
  %.not13.i97.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not13.i97.i, label %pymain_repl.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ce, %bb.cd, %bb.cb
  %i.ex = load ptr, ptr @stdin, align 8, !tbaa !196
  %i.ey = call i32 @fileno(ptr noundef %i.ex) #14
  %i.ez = call i32 @isatty(i32 noundef %i.ey) #14
end_hunk_0
