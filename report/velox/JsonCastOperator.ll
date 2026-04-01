begin_hunk_0
  store ptr %i.h, ptr %i.f, align 8, !tbaa !8805
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9219 ; 6 uses
  %i.n = load <2 x i32>, ptr %i.j, align 8, !tbaa !36
end_hunk_0
begin_hunk_1
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub i32 %i.z, %i.w
  %..i = call i32 @llvm.umin.i32(i32 %i.x, i32 %i.aa) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9221 ; 13 uses
  %i.ad = icmp ne ptr %i.ac, %i.q                 ; 2 uses
  br i1 %i.ad, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, label %bb.c

end_hunk_1
begin_hunk_2
_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread.thread: ; preds = %.critedge7.i
  %i.av = icmp eq i32 %i.m, 1
  call void @llvm.assume(i1 %i.av)
  br label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit

.critedge.i:                                      ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit..critedge.i_crit_edge, %bb.d
end_hunk_2
