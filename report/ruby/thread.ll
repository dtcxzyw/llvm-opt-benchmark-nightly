inline.NumInlined: 1396
inline.NumDeleted: 321
begin_hunk_0_@rb_thread_list:bb.a

declare i64 @rb_ractor_thread_list() local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_thread_current() local_unnamed_addr #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@rb_thread_current:bb.a
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_thread_main() local_unnamed_addr #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_1
begin_hunk_2_@thread_start:bb.a
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal i64 @rb_thread_s_main(i64 %0) #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_2
begin_hunk_3_@rb_thread_s_main:bb.a
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal i64 @thread_s_current(i64 %0) #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_3
begin_hunk_4_@thread_list:bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_abort_exc(i64 %0) #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_4
begin_hunk_5_@rb_thread_s_abort_exc:bb.a
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_abort_exc_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_5
begin_hunk_6_@rb_thread_s_abort_exc_set:bb.a
  ret i64 %1
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_report_exc(i64 %0) #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_6
begin_hunk_7_@rb_thread_s_report_exc:bb.a
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_report_exc_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_7
begin_hunk_8_@rb_thread_s_report_exc_set:bb.a
  ret i64 %1
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_thread_s_ignore_deadlock(i64 %0) #27 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_8
begin_hunk_9_@rb_thread_s_ignore_deadlock:bb.a
  ret i64 %i.j
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal noundef i64 @rb_thread_s_ignore_deadlock_set(i64 %0, i64 noundef returned %1) #31 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_9
begin_hunk_10_@llvm.smin.i32
attributes #24 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree norecurse nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_10
