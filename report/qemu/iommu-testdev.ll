Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/iommu-testdev?download=true
inline.NumInlined: 40
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@iommu_testdev_mmio_read:bb.a
  %i.s = tail call noalias ptr @g_malloc(i64 noundef %i.r) #5 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 8
  %.not87.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %i.w = and i32 %i.u, 7
  %i.x = and i32 %i.u, 1                          ; 2 uses
  %i.y = or disjoint i32 %i.x, 2
  %.sroa.0.0.i = select i1 %.not87.i, i32 %i.y, i32 %i.w
  br i1 %.not87.i, label %iommu_testdev_attrs_inconsistent.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = lshr i32 %i.u, 1
  %i.aa = and i32 %i.z, 3                         ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %i.aa, 2
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = icmp ne i32 %i.ab, 1
  %or.cond.i = and i1 %or.cond.i.i, %i.ac
  br i1 %or.cond.i, label %._crit_edge138.i, label %iommu_testdev_attrs_inconsistent.exit.thread.i

iommu_testdev_attrs_inconsistent.exit.thread.i:   ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 16
  %i.ah = load i32, ptr %i.m, align 16            ; 4 uses
  %i.ai = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i99.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i99.i, label %trace_iommu_testdev_dma_write.exit.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %iommu_testdev_attrs_inconsistent.exit.thread.i
  %i.aj = load i16, ptr @_TRACE_IOMMU_TESTDEV_DMA_WRITE_DSTATE, align 2
  %.not2.i100.i = icmp eq i16 %i.aj, 0
  br i1 %.not2.i100.i, label %trace_iommu_testdev_dma_write.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 32768
  %.not3.i.i = icmp eq i32 %i.al, 0
  br i1 %.not3.i.i, label %trace_iommu_testdev_dma_write.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i64 noundef %i.ag, i32 noundef %i.ah) #4
  %.pre.i = load i32, ptr %i.m, align 16
  br label %trace_iommu_testdev_dma_write.exit.i

trace_iommu_testdev_dma_write.exit.i:             ; preds = %bb.o, %bb.n, %bb.m, %iommu_testdev_attrs_inconsistent.exit.thread.i
  %i.am = phi i32 [ %i.ah, %iommu_testdev_attrs_inconsistent.exit.thread.i ], [ %i.ah, %bb.m ], [ %i.ah, %bb.n ], [ %.pre.i, %bb.o ] ; 12 uses
  %.not139.i = icmp eq i32 %i.am, 0
  br i1 %.not139.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %trace_iommu_testdev_dma_write.exit.i
  %i.an = add i32 %i.am, 2147483647
  %or.cond = icmp ult i32 %i.an, -2147483645
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i32 %i.am, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i32 %i.am, 12
  %n.vec = and i32 %i.am, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ap = srem <16 x i32> %vec.ind, splat (i32 4)
  %i.aq = shl nsw <16 x i32> %i.ap, splat (i32 3)
  %i.ar = lshr <16 x i32> splat (i32 305419896), %i.aq
  %i.as = trunc <16 x i32> %i.ar to <16 x i8>
  %i.at = sext i32 %index to i64
  %i.au = getelementptr inbounds i8, ptr %i.p, i64 %i.at
  store <16 x i8> %i.as, ptr %i.au, align 1
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 16)
  %i.av = icmp eq i32 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec28 = and i32 %i.am, -4                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind30 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next32, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = srem <4 x i32> %vec.ind30, splat (i32 4)
  %i.ax = shl nsw <4 x i32> %i.aw, splat (i32 3)
  %i.ay = lshr <4 x i32> splat (i32 305419896), %i.ax
  %i.az = trunc <4 x i32> %i.ay to <4 x i8>
  %i.ba = sext i32 %index29 to i64
  %i.bb = getelementptr inbounds i8, ptr %i.p, i64 %i.ba
  store <4 x i8> %i.az, ptr %i.bb, align 1
  %index.next31 = add nuw i32 %index29, 4         ; 2 uses
  %vec.ind.next32 = add nuw <4 x i32> %vec.ind30, splat (i32 4)
  %i.bc = icmp eq i32 %index.next31, %n.vec28
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i32 %i.am, %n.vec28
  br i1 %cmp.n33, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.082127.i.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 4 uses
  %.neg = or disjoint i32 %.082127.i.ph, 1
  %xtraiter = and i32 %i.am, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bd = sext i32 %.082127.i.ph to i64
  %i.be = getelementptr inbounds i8, ptr %i.p, i64 %i.bd
  store i8 120, ptr %i.be, align 1
  %i.bf = or disjoint i32 %.082127.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.082127.i.unr = phi i32 [ %.082127.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = icmp eq i32 %i.am, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %trace_iommu_testdev_dma_write.exit.i
  %i.bh = load i64, ptr %i.af, align 16
  %i.bi = zext i32 %i.am to i64
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.0.0.i to i64 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !18
  fence seq_cst
  %i.bj = tail call i32 @address_space_rw(ptr noundef %i.ae, i64 noundef %i.bh, i64 range(i64 0, 8) %.sroa.0.0.insert.ext.i, ptr noundef %i.p, i64 noundef range(i64 0, 4294967296) %i.bi, i1 noundef zeroext true) #4
  %.not88.i = icmp eq i32 %i.bj, 0
  br i1 %.not88.i, label %bb.p, label %._crit_edge138.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.082127.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %.082127.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bk = srem i32 %.082127.i, 4
  %i.bl = shl nsw i32 %i.bk, 3
  %i.bm = lshr i32 305419896, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = sext i32 %.082127.i to i64
  %i.bp = getelementptr inbounds i8, ptr %i.p, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1
  %i.bq = add nuw i32 %.082127.i, 1               ; 2 uses
  %i.br = srem i32 %i.bq, 4
  %i.bs = shl nsw i32 %i.br, 3
  %i.bt = lshr i32 305419896, %i.bs
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = sext i32 %i.bq to i64
  %i.bw = getelementptr inbounds i8, ptr %i.p, i64 %i.bv
  store i8 %i.bu, ptr %i.bw, align 1
  %i.bx = add nuw i32 %.082127.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.bx, %i.am
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

bb.p:                                             ; preds = %._crit_edge.i
  %i.by = load i64, ptr %i.af, align 16
  %i.bz = load i32, ptr %i.m, align 16            ; 4 uses
  %i.ca = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i101.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i101.i, label %trace_iommu_testdev_dma_read.exit.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.cb = load i16, ptr @_TRACE_IOMMU_TESTDEV_DMA_READ_DSTATE, align 2
  %.not2.i102.i = icmp eq i16 %i.cb, 0
  br i1 %.not2.i102.i, label %trace_iommu_testdev_dma_read.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr @qemu_loglevel, align 4
  %i.cd = and i32 %i.cc, 32768
  %.not3.i103.i = icmp eq i32 %i.cd, 0
  br i1 %.not3.i103.i, label %trace_iommu_testdev_dma_read.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i64 noundef %i.by, i32 noundef %i.bz) #4
  %.pre144.i = load i32, ptr %i.m, align 16
  br label %trace_iommu_testdev_dma_read.exit.i

trace_iommu_testdev_dma_read.exit.i:              ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.ce = phi i32 [ %i.bz, %bb.p ], [ %i.bz, %bb.q ], [ %i.bz, %bb.r ], [ %.pre144.i, %bb.s ]
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = tail call i32 @address_space_read_full(ptr noundef nonnull @address_space_memory, i64 noundef %i.ch, i64 range(i64 0, 8) %.sroa.0.0.insert.ext.i, ptr noundef %i.s, i64 noundef range(i64 0, 4294967296) %i.cf) #4
  %.not89.i = icmp eq i32 %i.ci, 0
  br i1 %.not89.i, label %.preheader.i, label %._crit_edge138.i

.preheader.i:                                     ; preds = %trace_iommu_testdev_dma_read.exit.i
  %.pre = load i32, ptr %i.m, align 16            ; 2 uses
  %.not140.i = icmp eq i32 %.pre, 0
  br i1 %.not140.i, label %._crit_edge138.i, label %.lr.ph137.i

bb.t:                                             ; preds = %trace_iommu_testdev_dma_verify.exit.i
  %i.cj = add i32 %.081136.i, 4                   ; 2 uses
  %i.ck = load i32, ptr %i.m, align 16            ; 2 uses
  %i.cl = icmp ult i32 %i.cj, %i.ck
  %indvars.iv.next = add i32 %indvars.iv, -4
  br i1 %i.cl, label %.lr.ph137.i, label %._crit_edge138.i, !llvm.loop !11

.lr.ph137.i:                                      ; preds = %.preheader.i, %bb.t
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader.i ] ; 2 uses
  %3 = phi i32 [ %i.ck, %bb.t ], [ %.pre, %.preheader.i ] ; 2 uses
  %.081136.i = phi i32 [ %i.cj, %bb.t ], [ 0, %.preheader.i ] ; 3 uses
  %.not141.i = icmp eq i32 %3, %.081136.i
  br i1 %.not141.i, label %._crit_edge133.i, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %.lr.ph137.i
  %i.cm = sext i32 %.081136.i to i64              ; 5 uses
  %i.cn = add i32 %3, %indvars.iv                 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.p, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.s, i64 %i.cm
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %exitcond.not = icmp ult i32 %i.cn, 2
  br i1 %exitcond.not, label %._crit_edge133.i, label %.lr.ph132.i.1

._crit_edge133.i:                                 ; preds = %.lr.ph132.preheader.i, %.lr.ph132.i.1, %.lr.ph132.i.2, %.lr.ph132.i.3, %.lr.ph137.i
  %.080.lcssa.i = phi i32 [ 0, %.lr.ph137.i ], [ %i.ct, %.lr.ph132.preheader.i ], [ %i.di, %.lr.ph132.i.1 ], [ %i.dt, %.lr.ph132.i.2 ], [ %i.ee, %.lr.ph132.i.3 ] ; 2 uses
  %.079.lcssa.i = phi i32 [ 0, %.lr.ph137.i ], [ %i.cq, %.lr.ph132.preheader.i ], [ %i.dd, %.lr.ph132.i.1 ], [ %i.do, %.lr.ph132.i.2 ], [ %i.dz, %.lr.ph132.i.3 ] ; 2 uses
  %i.cu = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i104.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i104.i, label %trace_iommu_testdev_dma_verify.exit.i, label %bb.u, !prof !7

bb.u:                                             ; preds = %._crit_edge133.i
  %i.cv = load i16, ptr @_TRACE_IOMMU_TESTDEV_DMA_VERIFY_DSTATE, align 2
  %.not2.i105.i = icmp eq i16 %i.cv, 0
  br i1 %.not2.i105.i, label %trace_iommu_testdev_dma_verify.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = load i32, ptr @qemu_loglevel, align 4
  %i.cx = and i32 %i.cw, 32768
  %.not3.i106.i = icmp eq i32 %i.cx, 0
  br i1 %.not3.i106.i, label %trace_iommu_testdev_dma_verify.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, i32 noundef %.079.lcssa.i, i32 noundef %.080.lcssa.i) #4
  br label %trace_iommu_testdev_dma_verify.exit.i

trace_iommu_testdev_dma_verify.exit.i:            ; preds = %bb.w, %bb.v, %bb.u, %._crit_edge133.i
  %.not90.i = icmp eq i32 %.079.lcssa.i, %.080.lcssa.i
  br i1 %.not90.i, label %bb.t, label %._crit_edge138.i

.lr.ph132.i.1:                                    ; preds = %.lr.ph132.preheader.i
  %i.cy = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.p, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = or disjoint i32 %i.dc, %i.cq            ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.s, i64 %i.cy
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = or disjoint i32 %i.dh, %i.ct            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cn, 2
  br i1 %exitcond.not.1, label %._crit_edge133.i, label %.lr.ph132.i.2

.lr.ph132.i.2:                                    ; preds = %.lr.ph132.i.1
  %i.dj = or disjoint i64 %i.cm, 2                ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.p, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 16
  %i.do = or disjoint i32 %i.dn, %i.dd            ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.s, i64 %i.dj
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 16
  %i.dt = or disjoint i32 %i.ds, %i.di            ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.cn, 3
  br i1 %exitcond.not.2, label %._crit_edge133.i, label %.lr.ph132.i.3

.lr.ph132.i.3:                                    ; preds = %.lr.ph132.i.2
  %i.du = or disjoint i64 %i.cm, 3                ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.p, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 24
  %i.dz = or disjoint i32 %i.dy, %i.do
  %i.ea = getelementptr inbounds i8, ptr %i.s, i64 %i.du
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 24
  %i.ee = or disjoint i32 %i.ed, %i.dt
  br label %._crit_edge133.i

._crit_edge138.i:                                 ; preds = %trace_iommu_testdev_dma_verify.exit.i, %bb.t, %.preheader.i, %trace_iommu_testdev_dma_read.exit.i, %._crit_edge.i, %bb.l, %trace_iommu_testdev_dma_start.exit.i
  %.sink.i = phi i32 [ -559087613, %trace_iommu_testdev_dma_read.exit.i ], [ 0, %.preheader.i ], [ -559087614, %._crit_edge.i ], [ -559087610, %bb.l ], [ -559087615, %trace_iommu_testdev_dma_start.exit.i ], [ -559087612, %trace_iommu_testdev_dma_verify.exit.i ], [ 0, %bb.t ] ; 2 uses
  %.0117.i = phi ptr [ %i.p, %trace_iommu_testdev_dma_read.exit.i ], [ %i.p, %.preheader.i ], [ %i.p, %._crit_edge.i ], [ %i.p, %bb.l ], [ null, %trace_iommu_testdev_dma_start.exit.i ], [ %i.p, %bb.t ], [ %i.p, %trace_iommu_testdev_dma_verify.exit.i ]
  %.0115.i = phi ptr [ %i.s, %trace_iommu_testdev_dma_read.exit.i ], [ %i.s, %.preheader.i ], [ %i.s, %._crit_edge.i ], [ %i.s, %bb.l ], [ null, %trace_iommu_testdev_dma_start.exit.i ], [ %i.s, %bb.t ], [ %i.s, %trace_iommu_testdev_dma_verify.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3060
  store i32 %.sink.i, ptr %i.ef, align 4
  %i.eg = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i107.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i107.i, label %trace_iommu_testdev_dma_result.exit110.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %._crit_edge138.i
  %i.eh = load i16, ptr @_TRACE_IOMMU_TESTDEV_DMA_RESULT_DSTATE, align 2
  %.not1.i108.i = icmp eq i16 %i.eh, 0
  br i1 %.not1.i108.i, label %trace_iommu_testdev_dma_result.exit110.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = load i32, ptr @qemu_loglevel, align 4
  %i.ej = and i32 %i.ei, 32768
  %.not2.i109.i = icmp eq i32 %i.ej, 0
  br i1 %.not2.i109.i, label %trace_iommu_testdev_dma_result.exit110.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %.sink.i) #4
  br label %trace_iommu_testdev_dma_result.exit110.i

trace_iommu_testdev_dma_result.exit110.i:         ; preds = %bb.z, %bb.y, %bb.x, %._crit_edge138.i
  store i8 0, ptr %i.a, align 8
  br label %iommu_testdev_maybe_run_dma.exit

iommu_testdev_maybe_run_dma.exit:                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %trace_iommu_testdev_dma_result.exit110.i
  %.1118.i = phi ptr [ %.0117.i, %trace_iommu_testdev_dma_result.exit110.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  %.1116.i = phi ptr [ %.0115.i, %trace_iommu_testdev_dma_result.exit110.i ], [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  tail call void @g_free(ptr noundef %.1116.i) #4
  tail call void @g_free(ptr noundef %.1118.i) #4
  br label %bb.ah

bb.aa:                                            ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.el = load i64, ptr %i.ek, align 16
  %i.em = and i64 %i.el, 4294967295
  br label %bb.ah

bb.ab:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.eo = load i64, ptr %i.en, align 16
  %i.ep = lshr i64 %i.eo, 32
  br label %bb.ah

bb.ac:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = and i64 %i.er, 4294967295
  br label %bb.ah

bb.ad:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = lshr i64 %i.eu, 32
  br label %bb.ah

bb.ae:                                            ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.ex = load i32, ptr %i.ew, align 16
  %i.ey = zext i32 %i.ex to i64
  br label %bb.ah

bb.af:                                            ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3060
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = zext i32 %i.fa to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = zext i32 %i.fd to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %iommu_testdev_maybe_run_dma.exit
  %.0 = phi i64 [ %i.fe, %bb.ag ], [ 0, %iommu_testdev_maybe_run_dma.exit ], [ %i.em, %bb.aa ], [ %i.ep, %bb.ab ], [ %i.es, %bb.ac ], [ %i.ev, %bb.ad ], [ %i.ey, %bb.ae ], [ %i.fb, %bb.af ], [ 0, %bb.a ] ; 2 uses
  %i.ff = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i13 = icmp eq i32 %i.ff, 0
  br i1 %.not.i13, label %trace_iommu_testdev_mmio_read.exit, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.fg = load i16, ptr @_TRACE_IOMMU_TESTDEV_MMIO_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.fg, 0
  br i1 %.not3.i, label %trace_iommu_testdev_mmio_read.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = load i32, ptr @qemu_loglevel, align 4
  %i.fi = and i32 %i.fh, 32768
  %.not4.i = icmp eq i32 %i.fi, 0
  br i1 %.not4.i, label %trace_iommu_testdev_mmio_read.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.0, i32 noundef %2) #4
  br label %trace_iommu_testdev_mmio_read.exit

trace_iommu_testdev_mmio_read.exit:               ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @iommu_testdev_mmio_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 4 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_iommu_testdev_mmio_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_IOMMU_TESTDEV_MMIO_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.c, 0
  br i1 %.not3.i, label %trace_iommu_testdev_mmio_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %trace_iommu_testdev_mmio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4
  br label %trace_iommu_testdev_mmio_write.exit

trace_iommu_testdev_mmio_write.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  switch i64 %1, label %trace_iommu_testdev_dma_armed.exit [
    i64 4, label %bb.e
    i64 8, label %bb.f
    i64 28, label %bb.g
    i64 32, label %bb.h
    i64 12, label %bb.i
    i64 16, label %bb.j
    i64 20, label %bb.k
    i64 24, label %bb.t
  ]

bb.e:                                             ; preds = %trace_iommu_testdev_mmio_write.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16
  %i.h = and i64 %i.g, -4294967296
  %i.i = and i64 %2, 4294967295
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.f, align 16
  br label %trace_iommu_testdev_dma_armed.exit

bb.f:                                             ; preds = %trace_iommu_testdev_mmio_write.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16
  %i.m = and i64 %i.l, 4294967295
  %i.n = shl i64 %2, 32
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.k, align 16
end_hunk_0
