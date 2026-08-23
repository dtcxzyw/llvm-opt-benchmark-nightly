Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/postinit?download=true
inline.NumInlined: 28
inline.NumDeleted: 16
begin_hunk_0_@ClientCheckTimeoutHandler:bb.a

; Function Attrs: nounwind uwtable
define internal void @IdleStatsUpdateTimeoutHandler() #0 {
bb.a:
  store volatile i32 1, ptr @IdleStatsUpdateTimeoutPending, align 4
  store volatile i32 1, ptr @InterruptPending, align 4
  %i.a = load ptr, ptr @MyLatch, align 8
  tail call void @SetLatch(ptr noundef %i.a) #12
  ret void
}

declare void @CreateAuxProcessResourceOwner() local_unnamed_addr #2

declare void @StartupXLOG() local_unnamed_addr #2

declare void @ReleaseAuxProcessResources(i1 noundef zeroext) local_unnamed_addr #2

declare void @before_shmem_exit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pgstat_before_server_shutdown(i32 noundef, i64 noundef) #2

declare void @ShutdownXLOG(i32 noundef, i64 noundef) #2

declare void @InitializeProcessXLogLogicalInfo() local_unnamed_addr #2

declare void @RelationCacheInitialize() local_unnamed_addr #2

declare void @InitCatalogCache() local_unnamed_addr #2

declare void @InitPlanCache() local_unnamed_addr #2

declare void @EnablePortalManager() local_unnamed_addr #2

declare void @RelationCacheInitializePhase2() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ShutdownPostgres(i32 %0, i64 %1) #0 {
bb.a:
  tail call void @AbortOutOfAnyTransaction() #12
  tail call void @LockReleaseAll(i16 noundef zeroext 2, i1 noundef zeroext true) #12
  ret void
}

declare void @pgstat_bestart_final() local_unnamed_addr #2

declare void @SetCurrentStatementStartTimestamp() local_unnamed_addr #2

declare void @StartTransactionCommand() local_unnamed_addr #2

declare void @InitializeSessionUserIdStandalone() local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare void @InitializeSessionUserId(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @superuser() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PerformAuthentication(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 8 uses
  store i8 1, ptr @ClientAuthInProgress, align 1
  %i.a = tail call i64 @GetCurrentTimestamp() #12
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @conn_timing, i64 32), align 8
  %i.b = load i32, ptr @AuthenticationTimeout, align 4
  %i.c = mul i32 %i.b, 1000
  tail call void @enable_timeout_after(i32 noundef 3, i32 noundef %i.c) #12
  tail call void @set_ps_display_with_len(ptr noundef nonnull @.str.24, i64 noundef 14) #12
  tail call void @ClientAuthentication(ptr noundef %0) #12
  tail call void @disable_timeout(i32 noundef 3, i1 noundef zeroext false) #12
  %i.d = tail call i64 @GetCurrentTimestamp() #12
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @conn_timing, i64 40), align 8
  %i.e = load i32, ptr @log_connections, align 4
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @initStringInfo(ptr noundef nonnull %1) #12
  %i.g = load i8, ptr @am_walsender, align 1, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.j = load ptr, ptr %i.i, align 8
  %.str.25..str.26 = select i1 %i.h, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull %.str.25..str.26, ptr noundef %i.j) #12
  %i.k = load i8, ptr @am_walsender, align 1, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, ptr noundef %i.n) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.p, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.p) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #12
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8
  %i.s = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.29, ptr noundef %i.r) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 324, ptr noundef nonnull @__func__.PerformAuthentication) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load ptr, ptr %1, align 8
  call void @pfree(ptr noundef %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  call void @set_ps_display_with_len(ptr noundef nonnull @.str.30, i64 noundef 7) #12
  store i8 0, ptr @ClientAuthInProgress, align 1
  ret void
}

declare void @InitializeSystemUser(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hba_authname(i32 noundef) local_unnamed_addr #2

declare void @pgstat_bestart_security() local_unnamed_addr #2

declare zeroext i1 @HaveNFreeProcs(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @has_privs_of_role(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare zeroext i1 @has_rolreplication(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @process_startup_options(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = select i1 %1, i32 3, i32 4               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15
  %i.f = shl i64 %i.e, 31
  %sext = add i64 %i.f, 10737418240
  %i.g = ashr i64 %sext, 32
  %i.h = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.g) #12 ; 4 uses
  store i32 1, ptr %i.a, align 4
  store ptr @.str.7, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.c, align 8
  call void @pg_split_opts(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef %i.i)
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  store ptr null, ptr %i.l, align 8
  tail call void @process_postgres_switches(i32 noundef %i.j, ptr noundef nonnull %i.h, i32 noundef %i.b, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %list_head.exit

list_head.exit:                                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not2025 = icmp eq ptr %i.p, null
  br i1 %.not2025, label %select.unfold._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %list_head.exit, %select.unfold
  %.026 = phi ptr [ %i.z, %select.unfold ], [ %i.p, %list_head.exit ] ; 2 uses
  %i.q = load ptr, ptr %.026, align 8
  %i.r = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val22 = load i32, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val23 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 3 uses
  %i.v = sext i32 %.val22 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val23, i64 %i.v ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  %..i = select i1 %i.x, ptr %i.u, ptr null
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %..i, i64 8 ; 2 uses
  %.not27 = icmp ult ptr %i.z, %i.w
  tail call void @SetConfigOption(ptr noundef %i.q, ptr noundef %i.y, i32 noundef %i.b, i32 noundef 9) #12
  br i1 %.not27, label %select.unfold, label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.c, %list_head.exit
  ret void
}

declare void @pg_usleep(i64 noundef) local_unnamed_addr #2

declare void @InitializeClientEncoding() local_unnamed_addr #2

declare void @CommitTransactionCommand() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @EmitConnectionWarnings() unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ConnectionWarningsEmitted, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.b = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1549, ptr noundef nonnull @__func__.EmitConnectionWarnings) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @ConnectionWarningsEmitted, align 1
  %i.c = load ptr, ptr @ConnectionWarnings, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.split20.us, label %.lr.ph

.split20.us.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr @ConnectionWarnings, align 8
  br label %.split20.us

.split20.us:                                      ; preds = %.split20.us.loopexit, %.lr.ph, %bb.c
  %i.e = phi ptr [ null, %bb.c ], [ %.pre, %.split20.us.loopexit ], [ %i.c, %.lr.ph ]
  tail call void @list_free(ptr noundef %i.e) #12
  store ptr null, ptr @ConnectionWarnings, align 8
  ret void

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.f, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph18, label %.split20.us

.lr.ph18:                                         ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph18
  %i.p = tail call zeroext i1 %i.n() #12
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %.lr.ph18
  %i.q = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #12
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, ptr noundef %i.r) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.29, ptr noundef %i.u) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1558, ptr noundef nonnull @__func__.EmitConnectionWarnings) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.w = load ptr, ptr %i.l, align 8
  tail call void @pfree(ptr noundef %i.w) #12
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @pfree(ptr noundef %i.y) #12
  tail call void @pfree(ptr noundef nonnull %i.l) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph18, label %.split20.us.loopexit
}

declare void @LockSharedObject(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @namestrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @database_is_invalid_form(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

declare void @InvalidateCatalogSnapshot() local_unnamed_addr #2

declare ptr @GetDatabasePath(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @errcode_for_file_access() local_unnamed_addr #2

declare void @ValidatePgVersion(ptr noundef) local_unnamed_addr #2

declare void @SetDatabasePath(ptr noundef) local_unnamed_addr #2

declare void @RelationCacheInitializePhase3() local_unnamed_addr #2

declare void @initialize_acl() local_unnamed_addr #2

declare i32 @GetSessionUserId() local_unnamed_addr #2

declare void @InitializeSearchPath() local_unnamed_addr #2

declare void @InitializeSession() local_unnamed_addr #2

declare void @process_session_preload_libraries() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @StoreConnectionWarning(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @ConnectionWarningsEmitted, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.b = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1526, ptr noundef nonnull @__func__.StoreConnectionWarning) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @TopMemoryContext, align 8
  %i.d = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.c, ptr @CurrentMemoryContext, align 8
  %i.e = tail call ptr @palloc(i64 noundef 24) #12 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.g, align 8
  %i.h = load ptr, ptr @ConnectionWarnings, align 8
  %i.i = tail call ptr @lappend(ptr noundef %i.h, ptr noundef nonnull %i.e) #12
  store ptr %i.i, ptr @ConnectionWarnings, align 8
  store ptr %i.d, ptr @CurrentMemoryContext, align 8
  ret void
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare i64 @GetCurrentTimestamp() local_unnamed_addr #2

declare void @enable_timeout_after(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ClientAuthentication(ptr noundef) local_unnamed_addr #2

declare void @disable_timeout(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @set_ps_display_with_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @ScanKeyInit(ptr noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @systable_beginscan(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @systable_getnext(ptr noundef) local_unnamed_addr #2

declare ptr @heap_copytuple(ptr noundef) local_unnamed_addr #2

declare void @systable_endscan(ptr noundef) local_unnamed_addr #2

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @object_aclcheck(i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CountDBConnections(i32 noundef) local_unnamed_addr #2

declare void @SetDatabaseEncoding(i32 noundef) local_unnamed_addr #2

declare void @SetConfigOption(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GetDatabaseEncodingName() local_unnamed_addr #2

declare i64 @SysCacheGetAttrNotNull(i32 noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #2

declare ptr @pg_perm_setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @init_database_collation() local_unnamed_addr #2

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @get_collation_actual_version(i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @quote_identifier(ptr noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @process_postgres_switches(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RegisterSnapshot(ptr noundef) local_unnamed_addr #2

declare ptr @GetCatalogSnapshot(i32 noundef) local_unnamed_addr #2

declare void @ApplySetting(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UnregisterSnapshot(ptr noundef) local_unnamed_addr #2

declare void @AbortOutOfAnyTransaction() local_unnamed_addr #2

declare void @LockReleaseAll(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @SetLatch(ptr noundef) local_unnamed_addr #2

declare ptr @table_beginscan_catalog(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @heap_getnext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{null, null}
end_hunk_0
