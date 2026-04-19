inline.NumInlined: 264
inline.NumDeleted: 24
begin_hunk_0_@_PyErr_ProgramDecodedTextObject:bb.a
  br label %PyErr_Clear.exit

.critedge:                                        ; preds = %PyErr_Clear.exit31, %bb.g
  %.023 = phi ptr [ %2, %bb.g ], [ %.021, %PyErr_Clear.exit31 ]
  %.122 = phi ptr [ null, %bb.g ], [ %i.p, %PyErr_Clear.exit31 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 998
end_hunk_0
begin_hunk_1_@_PyErr_ProgramDecodedTextObject:bb.a
bb.r:                                             ; preds = %bb.q, %bb.p, %.critedge.i
  %i.ax = phi i64 [ %i.aw, %bb.q ], [ %i.af, %bb.p ], [ %i.af, %.critedge.i ]
  %.021.i = phi ptr [ %i.av, %bb.q ], [ %i.a, %bb.p ], [ %i.a, %.critedge.i ]
  %i.ay = call ptr @PyUnicode_Decode(ptr noundef nonnull %.021.i, i64 noundef %i.ax, ptr noundef nonnull %.023, ptr noundef nonnull @.str.60) #16 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.s, label %err_programtext.exit

end_hunk_1
begin_hunk_2_@_PyErr_ProgramDecodedTextObject:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bh = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  call void @PyMem_Free(ptr noundef %.122) #16
  br label %PyErr_Clear.exit

PyErr_Clear.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.m, %err_programtext.exit, %bb.a
end_hunk_2
