inline.NumInlined: 20
inline.NumDeleted: 9
begin_hunk_0_@dln_load:bb.a
  %i.q = tail call fastcc ptr @dln_open(ptr noundef nonnull %0) ; 2 uses
  %i.r = call fastcc i64 @dln_sym_func(ptr noundef %i.q, ptr noundef nonnull %i.m)
  %i.s = inttoptr i64 %i.r to ptr
  call void %i.s() #8, !inline_history !14
  ret ptr %i.q
}

end_hunk_0
begin_hunk_1_@dln_load_feature:bb.a
  %i.q = tail call fastcc ptr @dln_open(ptr noundef %0) ; 2 uses
  %i.r = call fastcc i64 @dln_sym_func(ptr noundef %i.q, ptr noundef nonnull %i.m)
  %i.s = inttoptr i64 %i.r to ptr
  call void %i.s() #8, !inline_history !14
  ret ptr %i.q
}

end_hunk_1
begin_hunk_2_@dln_open
define internal fastcc nonnull ptr @dln_open(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Dl_info, align 8            ; 5 uses
  %i.a = load i8, ptr @ruby_box_enabled, align 1, !tbaa !15, !range !17, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, i32 1, i32 257
  %i.d = tail call ptr @dlopen(ptr noundef %0, i32 noundef %i.c) #8 ; 5 uses
end_hunk_2
begin_hunk_3_@dln_open:bb.a
  br label %dln_incompatible_library_p.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %dln_incompatible_library_p.exit, label %bb.f
end_hunk_3
begin_hunk_4_@llvm.memcpy.p0.p0.i64
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{null}
!15 = !{!16, !16, i64 0}
!16 = !{!"_Bool", !9, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!20, !21, i64 0}
!20 = !{!"", !21, i64 0, !22, i64 8, !21, i64 16, !22, i64 24}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
end_hunk_4
