Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tmpi_init?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z13tMPI_Finalizev:bb.a
  %i.bp = load i32, ptr %i.be, align 8, !tbaa !85
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %_ZL19tMPI_Global_destroyP11tmpi_global.exit, !llvm.loop !78

_ZL19tMPI_Global_destroyP11tmpi_global.exit:      ; preds = %.lr.ph.i, %bb.n
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !86
  tail call void @_Z9tMPI_FreePv(ptr noundef %i.bs)
  %i.bt = load ptr, ptr @tmpi_global, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.bt) #17
  store i1 true, ptr @_ZL14tmpi_finalized, align 4
  br label %.thread34

bb.o:                                             ; preds = %_Z14tMPI_Is_masterv.exit
  tail call void @_Z16tMPI_Thread_exitPv(ptr noundef null)
  br label %.thread34

.thread34:                                        ; preds = %bb.k, %bb.m, %.thread, %bb.g, %_ZL19tMPI_Global_destroyP11tmpi_global.exit, %bb.o, %bb.e, %bb.b
  %.3 = phi i32 [ %i.e, %bb.b ], [ %i.q, %bb.e ], [ 0, %_ZL19tMPI_Global_destroyP11tmpi_global.exit ], [ 0, %bb.o ], [ %i.av, %bb.m ], [ %i.ad, %bb.g ], [ %i.am, %.thread ], [ %i.aq, %bb.k ]
  ret i32 %.3
}

declare noundef i32 @_Z24tMPI_Thread_barrier_waitP21tMPI_Thread_barrier_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z16tMPI_Thread_joinP11tMPI_ThreadPPv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL19tMPI_Thread_destroyP11tmpi_thread(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z26tMPI_Recv_env_list_destroyP18recv_envelope_list(ptr noundef nonnull %i.a)
  %i.b = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %indvars.iv
  tail call void @_Z26tMPI_Send_env_list_destroyP18send_envelope_list(ptr noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.k) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_Z26tMPI_Free_env_list_destroyP18free_envelope_list(ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_Z18tMPI_Event_destroyP12tMPI_Event_t(ptr noundef nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_Z21tMPI_Req_list_destroyP8req_list(ptr noundef nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !61
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph19, %bb.c
  %indvars.iv22 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next23, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv22
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.u) #17
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.v = load i32, ptr %i.o, align 8, !tbaa !61
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next23, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge20, !llvm.loop !90

._crit_edge20:                                    ; preds = %bb.c, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge20
  tail call void @_Z9tMPI_FreePv(ptr noundef nonnull %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef i32 @_Z22tMPI_Thread_key_delete17tMPI_Thread_key_t(ptr noundef byval(%struct.tMPI_Thread_key_t) align 8) local_unnamed_addr #1

declare noundef i32 @_Z22tMPI_Thread_mutex_lockP19tMPI_Thread_mutex_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z17tMPI_Comm_destroyP10tmpi_comm_i(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z24tMPI_Thread_mutex_unlockP19tMPI_Thread_mutex_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z15tMPI_Group_freePP11tmpi_group_(ptr noundef) local_unnamed_addr #1

declare void @_Z16tMPI_Thread_exitPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z14tMPI_FinalizedPi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #5 {
bb.a:
  %.b = load i1, ptr @_ZL14tmpi_finalized, align 4
  %i.a = zext i1 %.b to i32
  store i32 %i.a, ptr %0, align 4, !tbaa !49
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z10tMPI_AbortP10tmpi_comm_i(ptr nofree noundef readnone captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_Z14tMPI_Is_masterv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_Z14tMPI_Is_masterv.exit.thread, label %_Z14tMPI_Is_masterv.exit

_Z14tMPI_Is_masterv.exit:                         ; preds = %bb.b
  %i.d = tail call noundef ptr @_Z23tMPI_Thread_getspecific17tMPI_Thread_key_t(ptr noundef nonnull byval(%struct.tMPI_Thread_key_t) align 8 @id_key)
  %i.e = load ptr, ptr @threads, align 8, !tbaa !33
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %_Z14tMPI_Is_masterv.exit._Z14tMPI_Is_masterv.exit.thread_crit_edge, label %bb.c

_Z14tMPI_Is_masterv.exit._Z14tMPI_Is_masterv.exit.thread_crit_edge: ; preds = %_Z14tMPI_Is_masterv.exit
  %.pre = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  br label %_Z14tMPI_Is_masterv.exit.thread

_Z14tMPI_Is_masterv.exit.thread:                  ; preds = %_Z14tMPI_Is_masterv.exit._Z14tMPI_Is_masterv.exit.thread_crit_edge, %bb.a, %bb.b
  %i.f = phi ptr [ %.pre, %_Z14tMPI_Is_masterv.exit._Z14tMPI_Is_masterv.exit.thread_crit_edge ], [ null, %bb.a ], [ %i.a, %bb.b ]
  %i.g = icmp eq ptr %0, %i.f
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !92
  %.str.1..str.2 = select i1 %i.g, ptr @.str.1, ptr @.str.2
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull %.str.1..str.2, i32 noundef %1) #18 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  tail call void @exit(i32 noundef %1) #19
  unreachable

bb.c:                                             ; preds = %_Z14tMPI_Is_masterv.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.m = tail call noundef ptr @_Z23tMPI_Thread_getspecific17tMPI_Thread_key_t(ptr noundef nonnull byval(%struct.tMPI_Thread_key_t) align 8 @id_key)
  %i.n = load ptr, ptr @threads, align 8, !tbaa !33
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 424
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %i.s) #18 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !92
  %i.v = tail call i32 @fflush(ptr noundef %i.u)  ; 0 uses
  %i.w = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #20
  tail call void @_Z16tMPI_Thread_exitPv(ptr noundef %i.w)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z23tMPI_Get_processor_namePcPi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z23tMPI_Thread_getspecific17tMPI_Thread_key_t(ptr noundef nonnull byval(%struct.tMPI_Thread_key_t) align 8 @id_key)
  %i.b = load ptr, ptr @threads, align 8, !tbaa !33
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 424
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02834 = phi i32 [ %i.i, %.lr.ph ], [ %i.g, %bb.a ] ; 2 uses
  %.02933 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %i.i = udiv i32 %.02834, 10
  %i.j = add nuw nsw i32 %.02933, 1               ; 2 uses
  %.not37 = icmp samesign ult i32 %.02834, 10
  br i1 %.not37, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ 1, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false) #17
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 2 uses
  %wide.trip.count = zext i32 %.029.lcssa to i64  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.d
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.036 = phi i32 [ %i.g, %._crit_edge ], [ %i.r, %bb.d ] ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = xor i32 %i.l, -1
  %i.n = add nsw i32 %.029.lcssa, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.k, %i.o                       ; 2 uses
  %i.q = icmp ult i64 %i.p, 127
  %i.r = udiv i32 %.036, 10
  %i.s = urem i32 %.036, 10
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i8 %i.u, ptr %i.v, align 1, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !94

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.k, %wide.trip.count
  %. = tail call i64 @llvm.umin.i64(i64 %i.w, i64 128)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i8 0, ptr %i.x, align 1, !tbaa !54
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %1, align 4, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef double @_Z10tMPI_Wtimev() local_unnamed_addr #10 {
bb.a:
  %0 = alloca %struct.timeval, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #17 ; 0 uses
  %i.b = load ptr, ptr @tmpi_global, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load <2 x i64>, ptr %0, align 16, !tbaa !95
  %i.e = load <2 x i64>, ptr %i.c, align 8, !tbaa !95
  %i.f = sub nsw <2 x i64> %i.d, %i.e             ; 2 uses
  %i.g = bitcast <2 x i64> %i.f to <4 x i32>
  %i.h = extractelement <4 x i32> %i.g, i64 2
  %i.i = extractelement <2 x i64> %i.f, i64 0
  %i.j = sitofp i64 %i.i to double
  %i.k = sitofp i32 %i.h to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3EB0C6F7A0B5ED8D, double %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret double %i.l
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_Z10tMPI_Wtickv() local_unnamed_addr #12 {
bb.a:
  ret double 1.000000e-02
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z14tMPI_Get_countPK12tmpi_status_P14tmpi_datatype_Pi(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.b = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.a, i32 noundef 7)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  %i.e = load i64, ptr %1, align 8, !tbaa !98
  %i.f = udiv i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %2, align 4, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ %i.b, %bb.b ]
  ret i32 %.0
}

declare noundef ptr @_Z11tMPI_Mallocm(i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z15tMPI_Comm_allocPP10tmpi_comm_S0_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z16tMPI_Group_allocv() local_unnamed_addr #1

declare noundef i32 @_Z22tMPI_Thread_key_createP17tMPI_Thread_key_tPFvPvE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #13

declare noundef ptr @_Z16tMPI_Thread_selfv() local_unnamed_addr #1

declare noundef i32 @_Z30tMPI_Thread_setaffinity_singleP11tMPI_Threadj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z18tMPI_Thread_createPP11tMPI_ThreadPFPvS2_ES2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZL17tMPI_Thread_startPv(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL16tMPI_Thread_initP11tmpi_thread(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = tail call noundef i32 %i.e(i32 noundef %i.g, ptr noundef %i.i) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  tail call void %i.c(ptr noundef %i.l)
  %.b = load i1, ptr @_ZL14tmpi_finalized, align 4
  br i1 %.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_Z13tMPI_Finalizev() ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL16tMPI_Thread_initP11tmpi_thread(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.b = shl i32 %i.a, 4
  %i.c = add i32 %i.b, 16                         ; 2 uses
  %i.d = tail call noundef i32 @_Z23tMPI_Thread_setspecific17tMPI_Thread_key_tPv(ptr noundef nonnull byval(%struct.tMPI_Thread_key_t) align 8 @id_key, ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.f = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.g = tail call noundef i32 @_Z15tMPI_Comm_allocPP10tmpi_comm_S0_i(ptr noundef nonnull %i.e, ptr noundef %i.f, i32 noundef 1) ; 2 uses
  %.not41 = icmp eq i32 %i.g, 0
  br i1 %.not41, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  store ptr %0, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = tail call noundef i32 @_Z23tMPI_Free_env_list_initP18free_envelope_listi(ptr noundef nonnull %i.k, i32 noundef %i.c) ; 2 uses
  %.not42 = icmp eq i32 %i.l, 0
  br i1 %.not42, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef i32 @_Z23tMPI_Recv_env_list_initP18recv_envelope_list(ptr noundef nonnull %i.m) ; 2 uses
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 160
  %i.r = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !69
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.u = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr @Nthreads, align 4, !tbaa !49
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !99

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = tail call noundef i32 @_Z23tMPI_Send_env_list_initP18send_envelope_listi(ptr noundef %i.aa, i32 noundef 16) ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  br i1 %.not46, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ac, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_Z15tMPI_Event_initP12tMPI_Event_t(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = tail call noundef i32 @_Z18tMPI_Req_list_initP8req_listi(ptr noundef nonnull %i.ae, i32 noundef %i.c) ; 2 uses
  %.not44 = icmp eq i32 %i.af, 0
  br i1 %.not44, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr @tmpi_global, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = tail call noundef i32 @_Z24tMPI_Thread_barrier_waitP21tMPI_Thread_barrier_t(ptr noundef nonnull %i.ah)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %._crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.033 = phi i32 [ %i.af, %._crit_edge ], [ %i.d, %bb.a ], [ %i.g, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ 1, %bb.e ], [ %i.ai, %bb.g ], [ %i.ab, %.lr.ph ]
  ret i32 %.033
}

declare noundef i32 @_Z22tMPI_Thread_mutex_initP19tMPI_Thread_mutex_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z24tMPI_Thread_barrier_initP21tMPI_Thread_barrier_ti(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z23tMPI_Thread_setspecific17tMPI_Thread_key_tPv(ptr noundef byval(%struct.tMPI_Thread_key_t) align 8, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z23tMPI_Free_env_list_initP18free_envelope_listi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z23tMPI_Recv_env_list_initP18recv_envelope_list(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z23tMPI_Send_env_list_initP18send_envelope_listi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z15tMPI_Event_initP12tMPI_Event_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z18tMPI_Req_list_initP8req_listi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z26tMPI_Recv_env_list_destroyP18recv_envelope_list(ptr noundef) local_unnamed_addr #1

declare void @_Z26tMPI_Send_env_list_destroyP18send_envelope_list(ptr noundef) local_unnamed_addr #1

declare void @_Z26tMPI_Free_env_list_destroyP18free_envelope_list(ptr noundef) local_unnamed_addr #1

declare void @_Z18tMPI_Event_destroyP12tMPI_Event_t(ptr noundef) local_unnamed_addr #1

declare void @_Z21tMPI_Req_list_destroyP8req_list(ptr noundef) local_unnamed_addr #1

declare void @_Z9tMPI_FreePv(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z27tMPI_Thread_barrier_destroyP21tMPI_Thread_barrier_t(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z25tMPI_Thread_mutex_destroyP19tMPI_Thread_mutex_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !53}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10tmpi_comm_", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 _ZTS11tmpi_thread", !12, i64 0}
!14 = !{!"_ZTS11tmpi_group_", !6, i64 0, !13, i64 8}
!15 = !{!"_ZTS11tMPI_Atomic", !6, i64 0, !5, i64 4}
!16 = !{!"_ZTS14tMPI_Barrier_t", !15, i64 0, !6, i64 64, !15, i64 68}
!17 = !{!"p2 _ZTS14tMPI_Barrier_t", !12, i64 0}
!18 = !{!"p1 int", !9, i64 0}
!19 = !{!"p1 _ZTS8coll_env", !9, i64 0}
!20 = !{!"p1 _ZTS9coll_sync", !9, i64 0}
!21 = !{!"p1 _ZTS15tMPI_Atomic_ptr", !9, i64 0}
!22 = !{!"p1 _ZTS10tMPI_Mutex", !9, i64 0}
!23 = !{!"_ZTS19tMPI_Thread_mutex_t", !15, i64 0, !22, i64 64}
!24 = !{!"p1 _ZTS16tMPI_Thread_cond", !9, i64 0}
!25 = !{!"_ZTS18tMPI_Thread_cond_t", !15, i64 0, !24, i64 64}
!26 = !{!"p2 _ZTS10tmpi_comm_", !12, i64 0}
!27 = !{!"p1 _ZTS10tmpi_split", !9, i64 0}
!28 = !{!"p1 _ZTS10cart_topol", !9, i64 0}
!29 = !{!"p1 _ZTS16tmpi_errhandler_", !9, i64 0}
!30 = !{!"_ZTS10tmpi_comm_", !14, i64 0, !16, i64 16, !17, i64 152, !18, i64 160, !6, i64 168, !19, i64 176, !20, i64 184, !21, i64 192, !21, i64 200, !23, i64 208, !25, i64 280, !25, i64 352, !26, i64 424, !27, i64 432, !28, i64 440, !29, i64 448, !10, i64 456, !10, i64 464, !15, i64 472}
!31 = !{!30, !6, i64 0}
!32 = !{!"p1 _ZTS11tmpi_thread", !9, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 _ZTS11tMPI_Thread", !9, i64 0}
!35 = !{!"p1 _ZTS8envelope", !9, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"p1 _ZTS14tmpi_datatype_", !9, i64 0}
!38 = !{!"p1 _ZTS18recv_envelope_list", !9, i64 0}
!39 = !{!"p1 _ZTS18send_envelope_list", !9, i64 0}
!40 = !{!"_ZTS8envelope", !6, i64 0, !10, i64 8, !32, i64 16, !32, i64 24, !9, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !15, i64 60, !6, i64 124, !35, i64 128, !35, i64 136, !6, i64 144, !35, i64 152, !35, i64 160, !38, i64 168, !39, i64 176}
!41 = !{!"_ZTS18recv_envelope_list", !35, i64 0, !40, i64 8}
!42 = !{!"_ZTS18free_envelope_list", !35, i64 0, !35, i64 8}
!43 = !{!"_ZTS12tMPI_Event_t", !15, i64 0, !6, i64 64}
!44 = !{!"p1 _ZTS9tmpi_req_", !9, i64 0}
!45 = !{!"_ZTS8req_list", !44, i64 0, !44, i64 8}
!46 = !{!"p2 omnipotent char", !12, i64 0}
!47 = !{!"_ZTS11tmpi_thread", !34, i64 0, !41, i64 8, !39, i64 200, !42, i64 208, !15, i64 224, !43, i64 288, !45, i64 360, !10, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !6, i64 408, !46, i64 416}
!48 = !{!47, !10, i64 376}
!49 = !{!6, !6, i64 0}
!50 = !{!46, !46, i64 0}
!51 = !{!"p1 omnipotent char", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!5, !5, i64 0}
!55 = !{!"p1 _ZTS11tmpi_global", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"_ZTS13tMPI_Spinlock", !6, i64 0, !5, i64 4}
!58 = !{!"p1 _ZTS11tmpi_group_", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!30, !13, i64 8}
!61 = !{!47, !6, i64 408}
!62 = !{!47, !46, i64 416}
!63 = !{!47, !9, i64 384}
!64 = !{!47, !9, i64 392}
!65 = !{!47, !9, i64 400}
!66 = !{!47, !34, i64 0}
!67 = !{!"p1 _ZTS23tmpi_datatype_component", !9, i64 0}
!68 = !{!"_ZTS14tmpi_datatype_", !36, i64 0, !12, i64 8, !6, i64 16, !67, i64 24, !6, i64 32, !6, i64 36}
!69 = !{!47, !39, i64 200}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !75}
!73 = distinct !{!73, !53}
!74 = !{!57, !6, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !53}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53}
!79 = !{!30, !10, i64 456}
!80 = !{!"p2 _ZTS14tmpi_datatype_", !12, i64 0}
!81 = !{!"p1 _ZTS19tMPI_Thread_barrier", !9, i64 0}
!82 = !{!"_ZTS21tMPI_Thread_barrier_t", !15, i64 0, !81, i64 64, !6, i64 72, !6, i64 76, !6, i64 80}
!83 = !{!"_ZTS7timeval", !36, i64 0, !36, i64 8}
!84 = !{!"_ZTS11tmpi_global", !80, i64 0, !6, i64 8, !6, i64 12, !57, i64 16, !23, i64 80, !82, i64 152, !23, i64 240, !83, i64 312}
!85 = !{!84, !6, i64 8}
!86 = !{!84, !80, i64 0}
!87 = !{!37, !37, i64 0}
!88 = !{!68, !67, i64 24}
!89 = distinct !{!89, !53}
!90 = distinct !{!90, !53}
!91 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!92 = !{!91, !91, i64 0}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = !{!36, !36, i64 0}
!96 = !{!"_ZTS12tmpi_status_", !6, i64 0, !6, i64 4, !6, i64 8, !36, i64 16, !6, i64 24}
!97 = !{!96, !36, i64 16}
!98 = !{!68, !36, i64 0}
!99 = distinct !{!99, !53}
!100 = !{!47, !6, i64 224}
end_hunk_0
