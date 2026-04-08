inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@rb_digest_s_bubblebabble:bb.a
  %i.n = or i64 %i.k, 1
  %i.o = mul nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 2
  %i.q = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.p) #4, !callees !17 ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12
  %i.t = and i64 %i.s, 8192
end_hunk_0
begin_hunk_1_@rb_digest_class_s_bubblebabble:bb.a
  %i.p = or i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 2
  %i.s = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.r) #4, !callees !17 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = and i64 %i.u, 8192
end_hunk_1
begin_hunk_2_@rb_digest_instance_bubblebabble:bb.a
  %i.p = or i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 2
  %i.s = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.r) #4, !callees !17 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = and i64 %i.u, 8192
end_hunk_2
begin_hunk_3_@llvm.lifetime.end.p0
!15 = !{!16, !11, i64 16}
!16 = !{!"RString", !13, i64 0, !11, i64 16, !8, i64 24}
!17 = distinct !{ptr @rb_str_new, null}
end_hunk_3
