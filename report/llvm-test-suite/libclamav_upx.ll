inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@upx_inflate2b:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = trunc nuw i64 %index to i32
  %i.dp = add i32 %i.db, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 2 uses
end_hunk_0
begin_hunk_1_@upx_inflate2b:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index332 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 3 uses
  %i.dy = trunc nuw i64 %index332 to i32
  %i.dz = add i32 %i.db, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ea
end_hunk_1
begin_hunk_2_@upx_inflate2d:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = trunc nuw i64 %index to i32
  %i.ea = add i32 %i.dm, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
end_hunk_2
begin_hunk_3_@upx_inflate2d:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index344 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 3 uses
  %i.ej = trunc nuw i64 %index344 to i32
  %i.ek = add i32 %i.dm, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.el
end_hunk_3
begin_hunk_4_@upx_inflate2e:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.er = trunc nuw i64 %index to i32
  %i.es = add i32 %i.ee, %i.er
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et ; 2 uses
end_hunk_4
begin_hunk_5_@upx_inflate2e:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index377 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.fb = trunc nuw i64 %index377 to i32
  %i.fc = add i32 %i.ee, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fd
end_hunk_5
