begin_hunk_0
inline.NumInlined: 1396
inline.NumDeleted: 321
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.f, %bb.h, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit55.thread, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  %.1 = phi ptr [ %.037, %rbimpl_RB_TYPE_P_fastpath.exit55.thread ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.a ], [ %.037, %bb.i ], [ null, %bb.f ], [ null, %.preheader ]
  ret ptr %.1
}

end_hunk_1
begin_hunk_2
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 11 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !144
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !201  ; 2 uses
end_hunk_2
begin_hunk_3

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = icmp slt i32 %0, 0
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %queue_ptr.exit
  %.not.not = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %.not.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %0, 1
  br i1 %i.ad, label %rb_obj_write.exit.a, label %bb.h

bb.h:                                             ; preds = %bb.g, %queue_ptr.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #42
  unreachable

rb_obj_write.exit.a:                              ; preds = %bb.g
  %3 = load i64, ptr %1, align 8, !tbaa !143
  %4 = tail call i64 @rb_to_array(i64 noundef %3) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %rb_obj_write.exit.a
  %.sink = phi i64 [ %4, %rb_obj_write.exit.a ], [ 4, %bb.f ]
  %i.ae = getelementptr i8, ptr %.1.i.i, i64 24   ; 2 uses
  %i.af = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #17 ; 4 uses
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !143
  %i.ag = icmp eq i64 %i.af, 0
end_hunk_3
begin_hunk_4
  %i.ak = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.ak, align 8, !tbaa !58
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !57
  br i1 %.not.not, label %bb.j, label %5

5:                                                ; preds = %rb_obj_write.exit12
  %6 = load i64, ptr %i.ae, align 1, !tbaa !207
  %7 = tail call i64 @rb_ary_concat(i64 noundef %6, i64 noundef %.sink) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %5, %rb_obj_write.exit12
  ret i64 %2
}

end_hunk_4
