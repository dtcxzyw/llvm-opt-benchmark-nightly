Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/errhandler_invoke?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }

@ompi_mpi_state = external global i32, align 4
@ompi_mpi_compat_mpi3 = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_mpi_comm_self = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_initial_error_handler = external local_unnamed_addr global ptr, align 8
@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @ompi_errhandler_invoke(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = load volatile i32, ptr @ompi_mpi_state, align 4, !tbaa !8
  %i.j = and i32 %i.i, -2
  %or.cond = icmp eq i32 %i.j, 2
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr @ompi_mpi_compat_mpi3, align 1, !tbaa !10, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, ptr @ompi_mpi_comm_world, ptr @ompi_mpi_comm_self ; 3 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !47
  %5 = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %.val30 = load ptr, ptr %5, align 8, !tbaa !40  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val30, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  switch i32 %i.o, label %bb.w [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val30, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  call void (ptr, ptr, ...) %i.q(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef null) #5
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %.val32 = load i32, ptr %6, align 8, !tbaa !51
  store i32 %.val32, ptr %i.b, align 4, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.val30, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  call void (ptr, ptr, ...) %i.s(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.t = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.t, ptr %i.a, align 4, !tbaa !8
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  %i.u = load ptr, ptr @ompi_initial_error_handler, align 8, !tbaa !41
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @ompi_initial_errhandler_init() #5
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @ompi_mpi_errors_are_fatal_comm_handler(ptr noundef null, ptr noundef null, ptr noundef %4) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.x = load ptr, ptr @ompi_initial_error_handler, align 8, !tbaa !41
  tail call void (ptr, ptr, ...) %i.x(ptr noundef null, ptr noundef null, ptr noundef %4) #5
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  switch i32 %2, label %bb.w [
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %bb.q
    i32 4, label %bb.t
  ]

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.d, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = load i32, ptr %i.y, align 4, !tbaa !49
  switch i32 %i.z, label %bb.w [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  call void (ptr, ptr, ...) %i.ab(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef null) #5
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !51
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  call void (ptr, ptr, ...) %i.af(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !8
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  store ptr %1, ptr %i.e, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !49
  switch i32 %i.ai, label %bb.w [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55
  call void (ptr, ptr, ...) %i.ak(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef null) #5
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.am = load i32, ptr %i.al, align 8, !tbaa !56
  store i32 %i.am, ptr %i.b, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  call void (ptr, ptr, ...) %i.ao(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !8
  br label %bb.w

bb.q:                                             ; preds = %bb.j
  store ptr %1, ptr %i.f, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  switch i32 %i.ar, label %bb.w [
    i32 0, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  call void (ptr, ptr, ...) %i.at(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef null) #5
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load i32, ptr %i.au, align 8, !tbaa !60
  store i32 %i.av, ptr %i.b, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  call void (ptr, ptr, ...) %i.ax(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !8
  br label %bb.w

bb.t:                                             ; preds = %bb.j
  store ptr %1, ptr %i.g, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49
  switch i32 %i.ba, label %bb.w [
    i32 0, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  call void (ptr, ptr, ...) %i.bc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef null) #5
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !64
  store i32 %i.be, ptr %i.b, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  call void (ptr, ptr, ...) %i.bg(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k, %bb.p, %bb.o, %bb.n, %bb.s, %bb.r, %bb.q, %bb.v, %bb.u, %bb.t, %bb.i, %bb.e, %bb.d, %bb.c
  %.0 = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_initial_errhandler_init() local_unnamed_addr #2

declare void @ompi_mpi_errors_are_fatal_comm_handler(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ompi_errhandler_request_invoke(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.c, @ompi_request_null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 5 uses
  %.not50 = icmp eq i32 %i.e, 0
  br i1 %.not50, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !65

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = icmp sgt i32 %i.e, -1
  br i1 %i.h, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.i = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !8 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = load i8, ptr @opal_uses_threads, align 1, !tbaa !10, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !80

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.o = sext i32 %i.m to i64
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.e, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.o
  tail call void @llvm.assume(i1 %.not.us.i)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !85
  %i.t = icmp eq i32 %i.s, %i.e
  br i1 %i.t, label %.split.us.i, label %bb.e

bb.e:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !66

bb.f:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.u = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !8
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next19.i, %i.v
  br i1 %i.w, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !67

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %i.x = phi i8 [ %i.ak, %bb.f ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.f ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.z = sext i32 %i.y to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.z
  tail call void @llvm.assume(i1 %.not.i)
  %i.aa = trunc nuw i8 %i.x to i1
  br i1 %i.aa, label %bb.g, label %.thread.i.i, !prof !80

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv18.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  br label %opal_pointer_array_get_item.exit.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !10, !range !11
  %i.af = trunc nuw i8 %.pre.i.i to i1
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv18.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  br i1 %i.af, label %bb.h, label %opal_pointer_array_get_item.exit.i, !prof !87

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !10, !range !11
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.h, %bb.g, %.thread.i.i
  %i.ak = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.h ], [ 0, %bb.g ]
  %.0.i.i = phi ptr [ %i.ad, %.thread.i.i ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !85
  %i.an = icmp eq i32 %i.am, %i.e
  br i1 %i.an, label %.split.us.i, label %bb.f

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.q, %.thread.i.us.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !88
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.e, %bb.f, %bb.d, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.e, %bb.d ], [ %i.ap, %.split.us.i ], [ 14, %bb.f ], [ 14, %.preheader.i ], [ 14, %bb.e ] ; 4 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !71  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %.sroa.0.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !89 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !90
  %i.au = icmp sgt i32 %0, %i.g
  br i1 %i.au, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %ompi_errcode_get_mpi_code.exit, %bb.l
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.l ], [ %indvars.iv, %ompi_errcode_get_mpi_code.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv70 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71 ; 4 uses
  %.not52 = icmp eq ptr %i.aw, @ompi_request_null
  br i1 %.not52, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 100
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !91, !range !11, !noundef !12
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !78
  switch i32 %i.bb, label %bb.k [
    i32 0, label %bb.l
    i32 76, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !92
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %i.av) #5, !inline_history !68 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.j, %.lr.ph62, %bb.i, %bb.k
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.l, %ompi_errcode_get_mpi_code.exit
  switch i32 %i.at, label %bb.p [
    i32 0, label %bb.m
    i32 4, label %bb.m
    i32 1, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge, %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 312
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 320
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !93
  %i.bj = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bg, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bi, i32 noundef %.010.i, ptr noundef %2)
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !95
  %i.bo = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bl, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bn, i32 noundef %.010.i, ptr noundef %2)
  br label %.loopexit

bb.o:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 256
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 264
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !97
  %i.bt = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bq, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bs, i32 noundef %.010.i, ptr noundef %2)
  br label %.loopexit

bb.p:                                             ; preds = %._crit_edge
  %i.bu = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %.010.i, ptr noundef %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.p, %bb.o, %bb.n, %bb.m
  %.045 = phi i32 [ %i.bt, %bb.o ], [ %i.bu, %bb.p ], [ %i.bj, %bb.m ], [ %i.bo, %bb.n ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.045
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!9 = !{!"_Bool", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!20 = !{!"opal_hash_table_t", !16, i64 0, !17, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !19, i64 64}
!21 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!22 = !{!"opal_infosubscriber_t", !16, i64 0, !20, i64 16, !21, i64 88}
!23 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"ompi_comm_extended_cid_t", !18, i64 0, !4, i64 8}
!26 = !{!"ompi_comm_extended_cid_block_t", !25, i64 0, !18, i64 16, !4, i64 24, !4, i64 25}
!27 = !{!"p1 int", !13, i64 0}
!28 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!29 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!30 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!31 = !{!"any p2 pointer", !13, i64 0}
!32 = !{!"p2 _ZTS20ompi_peruse_handle_t", !31, i64 0}
!33 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!34 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!35 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!36 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!37 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!38 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!39 = !{!"ompi_communicator_t", !22, i64 0, !23, i64 96, !24, i64 160, !25, i64 168, !26, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !27, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !28, i64 264, !28, i64 272, !14, i64 280, !29, i64 288, !30, i64 296, !32, i64 304, !33, i64 312, !5, i64 320, !34, i64 328, !35, i64 336, !36, i64 344, !37, i64 352, !38, i64 360, !5, i64 368, !5, i64 372, !9, i64 376, !9, i64 377, !9, i64 378}
!40 = !{!39, !33, i64 312}
!41 = !{!13, !13, i64 0}
!42 = !{!"short", !4, i64 0}
!43 = !{!"p1 _ZTS28ompi_osc_base_module_3_0_0_t", !13, i64 0}
!44 = !{!"ompi_win_t", !22, i64 0, !23, i64 96, !4, i64 160, !28, i64 224, !42, i64 232, !42, i64 234, !5, i64 236, !29, i64 240, !5, i64 248, !33, i64 256, !5, i64 264, !43, i64 272, !5, i64 280}
!45 = !{!"p1 _ZTS18mca_io_base_file_t", !13, i64 0}
!46 = !{!"ompi_file_t", !22, i64 0, !14, i64 96, !24, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !33, i64 128, !5, i64 136, !5, i64 140, !23, i64 144, !4, i64 208, !4, i64 528, !45, i64 952}
!47 = !{!14, !14, i64 0}
!48 = !{!"ompi_errhandler_t", !16, i64 0, !4, i64 16, !5, i64 80, !5, i64 84, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !5, i64 128}
!49 = !{!48, !5, i64 84}
!50 = !{!48, !13, i64 88}
!51 = !{!39, !5, i64 256}
!52 = !{!48, !13, i64 120}
!53 = !{!"p1 _ZTS10ompi_win_t", !13, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!48, !13, i64 104}
!56 = !{!44, !5, i64 248}
!57 = !{!"p1 _ZTS11ompi_file_t", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!48, !13, i64 96}
!60 = !{!46, !5, i64 120}
!61 = !{!37, !37, i64 0}
!62 = !{!48, !13, i64 112}
!63 = !{!"ompi_instance_t", !22, i64 0, !23, i64 96, !5, i64 160, !4, i64 164, !5, i64 228, !29, i64 232, !5, i64 240, !33, i64 248, !5, i64 256}
!64 = !{!63, !5, i64 240}
!65 = distinct !{!65, !79}
!66 = distinct !{!66, !79}
!67 = distinct !{!67, !79, !86}
!68 = distinct !{null}
!69 = distinct !{!69, !79}
!70 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTS16opal_list_item_t", !13, i64 0}
!73 = !{!"opal_list_item_t", !16, i64 0, !72, i64 16, !72, i64 24, !5, i64 32}
!74 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !13, i64 0}
!75 = !{!"opal_free_list_item_t", !73, i64 0, !74, i64 40, !13, i64 48}
!76 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !18, i64 16}
!77 = !{!"ompi_request_t", !75, i64 0, !5, i64 56, !76, i64 64, !13, i64 88, !5, i64 96, !9, i64 100, !5, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !4, i64 152}
!78 = !{!77, !5, i64 72}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!"p1 long", !13, i64 0}
!82 = !{!"opal_pointer_array_t", !16, i64 0, !23, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !81, i64 104, !31, i64 112}
!83 = !{!82, !31, i64 112}
!84 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!85 = !{!84, !5, i64 16}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!88 = !{!84, !5, i64 20}
!89 = !{!4, !4, i64 0}
!90 = !{!77, !5, i64 56}
!91 = !{!77, !9, i64 100}
!92 = !{!77, !13, i64 120}
!93 = !{!39, !5, i64 320}
!94 = !{!46, !33, i64 128}
!95 = !{!46, !5, i64 136}
!96 = !{!44, !33, i64 256}
!97 = !{!44, !5, i64 264}
end_hunk_0
