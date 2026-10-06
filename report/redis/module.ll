Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/module?download=true
inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.562 = private unnamed_addr constant [20 x i8] c"RedisModule_RdbSave\00", align 1
@.str.563 = private unnamed_addr constant [30 x i8] c"RedisModule_GetInternalSecret\00", align 1
@.str.564 = private unnamed_addr constant [33 x i8] c"RedisModule_ConfigIteratorCreate\00", align 1
@.str.565 = private unnamed_addr constant [34 x i8] c"RedisModule_ConfigIteratorRelease\00", align 1
@.str.566 = private unnamed_addr constant [31 x i8] c"RedisModule_ConfigIteratorNext\00", align 1
@.str.567 = private unnamed_addr constant [26 x i8] c"RedisModule_ConfigGetType\00", align 1
@.str.568 = private unnamed_addr constant [22 x i8] c"RedisModule_ConfigGet\00", align 1
@.str.569 = private unnamed_addr constant [26 x i8] c"RedisModule_ConfigGetBool\00", align 1
@.str.570 = private unnamed_addr constant [26 x i8] c"RedisModule_ConfigGetEnum\00", align 1
@.str.571 = private unnamed_addr constant [29 x i8] c"RedisModule_ConfigGetNumeric\00", align 1
@.str.572 = private unnamed_addr constant [22 x i8] c"RedisModule_ConfigSet\00", align 1
@.str.573 = private unnamed_addr constant [26 x i8] c"RedisModule_ConfigSetBool\00", align 1
@.str.574 = private unnamed_addr constant [26 x i8] c"RedisModule_ConfigSetEnum\00", align 1
@.str.575 = private unnamed_addr constant [29 x i8] c"RedisModule_ConfigSetNumeric\00", align 1
@.str.576 = private unnamed_addr constant [12 x i8] c"!promise->c\00", align 1
@.str.577 = private unnamed_addr constant [18 x i8] c"key->iter != NULL\00", align 1
@.str.578 = private unnamed_addr constant [38 x i8] c"Invalid command info: version missing\00", align 1
@.str.579 = private unnamed_addr constant [51 x i8] c"Invalid command info: history[%zd].changes missing\00", align 1
@.str.580 = private unnamed_addr constant [41 x i8] c"Invalid command info: Too many key specs\00", align 1
@.str.581 = private unnamed_addr constant [93 x i8] c"Invalid command info: key_specs[%zd].flags: Exactly one of the flags RO, RW, OW, RM required\00", align 1
@.str.582 = private unnamed_addr constant [93 x i8] c"Invalid command info: key_specs[%zd].flags: INSERT, DELETE and UPDATE are mutually exclusive\00", align 1
@.str.583 = private unnamed_addr constant [99 x i8] c"Invalid command info: key_specs[%zd].bs.keyword.keyword required when begin_search_type is KEYWORD\00", align 1
@.str.584 = private unnamed_addr constant [73 x i8] c"Invalid command info: key_specs[%zd].begin_search_type: Invalid value %d\00", align 1
@.str.585 = private unnamed_addr constant [70 x i8] c"Invalid command info: key_specs[%zd].find_keys_type: Invalid value %d\00", align 1
@.str.586 = private unnamed_addr constant [55 x i8] c"Invalid command info: Argument \22%s\22: Undefined type %d\00", align 1
@.str.587 = private unnamed_addr constant [76 x i8] c"Invalid command info: Argument \22%s\22: token required when type is PURE_TOKEN\00", align 1
@.str.588 = private unnamed_addr constant [78 x i8] c"Invalid command info: Argument \22%s\22: key_spec_index required when type is KEY\00", align 1
@.str.589 = private unnamed_addr constant [81 x i8] c"Invalid command info: Argument \22%s\22: key_spec_index specified but type isn't KEY\00", align 1
@.str.590 = private unnamed_addr constant [51 x i8] c"Invalid command info: Argument \22%s\22: Invalid flags\00", align 1
@.str.591 = private unnamed_addr constant [82 x i8] c"Invalid command info: Argument \22%s\22: subargs required when type is ONEOF or BLOCK\00", align 1
@.str.592 = private unnamed_addr constant [86 x i8] c"Invalid command info: Argument \22%s\22: subargs specified but type isn't ONEOF nor BLOCK\00", align 1
@__const.moduleConvertKeySpecsFlags.map = private unnamed_addr constant [12 x [2 x i64]] [[2 x i64] [i64 1, i64 1], [2 x i64] [i64 2, i64 2], [2 x i64] [i64 4, i64 4], [2 x i64] [i64 8, i64 8], [2 x i64] [i64 16, i64 16], [2 x i64] [i64 64, i64 64], [2 x i64] [i64 32, i64 32], [2 x i64] [i64 128, i64 128], [2 x i64] [i64 256, i64 256], [2 x i64] [i64 512, i64 512], [2 x i64] [i64 1024, i64 1024], [2 x i64] zeroinitializer], align 16
@.str.593 = private unnamed_addr constant [50 x i8] c"count < SIZE_MAX / sizeof(struct redisCommandArg)\00", align 1
@.str.594 = private unnamed_addr constant [18 x i8] c"key->iter == NULL\00", align 1
@.str.595 = private unnamed_addr constant [26 x i8] c"key->kv->type == OBJ_LIST\00", align 1
@.str.596 = private unnamed_addr constant [14 x i8] c"field != NULL\00", align 1
@.str.597 = private unnamed_addr constant [11 x i8] c"*redacted*\00", align 1
@.str.598 = private unnamed_addr constant [20 x i8] c"endOfPrefix != NULL\00", align 1
@configerr = internal global [256 x i8] zeroinitializer, align 16
@switch.table.RM_KeyType = private unnamed_addr constant [7 x i8] c"\01\02\04\05\03\06\07", align 4
@switch.table.RM_ACLAddLogEntryByUserName = private unnamed_addr constant [4 x i8] c"\03\01\02\04", align 4
@switch.table.RM_ConfigGetType = private unnamed_addr constant [6 x i8] c"\03\02\00\00\01\00", align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_Alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @zmalloc_usable(i64 noundef %0, ptr noundef null) #31
  ret ptr %i.a
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_TryAlloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @ztrymalloc_usable(i64 noundef %0, ptr noundef null) #31
  ret ptr %i.a
}

declare ptr @ztrymalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_Calloc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = mul i64 %1, %0
  %i.b = tail call ptr @zcalloc_usable(i64 noundef %i.a, ptr noundef null) #31
  ret ptr %i.b
}

declare ptr @zcalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_TryCalloc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = mul i64 %1, %0
  %i.b = tail call ptr @ztrycalloc_usable(i64 noundef %i.a, ptr noundef null) #31
  ret ptr %i.b
}

declare ptr @ztrycalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_Realloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @zrealloc_usable(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null) #31
  ret ptr %i.a
}

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_TryRealloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @ztryrealloc_usable(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null) #31
  ret ptr %i.a
}

declare ptr @ztryrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RM_Free(ptr noundef %0) #0 {
bb.a:
  tail call void @zfree(ptr noundef %0) #31
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @RM_Strdup(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @zstrdup(ptr noundef %0) #31
  ret ptr %i.a
}

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @poolAllocRelease(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  tail call void @zfree(ptr noundef nonnull %.07) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_PoolAlloc(ptr nofree noundef captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge53, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29   ; 4 uses
  %i.g = sub i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %.critedge53, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.041 = phi i64 [ %i.k, %.preheader ], [ 8, %bb.c ] ; 4 uses
  %i.j = icmp samesign ult i64 %1, %.041
  %i.k = lshr i64 %.041, 1                        ; 2 uses
  %i.l = icmp samesign uge i64 %i.k, %1
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %.preheader, label %bb.d, !llvm.loop !480

bb.d:                                             ; preds = %.preheader
  %i.n = zext i32 %i.f to i64
  %i.o = add nuw nsw i64 %.041, 4294967295
  %i.p = and i64 %i.o, %i.n                       ; 2 uses
  %.not52 = icmp eq i64 %i.p, 0
  br i1 %.not52, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i64 %.041, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.f, %i.r                       ; 3 uses
  store i32 %i.s, ptr %i.e, align 4, !tbaa !29
  %.pre = sub nuw i32 %i.d, %i.s
  %.pre54 = zext i32 %.pre to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %.pre-phi55 = phi i64 [ %.pre54, %bb.e ], [ %i.h, %bb.d ]
  %i.t = phi i32 [ %i.s, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.u = icmp ugt i32 %i.t, %i.d
  %i.v = icmp samesign ugt i64 %1, %.pre-phi55
  %i.w = select i1 %i.u, i1 true, i1 %i.v
  br i1 %i.w, label %.critedge53, label %bb.f

.critedge53:                                      ; preds = %bb.c, %bb.b, %.critedge
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 8192) ; 2 uses
  %i.x = add i64 %spec.select, 16
  %i.y = tail call noalias ptr @zmalloc(i64 noundef %i.x) #32 ; 4 uses
  %i.z = trunc i64 %spec.select to i32
  store i32 %i.z, ptr %i.y, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !42
  store ptr %i.y, ptr %i.b, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %.critedge53, %.critedge
  %i.ac = phi i32 [ 0, %.critedge53 ], [ %i.t, %.critedge ] ; 2 uses
  %.043 = phi ptr [ %i.y, %.critedge53 ], [ %i.c, %.critedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = trunc i64 %1 to i32
  %i.ai = add i32 %i.ac, %i.ah
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ %i.ag, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @moduleAllocTempClient() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @moduleTempClientCount, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @moduleTempClients, align 8, !tbaa !47
  %i.c = add i64 %i.a, -1                         ; 4 uses
  store i64 %i.c, ptr @moduleTempClientCount, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load i64, ptr @moduleTempClientMinCount, align 8, !tbaa !45
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr @moduleTempClientMinCount, align 8, !tbaa !45
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @createClient(ptr noundef null) #31 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69
  %i.k = or i64 %i.j, 134217728
  store i64 %i.k, ptr %i.i, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store ptr null, ptr %i.l, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.h, %bb.d ]
  ret ptr %.0
}

declare ptr @createClient(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleReleaseTempClient(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @moduleTempClientCount, align 8, !tbaa !45 ; 3 uses
  %i.b = load i64, ptr @moduleTempClientCap, align 8, !tbaa !45
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  %i.d = shl i64 %i.a, 1
  %i.e = select i1 %.not, i64 32, i64 %i.d        ; 2 uses
  store i64 %i.e, ptr @moduleTempClientCap, align 8, !tbaa !45
  %i.f = load ptr, ptr @moduleTempClients, align 8, !tbaa !47
  %i.g = shl i64 %i.e, 3
  %i.h = tail call ptr @zrealloc(ptr noundef %i.f, i64 noundef %i.g) #33
  store ptr %i.h, ptr @moduleTempClients, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @clearClientConnectionState(ptr noundef %0) #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @listEmpty(ptr noundef %i.j) #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.k, align 8, !tbaa !481
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.l, align 8, !tbaa !482
  tail call void @resetClient(ptr noundef %0, i32 noundef -1) #31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load i64, ptr %i.m, align 8, !tbaa !483
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 672) #31
  tail call void @abort() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 0, ptr %i.p, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 134217728, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 5 uses
  %.not19 = icmp eq ptr %i.u, null
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.v, align 8, !tbaa !77
  %i.w = load i64, ptr %i.u, align 8, !tbaa !78
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !tbaa !78
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.g, label %freeRedisModuleAsyncRMCallPromise.exit

bb.g:                                             ; preds = %bb.f
  tail call void @zfree(ptr noundef nonnull %i.u) #31
  br label %freeRedisModuleAsyncRMCallPromise.exit

freeRedisModuleAsyncRMCallPromise.exit:           ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.t, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %freeRedisModuleAsyncRMCallPromise.exit, %bb.e
  %i.y = load ptr, ptr @moduleTempClients, align 8, !tbaa !47
  %i.z = load i64, ptr @moduleTempClientCount, align 8, !tbaa !45 ; 2 uses
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr @moduleTempClientCount, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  store ptr %0, ptr %i.ab, align 8, !tbaa !48
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @clearClientConnectionState(ptr noundef) local_unnamed_addr #1

declare void @listEmpty(ptr noundef) local_unnamed_addr #1

declare void @resetClient(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @moduleCreateEmptyKey(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %moduleInitKeyTypeSpecific.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.c, label %moduleInitKeyTypeSpecific.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %moduleInitKeyTypeSpecific.exit [
    i32 2, label %bb.d
    i32 5, label %bb.e
    i32 3, label %bb.f
    i32 7, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @createListListpackObject() #31
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @createZsetListpackObject() #31
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = tail call ptr @createHashObject() #31
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = tail call ptr @createStreamObject() #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
end_hunk_0
