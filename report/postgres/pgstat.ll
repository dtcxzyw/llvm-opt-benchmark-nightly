Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgstat?download=true
inline.NumInlined: 130
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@__func__.pgstat_snapshot_insert_hash_internal = private unnamed_addr constant [37 x i8] c"pgstat_snapshot_insert_hash_internal\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"hash table too large\00", align 1
@__func__.pgstat_snapshot_compute_size = private unnamed_addr constant [29 x i8] c"pgstat_snapshot_compute_size\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"PgStat Snapshot\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"relation\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"replslot\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"subscription\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"archiver\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"bgwriter\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"checkpointer\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"slru\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"wal\00", align 1
@pgstat_kind_builtin_infos = internal constant <{ %struct.PgStat_KindInfo, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } }> <{ %struct.PgStat_KindInfo zeroinitializer, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 6, [3 x i8] zeroinitializer, i32 288, i32 0, i32 0, i32 24, i32 264, i32 264, [4 x i8] zeroinitializer, ptr null, ptr @pgstat_database_flush_cb, ptr null, ptr @pgstat_database_reset_timestamp_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.23 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 4, [3 x i8] zeroinitializer, i32 248, i32 0, i32 0, i32 24, i32 224, i32 136, [4 x i8] zeroinitializer, ptr null, ptr @pgstat_relation_flush_cb, ptr @pgstat_relation_delete_pending_cb, ptr @pgstat_relation_reset_timestamp_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.24 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 4, [3 x i8] zeroinitializer, i32 56, i32 0, i32 0, i32 24, i32 32, i32 24, [4 x i8] zeroinitializer, ptr null, ptr @pgstat_function_flush_cb, ptr null, ptr @pgstat_function_reset_timestamp_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.25 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 6, [3 x i8] zeroinitializer, i32 120, i32 0, i32 0, i32 24, i32 96, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @pgstat_replslot_reset_timestamp_cb, ptr @pgstat_replslot_to_serialized_name_cb, ptr @pgstat_replslot_from_serialized_name_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.26 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 6, [3 x i8] zeroinitializer, i32 120, i32 0, i32 0, i32 24, i32 96, i32 88, [4 x i8] zeroinitializer, ptr null, ptr @pgstat_subscription_flush_cb, ptr null, ptr @pgstat_subscription_reset_timestamp_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.27 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 2, [3 x i8] zeroinitializer, i32 2952, i32 0, i32 0, i32 24, i32 2928, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @pgstat_backend_reset_timestamp_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_backend_flush_cb, ptr null, ptr null, ptr @.str.28 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 32, i32 288, i32 24, i32 136, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_archiver_init_shmem_cb, ptr null, ptr @pgstat_archiver_reset_all_cb, ptr @pgstat_archiver_snapshot_cb, ptr @.str.29 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 168, i32 584, i32 24, i32 32, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_bgwriter_init_shmem_cb, ptr null, ptr @pgstat_bgwriter_reset_all_cb, ptr @pgstat_bgwriter_snapshot_cb, ptr @.str.30 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 200, i32 672, i32 24, i32 88, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_checkpointer_init_shmem_cb, ptr null, ptr @pgstat_checkpointer_reset_all_cb, ptr @pgstat_checkpointer_snapshot_cb, ptr @.str.31 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 288, i32 872, i32 320, i32 57608, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_io_init_shmem_cb, ptr @pgstat_io_flush_cb, ptr @pgstat_io_reset_all_cb, ptr @pgstat_io_snapshot_cb, ptr @.str.32 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 57896, i32 58800, i32 16, i32 296, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_lock_init_shmem_cb, ptr @pgstat_lock_flush_cb, ptr @pgstat_lock_reset_all_cb, ptr @pgstat_lock_snapshot_cb, ptr @.str.33 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 58192, i32 59112, i32 16, i32 512, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_slru_init_shmem_cb, ptr @pgstat_slru_flush_cb, ptr @pgstat_slru_reset_all_cb, ptr @pgstat_slru_snapshot_cb, ptr @.str.34 }, { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i8 5, [3 x i8] zeroinitializer, i32 0, i32 58704, i32 59640, i32 16, i32 48, i32 0, [4 x i8] zeroinitializer, ptr @pgstat_wal_init_backend_cb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pgstat_wal_init_shmem_cb, ptr @pgstat_wal_flush_cb, ptr @pgstat_wal_reset_all_cb, ptr @pgstat_wal_snapshot_cb, ptr @.str.35 } }>, align 16
@.str.37 = private unnamed_addr constant [19 x i8] c"pg_stat/pgstat.tmp\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"writing stats file \22%s\22\00", align 1
@__func__.pgstat_write_statsfile = private unnamed_addr constant [23 x i8] c"pgstat_write_statsfile\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"could not open temporary statistics file \22%s\22: %m\00", align 1
@InterruptPending = external global i32, align 4
@.str.41 = private unnamed_addr constant [36 x i8] c"found unknown stats entry %u/%u/%lu\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"could not write temporary statistics file \22%s\22: %m\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"could not close temporary statistics file \22%s\22: %m\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"reading stats file \22%s\22\00", align 1
@__func__.pgstat_read_statsfile = private unnamed_addr constant [22 x i8] c"pgstat_read_statsfile\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"could not open statistics file \22%s\22: %m\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"could not read format ID\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"found incorrect format ID %d (expected %d)\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"could not read stats kind for entry of type %c\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"invalid stats kind %u for entry of type %c\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"could not find information of kind %u for entry of type %c\00", align 1
@.str.52 = private unnamed_addr constant [59 x i8] c"invalid fixed_amount in stats kind %u for entry of type %c\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"could not read data of stats kind %u for entry of type %c with size %u\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"could not read key for entry of type %c\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"invalid stats kind for entry %u/%u/%lu of type %c\00", align 1
@.str.56 = private unnamed_addr constant [66 x i8] c"could not find information of kind for entry %u/%u/%lu of type %c\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"could not read name of stats kind %u for entry of type %c\00", align 1
@.str.58 = private unnamed_addr constant [67 x i8] c"invalid from_serialized_name in stats kind %u for entry of type %c\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"could not seek \22%s\22 of stats kind %u for entry of type %c\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"found duplicate stats entry %u/%u/%lu of type %c\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"could not allocate entry %u/%u/%lu of type %c\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"could not read data for entry %u/%u/%lu of type %c\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c"could not read auxiliary data for entry %u/%u/%lu of type %c\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"could not read end-of-file\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"could not read entry of type %c\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"removing permanent stats file \22%s\22\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"corrupted statistics file \22%s\22\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_restore_stats() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %0 = alloca %struct.PgStat_HashKey, align 8     ; 30 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %1 = alloca %struct.nameData, align 1           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.e = load ptr, ptr @pgStatLocal, align 8      ; 2 uses
  %i.f = tail call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #16
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1821, ptr noundef nonnull @__func__.pgstat_read_statsfile) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @AllocateFile(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #16 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #17
  %i.k = load i32, ptr %i.j, align 4
  %.not100.i = icmp eq i32 %i.k, 2
  br i1 %.not100.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #16
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @errcode_for_file_access() #16 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1838, ptr noundef nonnull @__func__.pgstat_read_statsfile) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = tail call i64 @GetCurrentTimestamp() #16
  br label %bb.h

bb.h:                                             ; preds = %pgstat_get_kind_info.exit.thread.i.i, %bb.g
  %indvars.iv.i.i = phi i64 [ 1, %bb.g ], [ %indvars.iv.next.i.i, %pgstat_get_kind_info.exit.thread.i.i ] ; 4 uses
  %i.p = icmp samesign ult i64 %indvars.iv.i.i, 14
  br i1 %i.p, label %pgstat_get_kind_info.exit.thread9.i.i, label %bb.i

pgstat_get_kind_info.exit.thread9.i.i:            ; preds = %bb.h
  %i.q = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %indvars.iv.i.i
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i64 %indvars.iv.i.i, -24         ; 2 uses
  %i.s = icmp ult i64 %i.r, 9
  br i1 %i.s, label %bb.j, label %pgstat_get_kind_info.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %pgstat_get_kind_info.exit.thread.i.i, label %pgstat_get_kind_info.exit.i.i

pgstat_get_kind_info.exit.i.i:                    ; preds = %bb.j
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %pgstat_get_kind_info.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %pgstat_get_kind_info.exit.i.i, %pgstat_get_kind_info.exit.thread9.i.i
  %.1.i12.i.i = phi ptr [ %i.q, %pgstat_get_kind_info.exit.thread9.i.i ], [ %i.w, %pgstat_get_kind_info.exit.i.i ] ; 2 uses
  %i.x = load i8, ptr %.1.i12.i.i, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.l, label %pgstat_get_kind_info.exit.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i12.i.i, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(i64 noundef %i.o) #16, !inline_history !11
  br label %pgstat_get_kind_info.exit.thread.i.i

pgstat_get_kind_info.exit.thread.i.i:             ; preds = %bb.l, %bb.k, %pgstat_get_kind_info.exit.i.i, %bb.j, %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 33
  br i1 %exitcond.not.i.i, label %pgstat_reset_after_failure.exit.i, label %bb.h, !llvm.loop !0

pgstat_reset_after_failure.exit.i:                ; preds = %pgstat_get_kind_info.exit.thread.i.i
  tail call void @pgstat_drop_all_entries() #16
  br label %pgstat_read_statsfile.exit

bb.m:                                             ; preds = %bb.c
  %i.ab = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.h)
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ad, label %bb.o, label %.thread159.i

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1848, ptr noundef nonnull @__func__.pgstat_read_statsfile) #16
  br label %.thread159.i

bb.p:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i = icmp eq i32 %i.af, 27638972
  br i1 %.not.i, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 59704
  br label %.backedge.i

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ah, label %bb.r, label %.thread159.i

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.48, i32 noundef %i.af, i32 noundef 27638972) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1855, ptr noundef nonnull @__func__.pgstat_read_statsfile) #16
  br label %.thread159.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.aj = call i32 @fgetc(ptr noundef nonnull %i.h) ; 13 uses
  switch i32 %i.aj, label %bb.cm [
    i32 70, label %bb.s
    i32 83, label %bb.ak
    i32 78, label %bb.ak
    i32 69, label %bb.cj
  ]

bb.s:                                             ; preds = %.backedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ak = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.h)
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.am, label %bb.u, label %.thread134.i

bb.u:                                             ; preds = %bb.t
  %i.an = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.49, i32 noundef 70) #16 ; 0 uses
  br label %.thread134.sink.split.i

bb.v:                                             ; preds = %bb.s
  %i.ao = load i32, ptr %i.c, align 4             ; 8 uses
  %i.ap = add i32 %i.ao, -1
  %i.aq = icmp ult i32 %i.ap, 13                  ; 2 uses
  %i.ar = add i32 %i.ao, -24                      ; 2 uses
  %i.as = icmp ult i32 %i.ar, 9                   ; 2 uses
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.au, label %bb.x, label %.thread134.i

bb.x:                                             ; preds = %bb.w
  %i.av = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.50, i32 noundef %i.ao, i32 noundef 70) #16 ; 0 uses
  br label %.thread134.sink.split.i

bb.y:                                             ; preds = %bb.v
  br i1 %i.aq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.as, label %bb.aa, label %pgstat_get_kind_info.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.aw = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %pgstat_get_kind_info.exit.thread.i, label %pgstat_get_kind_info.exit.i

pgstat_get_kind_info.exit.i:                      ; preds = %bb.aa
  %i.ay = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %.not97.i = icmp eq ptr %i.ba, null
  br i1 %.not97.i, label %pgstat_get_kind_info.exit.thread.i, label %.thread.i

pgstat_get_kind_info.exit.thread.i:               ; preds = %pgstat_get_kind_info.exit.i, %bb.aa, %bb.z
  %i.bb = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.bb, label %bb.ab, label %.thread134.i

bb.ab:                                            ; preds = %pgstat_get_kind_info.exit.thread.i
  %i.bc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.51, i32 noundef %i.ao, i32 noundef 70) #16 ; 0 uses
  br label %.thread134.sink.split.i

bb.ac:                                            ; preds = %bb.y
  %2 = add nsw i32 %i.ao, -7
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %bb.af, label %bb.ad

.thread.i:                                        ; preds = %pgstat_get_kind_info.exit.i
  %i.bd = load i8, ptr %i.ba, align 8
  %i.be = trunc i8 %i.bd to i1
  br i1 %i.be, label %.thread130.i, label %bb.ad

bb.ad:                                            ; preds = %.thread.i, %bb.ac
  %i.bf = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.bf, label %bb.ae, label %.thread134.i

bb.ae:                                            ; preds = %bb.ad
  %i.bg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.52, i32 noundef %i.ao, i32 noundef 70) #16 ; 0 uses
  br label %.thread134.sink.split.i

bb.af:                                            ; preds = %bb.ac
  %4 = zext nneg i32 %i.ao to i64
  %5 = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bj
  br label %bb.ag

.thread130.i:                                     ; preds = %.thread.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ay
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.thread130.i, %bb.af
  %.sink295.i = phi ptr [ %i.ba, %.thread130.i ], [ %5, %bb.af ] ; 3 uses
  %.sink.i = phi ptr [ %i.bm, %.thread130.i ], [ %i.bk, %bb.af ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink295.i, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.sink295.i, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = call i64 @fread(ptr noundef %i.bq, i64 noundef 1, i64 noundef %i.bt, ptr noundef nonnull %i.h)
  %i.bv = icmp eq i64 %i.bu, %i.bt
  br i1 %i.bv, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.bw, label %bb.ai, label %.thread134.i

bb.ai:                                            ; preds = %bb.ah
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink295.i, i64 20
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.53, i32 noundef %i.ao, i32 noundef 70, i32 noundef %i.by) #16 ; 0 uses
  br label %.thread134.sink.split.i

.thread134.sink.split.i:                          ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.u
  %.sink296.i = phi i32 [ 1878, %bb.u ], [ 1885, %bb.x ], [ 1893, %bb.ab ], [ 1900, %bb.ae ], [ 1919, %bb.ai ]
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef %.sink296.i, ptr noundef nonnull @__func__.pgstat_read_statsfile) #16
  br label %.thread134.i

.thread134.i:                                     ; preds = %.thread134.sink.split.i, %bb.ah, %bb.ad, %pgstat_get_kind_info.exit.thread.i, %bb.w, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread159.i

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.backedge.i.backedge

bb.ak:                                            ; preds = %.backedge.i, %.backedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.ca = load volatile i32, ptr @InterruptPending, align 4
  %.not91.i = icmp eq i32 %i.ca, 0
  br i1 %.not91.i, label %bb.am, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  call void @ProcessInterrupts() #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cb = icmp eq i32 %i.aj, 83
  br i1 %i.cb, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.cc = call i64 @fread(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.h)
  %i.cd = icmp eq i64 %i.cc, 16
  br i1 %i.cd, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ce, label %bb.ap, label %.thread159.critedge.i

bb.ap:                                            ; preds = %bb.ao
  %i.cf = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.54, i32 noundef 83) #16 ; 0 uses
  br label %.thread159.critedge.sink.split.i

bb.aq:                                            ; preds = %bb.an
  %i.cg = load i32, ptr %0, align 8               ; 3 uses
  %i.ch = add i32 %i.cg, -1
  %i.ci = icmp ult i32 %i.ch, 13                  ; 2 uses
  %i.cj = add i32 %i.cg, -24                      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 9                   ; 2 uses
  %i.cl = or i1 %i.ci, %i.ck
  br i1 %i.cl, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.cm, label %bb.as, label %.thread159.critedge.i

bb.as:                                            ; preds = %bb.ar
  %i.cn = load i32, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.55, i32 noundef %i.cn, i32 noundef %i.cp, i64 noundef %i.cr, i32 noundef 83) #16 ; 0 uses
  br label %.thread159.critedge.sink.split.i

bb.at:                                            ; preds = %bb.aq
  br i1 %i.ci, label %pgstat_get_kind_info.exit102.thread139.i, label %bb.au

pgstat_get_kind_info.exit102.thread139.i:         ; preds = %bb.at
  %i.ct = zext nneg i32 %i.cg to i64
  %i.cu = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.ct
  br label %bb.bu

bb.au:                                            ; preds = %bb.at
  br i1 %i.ck, label %bb.av, label %pgstat_get_kind_info.exit102.thread.i

bb.av:                                            ; preds = %bb.au
  %i.cv = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %pgstat_get_kind_info.exit102.thread.i, label %pgstat_get_kind_info.exit102.i

pgstat_get_kind_info.exit102.i:                   ; preds = %bb.av
  %i.cx = zext nneg i32 %i.cj to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not95.i = icmp eq ptr %i.cz, null
  br i1 %.not95.i, label %pgstat_get_kind_info.exit102.thread.i, label %bb.bu

pgstat_get_kind_info.exit102.thread.i:            ; preds = %pgstat_get_kind_info.exit102.i, %bb.av, %bb.au
  %i.da = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.da, label %bb.aw, label %.thread159.critedge.i

bb.aw:                                            ; preds = %pgstat_get_kind_info.exit102.thread.i
  %i.db = load i32, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.56, i32 noundef %i.db, i32 noundef %i.dd, i64 noundef %i.df, i32 noundef 83) #16 ; 0 uses
  br label %.thread159.critedge.sink.split.i

bb.ax:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.dh = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.h)
  %i.di = icmp eq i64 %i.dh, 4
  br i1 %i.di, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dj = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.dj, label %bb.az, label %.thread159.critedge170.i

bb.az:                                            ; preds = %bb.ay
  %i.dk = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.49, i32 noundef %i.aj) #16 ; 0 uses
  br label %.thread159.critedge170.sink.split.i

bb.ba:                                            ; preds = %bb.ax
  %i.dl = call i64 @fread(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 64, ptr noundef nonnull %i.h)
  %i.dm = icmp eq i64 %i.dl, 64
  br i1 %i.dm, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.dn, label %bb.bc, label %.thread159.critedge170.i

bb.bc:                                            ; preds = %bb.bb
  %i.do = load i32, ptr %i.d, align 4
  %i.dp = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.57, i32 noundef %i.do, i32 noundef %i.aj) #16 ; 0 uses
  br label %.thread159.critedge170.sink.split.i

bb.bd:                                            ; preds = %bb.ba
  %i.dq = load i32, ptr %i.d, align 4             ; 10 uses
  %i.dr = add i32 %i.dq, -1
  %i.ds = icmp ult i32 %i.dr, 13                  ; 3 uses
  %i.dt = add i32 %i.dq, -24                      ; 2 uses
  %i.du = icmp ult i32 %i.dt, 9                   ; 2 uses
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dw = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.dw, label %bb.bf, label %.thread159.critedge170.i

bb.bf:                                            ; preds = %bb.be
  %i.dx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.50, i32 noundef %i.dq, i32 noundef %i.aj) #16 ; 0 uses
  br label %.thread159.critedge170.sink.split.i

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.ds, label %pgstat_get_kind_info.exit104.thread144.i, label %bb.bh

pgstat_get_kind_info.exit104.thread144.i:         ; preds = %bb.bg
  %i.dy = zext nneg i32 %i.dq to i64
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.dy
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.du, label %bb.bi, label %pgstat_get_kind_info.exit104.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.ea = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %pgstat_get_kind_info.exit104.thread.i, label %pgstat_get_kind_info.exit104.i

pgstat_get_kind_info.exit104.i:                   ; preds = %bb.bi
  %i.ec = zext nneg i32 %i.dt to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not92.i = icmp eq ptr %i.ee, null
  br i1 %.not92.i, label %pgstat_get_kind_info.exit104.thread.i, label %bb.bk

pgstat_get_kind_info.exit104.thread.i:            ; preds = %pgstat_get_kind_info.exit104.i, %bb.bi, %bb.bh
  %i.ef = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ef, label %bb.bj, label %.thread159.critedge170.i

bb.bj:                                            ; preds = %pgstat_get_kind_info.exit104.thread.i
  %i.eg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.51, i32 noundef %i.dq, i32 noundef %i.aj) #16 ; 0 uses
  br label %.thread159.critedge170.sink.split.i

bb.bk:                                            ; preds = %pgstat_get_kind_info.exit104.i, %pgstat_get_kind_info.exit104.thread144.i
  %.1.i103147.i = phi ptr [ %i.dz, %pgstat_get_kind_info.exit104.thread144.i ], [ %i.ee, %pgstat_get_kind_info.exit104.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.i103147.i, i64 72
end_hunk_0
begin_hunk_1_@pgstat_prep_snapshot:bb.a
  tail call void @pgstat_clear_backend_activity_snapshot() #16
  store i1 false, ptr @force_stats_snapshot_clear, align 1
  br label %bb.d

bb.d:                                             ; preds = %pgstat_clear_snapshot.exit, %bb.a
  %i.b = load i32, ptr @pgstat_fetch_consistency, align 4
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58872), align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58864), align 8 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @TopMemoryContext, align 8
  %i.h = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.g, ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #16 ; 2 uses
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58864), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.e ] ; 3 uses
  %i.j = tail call ptr @MemoryContextAllocZero(ptr noundef %i.i, i64 noundef 48) #16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %i.l, align 8
  %i.m = tail call ptr @MemoryContextAllocExtended(ptr noundef %i.i, i64 noundef 32768, i32 noundef 5) #16
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.m, ptr %i.n, align 8
  store i64 1024, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 1023, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 921, ptr %i.p, align 8
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58872), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pgstat_build_snapshot() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dshash_seq_status, align 8  ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 24), align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @pgstat_prep_snapshot()
  %i.d = tail call i64 @GetCurrentTimestamp() #16
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 32), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 16), align 8
  call void @dshash_seq_init(ptr noundef nonnull %0, ptr noundef %i.e, i1 noundef zeroext false) #16
  %i.f = call ptr @dshash_seq_next(ptr noundef nonnull %0) #16 ; 2 uses
  %.not44 = icmp eq ptr %i.f, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.n
  %i.g = phi ptr [ %i.bn, %bb.n ], [ %i.f, %bb.b ] ; 6 uses
  %i.h = load i32, ptr %i.g, align 8              ; 9 uses
  %i.i = add i32 %i.h, -1
  %i.j = icmp ult i32 %i.i, 13                    ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.k
  br label %pgstat_get_kind_info.exit

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i32 %i.h, -24                        ; 2 uses
  %i.n = icmp ult i32 %i.m, 9
  br i1 %i.n, label %bb.e, label %pgstat_get_kind_info.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %pgstat_get_kind_info.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %pgstat_get_kind_info.exit

pgstat_get_kind_info.exit:                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = load i32, ptr @MyDatabaseId, align 4
  %.not25 = icmp eq i32 %i.u, %i.v
  %.not26 = icmp eq i32 %i.u, 0
  %or.cond = or i1 %.not26, %.not25
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pgstat_get_kind_info.exit
  %i.w = load i8, ptr %.1.i, align 8
  %i.x = and i8 %i.w, 2
  %.not27 = icmp eq i8 %i.x, 0
  br i1 %.not27, label %bb.n, label %bb.h, !llvm.loop !26

bb.h:                                             ; preds = %bb.g, %pgstat_get_kind_info.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !9, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.i, !llvm.loop !26

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 8), align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = call ptr @dsa_get_address(ptr noundef %i.ab, i64 noundef %i.ad) #16 ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58872), align 8
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = call fastcc ptr @pgstat_snapshot_insert(ptr noundef %i.af, i64 %i.ag, i64 %i.ai, ptr noundef %i.a)
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58864), align 8
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = zext nneg i32 %i.h to i64
  %i.am = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.al
  br label %pgstat_get_entry_len.exit

bb.k:                                             ; preds = %bb.i
  %i.an = icmp slt i32 %i.h, 33
  call void @llvm.assume(i1 %i.an)
  %i.ao = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !8, !noundef !8
  %i.ap = sext i32 %i.h to i64
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -192
  %i.as = load ptr, ptr %i.ar, align 8
  br label %pgstat_get_entry_len.exit

pgstat_get_entry_len.exit:                        ; preds = %bb.j, %bb.k
  %.1.i.i = phi ptr [ %i.am, %bb.j ], [ %i.as, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = call ptr @MemoryContextAlloc(ptr noundef %i.ak, i64 noundef %i.av) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.az = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.ay, i32 noundef 1) #16 ; 0 uses
  %i.ba = load ptr, ptr %i.ax, align 8
  br i1 %i.j, label %bb.l, label %bb.m

bb.l:                                             ; preds = %pgstat_get_entry_len.exit
  %i.bb = zext nneg i32 %i.h to i64
  %i.bc = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.bb
  br label %pgstat_get_entry_len.exit30

bb.m:                                             ; preds = %pgstat_get_entry_len.exit
  %i.bd = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !8, !noundef !8
  %i.be = sext i32 %i.h to i64
  %i.bf = getelementptr [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -192
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp slt i32 %i.h, 33
  call void @llvm.assume(i1 %i.bi)
  br label %pgstat_get_entry_len.exit30

pgstat_get_entry_len.exit30:                      ; preds = %bb.l, %bb.m
  %.pn43 = phi ptr [ %i.bc, %bb.l ], [ %i.bh, %bb.m ] ; 2 uses
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %.pn43, i64 16
  %.pn.in = load i32, ptr %.pn.in.in, align 8
  %.pn = zext i32 %.pn.in to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pn
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn43, i64 20
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bj, i64 %i.bm, i1 false)
  call void @LWLockRelease(ptr noundef nonnull %i.ay) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.g, %pgstat_get_entry_len.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bn = call ptr @dshash_seq_next(ptr noundef nonnull %0) #16 ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.b
  call void @dshash_seq_term(ptr noundef nonnull %0) #16
  br label %bb.p

bb.o:                                             ; preds = %pgstat_build_snapshot_fixed.exit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 24), align 8
  br label %bb.w

bb.p:                                             ; preds = %._crit_edge, %pgstat_build_snapshot_fixed.exit
  %indvars.iv = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next, %pgstat_build_snapshot_fixed.exit ] ; 7 uses
  %i.bo = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.bo, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nsw i64 %indvars.iv, -24            ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 9
  br i1 %i.bq, label %bb.r, label %pgstat_build_snapshot_fixed.exit

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %pgstat_build_snapshot_fixed.exit, label %pgstat_get_kind_info.exit32

pgstat_get_kind_info.exit32:                      ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not24 = icmp eq ptr %i.bu, null
  br i1 %.not24, label %pgstat_build_snapshot_fixed.exit, label %.thread

bb.s:                                             ; preds = %bb.p
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %2 = add nsw i32 %1, -7
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %4, label %pgstat_build_snapshot_fixed.exit

.thread:                                          ; preds = %pgstat_get_kind_info.exit32
  %i.bv = load i8, ptr %i.bu, align 8
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %.thread42, label %pgstat_build_snapshot_fixed.exit

4:                                                ; preds = %bb.s
  %5 = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %indvars.iv
  br label %pgstat_get_kind_info.exit.i

.thread42:                                        ; preds = %.thread
  %i.bx = add nsw i64 %indvars.iv, -24
  br label %pgstat_get_kind_info.exit.i

pgstat_get_kind_info.exit.i:                      ; preds = %.thread42, %4
  %.010.i = phi i64 [ %indvars.iv, %4 ], [ %i.bx, %.thread42 ]
  %.0.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 40), %4 ], [ getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58776), %.thread42 ]
  %.1.i.i33 = phi ptr [ %5, %4 ], [ %i.bu, %.thread42 ]
  %i.by = load i32, ptr @pgstat_fetch_consistency, align 4
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = getelementptr inbounds i8, ptr %.0.i, i64 %.010.i ; 3 uses
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %pgstat_get_kind_info.exit.i
  store i8 0, ptr %i.ca, align 1
  br label %bb.v

bb.u:                                             ; preds = %pgstat_get_kind_info.exit.i
  %i.cb = load i8, ptr %i.ca, align 1, !range !9, !noundef !8
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %pgstat_build_snapshot_fixed.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i33, i64 128
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce() #16, !inline_history !1
  store i8 1, ptr %i.ca, align 1
  br label %pgstat_build_snapshot_fixed.exit

pgstat_build_snapshot_fixed.exit:                 ; preds = %bb.q, %bb.r, %bb.v, %bb.u, %.thread, %bb.s, %pgstat_get_kind_info.exit32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !27

bb.w:                                             ; preds = %bb.a, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret void
}

declare ptr @pgstat_get_entry_ref(i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @pgstat_snapshot_insert(ptr nofree noundef captures(none) %0, i64 %1, i64 %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #9 {
.loopexit.i:
  %4 = alloca %struct.PgStat_HashKey, align 8     ; 7 uses
  %i.a = lshr i64 %1, 23
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, 2388976653695081527        ; 2 uses
  %i.d = lshr i64 %i.c, 47
  %i.e = xor i64 %i.c, %i.d
  %i.f = xor i64 %i.e, -9208349263878056368
  %i.g = mul i64 %i.f, -8645972361240307355
  %i.h = lshr i64 %2, 23
  %i.i = xor i64 %i.h, %2
  %i.j = mul i64 %i.i, 2388976653695081527        ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.k, %i.g
  %i.m = xor i64 %i.l, %i.j
  %i.n = mul i64 %i.m, -8645972361240307355       ; 2 uses
  %i.o = lshr i64 %i.n, 23
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 2388976653695081527        ; 3 uses
  %i.r = lshr i64 %i.q, 47
  %i.s = xor i64 %i.r, %i.q
  %i.t = lshr i64 %i.q, 32
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %.pre = load i32, ptr %i.x, align 8
  %.pre77 = load i32, ptr %i.y, align 8
  %i.ab = icmp ult i32 %.pre, %.pre77
  br i1 %i.ab, label %bb.d, label %bb.a, !prof !7

.loopexit.loopexit.i:                             ; preds = %bb.i, %bb.g
  store i32 0, ptr %i.y, align 8
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.loopexit.i, %.loopexit.i
  %i.ac = load i64, ptr %0, align 8               ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967296
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #18 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.20, i32 noundef 635, ptr noundef nonnull @__func__.pgstat_snapshot_insert_hash_internal) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ag = shl i64 %i.ac, 1
  tail call fastcc void @pgstat_snapshot_grow(ptr noundef nonnull %0, i64 noundef %i.ag)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit.i
  %i.ah = load ptr, ptr %i.z, align 8             ; 5 uses
  %.val88.i = load i32, ptr %i.aa, align 4        ; 5 uses
  %.080.i25 = and i32 %.val88.i, %i.v             ; 2 uses
  %i.ai = zext i32 %.080.i25 to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.lcssa24 = phi ptr [ %i.aj, %bb.d ], [ %i.di, %bb.j ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa24, i64 16
  %i.ao = load i32, ptr %i.x, align 8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa24, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store i8 1, ptr %i.an, align 8
  br label %pgstat_snapshot_insert_hash_internal.exit

.lr.ph:                                           ; preds = %bb.d, %bb.j
  %i.aq = phi ptr [ %i.di, %bb.j ], [ %i.aj, %bb.d ] ; 7 uses
  %.080.i27 = phi i32 [ %.080.i, %bb.j ], [ %.080.i25, %bb.d ] ; 6 uses
  %.078.i26 = phi i32 [ %i.cz, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %i.ar = load i128, ptr %i.aq, align 1
  %i.as = load i128, ptr %4, align 8
  %i.at = icmp ne i128 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %pgstat_snapshot_insert_hash_internal.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.val.i = load i64, ptr %i.aq, align 1          ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 8
  %.val86.i = load i64, ptr %i.aw, align 1        ; 2 uses
  %i.ax = lshr i64 %.val.i, 23
  %i.ay = xor i64 %i.ax, %.val.i
  %i.az = mul i64 %i.ay, 2388976653695081527      ; 2 uses
  %i.ba = lshr i64 %i.az, 47
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = xor i64 %i.bb, -9208349263878056368
  %i.bd = mul i64 %i.bc, -8645972361240307355
  %i.be = lshr i64 %.val86.i, 23
  %i.bf = xor i64 %i.be, %.val86.i
  %i.bg = mul i64 %i.bf, 2388976653695081527      ; 2 uses
  %i.bh = lshr i64 %i.bg, 47
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = mul i64 %i.bj, -8645972361240307355     ; 2 uses
  %i.bl = lshr i64 %i.bk, 23
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, 2388976653695081527      ; 3 uses
  %i.bo = lshr i64 %i.bn, 47
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = lshr i64 %i.bn, 32
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %.val88.i, %i.bs                ; 2 uses
  %.not.i.i = icmp ugt i32 %i.bt, %.080.i27
  br i1 %.not.i.i, label %bb.f, label %pgstat_snapshot_distance.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bu = load i64, ptr %0, align 8
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %.080.i27, %i.bv
  br label %pgstat_snapshot_distance.exit.i

pgstat_snapshot_distance.exit.i:                  ; preds = %bb.f, %bb.e
  %.pn.i.i = phi i32 [ %i.bw, %bb.f ], [ %.080.i27, %bb.e ]
  %.0.i.i = sub i32 %.pn.i.i, %i.bt
  %i.bx = icmp ugt i32 %.078.i26, %.0.i.i
  %i.by = add i32 %.080.i27, 1                    ; 2 uses
  br i1 %i.bx, label %.preheader102.i.preheader, label %bb.h

.preheader102.i.preheader:                        ; preds = %pgstat_snapshot_distance.exit.i
  %i.bz = and i32 %i.by, %.val88.i                ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i8, ptr %i.cc, align 8
  %.not101.i32 = icmp eq i8 %i.cd, 0
  br i1 %.not101.i32, label %.preheader.i, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader102.i.preheader, %.preheader102.i
  %i.ce = phi i32 [ %i.co, %.preheader102.i ], [ %i.bz, %.preheader102.i.preheader ]
  %.068.i33 = phi i32 [ %i.cf, %.preheader102.i ], [ 0, %.preheader102.i.preheader ]
  %i.cf = add i32 %.068.i33, 1                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 150
  br i1 %i.cg, label %bb.g, label %.preheader102.i, !prof !10

bb.g:                                             ; preds = %.lr.ph34
  %i.ch = load i32, ptr %i.x, align 8
  %i.ci = uitofp i32 %i.ch to double
  %i.cj = load i64, ptr %0, align 8
  %i.ck = uitofp i64 %i.cj to double
  %i.cl = fdiv double %i.ci, %i.ck
  %i.cm = fcmp ult double %i.cl, 1.000000e-01
  br i1 %i.cm, label %.preheader102.i, label %.loopexit.loopexit.i

.preheader102.i:                                  ; preds = %bb.g, %.lr.ph34
  %i.cn = add i32 %i.ce, 1
  %i.co = and i32 %i.cn, %.val88.i                ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i8, ptr %i.cr, align 8
  %.not101.i = icmp eq i8 %i.cs, 0
end_hunk_1
