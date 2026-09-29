Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tmpi_init?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z10tMPI_Get_NPiPPPcPKcS_:bb.a

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
  %i.k = load ptr, ptr %1, align 8, !tbaa !50
  %i.l = zext nneg i32 %.1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = call i64 @__isoc23_strtol(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  store i32 %i.p, ptr %3, align 4, !tbaa !49
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %.thread34, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.q, align 1, !tbaa !54
  %.not24 = icmp eq i8 %i.r, 0
  br i1 %.not24, label %bb.f, label %.thread34

.thread34:                                        ; preds = %bb.d, %bb.e
  store i32 0, ptr %3, align 4, !tbaa !49
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
  store i32 %spec.store.select, ptr %3, align 4, !tbaa !49
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
  %i.b = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.pre.i = load i32, ptr %0, align 4, !tbaa !49  ; 4 uses
  %i.d = icmp sgt i32 %.pre.i, 1
  br i1 %i.d, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !50
  %wide.trip.count.i = zext nneg i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str, ptr noundef nonnull dereferenceable(1) %i.g) #16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.loopexit.split.loop.exit36.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.c, !llvm.loop !0

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
  %i.m = load ptr, ptr %1, align 8, !tbaa !50
  %i.n = zext nneg i32 %.1.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = call i64 @__isoc23_strtol(ptr noundef %i.p, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
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
  store i32 %1, ptr @Nthreads, align 4, !tbaa !49
  %i.b = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef 328) ; 8 uses
  store ptr %i.b, ptr @tmpi_global, align 8, !tbaa !56
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
  store i32 0, ptr %i.f, align 8, !tbaa !74
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
  %i.m = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.n = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.m, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %.thread79

bb.f:                                             ; preds = %_ZL16tMPI_Global_initP11tmpi_globali.exit.thread, %_ZL16tMPI_Global_initP11tmpi_globali.exit
  %i.o = zext nneg i32 %1 to i64                  ; 4 uses
  %i.p = mul nuw nsw i64 %i.o, 424
  %i.q = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef %i.p) ; 2 uses
  store ptr %i.q, ptr @threads, align 8, !tbaa !33
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
  %.pre120 = load ptr, ptr @threads, align 8, !tbaa !33 ; 3 uses
  br i1 %or.cond, label %.lr.ph86.split.us, label %.lr.ph86.split.preheader

.lr.ph86.split.preheader:                         ; preds = %.lr.ph86
  %.pre118 = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre118, i64 8
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60 ; 5 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.x = icmp ult i32 %1, 4
  br i1 %i.x, label %.lr.ph86.split.epil.preheader, label %.lr.ph86.split.preheader.new

.lr.ph86.split.preheader.new:                     ; preds = %.lr.ph86.split.preheader
  %unroll_iter = and i64 %i.o, 2147483644
  br label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86, %.loopexit.us
  %i.y = phi ptr [ %i.al, %.loopexit.us ], [ %.pre120, %.lr.ph86 ]
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %.loopexit.us ], [ 0, %.lr.ph86 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [424 x i8], ptr %i.y, i64 %indvars.iv100
  %i.aa = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv100
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !33
  %i.ae = load i32, ptr %3, align 4, !tbaa !49    ; 2 uses
  %i.af = load ptr, ptr @threads, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw [424 x i8], ptr %i.af, i64 %indvars.iv100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !61
  %i.ai = sext i32 %i.ae to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call noundef ptr @_Z11tMPI_Mallocm(i64 noundef %i.aj) ; 2 uses
  %i.al = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  %i.am = getelementptr inbounds nuw [424 x i8], ptr %i.al, i64 %indvars.iv100 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 416
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 408
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.us, label %.loopexit.us

bb.i:                                             ; preds = %.lr.ph.us, %bb.i
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next96, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv95
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.at = tail call noalias ptr @strdup(ptr noundef %i.as) #17
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv95
  store ptr %i.at, ptr %i.au, align 8, !tbaa !52
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit.us, label %bb.i, !llvm.loop !70

.loopexit.us:                                     ; preds = %bb.i, %.lr.ph86.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  store ptr %5, ptr %i.av, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 392
  store ptr %7, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 400
  store ptr %6, ptr %i.ax, align 8, !tbaa !65
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next101, %i.o
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph86.split.us, !llvm.loop !71

.lr.ph.us:                                        ; preds = %.lr.ph86.split.us
  %i.ay = load ptr, ptr %4, align 8, !tbaa !50
  %wide.trip.count98 = zext nneg i32 %i.ap to i64
  br label %bb.i

bb.j:                                             ; preds = %bb.h
  %i.az = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.ba = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.az, i32 noundef 3)
  br label %.thread79

.lr.ph86.split:                                   ; preds = %.lr.ph86.split, %.lr.ph86.split.preheader.new
  %i.bb = phi ptr [ %.pre120, %.lr.ph86.split.preheader.new ], [ %i.cf, %.lr.ph86.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph86.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86.split ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph86.split.preheader.new ], [ %niter.next.3, %.lr.ph86.split ]
  %i.bc = getelementptr inbounds nuw [424 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !33
  %i.be = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  %i.bf = getelementptr inbounds nuw [424 x i8], ptr %i.be, i64 %indvars.iv ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 408
  store i32 0, ptr %i.bg, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 416
  store ptr null, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 384
  store ptr %5, ptr %i.bi, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 392
  store ptr %7, ptr %i.bj, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 400
  store ptr %6, ptr %i.bk, align 8, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw [424 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.next
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !33
  %i.bn = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw [424 x i8], ptr %i.bn, i64 %indvars.iv.next ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
  store i32 0, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 416
  store ptr null, ptr %i.bq, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  store ptr %5, ptr %i.br, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 392
  store ptr %7, ptr %i.bs, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  store ptr %6, ptr %i.bt, align 8, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.bu = getelementptr inbounds nuw [424 x i8], ptr %i.bn, i64 %indvars.iv.next.1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.next.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !33
  %i.bw = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  %i.bx = getelementptr inbounds nuw [424 x i8], ptr %i.bw, i64 %indvars.iv.next.1 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 408
  store i32 0, ptr %i.by, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 416
  store ptr null, ptr %i.bz, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 384
  store ptr %5, ptr %i.ca, align 8, !tbaa !63
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 392
  store ptr %7, ptr %i.cb, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 400
  store ptr %6, ptr %i.cc, align 8, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.cd = getelementptr inbounds nuw [424 x i8], ptr %i.bw, i64 %indvars.iv.next.2
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.next.2
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !33
  %i.cf = load ptr, ptr @threads, align 8, !tbaa !33 ; 3 uses
  %i.cg = getelementptr inbounds nuw [424 x i8], ptr %i.cf, i64 %indvars.iv.next.2 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 408
  store i32 0, ptr %i.ch, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 416
  store ptr null, ptr %i.ci, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 384
  store ptr %5, ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 392
  store ptr %7, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 400
  store ptr %6, ptr %i.cl, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit139.unr-lcssa, label %.lr.ph86.split, !llvm.loop !71

._crit_edge.loopexit139.unr-lcssa:                ; preds = %.lr.ph86.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph86.split.epil.preheader

.lr.ph86.split.epil.preheader:                    ; preds = %._crit_edge.loopexit139.unr-lcssa, %.lr.ph86.split.preheader
  %.epil.init = phi ptr [ %.pre120, %.lr.ph86.split.preheader ], [ %i.cf, %._crit_edge.loopexit139.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph86.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit139.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph86.split.epil

.lr.ph86.split.epil:                              ; preds = %.lr.ph86.split.epil, %.lr.ph86.split.epil.preheader
  %i.cm = phi ptr [ %.epil.init, %.lr.ph86.split.epil.preheader ], [ %i.cp, %.lr.ph86.split.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph86.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph86.split.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph86.split.epil.preheader ], [ %epil.iter.next, %.lr.ph86.split.epil ]
  %i.cn = getelementptr inbounds nuw [424 x i8], ptr %i.cm, i64 %indvars.iv.epil
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.pre119, i64 %indvars.iv.epil
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !33
  %i.cp = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  %i.cq = getelementptr inbounds nuw [424 x i8], ptr %i.cp, i64 %indvars.iv.epil ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 408
  store i32 0, ptr %i.cr, align 8, !tbaa !61
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 416
  store ptr null, ptr %i.cs, align 8, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 384
  store ptr %5, ptr %i.ct, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 392
  store ptr %7, ptr %i.cu, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 400
  store ptr %6, ptr %i.cv, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph86.split.epil, !llvm.loop !72

._crit_edge:                                      ; preds = %._crit_edge.loopexit139.unr-lcssa, %.lr.ph86.split.epil, %.loopexit.us
  %i.cw = icmp eq i32 %2, 1
  br i1 %i.cw, label %bb.k, label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.cx = tail call noundef ptr @_Z16tMPI_Thread_selfv()
  %i.cy = load ptr, ptr @threads, align 8, !tbaa !33
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !66
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cz = tail call noundef i32 @_Z25tMPI_Thread_get_hw_numberv() ; 2 uses
  %i.da = icmp slt i32 %i.cz, 2
  %i.db = icmp ne i32 %i.cz, %1
  %or.cond74.not = or i1 %i.da, %i.db
  %i.dc = tail call noundef ptr @_Z16tMPI_Thread_selfv() ; 2 uses
  %i.dd = load ptr, ptr @threads, align 8, !tbaa !33
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !66
  br i1 %or.cond74.not, label %bb.l, label %.thread126

bb.l:                                             ; preds = %.thread, %bb.k
  %.not90 = icmp eq i32 %1, 1
  br i1 %.not90, label %._crit_edge89, label %.lr.ph.split.us.preheader

.thread126:                                       ; preds = %bb.k
  %i.de = tail call noundef i32 @_Z30tMPI_Thread_setaffinity_singleP11tMPI_Threadj(ptr noundef %i.dc, i32 noundef 0) ; 0 uses
  %.not90128 = icmp eq i32 %1, 1
  br i1 %.not90128, label %._crit_edge89, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread126
  %smax109 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  %wide.trip.count110 = zext nneg i32 %smax109 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.l
  %smax115 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  %wide.trip.count116 = zext nneg i32 %smax115 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv112 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next113, %bb.m ] ; 2 uses
  %i.df = load ptr, ptr @threads, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw [424 x i8], ptr %i.df, i64 %indvars.iv112 ; 2 uses
  %i.dh = tail call noundef i32 @_Z18tMPI_Thread_createPP11tMPI_ThreadPFPvS2_ES2_(ptr noundef nonnull %i.dg, ptr noundef nonnull @_ZL17tMPI_Thread_startPv, ptr noundef nonnull %i.dg)
  %.not73.us = icmp eq i32 %i.dh, 0
  br i1 %.not73.us, label %bb.m, label %.split.us

bb.m:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge89, label %.lr.ph.split.us, !llvm.loop !73

bb.n:                                             ; preds = %.lr.ph.split
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge89, label %.lr.ph.split, !llvm.loop !73

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.n
  %indvars.iv106 = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next107, %bb.n ] ; 4 uses
  %i.di = load ptr, ptr @threads, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw [424 x i8], ptr %i.di, i64 %indvars.iv106 ; 2 uses
  %i.dk = tail call noundef i32 @_Z18tMPI_Thread_createPP11tMPI_ThreadPFPvS2_ES2_(ptr noundef nonnull %i.dj, ptr noundef nonnull @_ZL17tMPI_Thread_startPv, ptr noundef nonnull %i.dj)
  %i.dl = load ptr, ptr @threads, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw [424 x i8], ptr %i.dl, i64 %indvars.iv106
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !66
  %i.do = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.dp = tail call noundef i32 @_Z30tMPI_Thread_setaffinity_singleP11tMPI_Threadj(ptr noundef %i.dn, i32 noundef %i.do) ; 0 uses
  %.not73 = icmp eq i32 %i.dk, 0
  br i1 %.not73, label %bb.n, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.dq = load ptr, ptr @TMPI_COMM_WORLD, align 8, !tbaa !11
  %i.dr = tail call noundef i32 @_Z10tMPI_ErrorP10tmpi_comm_i(ptr noundef %i.dq, i32 noundef 3)
  br label %.thread79

._crit_edge89:                                    ; preds = %bb.n, %bb.m, %.thread126, %bb.l
  %.not71 = icmp eq i32 %0, 0
  %i.ds = load ptr, ptr @threads, align 8, !tbaa !33 ; 2 uses
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge89
end_hunk_0
