Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistbuild?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gistBuildCallback:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.aq = call zeroext i1 @gistPopItupFromNodeBuffer(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #7
  br i1 %i.aq, label %bb.c, label %.critedge.i.i, !llvm.loop !11

bb.e:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @gistdoinsert(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %i.as, ptr noundef %i.at, ptr noundef %i.av, i1 noundef zeroext true) #7
  br label %gistBufferingBuildInsert.exit

gistBufferingBuildInsert.exit:                    ; preds = %.critedge.i.i, %bb.b, %bb.e
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @MemoryContextReset(ptr noundef %i.ay) #7
  %i.az = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ba = icmp eq i32 %i.az, 4
  br i1 %i.ba, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %gistBufferingBuildInsert.exit
  %i.bb = load i64, ptr %i.h, align 8             ; 2 uses
  %i.bc = and i64 %i.bb, 4095
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %gistInitBuffering.exit

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = sub i64 8148, %i.bj
  %i.bl = load i64, ptr %i.n, align 8
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = sitofp i64 %i.bb to double
  %i.bo = fdiv double %i.bm, %i.bn
  %i.bp = uitofp i64 %i.bk to double
  %i.bq = fdiv double %i.bp, %i.bo
  %i.br = sitofp i32 %i.bh to double
  %i.bs = call double @pow(double noundef %i.bq, double noundef %i.br) #7
  %i.bt = fmul double %i.bs, 2.000000e+00
  %i.bu = call double @llvm.rint.f64(double %i.bt)
  %i.bv = fptosi double %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  store i32 %i.bv, ptr %i.bw, align 4
  %.pr.pre = load i32, ptr %i.q, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %gistBufferingBuildInsert.exit
  %i.bx = phi i32 [ %i.az, %gistBufferingBuildInsert.exit ], [ %.pr.pre, %bb.g ] ; 2 uses
  %i.by = icmp eq i32 %i.bx, 2
  br i1 %i.by, label %bb.h, label %bb.k

bb.h:                                             ; preds = %thread-pre-split
  %i.bz = load i64, ptr %i.h, align 8
  %i.ca = and i64 %i.bz, 255
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.i, label %gistInitBuffering.exit

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr @effective_cache_size, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.j, label %RelationGetSmgr.exit, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ch = load i32, ptr %i.cg, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ci = call ptr @smgropen(i64 %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, i32 noundef %i.ch) #7 ; 2 uses
  store ptr %i.ci, ptr %i.cd, align 8
  call void @smgrpin(ptr noundef %i.ci) #7
  %.pre.i = load ptr, ptr %i.cd, align 8
  br label %RelationGetSmgr.exit

RelationGetSmgr.exit:                             ; preds = %bb.i, %bb.j
  %i.cj = phi ptr [ %.pre.i, %bb.j ], [ %i.ce, %bb.i ]
  %i.ck = call i32 @smgrnblocks(ptr noundef %i.cj, i32 noundef 0) #7
  %i.cl = icmp ult i32 %i.cc, %i.ck
  br i1 %i.cl, label %RelationGetSmgr.exit._crit_edge35, label %RelationGetSmgr.exit._crit_edge

RelationGetSmgr.exit._crit_edge35:                ; preds = %RelationGetSmgr.exit
  %.pre36 = load i64, ptr %i.h, align 8
  br label %bb.m

RelationGetSmgr.exit._crit_edge:                  ; preds = %RelationGetSmgr.exit
  %.pre = load i32, ptr %i.q, align 8
  br label %bb.k

bb.k:                                             ; preds = %RelationGetSmgr.exit._crit_edge, %thread-pre-split
  %i.cm = phi i32 [ %.pre, %RelationGetSmgr.exit._crit_edge ], [ %i.bx, %thread-pre-split ]
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.l, label %gistInitBuffering.exit

bb.l:                                             ; preds = %bb.k
  %i.co = load i64, ptr %i.h, align 8             ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 4095
  br i1 %i.cp, label %bb.m, label %gistInitBuffering.exit

bb.m:                                             ; preds = %RelationGetSmgr.exit._crit_edge35, %bb.l
  %i.cq = phi i64 [ %.pre36, %RelationGetSmgr.exit._crit_edge35 ], [ %i.co, %bb.l ]
  %i.cr = load ptr, ptr %5, align 8               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = sub i64 8148, %i.ct                     ; 3 uses
  %i.cv = load i64, ptr %i.n, align 8
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = sitofp i64 %i.cq to double
  %i.cy = fdiv double %i.cw, %i.cx                ; 2 uses
  %i.cz = fptoui double %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.db = load ptr, ptr %i.da, align 8            ; 6 uses
  %i.dc = load i32, ptr %i.db, align 8            ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.dc to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dc, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.de = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 4, i64 %i.de
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.dg  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ <i64 8, i64 0>, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi45 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 50
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 58
  %i.dp = load i16, ptr %i.dl, align 2
  %i.dq = load i16, ptr %i.dm, align 2
  %i.dr = insertelement <2 x i16> poison, i16 %i.dp, i64 0
  %i.ds = insertelement <2 x i16> %i.dr, i16 %i.dq, i64 1 ; 2 uses
  %i.dt = load i16, ptr %i.dn, align 2
  %i.du = load i16, ptr %i.do, align 2
  %i.dv = insertelement <2 x i16> poison, i16 %i.dt, i64 0
  %i.dw = insertelement <2 x i16> %i.dv, i16 %i.du, i64 1 ; 2 uses
  %i.dx = icmp slt <2 x i16> %i.ds, zeroinitializer
  %i.dy = icmp slt <2 x i16> %i.dw, zeroinitializer
  %i.dz = select <2 x i1> %i.dx, <2 x i16> splat (i16 4), <2 x i16> %i.ds
  %i.ea = select <2 x i1> %i.dy, <2 x i16> splat (i16 4), <2 x i16> %i.dw
  %i.eb = zext <2 x i16> %i.dz to <2 x i64>
  %i.ec = zext <2 x i16> %i.ea to <2 x i64>
  %i.ed = add <2 x i64> %vec.phi, %i.eb           ; 2 uses
  %i.ee = add <2 x i64> %vec.phi45, %i.ec         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ee, %i.ed
  %i.eg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.04046.i.ph = phi i64 [ 8, %.lr.ph.preheader.i ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.04046.i = phi i64 [ %.141.i, %.lr.ph.i ], [ %.04046.i.ph, %.lr.ph.i.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 34
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %i.ek = icmp slt i16 %i.ej, 0
  %narrow.i = select i1 %i.ek, i16 4, i16 %i.ej
  %.141.v.i = zext i16 %narrow.i to i64
  %.141.i = add i64 %.04046.i, %.141.v.i          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.040.lcssa.i = phi i64 [ 8, %bb.m ], [ %.141.i, %.lr.ph.i ]
  %i.el = udiv i64 %i.cu, %i.cz
  %i.em = uitofp i64 %i.el to double              ; 2 uses
  %i.en = udiv i64 %i.cu, %.040.lcssa.i
  %i.eo = uitofp i64 %i.en to double
  %i.ep = fsub double 1.000000e+00, %i.em
  %7 = load i32, ptr @effective_cache_size, align 4
  %8 = sdiv i32 %7, 4
  %9 = sitofp i32 %8 to double
  %10 = load i32, ptr @maintenance_work_mem, align 4
  %11 = sitofp i32 %10 to double
  %12 = fmul nnan double %11, 1.024000e+03
  %13 = fmul nnan double %12, f0x3F20000000000000
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.i
  %.038.i = phi i32 [ 1, %._crit_edge.i ], [ %i.eq, %bb.n ] ; 3 uses
  %i.eq = add i32 %.038.i, 1                      ; 2 uses
  %i.er = sitofp i32 %i.eq to double
  %i.es = call double @pow(double noundef %i.em, double noundef %i.er) #7
  %i.et = fsub double 1.000000e+00, %i.es
  %i.eu = fdiv double %i.et, %i.ep
  %i.ev = sitofp i32 %.038.i to double
  %i.ew = call double @pow(double noundef %i.eo, double noundef %i.ev) #7
  %14 = fcmp ogt double %i.eu, %9
  %15 = fcmp ogt double %i.ew, %13
  %or.cond.i = select i1 %14, i1 true, i1 %15
  br i1 %or.cond.i, label %select.unfold.i, label %bb.n

select.unfold.i:                                  ; preds = %bb.n
  %i.ex = add i32 %.038.i, -1                     ; 4 uses
  %i.ey = icmp slt i32 %i.ex, 1
  br i1 %i.ey, label %bb.o, label %bb.r

bb.o:                                             ; preds = %select.unfold.i
  %i.ez = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #7
  br i1 %i.ez, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 757, ptr noundef nonnull @__func__.gistInitBuffering) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.q, align 8
  br label %gistInitBuffering.exit

bb.r:                                             ; preds = %select.unfold.i
  %i.fb = uitofp i64 %i.cu to double
  %i.fc = fdiv double %i.fb, %i.cy
  %i.fd = uitofp nneg i32 %i.ex to double
  %i.fe = call double @pow(double noundef %i.fc, double noundef %i.fd) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.015.i.i = phi i32 [ 0, %bb.r ], [ %i.gh, %bb.v ] ; 2 uses
  %.014.i.i = phi i32 [ 0, %bb.r ], [ %i.gg, %bb.v ]
  %i.ff = call i32 @ReadBuffer(ptr noundef %i.cr, i32 noundef %.014.i.i) #7 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.ff, i32 noundef 1) #7
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.fi = xor i32 %i.ff, -1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8
  br label %BufferGetPage.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fm = load ptr, ptr @BufferBlocks, align 8
  %i.fn = add nsw i32 %i.ff, -1
  %i.fo = sext i32 %i.fn to i64
  %i.fp = shl nsw i64 %i.fo, 13
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fp
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi ptr [ %i.fl, %bb.t ], [ %i.fq, %bb.u ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.fs = load i16, ptr %i.fr, align 8
  %i.ft = zext i16 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.fw = load i16, ptr %i.fv, align 4
  %i.fx = and i16 %i.fw, 1
  %.not.i.i32 = icmp eq i16 %i.fx, 0
  br i1 %.not.i.i32, label %bb.v, label %gistGetMaxLevel.exit.i

bb.v:                                             ; preds = %BufferGetPage.exit.i.i
  %i.fy = getelementptr i8, ptr %.0.i.i.i.i, i64 24
  %.val.i.i33 = load i32, ptr %i.fy, align 8
  %i.fz = and i32 %.val.i.i33, 32767
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ga ; 2 uses
  %.val17.i.i = load i16, ptr %i.gb, align 2
  %i.gc = getelementptr i8, ptr %i.gb, i64 2
  %.val18.i.i = load i16, ptr %i.gc, align 2
  %i.gd = zext i16 %.val17.i.i to i32
  %i.ge = shl nuw i32 %i.gd, 16
  %i.gf = zext i16 %.val18.i.i to i32
  %i.gg = or disjoint i32 %i.ge, %i.gf
  call void @UnlockReleaseBuffer(i32 noundef %i.ff) #7
  %i.gh = add i32 %.015.i.i, 1
  br label %bb.s

gistGetMaxLevel.exit.i:                           ; preds = %BufferGetPage.exit.i.i
  %i.gi = fmul double %i.fe, 2.000000e+00
  %i.gj = call double @llvm.rint.f64(double %i.gi)
  %i.gk = fptosi double %i.gj to i32              ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %i.ff) #7
  %i.gl = call ptr @gistInitBuildBuffers(i32 noundef %i.gk, i32 noundef %i.ex, i32 noundef %.015.i.i) #7
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.gl, ptr %i.gm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 8, ptr %i.go, align 8
  %i.gp = load ptr, ptr @CurrentMemoryContext, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.gp, ptr %i.gq, align 8
  %i.gr = call ptr @hash_create(ptr noundef nonnull @.str.10, i64 noundef 1024, ptr noundef nonnull %6, i32 noundef 1064) #7
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.gr, ptr %i.gs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  store i32 4, ptr %i.q, align 8
  %i.gt = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #7
  br i1 %i.gt, label %bb.w, label %gistInitBuffering.exit

bb.w:                                             ; preds = %gistGetMaxLevel.exit.i
  %i.gu = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.ex, i32 noundef %i.gk) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 778, ptr noundef nonnull @__func__.gistInitBuffering) #7
  br label %gistInitBuffering.exit

gistInitBuffering.exit:                           ; preds = %bb.f, %bb.h, %bb.w, %gistGetMaxLevel.exit.i, %bb.q, %bb.l, %bb.k
  ret void
}

declare void @gistFreeBuildBuffers(ptr noundef) local_unnamed_addr #2

declare void @log_newpage_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

declare void @freeGISTstate(ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare void @gistCompressValues(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @tuplesort_putindextuplevalues(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

declare ptr @smgr_bulk_start_rel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @gistinitpage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @tuplesort_getindextuple(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gist_indexsortbuild_levelstate_add(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %2, i64 6
  %.val = load i16, ptr %i.b, align 2
  %i.c = and i16 %.val, 8191
  %narrow = add nuw nsw i16 %i.c, 4
  %i.d = zext nneg i16 %narrow to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = load i32, ptr %1, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 @PageGetFreeSpace(ptr noundef %i.i) #7
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8                ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i16, ptr %i.t, align 4
  %i.v = add i32 %i.l, 1                          ; 3 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gist_indexsortbuild_levelstate_flush(ptr noundef %0, ptr noundef nonnull %1)
  %.pre = load i32, ptr %1, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.v, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i32 [ %i.v, %bb.d ], [ %.pre, %bb.c ]
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @palloc0(i64 noundef 8192) #7
  %i.ad = load i32, ptr %1, align 8
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  %.pre21 = load i32, ptr %1, align 8
  %.phi.trans.insert = sext i32 %.pre21 to i64
  %.phi.trans.insert22 = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.phi.trans.insert
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %.pre23, %bb.f ], [ %i.aa, %bb.e ]
  %i.ah = zext i16 %i.u to i32
end_hunk_0
