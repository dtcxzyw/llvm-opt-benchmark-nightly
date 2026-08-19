inline.NumInlined: 38
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%union.mca_io_base_components_t = type { %struct.mca_io_base_component_2_0_0_t }
%struct.mca_io_base_component_2_0_0_t = type { %struct.mca_base_component_2_1_0_t, %struct.mca_base_component_data_2_0_0_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i32, [28 x i8] }
%struct.mca_base_component_data_2_0_0_t = type { i32, [32 x i8] }
%union.mca_io_base_modules_t = type { %struct.mca_io_base_module_2_0_0_t }
%struct.mca_io_base_module_2_0_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }
%struct.ompi_predefined_errhandler_t = type { %struct.ompi_errhandler_t, [888 x i8] }
%struct.ompi_errhandler_t = type { %struct.opal_object_t, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@opal_mutex_t_class = external global %struct.opal_class_t, align 8
@ompi_mpi_file_bootstrap_mutex = local_unnamed_addr global { { ptr, i32, [4 x i8] }, %union.pthread_mutex_t, i32, [4 x i8] } { { ptr, i32, [4 x i8] } { ptr @opal_mutex_t_class, i32 1, [4 x i8] zeroinitializer }, %union.pthread_mutex_t zeroinitializer, i32 0, [4 x i8] zeroinitializer }, align 8
@ompi_file_f_to_c_table = global { { ptr, i32, [4 x i8] }, %struct.opal_mutex_t, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr } zeroinitializer, align 8
@ompi_mpi_file_null = global { { { { ptr, i32, [4 x i8] }, %struct.opal_hash_table_t, ptr }, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i32, i32, %struct.opal_mutex_t, %union.mca_io_base_components_t, %union.mca_io_base_modules_t, ptr }, [576 x i8] } zeroinitializer, align 8
@ompi_mpi_file_null_addr = local_unnamed_addr global ptr @ompi_mpi_file_null, align 8
@.str = private unnamed_addr constant [12 x i8] c"ompi_file_t\00", align 1
@opal_infosubscriber_t_class = external global %struct.opal_class_t, align 8
@ompi_file_t_class = global %struct.opal_class_t { ptr @.str, ptr @opal_infosubscriber_t_class, ptr @file_constructor, ptr @file_destructor, i32 0, i32 0, ptr null, ptr null, i64 960 }, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_pointer_array_t_class = external global %struct.opal_class_t, align 8
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"ompi_file_finalize\00", align 1
@opal_info_t_class = external global %struct.opal_class_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_debug_no_free_handles = external local_unnamed_addr global i8, align 1
@ompi_debug_show_handle_leaks = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"WARNING: %lu unnamed MPI_File handles still allocated at MPI_FINALIZE\00", align 1
@ompi_mpi_errors_return = external global %struct.ompi_predefined_errhandler_t, align 8

; Function Attrs: nounwind uwtable
define internal void @file_constructor(ptr noundef initializes((96, 116), (144, 152)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !9
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr @opal_mutex_t_class, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store volatile i32 1, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !19 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.c ]
  %.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  tail call void %i.h(ptr noundef nonnull %i.d) #7, !inline_history !21
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !22

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.k, align 4, !tbaa !24
  %i.l = tail call i32 @opal_pointer_array_add(ptr noundef nonnull @ompi_file_f_to_c_table, ptr noundef nonnull %0) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 3, ptr %i.n, align 8, !tbaa !36
  %.not18 = icmp eq ptr %0, @ompi_mpi_file_null
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_file_null, i64 128), align 8
  %spec.select = select i1 %.not18, ptr @ompi_mpi_errors_return, ptr %1 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %spec.select, ptr %2, align 8, !tbaa !37
  %3 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 4 uses
  %4 = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %opal_thread_add_fetch_32.exit, label %opal_thread_add_fetch_32.exit.thread, !prof !42

opal_thread_add_fetch_32.exit:                    ; preds = %opal_obj_run_constructors.exit
  %i.o = atomicrmw volatile add ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.p, align 4, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.q, i8 0, i64 432, i1 false)
  %i.r = load i8, ptr @ompi_debug_no_free_handles, align 1, !tbaa !38, !range !40, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %opal_thread_add_fetch_32.exit20

opal_thread_add_fetch_32.exit.thread:             ; preds = %opal_obj_run_constructors.exit
  %i.t = load volatile i32, ptr %3, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store volatile i32 %i.u, ptr %3, align 4, !tbaa !8
  %i.v = load volatile i32, ptr %3, align 4, !tbaa !8 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.w, align 4, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.x, i8 0, i64 432, i1 false)
  %i.y = load i8, ptr @ompi_debug_no_free_handles, align 1, !tbaa !38, !range !40, !noundef !41
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %opal_thread_add_fetch_32.exit20

bb.d:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = atomicrmw volatile add ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit20

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load volatile i32, ptr %i.ac, align 8, !tbaa !8
  %i.ae = add nsw i32 %i.ad, 1
  store volatile i32 %i.ae, ptr %i.ac, align 8, !tbaa !8
  %i.af = load volatile i32, ptr %i.ac, align 8, !tbaa !8 ; 0 uses
  br label %opal_thread_add_fetch_32.exit20

opal_thread_add_fetch_32.exit20:                  ; preds = %bb.e, %bb.d, %opal_thread_add_fetch_32.exit.thread, %opal_thread_add_fetch_32.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @file_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw volatile add ptr %i.h, i32 -1 monotonic, align 4
  %i.l = add i32 %i.k, -1
  br label %opal_thread_add_fetch_32.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load volatile i32, ptr %i.h, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, -1
  store volatile i32 %i.n, ptr %i.h, align 4, !tbaa !8
  %i.o = load volatile i32, ptr %i.h, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.l, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not6.i = icmp eq ptr %i.u, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.v = phi ptr [ %i.x, %.lr.ph.i ], [ %i.u, %bb.g ]
  %.07.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.t, %bb.g ]
  tail call void %i.v(ptr noundef nonnull %i.q) #7, !inline_history !47
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.g
  %i.y = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.q, %bb.g ]
  tail call void @free(ptr noundef %i.y) #7
  store ptr null, ptr %i.f, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %.not28 = icmp eq ptr %i.aa, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.aa) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %.not29 = icmp eq ptr %i.ac, null
  br i1 %.not29, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.ad, i32 -1 monotonic, align 4
  %i.ah = add i32 %i.ag, -1
  br label %opal_thread_add_fetch_32.exit34

bb.m:                                             ; preds = %bb.k
  %i.ai = load volatile i32, ptr %i.ad, align 4, !tbaa !8
  %i.aj = add nsw i32 %i.ai, -1
  store volatile i32 %i.aj, ptr %i.ad, align 4, !tbaa !8
  %i.ak = load volatile i32, ptr %i.ad, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit34

opal_thread_add_fetch_32.exit34:                  ; preds = %bb.l, %bb.m
  %.0.i33 = phi i32 [ %i.ah, %bb.l ], [ %i.ak, %bb.m ]
  %i.al = icmp eq i32 %.0.i33, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit34
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %.not6.i35 = icmp eq ptr %i.aq, null
  br i1 %.not6.i35, label %opal_obj_run_destructors.exit39, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.n, %.lr.ph.i36
  %i.ar = phi ptr [ %i.at, %.lr.ph.i36 ], [ %i.aq, %bb.n ]
  %.07.i37 = phi ptr [ %i.as, %.lr.ph.i36 ], [ %i.ap, %bb.n ]
  tail call void %i.ar(ptr noundef nonnull %i.am) #7, !inline_history !47
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i37, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %.not.i38 = icmp eq ptr %i.at, null
  br i1 %.not.i38, label %opal_obj_run_destructors.exit39.loopexit, label %.lr.ph.i36, !llvm.loop !48

opal_obj_run_destructors.exit39.loopexit:         ; preds = %.lr.ph.i36
  %.pre55 = load ptr, ptr %i.ab, align 8, !tbaa !37
  br label %opal_obj_run_destructors.exit39

opal_obj_run_destructors.exit39:                  ; preds = %opal_obj_run_destructors.exit39.loopexit, %bb.n
  %i.au = phi ptr [ %.pre55, %opal_obj_run_destructors.exit39.loopexit ], [ %i.am, %bb.n ]
  tail call void @free(ptr noundef %i.au) #7
  store ptr null, ptr %i.ab, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %opal_obj_run_destructors.exit39, %opal_thread_add_fetch_32.exit34, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %.not30 = icmp eq ptr %i.aw, null
  br i1 %.not30, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.q, label %bb.r, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.ba = atomicrmw volatile add ptr %i.ax, i32 -1 monotonic, align 4
  %i.bb = add i32 %i.ba, -1
  br label %opal_thread_add_fetch_32.exit41

bb.r:                                             ; preds = %bb.p
  %i.bc = load volatile i32, ptr %i.ax, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, -1
  store volatile i32 %i.bd, ptr %i.ax, align 4, !tbaa !8
  %i.be = load volatile i32, ptr %i.ax, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit41

opal_thread_add_fetch_32.exit41:                  ; preds = %bb.q, %bb.r
  %.0.i40 = phi i32 [ %i.bb, %bb.q ], [ %i.be, %bb.r ]
  %i.bf = icmp eq i32 %.0.i40, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %opal_thread_add_fetch_32.exit41
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !50 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 2 uses
  %.not6.i42 = icmp eq ptr %i.bk, null
  br i1 %.not6.i42, label %opal_obj_run_destructors.exit46, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.s, %.lr.ph.i43
  %i.bl = phi ptr [ %i.bn, %.lr.ph.i43 ], [ %i.bk, %bb.s ]
  %.07.i44 = phi ptr [ %i.bm, %.lr.ph.i43 ], [ %i.bj, %bb.s ]
  tail call void %i.bl(ptr noundef nonnull %i.bg) #7, !inline_history !47
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i44, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %.not.i45 = icmp eq ptr %i.bn, null
  br i1 %.not.i45, label %opal_obj_run_destructors.exit46.loopexit, label %.lr.ph.i43, !llvm.loop !48

opal_obj_run_destructors.exit46.loopexit:         ; preds = %.lr.ph.i43
  %.pre56 = load ptr, ptr %i.av, align 8, !tbaa !50
  br label %opal_obj_run_destructors.exit46

opal_obj_run_destructors.exit46:                  ; preds = %opal_obj_run_destructors.exit46.loopexit, %bb.s
  %i.bo = phi ptr [ %.pre56, %opal_obj_run_destructors.exit46.loopexit ], [ %i.bg, %bb.s ]
  tail call void @free(ptr noundef %i.bo) #7
  store ptr null, ptr %i.av, align 8, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %opal_obj_run_destructors.exit46, %opal_thread_add_fetch_32.exit41, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !35 ; 5 uses
  %.not31 = icmp eq i32 %i.bq, -32766
  br i1 %.not31, label %opal_pointer_array_get_item.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = icmp slt i32 %i.bq, 0
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 88), align 8
  %i.bt = icmp sle i32 %i.bs, %i.bq
  %i.bu = select i1 %i.br, i1 true, i1 %i.bt, !prof !42
  br i1 %i.bu, label %opal_pointer_array_get_item.exit.thread, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.bv = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.w, label %.thread.i, !prof !42

.thread.i:                                        ; preds = %bb.v
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.by = zext nneg i32 %i.bq to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20
  br label %opal_pointer_array_get_item.exit

bb.w:                                             ; preds = %bb.v
  %i.cb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40
  %i.cc = trunc nuw i8 %.pre.i to i1
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.ce = zext nneg i32 %i.bq to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  br i1 %i.cc, label %bb.x, label %opal_pointer_array_get_item.exit, !prof !54

bb.x:                                             ; preds = %bb.w
  %i.ch = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.w, %bb.x
  %.0.i47 = phi ptr [ %i.ca, %.thread.i ], [ %i.cg, %bb.x ], [ %i.cg, %bb.w ]
  %.not32 = icmp eq ptr %.0.i47, null
  br i1 %.not32, label %opal_pointer_array_get_item.exit.thread, label %bb.y

bb.y:                                             ; preds = %opal_pointer_array_get_item.exit
  %i.ci = load i32, ptr %i.bp, align 8, !tbaa !35
  %i.cj = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_file_f_to_c_table, i32 noundef %i.ci, ptr noundef null) #7 ; 0 uses
  br label %opal_pointer_array_get_item.exit.thread

opal_pointer_array_get_item.exit.thread:          ; preds = %bb.u, %bb.t, %opal_pointer_array_get_item.exit, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %.not6.i48 = icmp eq ptr %i.co, null
  br i1 %.not6.i48, label %opal_obj_run_destructors.exit52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %opal_pointer_array_get_item.exit.thread, %.lr.ph.i49
  %i.cp = phi ptr [ %i.cr, %.lr.ph.i49 ], [ %i.co, %opal_pointer_array_get_item.exit.thread ]
  %.07.i50 = phi ptr [ %i.cq, %.lr.ph.i49 ], [ %i.cn, %opal_pointer_array_get_item.exit.thread ]
  tail call void %i.cp(ptr noundef nonnull %i.ck) #7, !inline_history !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i50, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %.not.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i51, label %opal_obj_run_destructors.exit52, label %.lr.ph.i49, !llvm.loop !48

opal_obj_run_destructors.exit52:                  ; preds = %.lr.ph.i49, %opal_pointer_array_get_item.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ompi_file_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_pointer_array_t_class, i64 32), align 8, !tbaa !9
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_pointer_array_t_class) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @opal_pointer_array_t_class, ptr @ompi_file_f_to_c_table, align 8, !tbaa !16
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 8), align 8, !tbaa !18
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_pointer_array_t_class, i64 40), align 8, !tbaa !19 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.c ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.c ]
  tail call void %i.e(ptr noundef nonnull @ompi_file_f_to_c_table) #7, !inline_history !21
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !22

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.h = tail call i32 @opal_pointer_array_init(ptr noundef nonnull @ompi_file_f_to_c_table, i32 noundef 0, i32 noundef 2147483647, i32 noundef 16) #7
  %.not1 = icmp eq i32 %i.h, 0
  br i1 %.not1, label %bb.d, label %bb.i

bb.d:                                             ; preds = %opal_obj_run_constructors.exit
  %i.i = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_t_class, i64 32), align 8, !tbaa !9
  %.not2 = icmp eq i32 %i.i, %i.j
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_file_t_class) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr @ompi_file_t_class, ptr @ompi_mpi_file_null, align 8, !tbaa !16
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_file_null, i64 8), align 8, !tbaa !18
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_t_class, i64 40), align 8, !tbaa !19 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %.not6.i3 = icmp eq ptr %i.l, null
  br i1 %.not6.i3, label %opal_obj_run_constructors.exit7, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.f, %.lr.ph.i4
  %i.m = phi ptr [ %i.o, %.lr.ph.i4 ], [ %i.l, %bb.f ]
  %.07.i5 = phi ptr [ %i.n, %.lr.ph.i4 ], [ %i.k, %bb.f ]
  tail call void %i.m(ptr noundef nonnull @ompi_mpi_file_null) #7, !inline_history !21
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i5, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %.not.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i6, label %opal_obj_run_constructors.exit7, label %.lr.ph.i4, !llvm.loop !22

opal_obj_run_constructors.exit7:                  ; preds = %.lr.ph.i4, %bb.f
  store ptr @ompi_mpi_comm_null, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_file_null, i64 96), align 8, !tbaa !55
  %i.p = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %opal_obj_run_constructors.exit7
  %i.r = atomicrmw volatile add ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_null, i64 8), i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %opal_obj_run_constructors.exit7
  %i.s = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_null, i64 8), align 8, !tbaa !8
  %i.t = add nsw i32 %i.s, 1
  store volatile i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_null, i64 8), align 8, !tbaa !8
  %i.u = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_null, i64 8), align 8, !tbaa !8 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_file_null, i64 120), align 8, !tbaa !57
  %i.v = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_file_f_to_c_table, i32 noundef 0, ptr noundef nonnull @ompi_mpi_file_null) #7 ; 0 uses
  tail call void @opal_finalize_append_cleanup(ptr noundef nonnull @ompi_file_finalize, ptr noundef nonnull @.str.1, ptr noundef null) #7
  br label %bb.i

bb.i:                                             ; preds = %opal_obj_run_constructors.exit, %opal_thread_add_fetch_32.exit
  %.0 = phi i32 [ 0, %opal_thread_add_fetch_32.exit ], [ -1, %opal_obj_run_constructors.exit ]
  ret i32 %.0
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @opal_pointer_array_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @opal_pointer_array_set_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @opal_finalize_append_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ompi_file_finalize() #0 {
bb.a:
  %i.a = load ptr, ptr @ompi_mpi_file_null, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.a ]
  tail call void %i.e(ptr noundef nonnull @ompi_mpi_file_null) #7, !inline_history !47
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !48

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.a
  %i.h = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_file_f_to_c_table, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 88), align 8, !tbaa !58 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %opal_obj_run_destructors.exit
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %opal_pointer_array_get_item.exit30.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %opal_pointer_array_get_item.exit30.thread ] ; 7 uses
  %.01756 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2, %opal_pointer_array_get_item.exit30.thread ] ; 4 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 88), align 8
  %i.l = sext i32 %i.k to i64
  %.not51 = icmp slt i64 %indvars.iv, %i.l
  br i1 %.not51, label %bb.b, label %opal_pointer_array_get_item.exit30.thread, !prof !59

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.thread.i, !prof !42

.thread.i:                                        ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %opal_pointer_array_get_item.exit

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40
  %i.s = trunc nuw i8 %.pre.i to i1
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  br i1 %i.s, label %bb.d, label %opal_pointer_array_get_item.exit, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.q, %.thread.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ] ; 8 uses
  %i.x = icmp ne ptr %.0.i, null
  %i.y = load i8, ptr @ompi_debug_no_free_handles, align 1, !range !40
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %opal_pointer_array_get_item.exit30

bb.e:                                             ; preds = %opal_pointer_array_get_item.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24
  %i.ac = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %.pre58 = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40 ; 2 uses
  br i1 %i.ad, label %bb.f, label %opal_pointer_array_get_item.exit30.thread47

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 4 uses
  %i.af = trunc nuw i8 %.pre58 to i1
  br i1 %i.af, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.ae, i32 -1 monotonic, align 4
  %i.ah = add i32 %i.ag, -1
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load volatile i32, ptr %i.ae, align 4, !tbaa !8
  %i.aj = add nsw i32 %i.ai, -1
  store volatile i32 %i.aj, ptr %i.ae, align 4, !tbaa !8
  %i.ak = load volatile i32, ptr %i.ae, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  %.0.i21 = phi i32 [ %i.ah, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i21, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.am = load ptr, ptr %.0.i, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %.not6.i22 = icmp eq ptr %i.ap, null
  br i1 %.not6.i22, label %opal_obj_run_destructors.exit26, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.i, %.lr.ph.i23
  %i.aq = phi ptr [ %i.as, %.lr.ph.i23 ], [ %i.ap, %bb.i ]
  %.07.i24 = phi ptr [ %i.ar, %.lr.ph.i23 ], [ %i.ao, %bb.i ]
  tail call void %i.aq(ptr noundef nonnull %.0.i) #7, !inline_history !47
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i24, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  %.not.i25 = icmp eq ptr %i.as, null
  br i1 %.not.i25, label %opal_obj_run_destructors.exit26, label %.lr.ph.i23, !llvm.loop !48

opal_obj_run_destructors.exit26:                  ; preds = %.lr.ph.i23, %bb.i
  tail call void @free(ptr noundef nonnull %.0.i) #7
  br label %bb.j

bb.j:                                             ; preds = %opal_obj_run_destructors.exit26, %opal_thread_add_fetch_32.exit
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 88), align 8
  %i.au = sext i32 %i.at to i64
  %.not52 = icmp slt i64 %indvars.iv, %i.au
  br i1 %.not52, label %bb.k, label %opal_pointer_array_get_item.exit30.thread, !prof !59

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %.thread.i27, !prof !42

.thread.i27:                                      ; preds = %bb.k
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  br label %opal_pointer_array_get_item.exit30

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  %.pre.i29 = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40
  %i.bb = trunc nuw i8 %.pre.i29 to i1
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 112), align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  br i1 %i.bb, label %bb.m, label %opal_pointer_array_get_item.exit30, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_file_f_to_c_table, i64 32)) #7 ; 0 uses
  br label %opal_pointer_array_get_item.exit30

opal_pointer_array_get_item.exit30:               ; preds = %bb.m, %bb.l, %.thread.i27, %opal_pointer_array_get_item.exit
  %.0 = phi ptr [ %i.be, %bb.l ], [ %i.be, %bb.m ], [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.az, %.thread.i27 ] ; 2 uses
  %.not20 = icmp eq ptr %.0, null
  br i1 %.not20, label %opal_pointer_array_get_item.exit30.thread, label %opal_pointer_array_get_item.exit30.opal_pointer_array_get_item.exit30.thread47_crit_edge

opal_pointer_array_get_item.exit30.opal_pointer_array_get_item.exit30.thread47_crit_edge: ; preds = %opal_pointer_array_get_item.exit30
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40
  br label %opal_pointer_array_get_item.exit30.thread47

opal_pointer_array_get_item.exit30.thread47:      ; preds = %opal_pointer_array_get_item.exit30.opal_pointer_array_get_item.exit30.thread47_crit_edge, %bb.e
  %i.bg = phi i8 [ %.pre, %opal_pointer_array_get_item.exit30.opal_pointer_array_get_item.exit30.thread47_crit_edge ], [ %.pre58, %bb.e ]
  %.050 = phi ptr [ %.0, %opal_pointer_array_get_item.exit30.opal_pointer_array_get_item.exit30.thread47_crit_edge ], [ %.0.i, %bb.e ] ; 4 uses
  %i.bh = load i8, ptr @ompi_debug_show_handle_leaks, align 1, !tbaa !38, !range !40, !noundef !41
  %i.bi = zext nneg i8 %i.bh to i64
  %spec.select = add i64 %.01756, %i.bi           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.050, i64 8 ; 4 uses
  %i.bk = trunc nuw i8 %i.bg to i1
  br i1 %i.bk, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %opal_pointer_array_get_item.exit30.thread47
  %i.bl = atomicrmw volatile add ptr %i.bj, i32 -1 monotonic, align 4
  %i.bm = add i32 %i.bl, -1
  br label %opal_thread_add_fetch_32.exit32

bb.o:                                             ; preds = %opal_pointer_array_get_item.exit30.thread47
  %i.bn = load volatile i32, ptr %i.bj, align 4, !tbaa !8
  %i.bo = add nsw i32 %i.bn, -1
  store volatile i32 %i.bo, ptr %i.bj, align 4, !tbaa !8
  %i.bp = load volatile i32, ptr %i.bj, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit32

opal_thread_add_fetch_32.exit32:                  ; preds = %bb.n, %bb.o
  %.0.i31 = phi i32 [ %i.bm, %bb.n ], [ %i.bp, %bb.o ]
  %i.bq = icmp eq i32 %.0.i31, 0
  br i1 %i.bq, label %bb.p, label %opal_pointer_array_get_item.exit30.thread

bb.p:                                             ; preds = %opal_thread_add_fetch_32.exit32
  %i.br = load ptr, ptr %.050, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 2 uses
  %.not6.i33 = icmp eq ptr %i.bu, null
  br i1 %.not6.i33, label %opal_obj_run_destructors.exit37, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.p, %.lr.ph.i34
  %i.bv = phi ptr [ %i.bx, %.lr.ph.i34 ], [ %i.bu, %bb.p ]
  %.07.i35 = phi ptr [ %i.bw, %.lr.ph.i34 ], [ %i.bt, %bb.p ]
  tail call void %i.bv(ptr noundef nonnull %.050) #7, !inline_history !47
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i35, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bx, null
  br i1 %.not.i36, label %opal_obj_run_destructors.exit37, label %.lr.ph.i34, !llvm.loop !48

opal_obj_run_destructors.exit37:                  ; preds = %.lr.ph.i34, %bb.p
  tail call void @free(ptr noundef nonnull %.050) #7
  br label %opal_pointer_array_get_item.exit30.thread

opal_pointer_array_get_item.exit30.thread:        ; preds = %.lr.ph, %bb.j, %opal_pointer_array_get_item.exit30, %opal_obj_run_destructors.exit37, %opal_thread_add_fetch_32.exit32
  %.2 = phi i64 [ %spec.select, %opal_obj_run_destructors.exit37 ], [ %spec.select, %opal_thread_add_fetch_32.exit32 ], [ %.01756, %opal_pointer_array_get_item.exit30 ], [ %.01756, %bb.j ], [ %.01756, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %opal_pointer_array_get_item.exit30.thread
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.2, i64 noundef %.2) #7
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %opal_obj_run_destructors.exit, %._crit_edge, %bb.q
  %i.by = load ptr, ptr @ompi_file_f_to_c_table, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20 ; 2 uses
  %.not6.i38 = icmp eq ptr %i.cb, null
  br i1 %.not6.i38, label %opal_obj_run_destructors.exit42, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %._crit_edge.thread, %.lr.ph.i39
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i39 ], [ %i.cb, %._crit_edge.thread ]
  %.07.i40 = phi ptr [ %i.cd, %.lr.ph.i39 ], [ %i.ca, %._crit_edge.thread ]
  tail call void %i.cc(ptr noundef nonnull @ompi_file_f_to_c_table) #7, !inline_history !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i40, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ce, null
  br i1 %.not.i41, label %opal_obj_run_destructors.exit42, label %.lr.ph.i39, !llvm.loop !48

opal_obj_run_destructors.exit42:                  ; preds = %.lr.ph.i39, %._crit_edge.thread
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ompi_file_open(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_t_class, i64 56), align 8, !tbaa !61
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #8 ; 16 uses
  %i.c = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_t_class, i64 32), align 8, !tbaa !9
  %.not.i = icmp eq i32 %i.c, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_file_t_class) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @ompi_file_t_class, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store volatile i32 1, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_file_t_class, i64 40), align 8, !tbaa !19 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.g, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.d ]
  %.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.d ]
  tail call void %i.h(ptr noundef nonnull %i.b) #7, !inline_history !62
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %0, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %.loopexit
  %i.o = atomicrmw volatile add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = load volatile i32, ptr %i.l, align 4, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store volatile i32 %i.q, ptr %i.l, align 4, !tbaa !8
  %i.r = load volatile i32, ptr %i.l, align 4, !tbaa !8 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e, %bb.f
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_info_t_class, i64 56), align 8, !tbaa !61
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #8 ; 5 uses
  %i.u = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_info_t_class, i64 32), align 8, !tbaa !9
  %.not.i27 = icmp eq i32 %i.u, %i.v
  br i1 %.not.i27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_info_t_class) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %opal_thread_add_fetch_32.exit
  %.not9.i28 = icmp eq ptr %i.t, null
  br i1 %.not9.i28, label %opal_obj_new.exit33, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @opal_info_t_class, ptr %i.t, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store volatile i32 1, ptr %i.w, align 8, !tbaa !18
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_info_t_class, i64 40), align 8, !tbaa !19 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.not6.i.i29 = icmp eq ptr %i.y, null
  br i1 %.not6.i.i29, label %opal_obj_new.exit33, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.i, %.lr.ph.i.i30
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i30 ], [ %i.y, %bb.i ]
  %.07.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i30 ], [ %i.x, %bb.i ]
  tail call void %i.z(ptr noundef nonnull %i.t) #7, !inline_history !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i31, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i32, label %opal_obj_new.exit33, label %.lr.ph.i.i30, !llvm.loop !22

opal_obj_new.exit33:                              ; preds = %.lr.ph.i.i30, %bb.h, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !50
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %opal_obj_new.exit33
  %i.ad = tail call i32 @opal_info_dup(ptr noundef nonnull %3, ptr noundef nonnull %i.ac) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %opal_obj_new.exit33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = tail call noalias ptr @strdup(ptr noundef %1) #7 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !49
  %i.ah = icmp eq ptr %i.af, null
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.ak = atomicrmw volatile add ptr %i.e, i32 -1 monotonic, align 4
  %i.al = add i32 %i.ak, -1
  br label %opal_thread_add_fetch_32.exit35

bb.n:                                             ; preds = %bb.l
  %i.am = load volatile i32, ptr %i.e, align 8, !tbaa !8
  %i.an = add nsw i32 %i.am, -1
  store volatile i32 %i.an, ptr %i.e, align 8, !tbaa !8
  %i.ao = load volatile i32, ptr %i.e, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit35

opal_thread_add_fetch_32.exit35:                  ; preds = %bb.m, %bb.n
  %.0.i34 = phi i32 [ %i.al, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i34, 0
  br i1 %i.ap, label %bb.o, label %opal_obj_new.exit

bb.o:                                             ; preds = %opal_thread_add_fetch_32.exit35
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %.not6.i = icmp eq ptr %i.at, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.au = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.at, %bb.o ]
  %.07.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.as, %bb.o ]
  tail call void %i.au(ptr noundef nonnull %i.b) #7, !inline_history !47
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %.not.i36 = icmp eq ptr %i.aw, null
  br i1 %.not.i36, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !48

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.o
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %opal_obj_new.exit

bb.p:                                             ; preds = %bb.k
  %i.ax = tail call i32 @mca_io_base_file_select(ptr noundef nonnull %i.b, ptr noundef null) #7 ; 3 uses
  %.not26 = icmp eq i32 %i.ax, 0
  br i1 %.not26, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.s, !prof !42

bb.r:                                             ; preds = %bb.q
  %i.ba = atomicrmw volatile add ptr %i.e, i32 -1 monotonic, align 4
  %i.bb = add i32 %i.ba, -1
  br label %opal_thread_add_fetch_32.exit38

bb.s:                                             ; preds = %bb.q
  %i.bc = load volatile i32, ptr %i.e, align 8, !tbaa !8
  %i.bd = add nsw i32 %i.bc, -1
  store volatile i32 %i.bd, ptr %i.e, align 8, !tbaa !8
  %i.be = load volatile i32, ptr %i.e, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit38

opal_thread_add_fetch_32.exit38:                  ; preds = %bb.r, %bb.s
  %.0.i37 = phi i32 [ %i.bb, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i37, 0
  br i1 %i.bf, label %bb.t, label %opal_obj_new.exit

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit38
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20 ; 2 uses
  %.not6.i39 = icmp eq ptr %i.bj, null
  br i1 %.not6.i39, label %opal_obj_run_destructors.exit43, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.t, %.lr.ph.i40
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i40 ], [ %i.bj, %bb.t ]
  %.07.i41 = phi ptr [ %i.bl, %.lr.ph.i40 ], [ %i.bi, %bb.t ]
  tail call void %i.bk(ptr noundef nonnull %i.b) #7, !inline_history !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i41, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 2 uses
  %.not.i42 = icmp eq ptr %i.bm, null
  br i1 %.not.i42, label %opal_obj_run_destructors.exit43, label %.lr.ph.i40, !llvm.loop !48

opal_obj_run_destructors.exit43:                  ; preds = %.lr.ph.i40, %bb.t
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %opal_obj_new.exit

bb.u:                                             ; preds = %bb.p
  store ptr %i.b, ptr %4, align 8, !tbaa !64
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.c, %opal_thread_add_fetch_32.exit38, %opal_obj_run_destructors.exit43, %opal_thread_add_fetch_32.exit35, %opal_obj_run_destructors.exit, %bb.u
  %.0 = phi i32 [ 0, %bb.u ], [ %i.ax, %opal_thread_add_fetch_32.exit38 ], [ -2, %opal_thread_add_fetch_32.exit35 ], [ -2, %opal_obj_run_destructors.exit ], [ %i.ax, %opal_obj_run_destructors.exit43 ], [ -2, %bb.c ]
  ret i32 %.0
}

declare i32 @opal_info_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mca_io_base_file_select(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_file_close(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.f = load i8, ptr @opal_uses_threads, align 1, !tbaa !38, !range !40, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.e, i32 -1 monotonic, align 4
  %i.i = add i32 %i.h, -1
  br label %opal_thread_add_fetch_32.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load volatile i32, ptr %i.e, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, -1
  store volatile i32 %i.k, ptr %i.e, align 4, !tbaa !8
  %i.l = load volatile i32, ptr %i.e, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = icmp eq i32 %.0.i, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not6.i = icmp eq ptr %i.r, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i ], [ %i.r, %bb.d ]
  %.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.q, %bb.d ]
  tail call void %i.s(ptr noundef nonnull %i.n) #7, !inline_history !47
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.d
  %i.v = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.n, %bb.d ]
  tail call void @free(ptr noundef %i.v) #7
  br label %bb.e

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  store ptr @ompi_mpi_file_null, ptr %0, align 8, !tbaa !64
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_pointer_array_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 32}
!10 = !{!"opal_class_t", !11, i64 0, !13, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 48, !15, i64 56}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS12opal_class_t", !12, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !13, i64 0}
!17 = !{!"opal_object_t", !13, i64 0, !5, i64 8}
!18 = !{!17, !5, i64 8}
!19 = !{!10, !14, i64 40}
!20 = !{!12, !12, i64 0}
!21 = distinct !{null}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !5, i64 116}
!25 = !{!"ompi_file_t", !26, i64 0, !31, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !32, i64 128, !5, i64 136, !5, i64 140, !33, i64 144, !6, i64 208, !6, i64 528, !34, i64 952}
!26 = !{!"opal_infosubscriber_t", !17, i64 0, !27, i64 16, !30, i64 88}
!27 = !{!"opal_hash_table_t", !17, i64 0, !28, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !29, i64 64}
!28 = !{!"p1 _ZTS19opal_hash_element_t", !12, i64 0}
!29 = !{!"p1 _ZTS24opal_hash_type_methods_t", !12, i64 0}
!30 = !{!"p1 _ZTS11opal_info_t", !12, i64 0}
!31 = !{!"p1 _ZTS19ompi_communicator_t", !12, i64 0}
!32 = !{!"p1 _ZTS17ompi_errhandler_t", !12, i64 0}
!33 = !{!"opal_mutex_t", !17, i64 0, !6, i64 16, !5, i64 56}
!34 = !{!"p1 _ZTS18mca_io_base_file_t", !12, i64 0}
!35 = !{!25, !5, i64 120}
!36 = !{!25, !5, i64 136}
!37 = !{!25, !32, i64 128}
!38 = !{!39, !39, i64 0}
!39 = !{!"_Bool", !6, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!25, !5, i64 140}
!44 = !{!6, !6, i64 0}
!45 = !{!25, !31, i64 96}
!46 = !{!10, !14, i64 48}
!47 = distinct !{null}
!48 = distinct !{!48, !23}
!49 = !{!25, !11, i64 104}
!50 = !{!25, !30, i64 88}
!51 = !{!52, !14, i64 112}
!52 = !{!"opal_pointer_array_t", !17, i64 0, !33, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !53, i64 104, !14, i64 112}
!53 = !{!"p1 long", !12, i64 0}
!54 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!55 = !{!56, !31, i64 96}
!56 = !{!"ompi_predefined_file_t", !25, i64 0, !6, i64 960}
!57 = !{!56, !5, i64 120}
!58 = !{!52, !5, i64 88}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = distinct !{!60, !23}
!61 = !{!10, !15, i64 56}
!62 = distinct !{null, null}
!63 = !{!25, !5, i64 112}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS11ompi_file_t", !12, i64 0}
end_hunk_0
