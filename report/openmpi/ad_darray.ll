Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_darray?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@MPIOI_Type_block:bb.a
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !11
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv81
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv81
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !11
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv81
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bc, %i.bg                ; 3 uses
  %indvars.iv.next82.7 = add nuw nsw i64 %indvars.iv81, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !24

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76
  %lcmp.mod4.not = icmp eq i64 %xtraiter3, 0
  br i1 %lcmp.mod4.not, label %._crit_edge77, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.preheader
  %indvars.iv81.epil.init = phi i64 [ 0, %.lr.ph76.preheader ], [ %indvars.iv.next82.7, %._crit_edge77.loopexit.unr-lcssa ]
  %.075.epil.init = phi i64 [ %7, %.lr.ph76.preheader ], [ %i.bh, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter3, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph76.epil

.lr.ph76.epil:                                    ; preds = %.lr.ph76.epil, %.lr.ph76.epil.preheader
  %indvars.iv81.epil = phi i64 [ %indvars.iv81.epil.init, %.lr.ph76.epil.preheader ], [ %indvars.iv.next82.epil, %.lr.ph76.epil ] ; 2 uses
  %.075.epil = phi i64 [ %.075.epil.init, %.lr.ph76.epil.preheader ], [ %i.bl, %.lr.ph76.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph76.epil.preheader ], [ %epil.iter.next, %.lr.ph76.epil ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv81.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %.075.epil, %i.bk           ; 2 uses
  %indvars.iv.next82.epil = add nuw nsw i64 %indvars.iv81.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %.lr.ph76.epil, !llvm.loop !25

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.epil, %.preheader
  %.0.lcssa = phi i64 [ %7, %.preheader ], [ %i.bh, %._crit_edge77.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph76.epil ]
  %i.bm = tail call i32 @PMPI_Type_create_hvector(i32 noundef %spec.store.select, i32 noundef 1, i64 noundef %.0.lcssa, ptr noundef %8, ptr noundef nonnull %9) #5 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bn = add nsw i32 %2, -1                      ; 3 uses
  %i.bo = icmp eq i32 %1, %i.bn
  br i1 %i.bo, label %bb.h, label %.preheader71

.preheader71:                                     ; preds = %bb.g
  %i.bp = icmp sgt i32 %i.bn, %1
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader71
  %i.bq = sext i32 %i.bn to i64                   ; 4 uses
  %i.br = sub nsw i64 %i.bq, %i.d
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.bq, %.lr.ph.preheader ] ; 2 uses
  %.173.prol = phi i64 [ %i.bv, %.lr.ph.prol ], [ %7, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.prol
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %.173.prol, %i.bu           ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !26

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.173.unr = phi i64 [ %7, %.lr.ph.preheader ], [ %i.bv, %.lr.ph.prol ]
  %.lcssa2.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bv, %.lr.ph.prol ]
  %i.bw = sub nsw i64 %i.d, %i.bq
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.by = tail call i32 @PMPI_Type_contiguous(i32 noundef %spec.store.select, ptr noundef %8, ptr noundef nonnull %9) #5 ; 0 uses
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.173 = phi i64 [ %i.dl, %.lr.ph ], [ %.173.unr, %.lr.ph.prol.loopexit ]
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %.173, %i.cb
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cc, %i.cg
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.ch, %i.cl
  %i.cn = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 -12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cm, %i.cq
  %i.cs = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.cr, %i.cv
  %i.cx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.cy = getelementptr i8, ptr %i.cx, i64 -20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !11
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.cw, %i.da
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i64 %i.db, %i.df
  %i.dh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.di = getelementptr i8, ptr %i.dh, i64 -28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !11
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.dg, %i.dk                ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8 ; 2 uses
  %i.dm = icmp sgt i64 %indvars.iv.next.7, %i.d
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader71
  %.1.lcssa = phi i64 [ %7, %.preheader71 ], [ %.lcssa2.unr, %.lr.ph.prol.loopexit ], [ %i.dl, %.lr.ph ]
  %i.dn = tail call i32 @PMPI_Type_create_hvector(i32 noundef %spec.store.select, i32 noundef 1, i64 noundef %.1.lcssa, ptr noundef %8, ptr noundef nonnull %9) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge, %bb.f, %._crit_edge77
  %i.do = sext i32 %.064 to i64
  %i.dp = sext i32 %4 to i64
  %i.dq = mul nsw i64 %i.do, %i.dp
  %i.dr = icmp slt i32 %i.p, 1
  %spec.select = select i1 %i.dr, i64 0, i64 %i.dq
  store i64 %spec.select, ptr %10, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ds = call i32 @PMPI_Type_get_extent(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.dt = load ptr, ptr %9, align 8, !tbaa !10
  %i.du = load i32, ptr %i.e, align 4, !tbaa !11
  %i.dv = sext i32 %i.du to i64
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !14
  %i.dx = mul nsw i64 %i.dw, %i.dv
  %i.dy = call i32 @MPI_Type_create_resized(ptr noundef %i.dt, i64 noundef 0, i64 noundef %i.dx, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.dz = call i32 @PMPI_Type_free(ptr noundef nonnull %9) #5 ; 0 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !10
  store ptr %i.ea, ptr %9, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @MPIOI_Type_cyclic(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i64], align 16               ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca [3 x ptr], align 16               ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.h = icmp eq i32 %5, -1
  %. = select i1 %i.h, i32 1, i32 %5              ; 9 uses
  %i.i = icmp slt i32 %., 1
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i32 %., %4                       ; 2 uses
  %i.k = sext i32 %1 to i64                       ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %.not = icmp sgt i32 %i.m, %i.j
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub i32 %i.m, %i.j                       ; 2 uses
  %i.o = mul nsw i32 %., %3                       ; 2 uses
  %i.p = sdiv i32 %i.n, %i.o
  %i.q = mul nsw i32 %i.p, %.
  %i.r = srem i32 %i.n, %i.o
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.)
  %i.t = add nsw i32 %i.s, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.088 = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ]   ; 3 uses
  %i.u = sdiv i32 %.088, %.                       ; 2 uses
  %i.v = srem i32 %.088, %.                       ; 2 uses
  %i.w = sext i32 %3 to i64
  %i.x = zext nneg i32 %. to i64                  ; 3 uses
  %i.y = mul i64 %7, %i.w
  %i.z = mul i64 %i.y, %i.x                       ; 6 uses
  %i.aa = icmp eq i32 %6, 1                       ; 2 uses
  br i1 %i.aa, label %.preheader, label %.preheader98

.preheader98:                                     ; preds = %bb.d
  %.190100 = add nsw i32 %2, -1                   ; 2 uses
  %i.ab = icmp sgt i32 %.190100, %1
  br i1 %i.ab, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader98
  %i.ac = sext i32 %.190100 to i64                ; 4 uses
  %i.ad = sub nsw i64 %i.ac, %i.k
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %.1101.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %i.z, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.prol
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !11
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %.1101.prol, %i.ag          ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !28

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.1101.unr = phi i64 [ %i.z, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.lcssa4.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = sub nsw i64 %i.k, %i.ac
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.d
  %i.ak = icmp sgt i32 %1, 0
  br i1 %i.ak, label %.lr.ph105.preheader, label %.loopexit

.lr.ph105.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter5 = and i64 %wide.trip.count, 7        ; 3 uses
  %i.al = icmp ult i32 %1, 8
  br i1 %i.al, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %indvars.iv110 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %indvars.iv.next111.7, %.lr.ph105 ] ; 9 uses
  %.087104 = phi i64 [ %i.z, %.lr.ph105.preheader.new ], [ %i.by, %.lr.ph105 ]
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.7, %.lr.ph105 ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.087104, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !11
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !11
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !11
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bt, %i.bx                ; 3 uses
  %indvars.iv.next111.7 = add nuw nsw i64 %indvars.iv110, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph105, !llvm.loop !29

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.1101 = phi i64 [ %i.dl, %.lr.ph ], [ %.1101.unr, %.lr.ph.prol.loopexit ]
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %.1101, %i.cb
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cc, %i.cg
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.ch, %i.cl
  %i.cn = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 -12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cm, %i.cq
  %i.cs = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.cr, %i.cv
  %i.cx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.cy = getelementptr i8, ptr %i.cx, i64 -20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !11
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.cw, %i.da
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i64 %i.db, %i.df
  %i.dh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.di = getelementptr i8, ptr %i.dh, i64 -28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !11
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.dg, %i.dk                ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8 ; 2 uses
  %i.dm = icmp sgt i64 %indvars.iv.next.7, %i.k
  br i1 %i.dm, label %.lr.ph, label %.loopexit, !llvm.loop !30

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph105
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.loopexit, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph105.preheader
  %indvars.iv110.epil.init = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next111.7, %.loopexit.loopexit.unr-lcssa ]
  %.087104.epil.init = phi i64 [ %i.z, %.lr.ph105.preheader ], [ %i.by, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter5, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %indvars.iv110.epil = phi i64 [ %indvars.iv110.epil.init, %.lr.ph105.epil.preheader ], [ %indvars.iv.next111.epil, %.lr.ph105.epil ] ; 2 uses
  %.087104.epil = phi i64 [ %.087104.epil.init, %.lr.ph105.epil.preheader ], [ %i.dq, %.lr.ph105.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph105.epil.preheader ], [ %epil.iter.next, %.lr.ph105.epil ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv110.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !11
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %.087104.epil, %i.dp        ; 2 uses
  %indvars.iv.next111.epil = add nuw nsw i64 %indvars.iv110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph105.epil, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph105.epil, %.preheader98, %.preheader
  %.2 = phi i64 [ %i.dq, %.lr.ph105.epil ], [ %i.z, %.preheader ], [ %i.z, %.preheader98 ], [ %i.by, %.loopexit.loopexit.unr-lcssa ], [ %.lcssa4.unr, %.lr.ph.prol.loopexit ], [ %i.dl, %.lr.ph ] ; 2 uses
  %i.dr = tail call i32 @PMPI_Type_create_hvector(i32 noundef %i.u, i32 noundef %., i64 noundef %.2, ptr noundef %8, ptr noundef nonnull %9) #5 ; 0 uses
  %.not95 = icmp eq i32 %i.v, 0
  br i1 %.not95, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ds = load ptr, ptr %9, align 8, !tbaa !10
  store ptr %i.ds, ptr %i.d, align 16, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %8, ptr %i.dt, align 8, !tbaa !10
  store i64 0, ptr %i.b, align 16, !tbaa !14
  %i.du = sext i32 %i.u to i64
  %i.dv = mul nsw i64 %.2, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !14
  store i32 1, ptr %i.a, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.v, ptr %i.dx, align 4, !tbaa !11
  %i.dy = call i32 @PMPI_Type_create_struct(i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #5 ; 0 uses
end_hunk_0
