inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@gc_sweep_step:bb.a
  %i.dm = getelementptr i8, ptr %0, i64 1144
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !453
  %.not.i64 = icmp eq i32 %i.dn, 0
  br i1 %.not.i64, label %gc_prof_set_heap_info.exit.split.us.preheader.i, label %gc_prof_set_heap_info.exit.split.preheader.i

gc_prof_set_heap_info.exit.split.preheader.i:     ; preds = %gc_prof_set_heap_info.exit.i
  %8 = getelementptr i8, ptr %0, i64 104
  %i.do = getelementptr i8, ptr %0, i64 256
  %i.dp = getelementptr i8, ptr %0, i64 408
  %i.dq = getelementptr i8, ptr %0, i64 560
end_hunk_0
begin_hunk_1_@gc_sweep_step:bb.a
  br label %.split.i

gc_prof_set_heap_info.exit.split.us.preheader.i:  ; preds = %gc_prof_set_heap_info.exit.i
  store i64 0, ptr %i.ad, align 8, !tbaa !461
  %9 = getelementptr i8, ptr %0, i64 104
  %i.ds = getelementptr i8, ptr %0, i64 120       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !447 ; 2 uses
  %.not22.us.i = icmp eq ptr %i.dt, null
  br i1 %.not22.us.i, label %bb.x, label %.preheader.us.i
end_hunk_1
begin_hunk_2_@gc_sweep_step:bb.a
.split.us.i.a:                                    ; preds = %bb.af, %bb.ae
  %i.ft = getelementptr i8, ptr %0, i64 776
  store ptr null, ptr %i.ft, align 8, !tbaa !466
  br label %.split.i

.split.i:                                         ; preds = %.split.us.i.a, %gc_prof_set_heap_info.exit.split.preheader.i
end_hunk_2
