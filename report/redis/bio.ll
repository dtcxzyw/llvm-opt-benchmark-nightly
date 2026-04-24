inline.NumInlined: 5
begin_hunk_0_@bioCreateCompRq:bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %4 = or disjoint i32 %0, 4
  %switch.offset = zext nneg i32 %4 to i64        ; 2 uses
  %switch.offset.a = or disjoint i32 %0, 4
  %i.b = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !67
end_hunk_0
begin_hunk_1_@bioCreateCompRq:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !67
  store i32 %switch.offset.a, ptr %i.b, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @bio_job_to_worker, i64 %switch.offset
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.h ; 2 uses
end_hunk_1
begin_hunk_2_@bioCreateCompRq:bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = tail call ptr @listAddNodeTail(ptr noundef %i.l, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs_counter, i64 %switch.offset ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !49
end_hunk_2
