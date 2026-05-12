inline.NumInlined: 95
inline.NumDeleted: 16
begin_hunk_0_@restoreCommand:bb.a
  %i.c = alloca i64, align 8                      ; 7 uses
  %1 = alloca %struct._rio, align 8               ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.KeyMetaSpec, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
end_hunk_0
begin_hunk_1_@restoreCommand:bb.a
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !72
  %i.dm = call ptr @rdbLoadObject(i32 noundef %i.dg, ptr noundef nonnull %1, ptr noundef %i.di, i32 noundef %i.dl, ptr noundef null) #21 ; 2 uses
  store ptr %i.dm, ptr %i.e, align 8, !tbaa !71
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ah, label %bb.ai
end_hunk_1
begin_hunk_2_@restoreCommand:bb.a

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @keyMetaSpecCleanup(ptr noundef nonnull %2) #21
  %3 = load ptr, ptr %i.e, align 8, !tbaa !71
  call void @decrRefCount(ptr noundef %3) #21
  %i.ed = load ptr, ptr @shared, align 8, !tbaa !88
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ed) #21
  br label %bb.ay
end_hunk_2
