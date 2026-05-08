inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@opj_mqc_resetstates
define void @opj_mqc_resetstates(ptr noundef writeonly captures(none) initializes((40, 192)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x ptr> <ptr @mqc_states, ptr @mqc_states, ptr @mqc_states, ptr @mqc_states>, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x ptr> <ptr @mqc_states, ptr @mqc_states, ptr @mqc_states, ptr @mqc_states>, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x ptr> <ptr @mqc_states, ptr @mqc_states, ptr @mqc_states, ptr @mqc_states>, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x ptr> <ptr @mqc_states, ptr @mqc_states, ptr @mqc_states, ptr @mqc_states>, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @mqc_states, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
end_hunk_0
