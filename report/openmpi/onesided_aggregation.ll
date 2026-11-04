Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/onesided_aggregation?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_win_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.ompi_predefined_info_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@ompi_mpi_win_null = external global %struct.ompi_predefined_win_t, align 1
@.str = private unnamed_addr constant [35 x i8] c"adio/common/onesided_aggregation.c\00", align 1
@romio_onesided_no_rmw = external local_unnamed_addr global i32, align 4
@romio_onesided_always_rmw = external local_unnamed_addr global i32, align 4
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 1
@romio_write_aggmethod = external local_unnamed_addr global i32, align 4
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1
@romio_read_aggmethod = external local_unnamed_addr global i32, align 4
@ompi_mpi_info_null = external global %struct.ompi_predefined_info_t, align 1

; Function Attrs: nounwind uwtable
define i32 @ADIOI_OneSidedCleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq ptr %i.b, @ompi_mpi_win_null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @MPI_Win_free(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %.not4 = icmp eq ptr %i.e, @ompi_mpi_win_null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @MPI_Win_free(ptr noundef nonnull %i.d) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.f, %bb.d ], [ %.0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @MPI_Win_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ADIOI_OneSidedWriteAggregation(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12, ptr noundef %13) local_unnamed_addr #0 {
bb.a:
  %14 = alloca %struct.ompi_status_public_t, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = load i32, ptr %13, align 8, !tbaa !90    ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !91   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = icmp sgt i32 %i.h, 0                     ; 5 uses
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !94
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 0, ptr %i.r, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %15 = icmp sgt i32 %3, 0                        ; 2 uses
  br i1 %15, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = icmp sgt i64 %i.u, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp samesign uge i64 %indvars.iv.next, %i.s
  %or.cond1192.not = select i1 %i.w, i1 true, i1 %i.v
  br i1 %or.cond1192.not, label %.critedge, label %.lr.ph, !llvm.loop !59

.critedge:                                        ; preds = %.lr.ph, %bb.d
  %.01085.lcssa = phi i1 [ false, %bb.d ], [ %i.v, %.lr.ph ]
  store i32 0, ptr %6, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = call i32 @PMPI_Comm_size(ptr noundef %i.y, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.ab = call i32 @PMPI_Comm_rank(ptr noundef %i.aa, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = icmp eq ptr %i.ad, @ompi_mpi_win_null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = icmp eq ptr %i.ag, @ompi_mpi_win_null
  br i1 %i.ah, label %bb.f, label %ADIOI_OneSidedSetup.exit

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !35
  %i.ao = sext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.aq = call i32 @MPI_Win_create(ptr noundef %i.aj, i64 noundef %i.ao, i32 noundef 1, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef %i.ap, ptr noundef nonnull %i.ac) #6
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %ADIOI_OneSidedSetup.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !36
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.au = call i32 @MPI_Win_create(ptr noundef nonnull %i.ar, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef %i.as, ptr noundef nonnull %i.at) #6 ; 0 uses
  br label %ADIOI_OneSidedSetup.exit

ADIOI_OneSidedSetup.exit:                         ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @ADIOI_Datatype_iscontig(ptr noundef %5, ptr noundef nonnull %i.c) #6
  %i.av = load i32, ptr %i.c, align 4, !tbaa !29
  %.not1143 = icmp eq i32 %i.av, 0
  br i1 %.not1143, label %bb.h, label %bb.k

bb.h:                                             ; preds = %ADIOI_OneSidedSetup.exit
  %i.aw = icmp eq i32 %i.h, 0
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !94
  %.not1144 = icmp eq i32 %i.ay, 0
  br i1 %.not1144, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.az = call ptr @ADIOI_Flatten_and_find(ptr noundef %5) #6 ; 2 uses
  store ptr %i.az, ptr %i.m, align 8, !tbaa !93
  %i.ba = call i32 @PMPI_Type_get_extent(ptr noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k) #6 ; 0 uses
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %ADIOI_OneSidedSetup.exit
  %.01088 = phi i64 [ %i.l, %ADIOI_OneSidedSetup.exit ], [ %i.bb, %bb.j ], [ %i.l, %bb.i ] ; 2 uses
  %.01087 = phi ptr [ %i.n, %ADIOI_OneSidedSetup.exit ], [ %i.az, %bb.j ], [ %i.n, %bb.i ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37 ; 9 uses
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = mul nsw i64 %i.bg, 40
  %i.bi = call ptr @ADIOI_Malloc_fn(i64 noundef %i.bh, i32 noundef 313, ptr noundef nonnull @.str) #6 ; 21 uses
  %i.bj = icmp sgt i32 %i.bf, 0                   ; 4 uses
  br i1 %i.bj, label %.lr.ph1324, label %._crit_edge

.lr.ph1324:                                       ; preds = %bb.k
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !29
  %.not1191 = icmp eq i32 %i.bk, 0
  %wide.trip.count1485 = zext nneg i32 %i.bf to i64 ; 4 uses
  br i1 %.not1191, label %.lr.ph1324.split.us.preheader, label %.lr.ph1324.split.preheader

.lr.ph1324.split.preheader:                       ; preds = %.lr.ph1324
  %xtraiter = and i64 %wide.trip.count1485, 7     ; 3 uses
  %i.bl = icmp ult i32 %i.bf, 8
  br i1 %i.bl, label %.lr.ph1324.split.epil.preheader, label %.lr.ph1324.split.preheader.new

.lr.ph1324.split.preheader.new:                   ; preds = %.lr.ph1324.split.preheader
  %unroll_iter = and i64 %wide.trip.count1485, 2147483640
  br label %.lr.ph1324.split

.lr.ph1324.split.us.preheader:                    ; preds = %.lr.ph1324
  %xtraiter1846 = and i64 %wide.trip.count1485, 3 ; 3 uses
  %i.bm = icmp ult i32 %i.bf, 4
  br i1 %i.bm, label %.lr.ph1324.split.us.epil.preheader, label %.lr.ph1324.split.us.preheader.new

.lr.ph1324.split.us.preheader.new:                ; preds = %.lr.ph1324.split.us.preheader
  %unroll_iter1850 = and i64 %wide.trip.count1485, 2147483644
  br label %.lr.ph1324.split.us

.lr.ph1324.split.us:                              ; preds = %.lr.ph1324.split.us, %.lr.ph1324.split.us.preheader.new
  %indvars.iv1482 = phi i64 [ 0, %.lr.ph1324.split.us.preheader.new ], [ %indvars.iv.next1483.3, %.lr.ph1324.split.us ] ; 5 uses
  %niter1851 = phi i64 [ 0, %.lr.ph1324.split.us.preheader.new ], [ %niter1851.next.3, %.lr.ph1324.split.us ]
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1482
  store i64 -1, ptr %i.bn, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1482
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 -1, ptr %i.bp, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1482
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  store i64 -1, ptr %i.br, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1482
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  store i64 -1, ptr %i.bt, align 8, !tbaa !39
  %indvars.iv.next1483.3 = add nuw nsw i64 %indvars.iv1482, 4 ; 2 uses
  %niter1851.next.3 = add i64 %niter1851, 4       ; 2 uses
  %niter1851.ncmp.3 = icmp eq i64 %niter1851.next.3, %unroll_iter1850
  br i1 %niter1851.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1324.split.us, !llvm.loop !60

.lr.ph1324.split:                                 ; preds = %.lr.ph1324.split, %.lr.ph1324.split.preheader.new
  %indvars.iv1479 = phi i64 [ 0, %.lr.ph1324.split.preheader.new ], [ %indvars.iv.next1480.7, %.lr.ph1324.split ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph1324.split.preheader.new ], [ %niter.next.7, %.lr.ph1324.split ]
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 -1, ptr %i.bv, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store i64 -1, ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  store i64 -1, ptr %i.bz, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  store i64 -1, ptr %i.cb, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192
  store i64 -1, ptr %i.cd, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 232
  store i64 -1, ptr %i.cf, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  store i64 -1, ptr %i.ch, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 312
  store i64 -1, ptr %i.cj, align 8, !tbaa !40
  %indvars.iv.next1480.7 = add nuw nsw i64 %indvars.iv1479, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit1843.unr-lcssa, label %.lr.ph1324.split, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1324.split.us
  %lcmp.mod1848.not = icmp eq i64 %xtraiter1846, 0
  br i1 %lcmp.mod1848.not, label %._crit_edge, label %.lr.ph1324.split.us.epil.preheader

.lr.ph1324.split.us.epil.preheader:               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1324.split.us.preheader
  %indvars.iv1482.epil.init = phi i64 [ 0, %.lr.ph1324.split.us.preheader ], [ %indvars.iv.next1483.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1849 = icmp ne i64 %xtraiter1846, 0
  call void @llvm.assume(i1 %lcmp.mod1849)
  br label %.lr.ph1324.split.us.epil

.lr.ph1324.split.us.epil:                         ; preds = %.lr.ph1324.split.us.epil, %.lr.ph1324.split.us.epil.preheader
  %indvars.iv1482.epil = phi i64 [ %indvars.iv.next1483.epil, %.lr.ph1324.split.us.epil ], [ %indvars.iv1482.epil.init, %.lr.ph1324.split.us.epil.preheader ] ; 2 uses
  %epil.iter1847 = phi i64 [ %epil.iter1847.next, %.lr.ph1324.split.us.epil ], [ 0, %.lr.ph1324.split.us.epil.preheader ]
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1482.epil
  store i64 -1, ptr %i.ck, align 8, !tbaa !39
  %indvars.iv.next1483.epil = add nuw nsw i64 %indvars.iv1482.epil, 1
  %epil.iter1847.next = add i64 %epil.iter1847, 1 ; 2 uses
  %epil.iter1847.cmp.not = icmp eq i64 %epil.iter1847.next, %xtraiter1846
  br i1 %epil.iter1847.cmp.not, label %._crit_edge, label %.lr.ph1324.split.us.epil, !llvm.loop !61

._crit_edge.loopexit1843.unr-lcssa:               ; preds = %.lr.ph1324.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph1324.split.epil.preheader

.lr.ph1324.split.epil.preheader:                  ; preds = %._crit_edge.loopexit1843.unr-lcssa, %.lr.ph1324.split.preheader
  %indvars.iv1479.epil.init = phi i64 [ 0, %.lr.ph1324.split.preheader ], [ %indvars.iv.next1480.7, %._crit_edge.loopexit1843.unr-lcssa ]
  %lcmp.mod1845 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1845)
  br label %.lr.ph1324.split.epil

.lr.ph1324.split.epil:                            ; preds = %.lr.ph1324.split.epil, %.lr.ph1324.split.epil.preheader
  %indvars.iv1479.epil = phi i64 [ %indvars.iv.next1480.epil, %.lr.ph1324.split.epil ], [ %indvars.iv1479.epil.init, %.lr.ph1324.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1324.split.epil ], [ 0, %.lr.ph1324.split.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv1479.epil
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i64 -1, ptr %i.cm, align 8, !tbaa !40
  %indvars.iv.next1480.epil = add nuw nsw i64 %indvars.iv1479.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph1324.split.epil, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit1843.unr-lcssa, %.lr.ph1324.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph1324.split.us.epil, %bb.k
  %i.cn = icmp eq i32 %i.h, 0                     ; 8 uses
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.co = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.01076.in = phi i32 [ %i.cq, %bb.l ], [ %i.h, %._crit_edge ]
  %.01076 = sext i32 %.01076.in to i64            ; 16 uses
  br i1 %i.bj, label %.lr.ph1333, label %._crit_edge1341

.lr.ph1333:                                       ; preds = %bb.m
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !42
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 48
  %wide.trip.count1490 = zext nneg i32 %i.bf to i64
  br label %bb.n

.preheader1297:                                   ; preds = %bb.q
  %16 = icmp ne i32 %.11078, 0
  %wide.trip.count1495 = zext nneg i32 %i.bf to i64
  br label %.lr.ph1340

bb.n:                                             ; preds = %.lr.ph1333, %bb.q
  %indvars.iv1487 = phi i64 [ 0, %.lr.ph1333 ], [ %indvars.iv.next1488, %bb.q ] ; 5 uses
  %.010681331 = phi i64 [ %8, %.lr.ph1333 ], [ %.11069, %bb.q ] ; 2 uses
  %.010701330 = phi i64 [ 0, %.lr.ph1333 ], [ %spec.select1194, %bb.q ] ; 2 uses
  %.010721329 = phi i32 [ -1, %.lr.ph1333 ], [ %.11073, %bb.q ]
  %.010741328 = phi i32 [ -1, %.lr.ph1333 ], [ %spec.select1193, %bb.q ]
  %.010771327 = phi i32 [ 0, %.lr.ph1333 ], [ %.11078, %bb.q ] ; 2 uses
  %.010791326 = phi i32 [ -1, %.lr.ph1333 ], [ %.11080, %bb.q ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv1487
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !27 ; 3 uses
  %i.cy = icmp sgt i64 %i.cx, %.010701330
  %i.cz = trunc nuw nsw i64 %indvars.iv1487 to i32 ; 4 uses
  %spec.select1193 = select i1 %i.cy, i32 %i.cz, i32 %.010741328 ; 2 uses
  %spec.select1194 = call i64 @llvm.smax.i64(i64 %i.cx, i64 %.010701330)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv1487
  %i.db = load i64, ptr %i.da, align 8, !tbaa !27 ; 3 uses
  %i.dc = icmp slt i64 %i.db, %.010681331
  %.11073 = select i1 %i.dc, i32 %i.cz, i32 %.010721329 ; 2 uses
  %.11069 = call i64 @llvm.smin.i64(i64 %i.db, i64 %.010681331)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1487
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29
  %i.df = icmp eq i32 %i.de, %i.cu
  br i1 %i.df, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dg = icmp sgt i64 %i.cx, %i.db
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.cv, align 8, !tbaa !95
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.11080 = phi i32 [ %i.cz, %bb.p ], [ %i.cz, %bb.o ], [ %.010791326, %bb.n ] ; 2 uses
  %.11078 = phi i32 [ 1, %bb.p ], [ %.010771327, %bb.o ], [ %.010771327, %bb.n ] ; 2 uses
  %indvars.iv.next1488 = add nuw nsw i64 %indvars.iv1487, 1 ; 2 uses
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1488, %wide.trip.count1490
  br i1 %exitcond1491.not, label %.preheader1297, label %bb.n, !llvm.loop !63

.lr.ph1340:                                       ; preds = %.preheader1297, %.lr.ph1340
  %indvars.iv1492 = phi i64 [ 0, %.preheader1297 ], [ %indvars.iv.next1493, %.lr.ph1340 ] ; 3 uses
  %.010661339 = phi i32 [ 0, %.preheader1297 ], [ %.11067, %.lr.ph1340 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv1492
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv1492
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !27
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = add nsw i64 %i.dl, 1
  %i.dn = sdiv i64 %i.dm, %.01076                 ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %sext1189 = shl i64 %i.dn, 32
  %i.dp = ashr exact i64 %sext1189, 32
  %i.dq = mul nsw i64 %i.dp, %.01076
  %.not1190 = icmp sle i64 %i.dq, %i.dl
  %i.dr = zext i1 %.not1190 to i32
  %spec.select1195 = add nsw i32 %i.dr, %i.do
  %.11067 = call i32 @llvm.smax.i32(i32 %spec.select1195, i32 %.010661339) ; 2 uses
  %indvars.iv.next1493 = add nuw nsw i64 %indvars.iv1492, 1 ; 2 uses
  %exitcond1496.not = icmp eq i64 %indvars.iv.next1493, %wide.trip.count1495
  br i1 %exitcond1496.not, label %._crit_edge1341, label %.lr.ph1340, !llvm.loop !64

._crit_edge1341:                                  ; preds = %.lr.ph1340, %bb.m
  %.01072.lcssa1690 = phi i32 [ -1, %bb.m ], [ %.11073, %.lr.ph1340 ] ; 3 uses
  %.01074.lcssa1688 = phi i32 [ -1, %bb.m ], [ %spec.select1193, %.lr.ph1340 ] ; 5 uses
  %.01077.lcssa1687 = phi i1 [ false, %bb.m ], [ %16, %.lr.ph1340 ] ; 4 uses
  %.01079.lcssa1686 = phi i32 [ -1, %bb.m ], [ %.11080, %.lr.ph1340 ] ; 6 uses
  %.01066.lcssa = phi i32 [ 0, %bb.m ], [ %.11067, %.lr.ph1340 ] ; 3 uses
  %i.ds = shl nsw i64 %i.bg, 2                    ; 4 uses
  %i.dt = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ds, i32 noundef 402, ptr noundef nonnull @.str) #6 ; 7 uses
  %i.du = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.dv = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 404, ptr noundef nonnull @.str) #6 ; 5 uses
  %i.dw = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 406, ptr noundef nonnull @.str) #6 ; 5 uses
  %i.dx = zext nneg i32 %.01066.lcssa to i64      ; 5 uses
  %i.dy = shl nuw nsw i64 %i.dx, 3                ; 3 uses
  %i.dz = call ptr @ADIOI_Malloc_fn(i64 noundef %i.dy, i32 noundef 413, ptr noundef nonnull @.str) #6 ; 9 uses
  %i.ea = icmp sgt i32 %.01066.lcssa, 0           ; 2 uses
  br i1 %i.ea, label %.lr.ph1349, label %._crit_edge1350.thread

._crit_edge1350.thread:                           ; preds = %._crit_edge1341
  %i.eb = call ptr @ADIOI_Malloc_fn(i64 noundef %i.dy, i32 noundef 424, ptr noundef nonnull @.str) #6
  br label %._crit_edge1354

.lr.ph1349:                                       ; preds = %._crit_edge1341
  %i.ec = zext nneg i32 %i.bf to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1349, %._crit_edge1346
  %indvars.iv1500 = phi i64 [ 0, %.lr.ph1349 ], [ %indvars.iv.next1501, %._crit_edge1346 ] ; 2 uses
  %i.ee = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ds, i32 noundef 415, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv1500
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !43
  br i1 %i.bj, label %.lr.ph1345.preheader, label %._crit_edge1346

.lr.ph1345.preheader:                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr align 4 %i.ee, i8 -1, i64 %i.ed, i1 false), !tbaa !29
  br label %._crit_edge1346

._crit_edge1346:                                  ; preds = %.lr.ph1345.preheader, %bb.r
  %indvars.iv.next1501 = add nuw nsw i64 %indvars.iv1500, 1 ; 2 uses
  %exitcond1504.not = icmp eq i64 %indvars.iv.next1501, %i.dx
  br i1 %exitcond1504.not, label %._crit_edge1350, label %bb.r, !llvm.loop !65

._crit_edge1350:                                  ; preds = %._crit_edge1346
  %i.eg = call ptr @ADIOI_Malloc_fn(i64 noundef %i.dy, i32 noundef 424, ptr noundef nonnull @.str) #6 ; 2 uses
  br label %.lr.ph1353

.lr.ph1353:                                       ; preds = %._crit_edge1350, %.lr.ph1353
  %indvars.iv1505 = phi i64 [ %indvars.iv.next1506, %.lr.ph1353 ], [ 0, %._crit_edge1350 ] ; 2 uses
  %i.eh = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ds, i32 noundef 426, ptr noundef nonnull @.str) #6
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv1505
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !43
  %indvars.iv.next1506 = add nuw nsw i64 %indvars.iv1505, 1 ; 2 uses
  %exitcond1509.not = icmp eq i64 %indvars.iv.next1506, %i.dx
  br i1 %exitcond1509.not, label %._crit_edge1354, label %.lr.ph1353, !llvm.loop !66

._crit_edge1354:                                  ; preds = %.lr.ph1353, %._crit_edge1350.thread
  %i.ej = phi ptr [ %i.eb, %._crit_edge1350.thread ], [ %i.eg, %.lr.ph1353 ] ; 7 uses
  br i1 %i.o, label %bb.s, label %bb.u

bb.s:                                             ; preds = %._crit_edge1354
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !94
  %.not1145 = icmp eq i32 %i.el, 0
  br i1 %.not1145, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.en = load i64, ptr %i.em, align 8, !tbaa !96
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !98
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge1354
  %.01037 = phi i64 [ 0, %bb.s ], [ %i.en, %bb.t ], [ 0, %._crit_edge1354 ]
  %.01030 = phi i32 [ 0, %bb.s ], [ %i.ep, %bb.t ], [ 0, %._crit_edge1354 ]
  %.01025 = phi i64 [ 0, %bb.s ], [ %i.er, %bb.t ], [ 0, %._crit_edge1354 ]
  %i.es = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ds, i32 noundef 464, ptr noundef nonnull @.str) #6 ; 8 uses
  br i1 %i.bj, label %.lr.ph1357.preheader, label %._crit_edge1358

.lr.ph1357.preheader:                             ; preds = %bb.u
  %i.et = zext nneg i32 %i.bf to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.es, i8 0, i64 %i.eu, i1 false), !tbaa !29
  br label %._crit_edge1358

._crit_edge1358:                                  ; preds = %.lr.ph1357.preheader, %bb.u
  %i.ev = icmp ne ptr %4, null
  %or.cond = and i1 %15, %i.ev
  %or.cond3 = select i1 %or.cond, i1 %.01085.lcssa, i1 false ; 2 uses
  br i1 %or.cond3, label %.preheader1295, label %.loopexit1296

.preheader1295:                                   ; preds = %._crit_edge1358
  %i.ew = getelementptr inbounds nuw i8, ptr %.01087, i64 16 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.01087, i64 8 ; 5 uses
  %i.ey = add nsw i32 %3, -1
  %i.ez = zext nneg i32 %i.ey to i64              ; 3 uses
  %wide.trip.count1527 = zext nneg i32 %3 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez
  br label %bb.v

bb.v:                                             ; preds = %.preheader1295, %.loopexit1288
  %indvars.iv1524 = phi i64 [ 0, %.preheader1295 ], [ %indvars.iv.next1525, %.loopexit1288 ] ; 10 uses
  %.010191396 = phi i64 [ 0, %.preheader1295 ], [ %.8, %.loopexit1288 ]
  %.110261395 = phi i64 [ %.01025, %.preheader1295 ], [ %.410291704, %.loopexit1288 ] ; 3 uses
  %.110311394 = phi i32 [ %.01030, %.preheader1295 ], [ %.610361702, %.loopexit1288 ] ; 7 uses
  %.110381393 = phi i64 [ %.01037, %.preheader1295 ], [ %.610431700, %.loopexit1288 ] ; 4 uses
  %.010441392 = phi i64 [ 0, %.preheader1295 ], [ %.110451698, %.loopexit1288 ] ; 3 uses
  %.010511390 = phi i32 [ 0, %.preheader1295 ], [ %.61057, %.loopexit1288 ] ; 2 uses
  %.010581389 = phi i32 [ 0, %.preheader1295 ], [ %spec.select1207, %.loopexit1288 ] ; 2 uses
  %.010811388 = phi i32 [ %3, %.preheader1295 ], [ %.21083, %.loopexit1288 ] ; 3 uses
  %.not1174 = icmp eq i64 %indvars.iv1524, 0      ; 2 uses
  %.pre = load i32, ptr %i.c, align 4             ; 2 uses
  br i1 %.not1174, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1175 = icmp eq i32 %.pre, 0
  %i.fb = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1524
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !27 ; 6 uses
  br i1 %.not1175, label %.preheader1294, label %.thread1691

.preheader1294:                                   ; preds = %bb.w
  %i.fe = icmp sgt i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph1364, label %._crit_edge1365

.lr.ph1364:                                       ; preds = %.preheader1294
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !45 ; 2 uses
  %i.fg = load i64, ptr %i.ex, align 8, !tbaa !46 ; 2 uses
  %i.fh = sext i32 %.110311394 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !27
  %i.fk = sub i64 %i.fj, %.110261395              ; 3 uses
  %i.fl = add nsw i32 %.110311394, 1              ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp eq i64 %i.fg, %i.fm                ; 2 uses
  %i.fo = zext i1 %i.fn to i64
  %spec.select1196.peel = add nsw i64 %.110381393, %i.fo ; 2 uses
  %spec.select1197.peel = select i1 %i.fn, i32 0, i32 %i.fl ; 2 uses
  %i.fp = icmp slt i64 %i.fk, %i.fd
  br i1 %i.fp, label %.peel.next, label %._crit_edge1365

.thread1691:                                      ; preds = %bb.w
  %i.fq = add nsw i64 %i.fd, %.010441392
  %i.fr = icmp ne i64 %indvars.iv1524, %i.ez
  br label %bb.ad

.peel.next:                                       ; preds = %.lr.ph1364, %.peel.next
  %.010151363 = phi i32 [ %i.fs, %.peel.next ], [ 1, %.lr.ph1364 ]
  %.010171362 = phi i64 [ %i.fw, %.peel.next ], [ %i.fk, %.lr.ph1364 ]
  %.210321360 = phi i32 [ %spec.select1197, %.peel.next ], [ %spec.select1197.peel, %.lr.ph1364 ] ; 3 uses
  %.210391359 = phi i64 [ %spec.select1196, %.peel.next ], [ %spec.select1196.peel, %.lr.ph1364 ]
  %i.fs = add nuw nsw i32 %.010151363, 1          ; 2 uses
  %i.ft = sext i32 %.210321360 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !27
  %i.fw = add i64 %.010171362, %i.fv              ; 3 uses
  %i.fx = add nsw i32 %.210321360, 1              ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp eq i64 %i.fg, %i.fy                ; 2 uses
  %i.ga = zext i1 %i.fz to i64
  %spec.select1196 = add nsw i64 %.210391359, %i.ga ; 2 uses
  %spec.select1197 = select i1 %i.fz, i32 0, i32 %i.fx ; 2 uses
  %i.gb = icmp slt i64 %i.fw, %i.fd
  br i1 %i.gb, label %.peel.next, label %._crit_edge1365, !llvm.loop !67

._crit_edge1365:                                  ; preds = %.peel.next, %.lr.ph1364, %.preheader1294
  %.21039.lcssa = phi i64 [ %.110381393, %.preheader1294 ], [ %spec.select1196.peel, %.lr.ph1364 ], [ %spec.select1196, %.peel.next ] ; 3 uses
  %.21032.lcssa = phi i32 [ %.110311394, %.preheader1294 ], [ %spec.select1197.peel, %.lr.ph1364 ], [ %spec.select1197, %.peel.next ] ; 3 uses
  %.01017.lcssa = phi i64 [ 0, %.preheader1294 ], [ %i.fk, %.lr.ph1364 ], [ %i.fw, %.peel.next ] ; 2 uses
  %.01016.lcssa = phi i32 [ %.110311394, %.preheader1294 ], [ %.110311394, %.lr.ph1364 ], [ %.210321360, %.peel.next ]
  %.01015.lcssa = phi i32 [ 0, %.preheader1294 ], [ 1, %.lr.ph1364 ], [ %i.fs, %.peel.next ]
  %i.gc = icmp sgt i64 %.01017.lcssa, %i.fd
  br i1 %i.gc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %._crit_edge1365
  %i.gd = icmp slt i32 %.21032.lcssa, 1
  br i1 %i.gd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ge = add nsw i64 %.21039.lcssa, -1
  %i.gf = load i64, ptr %i.ex, align 8, !tbaa !46
  %i.gg = trunc i64 %i.gf to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.41041 = phi i64 [ %i.ge, %bb.y ], [ %.21039.lcssa, %bb.x ]
  %.41034.in = phi i32 [ %i.gg, %bb.y ], [ %.21032.lcssa, %bb.x ]
  %.41034 = add i32 %.41034.in, -1
  %i.gh = load ptr, ptr %i.ew, align 8, !tbaa !45
  %i.gi = sext i32 %.01016.lcssa to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !27
  %.neg = sub i64 %i.fd, %.01017.lcssa
  %i.gl = add i64 %.neg, %i.gk
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge1365, %bb.z
  %.51042 = phi i64 [ %.41041, %bb.z ], [ %.21039.lcssa, %._crit_edge1365 ]
  %.51035 = phi i32 [ %.41034, %bb.z ], [ %.21032.lcssa, %._crit_edge1365 ]
  %.31028 = phi i64 [ %i.gl, %bb.z ], [ 0, %._crit_edge1365 ]
  %i.gm = add i32 %.010811388, 2
  %i.gn = add i32 %i.gm, %.01015.lcssa
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.11082 = phi i32 [ %.010811388, %bb.v ], [ %i.gn, %bb.aa ] ; 2 uses
  %.61043 = phi i64 [ %.110381393, %bb.v ], [ %.51042, %bb.aa ] ; 2 uses
  %.61036 = phi i32 [ %.110311394, %bb.v ], [ %.51035, %bb.aa ] ; 3 uses
  %.41029 = phi i64 [ %.110261395, %bb.v ], [ %.31028, %bb.aa ] ; 2 uses
  %i.go = icmp ne i64 %indvars.iv1524, %i.ez      ; 3 uses
  %i.gp = icmp ne i32 %.pre, 0
  %or.cond5 = select i1 %i.go, i1 true, i1 %i.gp
  br i1 %or.cond5, label %bb.ad, label %.preheader1293

.preheader1293:                                   ; preds = %bb.ab
  %i.gq = load i64, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph1375, label %._crit_edge1376

.lr.ph1375:                                       ; preds = %.preheader1293
  %i.gs = load ptr, ptr %i.ew, align 8, !tbaa !45
  %i.gt = load i64, ptr %i.ex, align 8, !tbaa !46
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1375, %bb.ac
  %.010121374 = phi i32 [ 0, %.lr.ph1375 ], [ %i.gu, %bb.ac ]
  %.010131373 = phi i32 [ %.61036, %.lr.ph1375 ], [ %spec.store.select, %bb.ac ] ; 2 uses
  %.010141372 = phi i64 [ 0, %.lr.ph1375 ], [ %i.gy, %bb.ac ]
  %i.gu = add nuw nsw i32 %.010121374, 1          ; 2 uses
  %i.gv = sext i32 %.010131373 to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !27
  %i.gy = add nsw i64 %i.gx, %.010141372          ; 2 uses
  %i.gz = add nsw i32 %.010131373, 1              ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp eq i64 %i.gt, %i.ha
  %spec.store.select = select i1 %i.hb, i32 0, i32 %i.gz
  %i.hc = icmp slt i64 %i.gy, %i.gq
  br i1 %i.hc, label %bb.ac, label %._crit_edge1376, !llvm.loop !68

._crit_edge1376:                                  ; preds = %bb.ac, %.preheader1293
  %.01012.lcssa = phi i32 [ 0, %.preheader1293 ], [ %i.gu, %bb.ac ]
  %i.hd = add i32 %.11082, 2
  %i.he = add i32 %i.hd, %.01012.lcssa
  br label %bb.ad

bb.ad:                                            ; preds = %.thread1691, %._crit_edge1376, %bb.ab
  %i.hf = phi i1 [ %i.go, %bb.ab ], [ %i.go, %._crit_edge1376 ], [ %i.fr, %.thread1691 ]
  %.410291704 = phi i64 [ %.41029, %bb.ab ], [ %.41029, %._crit_edge1376 ], [ %.110261395, %.thread1691 ] ; 3 uses
  %.610361702 = phi i32 [ %.61036, %bb.ab ], [ %.61036, %._crit_edge1376 ], [ %.110311394, %.thread1691 ] ; 3 uses
  %.610431700 = phi i64 [ %.61043, %bb.ab ], [ %.61043, %._crit_edge1376 ], [ %.110381393, %.thread1691 ] ; 3 uses
  %.110451698 = phi i64 [ %.010441392, %bb.ab ], [ %.010441392, %._crit_edge1376 ], [ %i.fq, %.thread1691 ] ; 3 uses
  %.21083 = phi i32 [ %.11082, %bb.ab ], [ %i.he, %._crit_edge1376 ], [ %.010811388, %.thread1691 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1524
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !27 ; 8 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1524
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !27
  %i.hk = add nsw i64 %i.hj, %i.hh                ; 4 uses
  %i.hl = add nsw i64 %i.hk, -1                   ; 2 uses
  %i.hm = sext i32 %.010511390 to i64             ; 3 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %10, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !27 ; 3 uses
  %.not1176 = icmp slt i64 %i.hh, %i.ho
  br i1 %.not1176, label %.preheader1825, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hp = getelementptr inbounds [8 x i8], ptr %11, i64 %i.hm
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !27 ; 2 uses
  %.not1177 = icmp sgt i64 %i.hh, %i.hq
  br i1 %.not1177, label %.preheader1825, label %.loopexit1292

.preheader1825:                                   ; preds = %bb.ae, %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %.preheader1825, %.critedge1201
  %i.hr = phi i64 [ %.pre1578, %.critedge1201 ], [ %i.ho, %.preheader1825 ] ; 2 uses
  %indvars.iv1514 = phi i64 [ %indvars.iv.next1515, %.critedge1201 ], [ %i.hm, %.preheader1825 ] ; 3 uses
  %.not1178 = icmp slt i64 %i.hh, %i.hr
  br i1 %.not1178, label %.critedge1201, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hs = getelementptr inbounds [8 x i8], ptr %11, i64 %indvars.iv1514
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !27 ; 2 uses
  %i.hu = icmp sgt i64 %i.hh, %i.ht
  br i1 %i.hu, label %.critedge1201, label %.loopexit1292.loopexit

.critedge1201:                                    ; preds = %bb.af, %bb.ag
  %indvars.iv.next1515 = add nsw i64 %indvars.iv1514, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@ADIOI_OneSidedWriteAggregation:bb.a
  br i1 %i.cn, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.agr = sub nsw i64 %.3990, %.29941439
  %i.ags = trunc i64 %i.agr to i32
  %i.agt = add nsw i32 %i.ags, 1
  %.not1154 = icmp eq i32 %i.agq, %i.agt
  br i1 %.not1154, label %bb.ey, label %.critedge1227

bb.ex:                                            ; preds = %bb.ev
  %i.agu = load i32, ptr %i.vc, align 8, !tbaa !103
  %.not1153 = icmp eq i32 %i.agq, %i.agu
  br i1 %.not1153, label %bb.ey, label %.critedge1227

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  store i32 0, ptr %i.vb, align 8, !tbaa !36
  br label %.critedge1218

.critedge1218:                                    ; preds = %bb.eu, %bb.ey
  br i1 %i.o, label %.preheader, label %bb.ez

.preheader:                                       ; preds = %.critedge1218
  %i.agv = load i32, ptr %i.ve, align 4, !tbaa !99
  %i.agw = icmp sgt i32 %i.agv, 0
  br i1 %i.agw, label %.lr.ph1437, label %._crit_edge1438

.lr.ph1437:                                       ; preds = %.preheader, %.lr.ph1437
  %indvars.iv1562 = phi i64 [ %indvars.iv.next1563, %.lr.ph1437 ], [ 0, %.preheader ] ; 4 uses
  %i.agx = load ptr, ptr %i.vd, align 8, !tbaa !51
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !107
  %i.aha = mul nuw nsw i64 %indvars.iv1562, %i.vf
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.aha
  %i.ahc = load ptr, ptr %i.vg, align 8, !tbaa !102
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %indvars.iv1562
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !27
  %i.ahf = trunc i64 %i.ahe to i32
  %i.ahg = load ptr, ptr %i.vh, align 8, !tbaa !101
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %indvars.iv1562
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !27
  call void %i.agz(ptr noundef %0, ptr noundef %i.ahb, i32 noundef %i.ahf, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %i.ahi, ptr noundef nonnull %14, ptr noundef nonnull %6) #6
  %indvars.iv.next1563 = add nuw nsw i64 %indvars.iv1562, 1 ; 2 uses
  %i.ahj = load i32, ptr %i.ve, align 4, !tbaa !99
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = icmp slt i64 %indvars.iv.next1563, %i.ahk
  br i1 %i.ahl, label %.lr.ph1437, label %._crit_edge1438, !llvm.loop !85

._crit_edge1438:                                  ; preds = %.lr.ph1437, %.preheader
  %i.ahm = load ptr, ptr %i.vg, align 8, !tbaa !102
  call void @ADIOI_Free_fn(ptr noundef %i.ahm, i32 noundef 1447, ptr noundef nonnull @.str) #6
  %i.ahn = load ptr, ptr %i.vh, align 8, !tbaa !101
  call void @ADIOI_Free_fn(ptr noundef %i.ahn, i32 noundef 1448, ptr noundef nonnull @.str) #6
  br label %bb.fa

bb.ez:                                            ; preds = %.critedge1218
  %i.aho = load ptr, ptr %i.vd, align 8, !tbaa !51
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !107
  %i.ahr = sub nsw i64 %.3990, %.29941439
  %i.ahs = trunc i64 %i.ahr to i32
  %i.aht = add nsw i32 %i.ahs, 1
  call void %i.ahq(ptr noundef %0, ptr noundef %i.pv, i32 noundef %i.aht, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %.29941439, ptr noundef nonnull %14, ptr noundef nonnull %6) #6
  br label %bb.fa

.critedge1227:                                    ; preds = %bb.ex, %bb.ew
  store i32 1, ptr %12, align 4, !tbaa !29
  store i32 0, ptr %i.vb, align 8, !tbaa !36
  br label %bb.fa

bb.fa:                                            ; preds = %.critedge1227, %._crit_edge1438, %bb.ez
  br i1 %or.cond19, label %bb.fb, label %.thread1270

bb.fb:                                            ; preds = %bb.fa
  %i.ahu = add nsw i64 %.29941439, %.01076        ; 6 uses
  %i.ahv = load i32, ptr @romio_onesided_always_rmw, align 4, !tbaa !29
  %.not1156 = icmp ne i32 %i.ahv, 0
  %i.ahw = icmp samesign ult i64 %indvars.iv1565, %i.vj
  %or.cond1220 = select i1 %.not1156, i1 %i.ahw, i1 false
  br i1 %or.cond1220, label %bb.fc, label %.thread1270

bb.fc:                                            ; preds = %bb.fb
  %i.ahx = load i64, ptr %i.uy, align 8, !tbaa !27 ; 3 uses
  %i.ahy = sub nsw i64 %i.ahx, %i.ahu
  %i.ahz = icmp slt i64 %i.ahy, %.01076
  br i1 %i.ahz, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.va, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %.1221 = call i64 @llvm.smin.i64(i64 %i.ahx, i64 %8)
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  %i.aia = add i64 %i.uz, %i.ahu
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fd, %bb.fe, %bb.ff
  %.0 = phi i64 [ %.1221, %bb.fe ], [ %i.aia, %bb.ff ], [ %i.ahx, %bb.fd ]
  %i.aib = load ptr, ptr %i.vd, align 8, !tbaa !51
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !53
  %i.aie = sub nsw i64 %.0, %i.ahu
  %i.aif = trunc i64 %i.aie to i32
  %i.aig = add nsw i32 %i.aif, 1
  call void %i.aid(ptr noundef %0, ptr noundef %i.pv, i32 noundef %i.aig, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %i.ahu, ptr noundef nonnull %14, ptr noundef nonnull %6) #6
  br label %.thread1270

.thread1270:                                      ; preds = %bb.eo, %bb.em, %bb.fb, %bb.fg, %bb.fa
  %.49911273 = phi i64 [ %.3990, %bb.fg ], [ %.3990, %bb.fa ], [ %.3990, %bb.fb ], [ %.29891440, %bb.em ], [ %.29891440, %bb.eo ]
  %.3995 = phi i64 [ %i.ahu, %bb.fg ], [ %.29941439, %bb.fa ], [ %i.ahu, %bb.fb ], [ %.29941439, %bb.em ], [ %.29941439, %bb.eo ]
  %i.aih = icmp samesign ult i64 %indvars.iv1565, %i.vj
  br i1 %i.aih, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.thread1270
  %i.aii = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.aij = call i32 @PMPI_Barrier(ptr noundef %i.aii) #6 ; 0 uses
  br label %bb.fi

bb.fi:                                            ; preds = %.thread1270, %bb.fh
  %indvars.iv.next1566 = add nuw nsw i64 %indvars.iv1565, 1 ; 2 uses
  %exitcond1569.not = icmp eq i64 %indvars.iv.next1566, %i.dx
  br i1 %exitcond1569.not, label %._crit_edge1444, label %bb.ce, !llvm.loop !86

._crit_edge1444:                                  ; preds = %bb.fi
  call void @ADIOI_Free_fn(ptr noundef %i.dt, i32 noundef 1559, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.dv, i32 noundef 1560, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.dw, i32 noundef 1561, ptr noundef nonnull @.str) #6
  br label %.lr.ph1447

.lr.ph1447:                                       ; preds = %._crit_edge1444, %.lr.ph1447
  %indvars.iv1570 = phi i64 [ %indvars.iv.next1571, %.lr.ph1447 ], [ 0, %._crit_edge1444 ] ; 3 uses
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv1570
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !43
  call void @ADIOI_Free_fn(ptr noundef %i.ail, i32 noundef 1564, ptr noundef nonnull @.str) #6
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv1570
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !43
  call void @ADIOI_Free_fn(ptr noundef %i.ain, i32 noundef 1565, ptr noundef nonnull @.str) #6
  %indvars.iv.next1571 = add nuw nsw i64 %indvars.iv1570, 1 ; 2 uses
  %exitcond1574.not = icmp eq i64 %indvars.iv.next1571, %i.dx
  br i1 %exitcond1574.not, label %._crit_edge1448, label %.lr.ph1447, !llvm.loop !87

._crit_edge1448.critedge:                         ; preds = %bb.cd
  call void @ADIOI_Free_fn(ptr noundef %i.dt, i32 noundef 1559, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.dv, i32 noundef 1560, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.dw, i32 noundef 1561, ptr noundef nonnull @.str) #6
  br label %._crit_edge1448

._crit_edge1448:                                  ; preds = %.lr.ph1447, %._crit_edge1448.critedge
  call void @ADIOI_Free_fn(ptr noundef %i.dz, i32 noundef 1567, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.ej, i32 noundef 1568, ptr noundef nonnull @.str) #6
  call void @ADIOI_Free_fn(ptr noundef %i.bi, i32 noundef 1570, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  ret void
}

declare i32 @PMPI_Comm_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Comm_rank(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Datatype_iscontig(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Flatten_and_find(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Free_fn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Barrier(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_lock(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Put(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_unlock(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_create_struct(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_commit(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_free(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Accumulate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ADIOI_OneSidedReadAggregation(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11) local_unnamed_addr #0 {
bb.a:
  %12 = alloca %struct.ompi_status_public_t, align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %13 = icmp sgt i32 %3, 0                        ; 2 uses
  br i1 %13, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = icmp samesign uge i64 %indvars.iv.next, %i.h
  %or.cond982.not = select i1 %i.l, i1 true, i1 %i.k
  br i1 %or.cond982.not, label %.critedge, label %.lr.ph, !llvm.loop !108

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.0902.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %.lr.ph ]
  store i32 0, ptr %6, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = call i32 @PMPI_Comm_size(ptr noundef %i.n, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.q = call i32 @PMPI_Comm_rank(ptr noundef %i.p, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = icmp eq ptr %i.s, @ompi_mpi_win_null
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = icmp eq ptr %i.v, @ompi_mpi_win_null
  br i1 %i.w, label %bb.c, label %ADIOI_OneSidedSetup.exit

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !35
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.af = call i32 @MPI_Win_create(ptr noundef %i.y, i64 noundef %i.ad, i32 noundef 1, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef %i.ae, ptr noundef nonnull %i.r) #6
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.d, label %ADIOI_OneSidedSetup.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !36
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aj = call i32 @MPI_Win_create(ptr noundef nonnull %i.ag, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef %i.ah, ptr noundef nonnull %i.ai) #6 ; 0 uses
  br label %ADIOI_OneSidedSetup.exit

ADIOI_OneSidedSetup.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @ADIOI_Datatype_iscontig(ptr noundef %5, ptr noundef nonnull %i.c) #6
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !29
  %.not947 = icmp eq i32 %i.ak, 0
  br i1 %.not947, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ADIOI_OneSidedSetup.exit
  %i.al = call ptr @ADIOI_Flatten_and_find(ptr noundef %5) #6
  %i.am = call i32 @PMPI_Type_get_extent(ptr noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ADIOI_OneSidedSetup.exit
  %.0901 = phi ptr [ null, %ADIOI_OneSidedSetup.exit ], [ %i.al, %bb.e ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37 ; 9 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = mul nsw i64 %i.ar, 40
  %i.at = call ptr @ADIOI_Malloc_fn(i64 noundef %i.as, i32 noundef 1681, ptr noundef nonnull @.str) #6 ; 21 uses
  %i.au = icmp sgt i32 %i.aq, 0                   ; 4 uses
  br i1 %i.au, label %.lr.ph1090, label %.preheader1063

.lr.ph1090:                                       ; preds = %bb.f
  %i.av = load i32, ptr %i.c, align 4, !tbaa !29
  %.not981 = icmp eq i32 %i.av, 0
  %wide.trip.count1329 = zext nneg i32 %i.aq to i64 ; 4 uses
  br i1 %.not981, label %.lr.ph1090.split.us.preheader, label %.lr.ph1090.split.preheader

.lr.ph1090.split.preheader:                       ; preds = %.lr.ph1090
  %xtraiter = and i64 %wide.trip.count1329, 7     ; 3 uses
  %i.aw = icmp ult i32 %i.aq, 8
  br i1 %i.aw, label %.lr.ph1090.split.epil.preheader, label %.lr.ph1090.split.preheader.new

.lr.ph1090.split.preheader.new:                   ; preds = %.lr.ph1090.split.preheader
  %unroll_iter = and i64 %wide.trip.count1329, 2147483640
  br label %.lr.ph1090.split

.lr.ph1090.split.us.preheader:                    ; preds = %.lr.ph1090
  %xtraiter1771 = and i64 %wide.trip.count1329, 3 ; 3 uses
  %i.ax = icmp ult i32 %i.aq, 4
  br i1 %i.ax, label %.lr.ph1090.split.us.epil.preheader, label %.lr.ph1090.split.us.preheader.new

.lr.ph1090.split.us.preheader.new:                ; preds = %.lr.ph1090.split.us.preheader
  %unroll_iter1775 = and i64 %wide.trip.count1329, 2147483644
  br label %.lr.ph1090.split.us

.lr.ph1090.split.us:                              ; preds = %.lr.ph1090.split.us, %.lr.ph1090.split.us.preheader.new
  %indvars.iv1326 = phi i64 [ 0, %.lr.ph1090.split.us.preheader.new ], [ %indvars.iv.next1327.3, %.lr.ph1090.split.us ] ; 5 uses
  %niter1776 = phi i64 [ 0, %.lr.ph1090.split.us.preheader.new ], [ %niter1776.next.3, %.lr.ph1090.split.us ]
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1326
  store i64 -1, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1326
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 -1, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1326
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i64 -1, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1326
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  store i64 -1, ptr %i.be, align 8, !tbaa !39
  %indvars.iv.next1327.3 = add nuw nsw i64 %indvars.iv1326, 4 ; 2 uses
  %niter1776.next.3 = add i64 %niter1776, 4       ; 2 uses
  %niter1776.ncmp.3 = icmp eq i64 %niter1776.next.3, %unroll_iter1775
  br i1 %niter1776.ncmp.3, label %.preheader1063.loopexit.unr-lcssa, label %.lr.ph1090.split.us, !llvm.loop !109

.preheader1063.loopexit.unr-lcssa:                ; preds = %.lr.ph1090.split.us
  %lcmp.mod1773.not = icmp eq i64 %xtraiter1771, 0
  br i1 %lcmp.mod1773.not, label %.preheader1063, label %.lr.ph1090.split.us.epil.preheader

.lr.ph1090.split.us.epil.preheader:               ; preds = %.preheader1063.loopexit.unr-lcssa, %.lr.ph1090.split.us.preheader
  %indvars.iv1326.epil.init = phi i64 [ 0, %.lr.ph1090.split.us.preheader ], [ %indvars.iv.next1327.3, %.preheader1063.loopexit.unr-lcssa ]
  %lcmp.mod1774 = icmp ne i64 %xtraiter1771, 0
  call void @llvm.assume(i1 %lcmp.mod1774)
  br label %.lr.ph1090.split.us.epil

.lr.ph1090.split.us.epil:                         ; preds = %.lr.ph1090.split.us.epil, %.lr.ph1090.split.us.epil.preheader
  %indvars.iv1326.epil = phi i64 [ %indvars.iv.next1327.epil, %.lr.ph1090.split.us.epil ], [ %indvars.iv1326.epil.init, %.lr.ph1090.split.us.epil.preheader ] ; 2 uses
  %epil.iter1772 = phi i64 [ %epil.iter1772.next, %.lr.ph1090.split.us.epil ], [ 0, %.lr.ph1090.split.us.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1326.epil
  store i64 -1, ptr %i.bf, align 8, !tbaa !39
  %indvars.iv.next1327.epil = add nuw nsw i64 %indvars.iv1326.epil, 1
  %epil.iter1772.next = add i64 %epil.iter1772, 1 ; 2 uses
  %epil.iter1772.cmp.not = icmp eq i64 %epil.iter1772.next, %xtraiter1771
  br i1 %epil.iter1772.cmp.not, label %.preheader1063, label %.lr.ph1090.split.us.epil, !llvm.loop !110

.preheader1063.loopexit1768.unr-lcssa:            ; preds = %.lr.ph1090.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1063, label %.lr.ph1090.split.epil.preheader

.lr.ph1090.split.epil.preheader:                  ; preds = %.preheader1063.loopexit1768.unr-lcssa, %.lr.ph1090.split.preheader
  %indvars.iv1323.epil.init = phi i64 [ 0, %.lr.ph1090.split.preheader ], [ %indvars.iv.next1324.7, %.preheader1063.loopexit1768.unr-lcssa ]
  %lcmp.mod1770 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1770)
  br label %.lr.ph1090.split.epil

.lr.ph1090.split.epil:                            ; preds = %.lr.ph1090.split.epil, %.lr.ph1090.split.epil.preheader
  %indvars.iv1323.epil = phi i64 [ %indvars.iv.next1324.epil, %.lr.ph1090.split.epil ], [ %indvars.iv1323.epil.init, %.lr.ph1090.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1090.split.epil ], [ 0, %.lr.ph1090.split.epil.preheader ]
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323.epil
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 -1, ptr %i.bh, align 8, !tbaa !40
  %indvars.iv.next1324.epil = add nuw nsw i64 %indvars.iv1323.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1063, label %.lr.ph1090.split.epil, !llvm.loop !111

.preheader1063:                                   ; preds = %.preheader1063.loopexit1768.unr-lcssa, %.lr.ph1090.split.epil, %.preheader1063.loopexit.unr-lcssa, %.lr.ph1090.split.us.epil, %bb.f
  %i.bi = icmp sgt i32 %9, 0
  br i1 %i.bi, label %.lr.ph1094.preheader, label %._crit_edge

.lr.ph1094.preheader:                             ; preds = %.preheader1063
  %wide.trip.count1334 = zext nneg i32 %9 to i64  ; 2 uses
  %xtraiter1777 = and i64 %wide.trip.count1334, 1
  %i.bj = icmp eq i32 %9, 1
  br i1 %i.bj, label %.lr.ph1094.epil.preheader, label %.lr.ph1094.preheader.new

.lr.ph1094.preheader.new:                         ; preds = %.lr.ph1094.preheader
  %unroll_iter1783 = and i64 %wide.trip.count1334, 2147483646
  br label %.lr.ph1094

.lr.ph1090.split:                                 ; preds = %.lr.ph1090.split, %.lr.ph1090.split.preheader.new
  %indvars.iv1323 = phi i64 [ 0, %.lr.ph1090.split.preheader.new ], [ %indvars.iv.next1324.7, %.lr.ph1090.split ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph1090.split.preheader.new ], [ %niter.next.7, %.lr.ph1090.split ]
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 -1, ptr %i.bl, align 8, !tbaa !40
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store i64 -1, ptr %i.bn, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i64 -1, ptr %i.bp, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  store i64 -1, ptr %i.br, align 8, !tbaa !40
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store i64 -1, ptr %i.bt, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 232
  store i64 -1, ptr %i.bv, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i64 -1, ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv1323
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  store i64 -1, ptr %i.bz, align 8, !tbaa !40
  %indvars.iv.next1324.7 = add nuw nsw i64 %indvars.iv1323, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader1063.loopexit1768.unr-lcssa, label %.lr.ph1090.split, !llvm.loop !109

.lr.ph1094:                                       ; preds = %.lr.ph1094, %.lr.ph1094.preheader.new
  %indvars.iv1331 = phi i64 [ 0, %.lr.ph1094.preheader.new ], [ %indvars.iv.next1332.1, %.lr.ph1094 ] ; 4 uses
  %.08941093 = phi i64 [ -1, %.lr.ph1094.preheader.new ], [ %.1895.1, %.lr.ph1094 ] ; 2 uses
  %.08961092 = phi i64 [ 0, %.lr.ph1094.preheader.new ], [ %.0896..1, %.lr.ph1094 ]
  %niter1784 = phi i64 [ 0, %.lr.ph1094.preheader.new ], [ %niter1784.next.1, %.lr.ph1094 ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv1331
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !27
  %.0896. = call i64 @llvm.smax.i64(i64 %.08961092, i64 %i.cb)
  %i.cc = icmp eq i64 %.08941093, -1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv1331
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %.0894. = call i64 @llvm.smin.i64(i64 %.08941093, i64 %i.ce)
  %.1895 = select i1 %i.cc, i64 %i.ce, i64 %.0894. ; 2 uses
  %indvars.iv.next1332 = or disjoint i64 %indvars.iv1331, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next1332
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27
  %.0896..1 = call i64 @llvm.smax.i64(i64 %.0896., i64 %i.cg) ; 3 uses
  %i.ch = icmp eq i64 %.1895, -1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next1332
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %.0894..1 = call i64 @llvm.smin.i64(i64 %.1895, i64 %i.cj)
  %.1895.1 = select i1 %i.ch, i64 %i.cj, i64 %.0894..1 ; 3 uses
  %indvars.iv.next1332.1 = add nuw nsw i64 %indvars.iv1331, 2 ; 2 uses
  %niter1784.next.1 = add i64 %niter1784, 2       ; 2 uses
  %niter1784.ncmp.1 = icmp eq i64 %niter1784.next.1, %unroll_iter1783
  br i1 %niter1784.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1094, !llvm.loop !112

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1094
  %lcmp.mod1779.not = icmp eq i64 %xtraiter1777, 0
  br i1 %lcmp.mod1779.not, label %._crit_edge, label %.lr.ph1094.epil.preheader

.lr.ph1094.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1094.preheader
  %indvars.iv1331.epil.init = phi i64 [ 0, %.lr.ph1094.preheader ], [ %indvars.iv.next1332.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.08941093.epil.init = phi i64 [ -1, %.lr.ph1094.preheader ], [ %.1895.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.08961092.epil.init = phi i64 [ 0, %.lr.ph1094.preheader ], [ %.0896..1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1782 = trunc i32 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod1782)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv1331.epil.init
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !27
  %.0896..epil = call i64 @llvm.smax.i64(i64 %.08961092.epil.init, i64 %i.cl)
  %i.cm = icmp eq i64 %.08941093.epil.init, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv1331.epil.init
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !27 ; 2 uses
  %.0894..epil = call i64 @llvm.smin.i64(i64 %.08941093.epil.init, i64 %i.co)
  %.1895.epil = select i1 %i.cm, i64 %i.co, i64 %.0894..epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1094.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader1063
  %.0896.lcssa = phi i64 [ 0, %.preheader1063 ], [ %.0896..1, %._crit_edge.loopexit.unr-lcssa ], [ %.0896..epil, %.lr.ph1094.epil.preheader ] ; 3 uses
  %.0894.lcssa = phi i64 [ -1, %.preheader1063 ], [ %.1895.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1895.epil, %.lr.ph1094.epil.preheader ] ; 3 uses
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !35 ; 4 uses
  br i1 %i.au, label %.lr.ph1105, label %._crit_edge1113

.lr.ph1105:                                       ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !42
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !29
  %wide.trip.count1339 = zext nneg i32 %i.aq to i64
  br label %bb.g

.lr.ph1112:                                       ; preds = %bb.g
  %i.cv = icmp eq i32 %.1891, 0
  %i.cw = sext i32 %i.cr to i64                   ; 2 uses
  %wide.trip.count1344 = zext nneg i32 %i.aq to i64
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph1105, %bb.g
  %indvars.iv1336 = phi i64 [ 0, %.lr.ph1105 ], [ %indvars.iv.next1337, %bb.g ] ; 5 uses
  %.08821103 = phi i64 [ %.0896.lcssa, %.lr.ph1105 ], [ %.1883, %bb.g ] ; 2 uses
  %.08841102 = phi i64 [ 0, %.lr.ph1105 ], [ %spec.select984, %bb.g ] ; 2 uses
  %.08861101 = phi i32 [ -1, %.lr.ph1105 ], [ %.1887, %bb.g ]
  %.08881100 = phi i32 [ -1, %.lr.ph1105 ], [ %spec.select983, %bb.g ]
  %.08901099 = phi i32 [ 0, %.lr.ph1105 ], [ %.1891, %bb.g ]
  %.08921098 = phi i32 [ -1, %.lr.ph1105 ], [ %.1893, %bb.g ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv1336
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !27 ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, %.08841102
  %i.da = trunc nuw nsw i64 %indvars.iv1336 to i32 ; 3 uses
  %spec.select983 = select i1 %i.cz, i32 %i.da, i32 %.08881100 ; 2 uses
  %spec.select984 = call i64 @llvm.smax.i64(i64 %i.cy, i64 %.08841102)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv1336
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !27 ; 3 uses
  %i.dd = icmp slt i64 %i.dc, %.08821103
  %.1887 = select i1 %i.dd, i32 %i.da, i32 %.08861101 ; 2 uses
  %.1883 = call i64 @llvm.smin.i64(i64 %i.dc, i64 %.08821103)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1336
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29
  %i.dg = icmp eq i32 %i.df, %i.cu                ; 2 uses
  %i.dh = icmp sgt i64 %i.cy, %i.dc
  %.1893 = select i1 %i.dg, i32 %i.da, i32 %.08921098 ; 2 uses
  %i.di = select i1 %i.dg, i1 %i.dh, i1 false
  %.1891 = select i1 %i.di, i32 1, i32 %.08901099 ; 2 uses
  %indvars.iv.next1337 = add nuw nsw i64 %indvars.iv1336, 1 ; 2 uses
  %exitcond1340.not = icmp eq i64 %indvars.iv.next1337, %wide.trip.count1339
  br i1 %exitcond1340.not, label %.lr.ph1112, label %bb.g, !llvm.loop !113

bb.h:                                             ; preds = %.lr.ph1112, %bb.h
  %indvars.iv1341 = phi i64 [ 0, %.lr.ph1112 ], [ %indvars.iv.next1342, %bb.h ] ; 3 uses
  %.08801111 = phi i32 [ 0, %.lr.ph1112 ], [ %.1881, %bb.h ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv1341
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv1341
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !27
  %i.dn = sub nsw i64 %i.dk, %i.dm                ; 2 uses
  %i.do = add nsw i64 %i.dn, 1
  %i.dp = sdiv i64 %i.do, %i.cw                   ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %sext = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %sext, 32
  %i.ds = mul nsw i64 %i.dr, %i.cw
  %.not980 = icmp sle i64 %i.ds, %i.dn
  %i.dt = zext i1 %.not980 to i32
  %spec.select986 = add nsw i32 %i.dt, %i.dq
  %.1881 = call i32 @llvm.smax.i32(i32 %spec.select986, i32 %.08801111) ; 2 uses
  %indvars.iv.next1342 = add nuw nsw i64 %indvars.iv1341, 1 ; 2 uses
  %exitcond1345.not = icmp eq i64 %indvars.iv.next1342, %wide.trip.count1344
  br i1 %exitcond1345.not, label %._crit_edge1113, label %bb.h, !llvm.loop !114

._crit_edge1113:                                  ; preds = %bb.h, %._crit_edge
  %.0886.lcssa1524 = phi i32 [ -1, %._crit_edge ], [ %.1887, %bb.h ] ; 3 uses
  %.0888.lcssa1522 = phi i32 [ -1, %._crit_edge ], [ %spec.select983, %bb.h ] ; 2 uses
  %.0890.lcssa1520 = phi i1 [ true, %._crit_edge ], [ %i.cv, %bb.h ] ; 2 uses
  %.0892.lcssa1518 = phi i32 [ -1, %._crit_edge ], [ %.1893, %bb.h ] ; 3 uses
  %.0880.lcssa = phi i32 [ 0, %._crit_edge ], [ %.1881, %bb.h ] ; 3 uses
  %i.du = shl nsw i64 %i.ar, 2                    ; 4 uses
  %i.dv = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 1777, ptr noundef nonnull @.str) #6 ; 6 uses
  %i.dw = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.dx = call ptr @ADIOI_Malloc_fn(i64 noundef %i.dw, i32 noundef 1779, ptr noundef nonnull @.str) #6 ; 5 uses
  %i.dy = call ptr @ADIOI_Malloc_fn(i64 noundef %i.dw, i32 noundef 1781, ptr noundef nonnull @.str) #6 ; 5 uses
  %i.dz = zext nneg i32 %.0880.lcssa to i64       ; 5 uses
  %i.ea = shl nuw nsw i64 %i.dz, 3                ; 3 uses
  %i.eb = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ea, i32 noundef 1788, ptr noundef nonnull @.str) #6 ; 9 uses
  %i.ec = icmp sgt i32 %.0880.lcssa, 0            ; 2 uses
  br i1 %i.ec, label %.lr.ph1121, label %._crit_edge1122.thread

._crit_edge1122.thread:                           ; preds = %._crit_edge1113
  %i.ed = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ea, i32 noundef 1799, ptr noundef nonnull @.str) #6
  br label %._crit_edge1126

.lr.ph1121:                                       ; preds = %._crit_edge1113
  %i.ee = zext nneg i32 %i.aq to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph1121, %._crit_edge1118
  %indvars.iv1349 = phi i64 [ 0, %.lr.ph1121 ], [ %indvars.iv.next1350, %._crit_edge1118 ] ; 2 uses
  %i.eg = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 1790, ptr noundef nonnull @.str) #6 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv1349
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !43
  br i1 %i.au, label %.lr.ph1117.preheader, label %._crit_edge1118

.lr.ph1117.preheader:                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 -1, i64 %i.ef, i1 false), !tbaa !29
  br label %._crit_edge1118

._crit_edge1118:                                  ; preds = %.lr.ph1117.preheader, %bb.i
  %indvars.iv.next1350 = add nuw nsw i64 %indvars.iv1349, 1 ; 2 uses
  %exitcond1353.not = icmp eq i64 %indvars.iv.next1350, %i.dz
  br i1 %exitcond1353.not, label %._crit_edge1122, label %bb.i, !llvm.loop !115

._crit_edge1122:                                  ; preds = %._crit_edge1118
  %i.ei = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ea, i32 noundef 1799, ptr noundef nonnull @.str) #6 ; 2 uses
  br label %.lr.ph1125

.lr.ph1125:                                       ; preds = %._crit_edge1122, %.lr.ph1125
  %indvars.iv1354 = phi i64 [ %indvars.iv.next1355, %.lr.ph1125 ], [ 0, %._crit_edge1122 ] ; 2 uses
  %i.ej = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 1801, ptr noundef nonnull @.str) #6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv1354
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !43
  %indvars.iv.next1355 = add nuw nsw i64 %indvars.iv1354, 1 ; 2 uses
  %exitcond1358.not = icmp eq i64 %indvars.iv.next1355, %i.dz
  br i1 %exitcond1358.not, label %._crit_edge1126, label %.lr.ph1125, !llvm.loop !116

._crit_edge1126:                                  ; preds = %.lr.ph1125, %._crit_edge1122.thread
  %i.el = phi ptr [ %i.ed, %._crit_edge1122.thread ], [ %i.ei, %.lr.ph1125 ] ; 7 uses
  %i.em = call ptr @ADIOI_Malloc_fn(i64 noundef %i.du, i32 noundef 1826, ptr noundef nonnull @.str) #6 ; 8 uses
  br i1 %i.au, label %.lr.ph1129.preheader, label %._crit_edge1130

.lr.ph1129.preheader:                             ; preds = %._crit_edge1126
  %i.en = zext nneg i32 %i.aq to i64
  %i.eo = shl nuw nsw i64 %i.en, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %i.eo, i1 false), !tbaa !29
  br label %._crit_edge1130

._crit_edge1130:                                  ; preds = %.lr.ph1129.preheader, %._crit_edge1126
  %i.ep = icmp ne ptr %4, null
  %or.cond = and i1 %13, %i.ep
  %or.cond3 = select i1 %or.cond, i1 %.0902.lcssa, i1 false ; 2 uses
  br i1 %or.cond3, label %.preheader1060, label %._crit_edge1130..loopexit1061_crit_edge

._crit_edge1130..loopexit1061_crit_edge:          ; preds = %._crit_edge1130
  %.pre1436.a = sext i32 %i.cr to i64
  br label %.loopexit1061

.preheader1060:                                   ; preds = %._crit_edge1130
  %i.eq = getelementptr inbounds nuw i8, ptr %.0901, i64 16 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0901, i64 8 ; 5 uses
  %i.es = add nsw i32 %3, -1
  %i.et = sext i32 %i.cr to i64                   ; 7 uses
  %i.eu = zext nneg i32 %i.es to i64              ; 3 uses
  %wide.trip.count1375 = zext nneg i32 %3 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eu
  br label %bb.j

bb.j:                                             ; preds = %.preheader1060, %.loopexit1053
  %indvars.iv1372 = phi i64 [ 0, %.preheader1060 ], [ %indvars.iv.next1373, %.loopexit1053 ] ; 10 uses
  %.08361168 = phi i64 [ 0, %.preheader1060 ], [ %.8, %.loopexit1053 ]
  %.08421167 = phi i64 [ 0, %.preheader1060 ], [ %.38451538, %.loopexit1053 ] ; 3 uses
  %.08461166 = phi i32 [ 0, %.preheader1060 ], [ %.58511536, %.loopexit1053 ] ; 7 uses
  %.08521165 = phi i64 [ 0, %.preheader1060 ], [ %.58571534, %.loopexit1053 ] ; 4 uses
  %.08581164 = phi i64 [ 0, %.preheader1060 ], [ %.18591532, %.loopexit1053 ] ; 3 uses
  %.08651162 = phi i32 [ 0, %.preheader1060 ], [ %.6871, %.loopexit1053 ] ; 2 uses
  %.08721161 = phi i32 [ 0, %.preheader1060 ], [ %spec.select998, %.loopexit1053 ] ; 2 uses
  %.08971160 = phi i32 [ %3, %.preheader1060 ], [ %.2899, %.loopexit1053 ] ; 3 uses
  %.not965 = icmp eq i64 %indvars.iv1372, 0       ; 2 uses
  %.pre = load i32, ptr %i.c, align 4             ; 2 uses
  br i1 %.not965, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not966 = icmp eq i32 %.pre, 0
  %i.ew = getelementptr [8 x i8], ptr %2, i64 %indvars.iv1372
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !27 ; 6 uses
  br i1 %.not966, label %.preheader1059, label %.thread

.preheader1059:                                   ; preds = %bb.k
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %.lr.ph1136, label %._crit_edge1137

.lr.ph1136:                                       ; preds = %.preheader1059
  %i.fa = load ptr, ptr %i.eq, align 8, !tbaa !45 ; 2 uses
  %i.fb = load i64, ptr %i.er, align 8, !tbaa !46 ; 2 uses
  %i.fc = sext i32 %.08461166 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !27
  %i.ff = sub i64 %i.fe, %.08421167               ; 3 uses
  %i.fg = add nsw i32 %.08461166, 1               ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i64 %i.fb, %i.fh                ; 2 uses
  %i.fj = zext i1 %i.fi to i64
  %spec.select987.peel = add nsw i64 %.08521165, %i.fj ; 2 uses
  %spec.select988.peel = select i1 %i.fi, i32 0, i32 %i.fg ; 2 uses
  %i.fk = icmp slt i64 %i.ff, %i.ey
  br i1 %i.fk, label %.peel.next, label %._crit_edge1137

.thread:                                          ; preds = %bb.k
  %i.fl = add nsw i64 %i.ey, %.08581164
  %i.fm = icmp ne i64 %indvars.iv1372, %i.eu
  br label %bb.r

.peel.next:                                       ; preds = %.lr.ph1136, %.peel.next
  %.08321135 = phi i32 [ %i.fn, %.peel.next ], [ 1, %.lr.ph1136 ]
  %.08341134 = phi i64 [ %i.fr, %.peel.next ], [ %i.ff, %.lr.ph1136 ]
  %.18471132 = phi i32 [ %spec.select988, %.peel.next ], [ %spec.select988.peel, %.lr.ph1136 ] ; 3 uses
  %.18531131 = phi i64 [ %spec.select987, %.peel.next ], [ %spec.select987.peel, %.lr.ph1136 ]
  %i.fn = add nuw nsw i32 %.08321135, 1           ; 2 uses
  %i.fo = sext i32 %.18471132 to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !27
  %i.fr = add i64 %.08341134, %i.fq               ; 3 uses
  %i.fs = add nsw i32 %.18471132, 1               ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp eq i64 %i.fb, %i.ft                ; 2 uses
  %i.fv = zext i1 %i.fu to i64
  %spec.select987 = add nsw i64 %.18531131, %i.fv ; 2 uses
  %spec.select988 = select i1 %i.fu, i32 0, i32 %i.fs ; 2 uses
  %i.fw = icmp slt i64 %i.fr, %i.ey
  br i1 %i.fw, label %.peel.next, label %._crit_edge1137, !llvm.loop !117

._crit_edge1137:                                  ; preds = %.peel.next, %.lr.ph1136, %.preheader1059
  %.1853.lcssa = phi i64 [ %.08521165, %.preheader1059 ], [ %spec.select987.peel, %.lr.ph1136 ], [ %spec.select987, %.peel.next ] ; 3 uses
  %.1847.lcssa = phi i32 [ %.08461166, %.preheader1059 ], [ %spec.select988.peel, %.lr.ph1136 ], [ %spec.select988, %.peel.next ] ; 3 uses
  %.0834.lcssa = phi i64 [ 0, %.preheader1059 ], [ %i.ff, %.lr.ph1136 ], [ %i.fr, %.peel.next ] ; 2 uses
  %.0833.lcssa = phi i32 [ %.08461166, %.preheader1059 ], [ %.08461166, %.lr.ph1136 ], [ %.18471132, %.peel.next ]
  %.0832.lcssa = phi i32 [ 0, %.preheader1059 ], [ 1, %.lr.ph1136 ], [ %i.fn, %.peel.next ]
  %i.fx = icmp sgt i64 %.0834.lcssa, %i.ey
  br i1 %i.fx, label %bb.l, label %bb.o

bb.l:                                             ; preds = %._crit_edge1137
  %i.fy = icmp slt i32 %.1847.lcssa, 1
  br i1 %i.fy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fz = add nsw i64 %.1853.lcssa, -1
  %i.ga = load i64, ptr %i.er, align 8, !tbaa !46
  %i.gb = trunc i64 %i.ga to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3855 = phi i64 [ %i.fz, %bb.m ], [ %.1853.lcssa, %bb.l ]
  %.3849.in = phi i32 [ %i.gb, %bb.m ], [ %.1847.lcssa, %bb.l ]
  %.3849 = add i32 %.3849.in, -1
  %i.gc = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.gd = sext i32 %.0833.lcssa to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !27
  %.neg = sub i64 %i.ey, %.0834.lcssa
  %i.gg = add i64 %.neg, %i.gf
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge1137, %bb.n
  %.4856 = phi i64 [ %.3855, %bb.n ], [ %.1853.lcssa, %._crit_edge1137 ]
  %.4850 = phi i32 [ %.3849, %bb.n ], [ %.1847.lcssa, %._crit_edge1137 ]
  %.2844 = phi i64 [ %i.gg, %bb.n ], [ 0, %._crit_edge1137 ]
  %i.gh = add i32 %.08971160, 2
  %i.gi = add i32 %i.gh, %.0832.lcssa
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.1898 = phi i32 [ %.08971160, %bb.j ], [ %i.gi, %bb.o ] ; 2 uses
  %.5857 = phi i64 [ %.08521165, %bb.j ], [ %.4856, %bb.o ] ; 2 uses
  %.5851 = phi i32 [ %.08461166, %bb.j ], [ %.4850, %bb.o ] ; 3 uses
  %.3845 = phi i64 [ %.08421167, %bb.j ], [ %.2844, %bb.o ] ; 2 uses
  %i.gj = icmp ne i64 %indvars.iv1372, %i.eu      ; 3 uses
  %i.gk = icmp ne i32 %.pre, 0
  %or.cond5 = select i1 %i.gj, i1 true, i1 %i.gk
  br i1 %or.cond5, label %bb.r, label %.preheader1058

.preheader1058:                                   ; preds = %bb.p
  %i.gl = load i64, ptr %i.ev, align 8, !tbaa !27 ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph1147, label %._crit_edge1148

.lr.ph1147:                                       ; preds = %.preheader1058
  %i.gn = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.go = load i64, ptr %i.er, align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1147, %bb.q
  %.08291146 = phi i32 [ 0, %.lr.ph1147 ], [ %i.gp, %bb.q ]
  %.08301145 = phi i32 [ %.5851, %.lr.ph1147 ], [ %spec.store.select, %bb.q ] ; 2 uses
  %.08311144 = phi i64 [ 0, %.lr.ph1147 ], [ %i.gt, %bb.q ]
  %i.gp = add nuw nsw i32 %.08291146, 1           ; 2 uses
  %i.gq = sext i32 %.08301145 to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !27
  %i.gt = add nsw i64 %i.gs, %.08311144           ; 2 uses
  %i.gu = add nsw i32 %.08301145, 1               ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp eq i64 %i.go, %i.gv
  %spec.store.select = select i1 %i.gw, i32 0, i32 %i.gu
  %i.gx = icmp slt i64 %i.gt, %i.gl
  br i1 %i.gx, label %bb.q, label %._crit_edge1148, !llvm.loop !118

._crit_edge1148:                                  ; preds = %bb.q, %.preheader1058
  %.0829.lcssa = phi i32 [ 0, %.preheader1058 ], [ %i.gp, %bb.q ]
  %i.gy = add i32 %.1898, 2
  %i.gz = add i32 %i.gy, %.0829.lcssa
  br label %bb.r

bb.r:                                             ; preds = %.thread, %._crit_edge1148, %bb.p
  %i.ha = phi i1 [ %i.gj, %bb.p ], [ %i.gj, %._crit_edge1148 ], [ %i.fm, %.thread ]
  %.38451538 = phi i64 [ %.3845, %bb.p ], [ %.3845, %._crit_edge1148 ], [ %.08421167, %.thread ] ; 3 uses
  %.58511536 = phi i32 [ %.5851, %bb.p ], [ %.5851, %._crit_edge1148 ], [ %.08461166, %.thread ] ; 3 uses
  %.58571534 = phi i64 [ %.5857, %bb.p ], [ %.5857, %._crit_edge1148 ], [ %.08521165, %.thread ] ; 3 uses
  %.18591532 = phi i64 [ %.08581164, %bb.p ], [ %.08581164, %._crit_edge1148 ], [ %i.fl, %.thread ] ; 3 uses
  %.2899 = phi i32 [ %.1898, %bb.p ], [ %i.gz, %._crit_edge1148 ], [ %.08971160, %.thread ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1372
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !27 ; 8 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1372
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !27
  %i.hf = add nsw i64 %i.he, %i.hc                ; 4 uses
  %i.hg = add nsw i64 %i.hf, -1                   ; 2 uses
  %i.hh = sext i32 %.08651162 to i64              ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %10, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !27 ; 3 uses
  %.not967 = icmp slt i64 %i.hc, %i.hj
  br i1 %.not967, label %.preheader1750, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hk = getelementptr inbounds [8 x i8], ptr %11, i64 %i.hh
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !27 ; 2 uses
  %.not968 = icmp sgt i64 %i.hc, %i.hl
  br i1 %.not968, label %.preheader1750, label %.loopexit1057

.preheader1750:                                   ; preds = %bb.s, %bb.r
  br label %bb.t

bb.t:                                             ; preds = %.preheader1750, %.critedge992
  %i.hm = phi i64 [ %.pre1413, %.critedge992 ], [ %i.hj, %.preheader1750 ] ; 2 uses
  %indvars.iv1363 = phi i64 [ %indvars.iv.next1364, %.critedge992 ], [ %i.hh, %.preheader1750 ] ; 3 uses
  %.not969 = icmp slt i64 %i.hc, %i.hm
  br i1 %.not969, label %.critedge992, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hn = getelementptr inbounds [8 x i8], ptr %11, i64 %indvars.iv1363
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !27 ; 2 uses
end_hunk_1
