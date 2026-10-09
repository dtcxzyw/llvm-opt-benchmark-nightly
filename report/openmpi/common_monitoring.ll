Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_monitoring?download=true
inline.NumInlined: 41
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }
%struct.opal_process_info_t = type { %struct.opal_process_name_t, %struct.pmix_proc, i8, ptr, ptr, ptr, ptr, i32, i16, i16, i16, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i8, ptr, i8 }
%struct.opal_process_name_t = type { i32, i32 }
%struct.pmix_proc = type { [256 x i8], i32 }

@mca_common_monitoring_output_stream_id = local_unnamed_addr global i32 -1, align 4
@mca_common_monitoring_enabled = global i32 0, align 4
@mca_common_monitoring_current_state = local_unnamed_addr global i32 0, align 4
@ompi_common_monitoring_translation_ht = local_unnamed_addr global ptr null, align 8
@mca_common_monitoring_hold = internal global i32 0, align 4
@log10_2 = internal unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [23 x i8] c"[%s:%06d] monitoring: \00", align 1
@opal_hash_table_t_class = external global %struct.opal_class_t, align 8
@mca_common_monitoring_output_enabled = internal global i32 0, align 4
@mca_common_monitoring_current_filename = internal unnamed_addr global ptr null, align 8
@pml_data = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ompi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pml\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"monitoring\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [228 x i8] c"Enable the monitoring at the PML level. A value of 0 will disable the monitoring (default). A value of 1 will aggregate all monitoring information (point-to-point and collective). Any other value will enable filtered monitoring\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"enable_output\00", align 1
@.str.7 = private unnamed_addr constant [234 x i8] c"Enable the PML monitoring textual output at MPI_Finalize (it will be automatically turned off when MPIT is used to monitor communications). This value should be different than 0 in order for the output to be enabled (default disable)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.9 = private unnamed_addr constant [207 x i8] c"The name of the file where the monitoring information should be saved (the filename will be extended with the process rank and the \22.prof\22 extension). If this field is NULL the monitoring will not be saved.\00", align 1
@mca_common_monitoring_initial_filename = internal global ptr @.str.41, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.11 = private unnamed_addr constant [168 x i8] c"Flush the monitoring information in the provided file. The filename is append with the .%d.prof suffix, where %d is replaced with the processus rank in MPI_COMM_WORLD.\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"messages_count\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"Number of messages sent to each peer through the PML framework.\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"messages_size\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"Size of messages sent to each peer in a communicator through the PML framework.\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"messages_sent_count\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"Number of messages sent through the OSC framework with each peer.\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"messages_sent_size\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"Size of messages sent through the OSC framework with each peer.\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"messages_recv_count\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"Number of messages received through the OSC framework with each peer.\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"messages_recv_size\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"Size of messages received through the OSC framework with each peer.\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"coll\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"Number of messages exchanged through the COLL framework with each peer.\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Size of messages exchanged through the COLL framework with each peer.\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"o2a_count\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"Number of messages exchanged as one-to-all operations in a communicator.\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"o2a_size\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Size of messages exchanged as one-to-all operations in a communicator.\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"a2o_count\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"Number of messages exchanged as all-to-one operations in a communicator.\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"a2o_size\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"Size of messages exchanged as all-to-one operations in a communicator.\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"a2a_count\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"Number of messages exchanged as all-to-all operations in a communicator.\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"a2a_size\00", align 1
@.str.39 = private unnamed_addr constant [71 x i8] c"Size of messages exchanged as all-to-all operations in a communicator.\00", align 1
@rank_world = internal unnamed_addr global i32 -1, align 4
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@nprocs_world = internal unnamed_addr global i32 0, align 4
@pml_count = internal unnamed_addr global ptr null, align 8
@filtered_pml_data = internal unnamed_addr global ptr null, align 8
@filtered_pml_count = internal unnamed_addr global ptr null, align 8
@osc_data_s = internal unnamed_addr global ptr null, align 8
@osc_count_s = internal unnamed_addr global ptr null, align 8
@osc_data_r = internal unnamed_addr global ptr null, align 8
@osc_count_r = internal unnamed_addr global ptr null, align 8
@coll_data = internal unnamed_addr global ptr null, align 8
@coll_count = internal unnamed_addr global ptr null, align 8
@size_histogram = internal unnamed_addr global ptr null, align 8
@ompi_proc_local_proc = external local_unnamed_addr global ptr, align 8
@opal_compare_proc = external local_unnamed_addr global ptr, align 8
@opal_process_info = external local_unnamed_addr global %struct.opal_process_info_t, align 8
@mca_common_monitoring_output_stream_obj = internal global { %struct.opal_object_t, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, [2 x i8], ptr } { %struct.opal_object_t zeroinitializer, i32 0, i32 0, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, [2 x i8] zeroinitializer, ptr null }, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"%s.%d.prof\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"# POINT TO POINT\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"E\09%d\09%d\09%zu bytes\09%zu msgs sent\09\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%zu%s\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"I\09%d\09%d\09%zu bytes\09%zu msgs sent%s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"# OSC\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"S\09%d\09%d\09%zu bytes\09%zu msgs sent\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"R\09%d\09%d\09%zu bytes\09%zu msgs sent\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"# COLLECTIVES\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"C\09%d\09%d\09%zu bytes\09%zu msgs sent\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mca_common_monitoring_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw volatile add ptr @mca_common_monitoring_hold, i32 1 monotonic, align 4
  %i.c = add i32 %i.b, 1
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x3FD34413509F79FF, ptr @log10_2, align 8, !tbaa !10
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !59 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %opal_gethostname.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @opal_init_gethostname() #20 ; 0 uses
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 272), align 8, !tbaa !59
  br label %opal_gethostname.exit

opal_gethostname.exit:                            ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ]
  %i.i = tail call i32 @getpid() #20
  %i.j = tail call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_common_monitoring_output_stream_obj, i64 32), ptr noundef nonnull @.str, ptr noundef %i.h, i32 noundef %i.i) #20 ; 0 uses
  %i.k = tail call i32 @opal_output_open(ptr noundef nonnull @mca_common_monitoring_output_stream_obj) #20
  store i32 %i.k, ptr @mca_common_monitoring_output_stream_id, align 4, !tbaa !8
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 56), align 8, !tbaa !60
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #21 ; 6 uses
  %i.n = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %opal_gethostname.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %opal_gethostname.exit
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @opal_hash_table_t_class, ptr %i.m, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store volatile i32 1, ptr %i.p, align 8, !tbaa !62
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.r, %bb.g ]
  %.07.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.q, %bb.g ]
  tail call void %i.s(ptr noundef nonnull %i.m) #20, !inline_history !55
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !56

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.f, %bb.g
  store ptr %i.m, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25
  %i.v = tail call i32 @opal_hash_table_init(ptr noundef %i.m, i64 noundef 2048) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %opal_obj_new.exit
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %opal_obj_new.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #2

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

declare i32 @opal_output_open(ptr noundef) local_unnamed_addr #3

declare i32 @opal_hash_table_init(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @mca_common_monitoring_finalize() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw volatile sub ptr @mca_common_monitoring_hold, i32 1 monotonic, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @mca_common_monitoring_output_enabled, align 4, !tbaa !8
  %i.f = load ptr, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  %i.g = tail call fastcc i32 @mca_common_monitoring_flush(i32 noundef %i.e, ptr noundef %i.f) ; 0 uses
  store i32 0, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  %i.h = load i32, ptr @mca_common_monitoring_output_stream_id, align 4, !tbaa !8
  tail call void @opal_output_close(i32 noundef %i.h) #20
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_common_monitoring_output_stream_obj, i64 32), align 8, !tbaa !67
  tail call void @free(ptr noundef %i.i) #20
  %i.j = load ptr, ptr @pml_data, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.j) #20
  %i.k = load ptr, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25
  %i.l = tail call i32 @opal_hash_table_remove_all(ptr noundef %i.k) #20 ; 0 uses
  %i.m = load ptr, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load i8, ptr @opal_uses_threads, align 1, !tbaa !68, !range !69, !noundef !70
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e, !prof !71

bb.d:                                             ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.n, i32 -1 monotonic, align 4
  %i.r = add i32 %i.q, -1
  br label %opal_thread_add_fetch_32.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load volatile i32, ptr %i.n, align 4, !tbaa !8
  %i.t = add nsw i32 %i.s, -1
  store volatile i32 %i.t, ptr %i.n, align 4, !tbaa !8
  %i.u = load volatile i32, ptr %i.n, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %.not6.i = icmp eq ptr %i.z, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.z, %bb.f ]
  %.07.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ]
  tail call void %i.aa(ptr noundef nonnull %i.m) #20, !inline_history !64
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !65

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.f
  %i.ad = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.m, %bb.f ]
  tail call void @free(ptr noundef %i.ad) #20
  store ptr null, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  tail call void @mca_common_monitoring_coll_finalize() #20
  %i.ae = load ptr, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26 ; 2 uses
  %.not1 = icmp eq ptr %i.ae, null
  br i1 %.not1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ae) #20
  store ptr null, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mca_common_monitoring_flush(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %0, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !74
  %i.f = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.g = load i32, ptr @nprocs_world, align 4, !tbaa !8
  tail call fastcc void @mca_common_monitoring_output(ptr noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.i = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.j = load i32, ptr @nprocs_world, align 4, !tbaa !8
  tail call fastcc void @mca_common_monitoring_output(ptr noundef %i.h, i32 noundef %i.i, i32 noundef %i.j)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.m = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.42, ptr noundef nonnull %1, i32 noundef %i.l) #20 ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.o = call noalias ptr @fopen(ptr noundef %i.n, ptr noundef nonnull @.str.43) ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @free(ptr noundef %i.p) #20
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.s = load i32, ptr @nprocs_world, align 4, !tbaa !8
  call fastcc void @mca_common_monitoring_output(ptr noundef nonnull %i.o, i32 noundef %i.r, i32 noundef %i.s)
  %i.t = call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.u = load i32, ptr @nprocs_world, align 4, !tbaa !8
  %i.v = mul nsw i32 %i.u, 76
  %i.w = load ptr, ptr @pml_data, align 8, !tbaa !28
  %i.x = sext i32 %i.v to i64
  %i.y = shl nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.y, i1 false)
  call void @mca_common_monitoring_coll_reset() #20
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.a, %bb.h
  %.1 = phi i32 [ -1, %.thread ], [ 0, %bb.h ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @opal_output_close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @opal_hash_table_remove_all(ptr noundef) local_unnamed_addr #3

declare void @mca_common_monitoring_coll_finalize() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @mca_common_monitoring_register() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @mca_base_var_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 64, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @mca_common_monitoring_enabled) #20 ; 0 uses
  %i.b = load i32, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  store i32 %i.b, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.c = tail call i32 @mca_base_var_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 64, i32 noundef 8, i32 noundef 1, ptr noundef nonnull @mca_common_monitoring_output_enabled) #20 ; 0 uses
  %i.d = tail call i32 @mca_base_var_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 64, i32 noundef 8, i32 noundef 1, ptr noundef nonnull @mca_common_monitoring_initial_filename) #20 ; 0 uses
  %i.e = load ptr, ptr @mca_common_monitoring_initial_filename, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull %i.e) #20
  store ptr %i.f, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 9, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @mca_common_monitoring_get_flush, ptr noundef nonnull @mca_common_monitoring_set_flush, ptr noundef nonnull @mca_common_monitoring_notify_flush, ptr noundef null) #20 ; 0 uses
  %i.h = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_pml_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.i = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_pml_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.j = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_osc_sent_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.k = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_osc_sent_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.l = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_osc_recv_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.m = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_osc_recv_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.n = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_coll_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.o = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.27, i32 noundef 3, i32 noundef 2, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_get_coll_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_comm_size_notify, ptr noundef null) #20 ; 0 uses
  %i.p = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 3, i32 noundef 6, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_o2a_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  %i.q = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 3, i32 noundef 7, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_o2a_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  %i.r = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef 6, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_a2o_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  %i.s = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 3, i32 noundef 7, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_a2o_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  %i.t = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 3, i32 noundef 6, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_a2a_count, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  %i.u = tail call i32 @mca_base_pvar_register(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 3, i32 noundef 7, i32 noundef 3, ptr noundef null, i32 noundef 1, i32 noundef 192, ptr noundef nonnull @mca_common_monitoring_coll_get_a2a_size, ptr noundef null, ptr noundef nonnull @mca_common_monitoring_coll_messages_notify, ptr noundef null) #20 ; 0 uses
  ret i32 0
}

declare i32 @mca_base_var_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @mca_base_pvar_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @mca_common_monitoring_get_flush(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_set_flush(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = load ptr, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 255
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull %1) #20 ; 2 uses
  store ptr %i.f, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_notify_flush(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 0, label %bb.b
    i32 3, label %bb.h
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @nprocs_world, align 4, !tbaa !8
  %i.b = mul nsw i32 %i.a, 76
  %i.c = load ptr, ptr @pml_data, align 8, !tbaa !28
  %i.d = sext i32 %i.b to i64
  %i.e = shl nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @mca_common_monitoring_coll_reset() #20
  %i.f = load ptr, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #22
  %i.i = trunc i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ]
  store i32 %i.j, ptr %3, align 4, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = load i32, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  store i32 %i.k, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  store i32 0, ptr @mca_common_monitoring_output_enabled, align 4, !tbaa !8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @mca_common_monitoring_current_filename, align 8, !tbaa !26
  %i.m = tail call fastcc i32 @mca_common_monitoring_flush(i32 noundef 3, ptr noundef %i.l)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.d, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ -1, %bb.g ], [ %i.m, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_get_pml_count(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !52
  %.val.val.fr = freeze i32 %.val.val             ; 3 uses
  %i.c = icmp ne ptr %2, @ompi_mpi_comm_world
  %i.d = load ptr, ptr @pml_count, align 8        ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %.val.val.fr, 4
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = load volatile i64, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.i, ptr %i.j, align 8, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.o, ptr %i.p, align 8, !tbaa !53
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.r = load volatile i64, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.r, ptr %i.s, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !75

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.u = load volatile i64, ptr %i.t, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.u, ptr %i.v, align 8, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !76

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ 0, %.lr.ph.epil ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_comm_size_notify(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #10 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 3, label %bb.f
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !52
  store i32 %.val.val, ptr %3, align 4, !tbaa !8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @mca_common_monitoring_enabled, align 4, !tbaa !8
  store i32 %i.c, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_get_pml_size(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !52
  %.val.val.fr = freeze i32 %.val.val             ; 3 uses
  %i.c = icmp ne ptr %2, @ompi_mpi_comm_world
  %i.d = load ptr, ptr @pml_data, align 8         ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %.val.val.fr, 4
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = load volatile i64, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.i, ptr %i.j, align 8, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.o, ptr %i.p, align 8, !tbaa !53
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.r = load volatile i64, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.r, ptr %i.s, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !77

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@mca_common_monitoring_get_coll_count:bb.a

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr @coll_count, align 8, !tbaa !28 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %.val.val.fr, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load volatile i64, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.j, ptr %i.k, align 8, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.m, ptr %i.n, align 8, !tbaa !53
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.p, ptr %i.q, align 8, !tbaa !53
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.s, ptr %i.t, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !87

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.v, ptr %i.w, align 8, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !88

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @mca_common_monitoring_get_coll_size(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !52
  %.val.val.fr = freeze i32 %.val.val             ; 3 uses
  %i.c = icmp ne ptr %2, @ompi_mpi_comm_world
  %i.d = load ptr, ptr @pml_data, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %.val.val.fr, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr @coll_data, align 8, !tbaa !28 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val.val.fr to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %.val.val.fr, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load volatile i64, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.j, ptr %i.k, align 8, !tbaa !53
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.m, ptr %i.n, align 8, !tbaa !53
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.p = load volatile i64, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.p, ptr %i.q, align 8, !tbaa !53
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.s = load volatile i64, ptr %i.r, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.s, ptr %i.t, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !89

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  store i64 %i.v, ptr %i.w, align 8, !tbaa !53
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !90

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader, %bb.a
  %.011 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.011
}

declare i32 @mca_common_monitoring_coll_get_o2a_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_messages_notify(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_o2a_size(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2o_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2o_size(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2a_count(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mca_common_monitoring_coll_get_a2a_size(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_monitoring_add_procs(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @rank_world, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 220), align 4, !tbaa !93
  store i32 %i.c, ptr @rank_world, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @nprocs_world, align 4, !tbaa !8 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %ompi_mpi_comm_world.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 264), align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %ompi_mpi_comm_world.val, i64 16
  %ompi_mpi_comm_world.val.val = load i32, ptr %i.e, align 8, !tbaa !52 ; 2 uses
  store i32 %ompi_mpi_comm_world.val.val, ptr @nprocs_world, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %ompi_mpi_comm_world.val.val, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr @pml_data, align 8, !tbaa !28
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = mul nsw i32 %i.f, 76
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #23 ; 2 uses
  store ptr %i.k, ptr @pml_data, align 8, !tbaa !28
  %i.l = sext i32 %i.f to i64                     ; 10 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  store ptr %i.m, ptr @pml_count, align 8, !tbaa !28
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.n, ptr @filtered_pml_data, align 8, !tbaa !28
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.l ; 2 uses
  store ptr %i.o, ptr @filtered_pml_count, align 8, !tbaa !28
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store ptr %i.p, ptr @osc_data_s, align 8, !tbaa !28
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  store ptr %i.q, ptr @osc_count_s, align 8, !tbaa !28
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.l ; 2 uses
  store ptr %i.r, ptr @osc_data_r, align 8, !tbaa !28
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.l ; 2 uses
  store ptr %i.s, ptr @osc_count_r, align 8, !tbaa !28
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.l ; 2 uses
  store ptr %i.t, ptr @coll_data, align 8, !tbaa !28
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.u, ptr @coll_count, align 8, !tbaa !28
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.l
  store ptr %i.v, ptr @size_histogram, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.g, %.loopexit
  %.02935 = phi i64 [ %i.bc, %.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02935
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph36
  %i.aa = lshr i64 %i.y, 1
  %i.ab = and i64 %i.aa, 32767
  %i.ac = and i64 %i.y, 4294901760
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.ab, %i.ac
  %.sroa.013.0.extract.trunc = trunc nuw i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.7.0.extract.shift = lshr i64 %i.y, 32
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.013.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %i.ae = zext i32 %.sroa.7.0.copyload to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.013.0 = phi i32 [ %.sroa.013.0.extract.trunc, %bb.h ], [ %.sroa.013.0.copyload, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.extract.shift, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = load ptr, ptr @ompi_proc_local_proc, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !101
  %.not30 = icmp eq i32 %.sroa.013.0, %i.ah
  %i.ai = load i32, ptr @nprocs_world, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  %or.cond = select i1 %.not30, i1 %i.aj, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0, 32
  %.sroa.013.0.insert.ext = zext i32 %.sroa.013.0 to i64
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.013.0.insert.ext ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 272), align 8, !tbaa !102
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %.val = load ptr, ptr %i.al, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = lshr i64 %i.ao, 1
  %i.ar = and i64 %i.aq, 32767
  %i.as = and i64 %i.ao, -65536
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.ar, %i.as
  br label %ompi_group_get_proc_name.exit

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8, !tbaa !8
  br label %ompi_group_get_proc_name.exit

ompi_group_get_proc_name.exit:                    ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.l ], [ %.sroa.0.0.copyload.i, %bb.m ]
  %i.au = load ptr, ptr @opal_compare_proc, align 8, !tbaa !22
  %i.av = tail call i32 %i.au(i64 %.sroa.013.0.insert.insert, i64 %.sroa.0.0.i) #20
  %.not31 = icmp eq i32 %i.av, 0
  br i1 %.not31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ompi_group_get_proc_name.exit
  %i.aw = load ptr, ptr @ompi_common_monitoring_translation_ht, align 8, !tbaa !25
  %i.ax = inttoptr i64 %indvars.iv to ptr
  %i.ay = tail call i32 @opal_hash_table_set_value_uint64(ptr noundef %i.aw, i64 noundef %.sroa.013.0.insert.insert, ptr noundef %i.ax) #20
  %.not32 = icmp eq i32 %i.ay, 0
  br i1 %.not32, label %.loopexit, label %._crit_edge

bb.o:                                             ; preds = %ompi_group_get_proc_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr @nprocs_world, align 4, !tbaa !8
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.k, label %.loopexit, !llvm.loop !91

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.j
  %i.bc = add nuw i64 %.02935, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph36, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.n, %.loopexit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %.loopexit ], [ -2, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @opal_hash_table_set_value_uint64(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_pml(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.e = mul nsw i32 %0, 66
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = uitofp i64 %1 to double
  %i.i = tail call double @log10(double noundef %i.h) #20
  %i.j = load double, ptr @log10_2, align 8, !tbaa !10
  %i.k = fdiv double %i.i, %i.j
  %i.l = fptosi double %i.k to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.l, i32 64)
  %i.m = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.n = mul nsw i32 %0, 66
  %i.o = add nsw i32 %spec.store.select, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.r, %bb.d ], [ %i.g, %bb.c ]
  %i.s = atomicrmw volatile add ptr %.sink, i64 1 monotonic, align 8 ; 0 uses
  %i.t = icmp sgt i32 %2, -1
  %i.u = icmp slt i32 %i.a, 2
  %or.cond = or i1 %i.t, %i.u                     ; 2 uses
  %pml_data.val = load ptr, ptr @pml_data, align 8
  %filtered_pml_data.val = load ptr, ptr @filtered_pml_data, align 8
  %i.v = select i1 %or.cond, ptr %pml_data.val, ptr %filtered_pml_data.val
  %i.w = sext i32 %0 to i64                       ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = atomicrmw volatile add ptr %i.x, i64 %1 monotonic, align 8 ; 0 uses
  %pml_count.val = load ptr, ptr @pml_count, align 8
  %filtered_pml_count.val = load ptr, ptr @filtered_pml_count, align 8
  %i.z = select i1 %or.cond, ptr %pml_count.val, ptr %filtered_pml_count.val
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = atomicrmw volatile add ptr %i.aa, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_osc(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0                        ; 2 uses
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %osc_data_s.val = load ptr, ptr @osc_data_s, align 8
  %osc_data_r.val = load ptr, ptr @osc_data_r, align 8
  %i.e = select i1 %i.c, ptr %osc_data_s.val, ptr %osc_data_r.val
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.d
  %i.g = atomicrmw volatile add ptr %i.f, i64 %1 monotonic, align 8 ; 0 uses
  %osc_count_s.val = load ptr, ptr @osc_count_s, align 8
  %osc_count_r.val = load ptr, ptr @osc_count_r, align 8
  %i.h = select i1 %i.c, ptr %osc_count_s.val, ptr %osc_count_r.val
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.d
  %i.j = atomicrmw volatile add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @mca_common_monitoring_record_coll(i32 noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @coll_data, align 8, !tbaa !28
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = atomicrmw volatile add ptr %i.e, i64 %1 monotonic, align 8 ; 0 uses
  %i.g = load ptr, ptr @coll_count, align 8, !tbaa !28
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.i = atomicrmw volatile add ptr %i.h, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @opal_init_gethostname() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @mca_common_monitoring_coll_reset() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mca_common_monitoring_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.44, i64 17, i64 1, ptr %0) ; 0 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit75.thread

.loopexit75.thread:                               ; preds = %bb.a
  %fwrite65119 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 6, i64 1, ptr %0) ; 0 uses
  %fwrite66120 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 14, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge89

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %.pre115 = load ptr, ptr @pml_count, align 8, !tbaa !28
  br label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit76
  %i.b = load i32, ptr @mca_common_monitoring_current_state, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph81.preheader, label %.loopexit75

.lr.ph81.preheader:                               ; preds = %._crit_edge
  %wide.trip.count103 = zext nneg i32 %2 to i64
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit76
  %i.d = phi ptr [ %.pre115, %.lr.ph.preheader ], [ %i.x, %.loopexit76 ] ; 2 uses
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next92, %.loopexit76 ] ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv91 ; 2 uses
  %i.f = load volatile i64, ptr %i.e, align 8, !tbaa !53
  %.not72 = icmp eq i64 %i.f, 0
  br i1 %.not72, label %.loopexit76, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr @pml_data, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv91
  %i.i = load volatile i64, ptr %i.h, align 8, !tbaa !53
  %i.j = load volatile i64, ptr %i.e, align 8, !tbaa !53
  %i.k = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %1, i32 noundef %i.k, i64 noundef %i.i, i64 noundef %i.j) #20 ; 0 uses
  %i.m = mul nuw nsw i64 %indvars.iv91, 66        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !53
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.q, ptr noundef nonnull @.str.47) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65
  br i1 %exitcond.not, label %.loopexit76.loopexit.peel.begin, label %bb.c, !llvm.loop !104

.loopexit76.loopexit.peel.begin:                  ; preds = %bb.c
  %i.s = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !53
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.v, ptr noundef nonnull @.str.48) #20 ; 0 uses
  %.pre = load ptr, ptr @pml_count, align 8, !tbaa !28
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit.peel.begin, %.lr.ph
  %i.x = phi ptr [ %.pre, %.loopexit76.loopexit.peel.begin ], [ %i.d, %.lr.ph ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.loopexit
  %indvars.iv100 = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next101, %.loopexit ] ; 7 uses
  %i.y = load ptr, ptr @filtered_pml_count, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv100 ; 2 uses
  %i.aa = load volatile i64, ptr %i.z, align 8, !tbaa !53
  %.not70 = icmp eq i64 %i.aa, 0
  br i1 %.not70, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph81
  %i.ab = load ptr, ptr @filtered_pml_data, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv100
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !53
  %i.ae = load volatile i64, ptr %i.z, align 8, !tbaa !53
  %i.af = load ptr, ptr @pml_count, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv100
  %i.ah = load volatile i64, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, ptr @.str.50, ptr @.str.48
  %i.ak = trunc nuw nsw i64 %indvars.iv100 to i32
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %1, i32 noundef %i.ak, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.aj) #20 ; 0 uses
  %i.am = load ptr, ptr @pml_count, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv100
  %i.ao = load volatile i64, ptr %i.an, align 8, !tbaa !53
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.aq = mul nuw nsw i64 %indvars.iv100, 66      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv95 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next96, %bb.e ] ; 2 uses
  %i.ar = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv95
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = load volatile i64, ptr %i.at, align 8, !tbaa !53
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.au, ptr noundef nonnull @.str.47) #20 ; 0 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, 65
  br i1 %exitcond98.not, label %.loopexit.loopexit.peel.begin, label %bb.e, !llvm.loop !106

.loopexit.loopexit.peel.begin:                    ; preds = %bb.e
  %i.aw = load ptr, ptr @size_histogram, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 520
  %i.az = load volatile i64, ptr %i.ay, align 8, !tbaa !53
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %i.az, ptr noundef nonnull @.str.48) #20 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.peel.begin, %.lr.ph81, %bb.d
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.loopexit75, label %.lr.ph81, !llvm.loop !107

.loopexit75:                                      ; preds = %.loopexit, %._crit_edge
  %fwrite65 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 6, i64 1, ptr %0) ; 0 uses
  %wide.trip.count108 = zext nneg i32 %2 to i64
  br label %.lr.ph84

._crit_edge85:                                    ; preds = %bb.i
  %fwrite66 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 14, i64 1, ptr %0) ; 0 uses
  %wide.trip.count113 = zext nneg i32 %2 to i64
  %.pre117 = load ptr, ptr @coll_count, align 8, !tbaa !28
  br label %.lr.ph88

.lr.ph84:                                         ; preds = %.loopexit75, %bb.i
  %indvars.iv105 = phi i64 [ 0, %.loopexit75 ], [ %indvars.iv.next106, %bb.i ] ; 7 uses
  %i.bb = load ptr, ptr @osc_count_s, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv105 ; 2 uses
  %i.bd = load volatile i64, ptr %i.bc, align 8, !tbaa !53
  %.not68 = icmp eq i64 %i.bd, 0
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph84
  %i.be = load ptr, ptr @osc_data_s, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv105
  %i.bg = load volatile i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = load volatile i64, ptr %i.bc, align 8, !tbaa !53
  %i.bi = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %1, i32 noundef %i.bi, i64 noundef %i.bg, i64 noundef %i.bh) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph84
  %i.bk = load ptr, ptr @osc_count_r, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv105 ; 2 uses
  %i.bm = load volatile i64, ptr %i.bl, align 8, !tbaa !53
  %.not69 = icmp eq i64 %i.bm, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr @osc_data_r, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv105
  %i.bp = load volatile i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = load volatile i64, ptr %i.bl, align 8, !tbaa !53
  %i.br = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %1, i32 noundef %i.br, i64 noundef %i.bp, i64 noundef %i.bq) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !108

._crit_edge89:                                    ; preds = %bb.k, %.loopexit75.thread
  tail call void @mca_common_monitoring_coll_flush_all(ptr noundef %0) #20
  ret void

.lr.ph88:                                         ; preds = %._crit_edge85, %bb.k
  %i.bt = phi ptr [ %.pre117, %._crit_edge85 ], [ %i.cc, %bb.k ] ; 2 uses
  %indvars.iv110 = phi i64 [ 0, %._crit_edge85 ], [ %indvars.iv.next111, %bb.k ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv110 ; 2 uses
  %i.bv = load volatile i64, ptr %i.bu, align 8, !tbaa !53
  %.not67 = icmp eq i64 %i.bv, 0
  br i1 %.not67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph88
  %i.bw = load ptr, ptr @coll_data, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv110
  %i.by = load volatile i64, ptr %i.bx, align 8, !tbaa !53
  %i.bz = load volatile i64, ptr %i.bu, align 8, !tbaa !53
  %i.ca = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %1, i32 noundef %i.ca, i64 noundef %i.by, i64 noundef %i.bz) #20 ; 0 uses
  %.pre116 = load ptr, ptr @coll_count, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph88, %bb.j
  %i.cc = phi ptr [ %i.bt, %.lr.ph88 ], [ %.pre116, %bb.j ]
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge89, label %.lr.ph88, !llvm.loop !109
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare void @mca_common_monitoring_coll_flush_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!17 = !{!"any p2 pointer", !13, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"opal_class_t", !14, i64 0, !16, i64 8, !13, i64 16, !13, i64 24, !5, i64 32, !5, i64 36, !17, i64 40, !17, i64 48, !18, i64 56}
!20 = !{!"opal_object_t", !16, i64 0, !5, i64 8}
!21 = !{!20, !16, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!"p1 long", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!30 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!31 = !{!"opal_hash_table_t", !20, i64 0, !29, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !30, i64 64}
!32 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!33 = !{!"opal_infosubscriber_t", !20, i64 0, !31, i64 16, !32, i64 88}
!34 = !{!"opal_mutex_t", !20, i64 0, !4, i64 16, !5, i64 56}
!35 = !{!"ompi_comm_extended_cid_t", !18, i64 0, !4, i64 8}
!36 = !{!"ompi_comm_extended_cid_block_t", !35, i64 0, !18, i64 16, !4, i64 24, !4, i64 25}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!39 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!40 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!41 = !{!"p2 _ZTS20ompi_peruse_handle_t", !17, i64 0}
!42 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!43 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!44 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!45 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!46 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!47 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!48 = !{!"ompi_communicator_t", !33, i64 0, !34, i64 96, !14, i64 160, !35, i64 168, !36, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !37, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !38, i64 264, !38, i64 272, !39, i64 280, !24, i64 288, !40, i64 296, !41, i64 304, !42, i64 312, !5, i64 320, !43, i64 328, !44, i64 336, !45, i64 344, !46, i64 352, !47, i64 360, !5, i64 368, !5, i64 372, !12, i64 376, !12, i64 377, !12, i64 378}
!49 = !{!48, !38, i64 264}
!50 = !{!"p2 _ZTS11ompi_proc_t", !17, i64 0}
!51 = !{!"ompi_group_t", !20, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !50, i64 32, !5, i64 40, !38, i64 48, !4, i64 56, !46, i64 72}
!52 = !{!51, !5, i64 16}
!53 = !{!18, !18, i64 0}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{null, null}
!56 = distinct !{!56, !23}
!57 = !{!"pmix_proc", !4, i64 0, !5, i64 256}
!58 = !{!"opal_process_info_t", !11, i64 0, !57, i64 8, !12, i64 268, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !5, i64 304, !15, i64 308, !15, i64 310, !15, i64 312, !14, i64 320, !14, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !14, i64 352, !14, i64 360, !14, i64 368, !5, i64 376, !14, i64 384, !5, i64 392, !12, i64 396, !14, i64 400, !12, i64 408}
!59 = !{!58, !14, i64 272}
!60 = !{!19, !18, i64 56}
!61 = !{!19, !5, i64 32}
!62 = !{!20, !5, i64 8}
!63 = !{!19, !17, i64 40}
!64 = distinct !{null}
!65 = distinct !{!65, !23}
!66 = !{!"opal_output_stream_t", !20, i64 0, !5, i64 16, !5, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !12, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !14, i64 56}
!67 = !{!66, !14, i64 32}
!68 = !{!12, !12, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!19, !17, i64 48}
!73 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!74 = !{!73, !73, i64 0}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !54}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !54}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !54}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !54}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !54}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !54}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !54}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !54}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{!48, !5, i64 220}
!94 = !{!"p1 _ZTS11ompi_proc_t", !13, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTS16opal_list_item_t", !13, i64 0}
!97 = !{!"opal_list_item_t", !20, i64 0, !96, i64 16, !96, i64 24, !5, i64 32}
!98 = !{!"p1 _ZTS16opal_convertor_t", !13, i64 0}
!99 = !{!"opal_proc_t", !97, i64 0, !11, i64 40, !5, i64 48, !15, i64 52, !98, i64 56}
!100 = !{!"ompi_proc_t", !99, i64 0, !12, i64 64, !4, i64 72, !4, i64 80}
!101 = !{!100, !5, i64 40}
!102 = !{!48, !38, i64 272}
!103 = !{!51, !50, i64 32}
!104 = distinct !{!104, !23, !110}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23, !110}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23}
!110 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
