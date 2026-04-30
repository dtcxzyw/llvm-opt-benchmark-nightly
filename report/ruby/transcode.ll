inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@econv_init:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.as, %._crit_edge.i
  %i.ep = phi ptr [ %.pre.a, %._crit_edge.i ], [ @.str.3, %bb.as ] ; 2 uses
  %i.eq = phi ptr [ %.pre.i.a, %._crit_edge.i ], [ @.str.3, %bb.as ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.q, align 4, !tbaa !7
  store i64 4, ptr %i.j, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@econv_init:bb.a
  unreachable

bb.au:                                            ; preds = %.thread, %.split
  %i.fd = phi ptr [ %i.ep, %.thread ], [ %i.et, %.split ] ; 2 uses
  %.024 = phi ptr [ %i.ak, %.thread ], [ %i.ex, %.split ] ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !30
  %i.ff = icmp eq i8 %i.fe, 0
end_hunk_1
