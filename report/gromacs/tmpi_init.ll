Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tmpi_init?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z14tMPI_Is_masterv:bb.a
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare noundef ptr @_Z23tMPI_Thread_getspecific17tMPI_Thread_key_t(ptr noundef byval(%struct.tMPI_Thread_key_t) align 8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z18tMPI_Get_comm_selfv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z23tMPI_Thread_getspecific17tMPI_Thread_key_t(ptr noundef nonnull byval(%struct.tMPI_Thread_key_t) align 8 @id_key)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 27) i32 @_Z10tMPI_Get_NPiPPPcPKcS_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !48
  %.not = icmp eq ptr %2, null
  %.pre = load i32, ptr %0, align 4, !tbaa !48    ; 4 uses
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %.pre, 1
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.c = load ptr, ptr %1, align 8, !tbaa !49
  %wide.trip.count = zext nneg i32 %.pre to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.loopexit.split.loop.exit36, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.b, !llvm.loop !52

.loopexit.loopexit.split.loop.exit36:             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.c, %.loopexit.loopexit.split.loop.exit36
  %.1.ph = phi i32 [ %i.h, %.loopexit.loopexit.split.loop.exit36 ], [ %.pre, %bb.c ]
  %i.i = add nuw nsw i32 %.1.ph, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 2, %.preheader ], [ %i.i, %.loopexit.loopexit ] ; 2 uses
  %i.j = icmp slt i32 %.1, %.pre
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = load ptr, ptr %1, align 8, !tbaa !49
  %i.l = zext nneg i32 %.1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = call i64 @__isoc23_strtol(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  store i32 %i.p, ptr %3, align 4, !tbaa !48
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %.thread34, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.q, align 1, !tbaa !54
  %.not24 = icmp eq i8 %i.r, 0
  br i1 %.not24, label %bb.f, label %.thread34

.thread34:                                        ; preds = %bb.d, %bb.e
  store i32 0, ptr %3, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.s = icmp slt i32 %i.p, 1
  br i1 %i.s, label %.thread, label %bb.g

.thread:                                          ; preds = %.loopexit, %.thread34, %bb.f
  %.11933 = phi i32 [ 26, %.thread34 ], [ 0, %bb.f ], [ 0, %.loopexit ]
  %i.t = call noundef i32 @_Z25tMPI_Thread_get_hw_numberv()
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  store i32 %spec.store.select, ptr %3, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.11932 = phi i32 [ %.11933, %.thread ], [ 0, %bb.f ]
  ret i32 %.11932
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z25tMPI_Thread_get_hw_numberv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z9tMPI_InitPiPPPcPFiiS1_E(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.pre.i = load i32, ptr %0, align 4, !tbaa !48  ; 4 uses
  %i.d = icmp sgt i32 %.pre.i, 1
  br i1 %i.d, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !49
  %wide.trip.count.i = zext nneg i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str, ptr noundef nonnull dereferenceable(1) %i.g) #16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.loopexit.split.loop.exit36.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !52

.loopexit.loopexit.split.loop.exit36.i:           ; preds = %bb.c
  %i.j = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit36.i
  %.1.ph.i = phi i32 [ %i.j, %.loopexit.loopexit.split.loop.exit36.i ], [ %.pre.i, %bb.d ]
  %i.k = add nuw nsw i32 %.1.ph.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.b
  %.1.i = phi i32 [ %i.k, %.loopexit.loopexit.i ], [ 2, %bb.b ] ; 2 uses
  %i.l = icmp slt i32 %.1.i, %.pre.i
  br i1 %i.l, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.m = load ptr, ptr %1, align 8, !tbaa !49
  %i.n = zext nneg i32 %.1.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = call i64 @__isoc23_strtol(ptr noundef %i.p, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not23.i = icmp eq ptr %i.s, null
  br i1 %.not23.i, label %.thread34.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.s, align 1, !tbaa !54
  %.not24.i = icmp eq i8 %i.t, 0
  br i1 %.not24.i, label %bb.g, label %.thread34.i

.thread34.i:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.u = icmp slt i32 %i.r, 1
  br i1 %i.u, label %.thread.i, label %_Z10tMPI_Get_NPiPPPcPKcS_.exit

.thread.i:                                        ; preds = %bb.g, %.thread34.i, %.loopexit.i
  %i.v = call noundef i32 @_Z25tMPI_Thread_get_hw_numberv()
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  br label %_Z10tMPI_Get_NPiPPPcPKcS_.exit

_Z10tMPI_Get_NPiPPPcPKcS_.exit:                   ; preds = %bb.g, %.thread.i
  %.0 = phi i32 [ %spec.store.select.i, %.thread.i ], [ %i.r, %bb.g ]
  %i.w = call fastcc noundef i32 @_ZL18tMPI_Start_threadsii22tMPI_Affinity_strategyPiPPPcPFvPKvES5_PFiiS2_E(i32 noundef 1, i32 noundef %.0, i32 noundef 1, ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2)
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.a, %_Z10tMPI_Get_NPiPPPcPKcS_.exit
  br label %bb.i

bb.i:                                             ; preds = %_Z10tMPI_Get_NPiPPPcPKcS_.exit, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ 1, %_Z10tMPI_Get_NPiPPPcPKcS_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL18tMPI_Start_threadsii22tMPI_Affinity_strategyPiPPPcPFvPKvES5_PFiiS2_E(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %.thread79

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @_ZL14tmpi_finalized, align 4
  store i32 %1, ptr @Nthreads, align 4, !tbaa !48
  %i.b = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef 328) ; 8 uses
  store ptr %i.b, ptr @tmpi_global, align 8, !tbaa !55
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = tail call noundef i32 @_Z22tMPI_Thread_mutex_initP19tMPI_Thread_mutex_t(ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %_ZL16tMPI_Global_initP11tmpi_globali.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.h = tail call noundef i32 @_Z24tMPI_Thread_barrier_initP21tMPI_Thread_barrier_ti(ptr noundef nonnull %i.g, i32 noundef range(i32 1, -2147483648) %1)
  %.not12.i = icmp eq i32 %i.h, 0
  br i1 %.not12.i, label %bb.e, label %_ZL16tMPI_Global_initP11tmpi_globali.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = tail call noundef i32 @_Z22tMPI_Thread_mutex_initP19tMPI_Thread_mutex_t(ptr noundef nonnull %i.i)
  %.not13.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i, label %_ZL16tMPI_Global_initP11tmpi_globali.exit.thread, label %_ZL16tMPI_Global_initP11tmpi_globali.exit

_ZL16tMPI_Global_initP11tmpi_globali.exit.thread: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.l = tail call i32 @gettimeofday(ptr noundef nonnull %i.k, ptr noundef null) #17 ; 0 uses
  br label %bb.f

_ZL16tMPI_Global_initP11tmpi_globali.exit:        ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !8
  %i.n = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.m, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %.thread79

bb.f:                                             ; preds = %_ZL16tMPI_Global_initP11tmpi_globali.exit.thread, %_ZL16tMPI_Global_initP11tmpi_globali.exit
  %i.o = zext nneg i32 %1 to i64
  %i.p = mul nuw nsw i64 %i.o, 424
  %i.q = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef %i.p) ; 2 uses
  store ptr %i.q, ptr @threads, align 8, !tbaa !31
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread79, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef i32 @_Z15tMPI_Comm_allocPP10tmpi_comm_S0_i(ptr noundef nonnull @TMPI_COMM_WORLD, ptr noundef null, i32 noundef %1) ; 2 uses
  %.not68 = icmp eq i32 %i.s, 0
  br i1 %.not68, label %bb.h, label %.thread79

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_Z16tMPI_Group_allocv()
  store ptr %i.t, ptr @TMPI_GROUP_EMPTY, align 8, !tbaa !59
  %i.u = tail call noundef i32 @_Z22tMPI_Thread_key_createP17tMPI_Thread_key_tPFvPvE(ptr noundef nonnull @id_key, ptr noundef null)
  %.not69 = icmp eq i32 %i.u, 0
  br i1 %.not69, label %.lr.ph86, label %bb.j

.lr.ph86:                                         ; preds = %bb.h
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne ptr %4, null
  %or.cond = and i1 %i.v, %i.w
  %wide.trip.count104 = zext nneg i32 %1 to i64   ; 3 uses
  %.pre120 = load ptr, ptr @threads, align 8, !tbaa !31 ; 3 uses
  br i1 %or.cond, label %.lr.ph86.split.us, label %.lr.ph86.split.preheader

.lr.ph86.split.preheader:                         ; preds = %.lr.ph86
  %.pre118 = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre118, i64 8
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 5 uses
  %xtraiter = and i64 %wide.trip.count104, 3      ; 3 uses
  %i.x = icmp ult i32 %1, 4
  br i1 %i.x, label %.lr.ph86.split.epil.preheader, label %.lr.ph86.split.preheader.new

.lr.ph86.split.preheader.new:                     ; preds = %.lr.ph86.split.preheader
  %unroll_iter = and i64 %wide.trip.count104, 2147483644
  br label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86, %.loopexit.us
  %i.y = phi ptr [ %i.al, %.loopexit.us ], [ %.pre120, %.lr.ph86 ]
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %.loopexit.us ], [ 0, %.lr.ph86 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [424 x i8], ptr %i.y, i64 %indvars.iv100
  %i.aa = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv100
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %3, align 4, !tbaa !48    ; 2 uses
  %i.af = load ptr, ptr @threads, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw [424 x i8], ptr %i.af, i64 %indvars.iv100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !62
  %i.ai = sext i32 %i.ae to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef %i.aj) ; 2 uses
  %i.al = load ptr, ptr @threads, align 8, !tbaa !31 ; 2 uses
  %i.am = getelementptr inbounds nuw [424 x i8], ptr %i.al, i64 %indvars.iv100 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 416
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 408
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.us, label %.loopexit.us

bb.i:                                             ; preds = %.lr.ph.us, %bb.i
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next96, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv95
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.at = tail call noalias ptr @strdup(ptr noundef %i.as) #17
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv95
  store ptr %i.at, ptr %i.au, align 8, !tbaa !50
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit.us, label %bb.i, !llvm.loop !64

.loopexit.us:                                     ; preds = %bb.i, %.lr.ph86.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  store ptr %5, ptr %i.av, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 392
  store ptr %7, ptr %i.aw, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 400
  store ptr %6, ptr %i.ax, align 8, !tbaa !67
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph86.split.us, !llvm.loop !68

.lr.ph.us:                                        ; preds = %.lr.ph86.split.us
  %i.ay = load ptr, ptr %4, align 8, !tbaa !49
  %wide.trip.count98 = zext nneg i32 %i.ap to i64
  br label %bb.i

bb.j:                                             ; preds = %bb.h
  %i.az = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !8
  %i.ba = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.az, i32 noundef 3)
  br label %.thread79

.lr.ph86.split:                                   ; preds = %.lr.ph86.split, %.lr.ph86.split.preheader.new
  %i.bb = phi ptr [ %.pre120, %.lr.ph86.split.preheader.new ], [ %i.cf, %.lr.ph86.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph86.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86.split ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph86.split.preheader.new ], [ %niter.next.3, %.lr.ph86.split ]
  %i.bc = getelementptr inbounds nuw [424 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = load ptr, ptr @threads, align 8, !tbaa !31 ; 2 uses
  %i.bf = getelementptr inbounds nuw [424 x i8], ptr %i.be, i64 %indvars.iv ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 408
  store i32 0, ptr %i.bg, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 416
  store ptr null, ptr %i.bh, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 384
  store ptr %5, ptr %i.bi, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 392
  store ptr %7, ptr %i.bj, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 400
  store ptr %6, ptr %i.bk, align 8, !tbaa !67
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw [424 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.next
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !31
  %i.bn = load ptr, ptr @threads, align 8, !tbaa !31 ; 2 uses
  %i.bo = getelementptr inbounds nuw [424 x i8], ptr %i.bn, i64 %indvars.iv.next ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
  store i32 0, ptr %i.bp, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 416
  store ptr null, ptr %i.bq, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  store ptr %5, ptr %i.br, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 392
  store ptr %7, ptr %i.bs, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  store ptr %6, ptr %i.bt, align 8, !tbaa !67
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bu = getelementptr inbounds nuw [424 x i8], ptr %i.bn, i64 %indvars.iv.next.1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.next.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !31
  %i.bw = load ptr, ptr @threads, align 8, !tbaa !31 ; 2 uses
  %i.bx = getelementptr inbounds nuw [424 x i8], ptr %i.bw, i64 %indvars.iv.next.1 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 408
  store i32 0, ptr %i.by, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 416
  store ptr null, ptr %i.bz, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 384
  store ptr %5, ptr %i.ca, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 392
  store ptr %7, ptr %i.cb, align 8, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 400
  store ptr %6, ptr %i.cc, align 8, !tbaa !67
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.cd = getelementptr inbounds nuw [424 x i8], ptr %i.bw, i64 %indvars.iv.next.2
end_hunk_0
