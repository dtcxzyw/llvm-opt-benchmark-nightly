inline.NumInlined: 130
inline.NumDeleted: 19
begin_hunk_0_@test_audit_run_interactivehook:bb.a
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_interactivehook.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
end_hunk_0
begin_hunk_1_@test_audit_run_interactivehook:bb.a
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @.str.95, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_1
begin_hunk_2_@test_audit_run_startup:bb.a
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_startup.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
end_hunk_2
begin_hunk_3_@test_audit_run_startup:bb.a
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @.str.95, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_3
begin_hunk_4_@test_audit_run_stdin:bb.a
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_stdin.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
end_hunk_4
begin_hunk_5_@test_audit_run_stdin:bb.a
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @.str.95, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_5
