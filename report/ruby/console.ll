inline.NumInlined: 142
inline.NumDeleted: 53
begin_hunk_0_@ttymode:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %6, ptr noundef nonnull align 16 dereferenceable(60) %7, i64 60, i1 false), !tbaa.struct !27
  call void %3(ptr noundef nonnull %6, ptr noundef %4) #13, !callees !54, !inline_history !55
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
end_hunk_0
begin_hunk_1_@ttymode:bb.a

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %5, ptr noundef nonnull align 4 dereferenceable(60) %i.m, i64 60, i1 false), !tbaa.struct !27
  call void %3(ptr noundef nonnull %5, ptr noundef %4) #13, !callees !54, !inline_history !55
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
end_hunk_1
begin_hunk_2_@read_vt_response:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = load i8, ptr %i.c, align 1, !tbaa !56
  %i.e = zext i8 %i.d to i32
  %i.f = icmp eq i64 %0, 0
  %i.g = and i64 %0, 7
end_hunk_2
begin_hunk_3_@llvm.abs.i32
!52 = !{!"RString", !26, i64 0, !14, i64 16, !8, i64 24}
!53 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!54 = !{ptr @set_cookedmode, ptr @set_noecho, ptr @set_rawmode}
!55 = distinct !{null}
!56 = !{!57, !8, i64 6}
!57 = !{!"query_args", !8, i64 0, !8, i64 6}
end_hunk_3
