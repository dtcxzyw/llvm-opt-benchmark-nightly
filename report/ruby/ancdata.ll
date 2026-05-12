inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
bb.a:
  %7 = alloca %struct.sendmsg_args_struct, align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %8 = alloca %struct.msghdr, align 8             ; 10 uses
  %9 = alloca %struct.iovec, align 8              ; 5 uses
end_hunk_0
begin_hunk_1_@bsock_sendmsg_internal:bb.a
  %.not74 = icmp ne i32 %6, 0                     ; 3 uses
  %i.cz = or i32 %i.cy, 64
  %spec.select = select i1 %.not74, i32 %i.cz, i32 %i.cy
  %10 = load i64, ptr %i.b, align 8, !tbaa !10
  %i.da = icmp eq i64 %10, 4
  br i1 %i.da, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_1
