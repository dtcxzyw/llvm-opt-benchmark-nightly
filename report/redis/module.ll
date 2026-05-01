inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@moduleFireServerEvent:bb.a
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %4 = alloca %struct.RedisModuleCtx, align 8     ; 15 uses
  %5 = alloca %struct.RedisModuleClientInfo, align 8 ; 6 uses
  %6 = alloca %struct.RedisModuleReplicationInfo, align 8 ; 12 uses
  %7 = alloca %struct.RedisModuleModuleChange, align 8 ; 8 uses
  %8 = alloca %struct.RedisModuleKey, align 8     ; 17 uses
  %9 = alloca %struct.RedisModuleKeyInfo, align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@moduleFireServerEvent:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = sext i32 %1 to i64                      ; 2 uses
  %i.ae = icmp eq i64 %0, 17                      ; 2 uses
end_hunk_1
begin_hunk_2_@moduleFireServerEvent:bb.a
  br i1 %.not.i, label %modulePopulateReplicationInfoStructure.exit.thread, label %modulePopulateReplicationInfoStructure.exit

modulePopulateReplicationInfoStructure.exit.thread: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 24, i1 false)
  store i64 1, ptr %6, align 8, !tbaa !313
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !315 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null                 ; 2 uses
  %i.cw = zext i1 %i.cv to i32
  store i32 %i.cw, ptr %10, align 8, !tbaa !316
  %i.cx = select i1 %i.cv, ptr @.str.43, ptr %i.cu
  store ptr %i.cx, ptr %i.y, align 8, !tbaa !317
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8, !tbaa !318
  store i32 %i.cy, ptr %i.z, align 8, !tbaa !319
  store ptr getelementptr inbounds nuw (i8, ptr @server, i64 7148), ptr %i.aa, align 8, !tbaa !320
  store ptr getelementptr inbounds nuw (i8, ptr @server, i64 7189), ptr %i.ab, align 8, !tbaa !321
  %i.cz = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !294
  store <2 x i64> %i.cz, ptr %i.ac, align 8, !tbaa !29
  br label %moduleInitKey.exit
end_hunk_2
