Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/bench?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@BMK_benchCLevel:bb.a
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ag
  %i.ah = select i1 %or.cond.i, i64 %1, i64 %i.ad
  %i.ai = add i64 %i.ah, %i.p                     ; 4 uses
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = add i64 %i.aj, %1
  %i.al = udiv i64 %i.ak, %i.ai
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %6, %i.am                       ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 56
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ap) #21 ; 28 uses
  %i.ar = call i32 @LZ4_compressBound(i32 noundef %.pre-phi) #19
  %i.as = sext i32 %i.ar to i64
  %i.at = shl i32 %i.an, 10
  %i.au = zext i32 %i.at to i64
  %i.av = add nsw i64 %i.au, %i.as                ; 3 uses
  %i.aw = call noalias ptr @malloc(i64 noundef %i.av) #21 ; 5 uses
  %i.ax = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not354.i = icmp eq i32 %i.ax, 0               ; 3 uses
  %i.ay = select i1 %.not354.i, i64 1, i64 255    ; 3 uses
  %i.az = select i1 %.not354.i, i64 2113929216, i64 8289918 ; 2 uses
  %i.ba = icmp samesign ult i64 %1, %i.az
  %i.bb = mul nuw nsw i64 %i.ay, %1
  %i.bc = select i1 %i.ba, i64 %i.bb, i64 2113929216
  %i.bd = call noalias ptr @malloc(i64 noundef %i.bc) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.be = icmp ne ptr %i.aw, null
  %i.bf = icmp ne ptr %i.bd, null
  %or.cond3.i = and i1 %i.be, %i.bf
  %i.bg = icmp ne ptr %i.aq, null
  %or.cond5.i = and i1 %i.bg, %or.cond3.i
  br i1 %or.cond5.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not355.i = icmp eq i32 %i.bh, 0
  br i1 %.not355.i, label %.thread392.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.5, i32 noundef 31) #17 ; 0 uses
  %.pr.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not356.i = icmp eq i32 %.pr.i, 0
  br i1 %.not356.i, label %.thread392.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.19, i64 36, i64 1, ptr %i.bk) #18 ; 0 uses
  %.pr391.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not357.i = icmp eq i32 %.pr391.i, 0
  br i1 %.not357.i, label %.thread392.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bl)   ; 0 uses
  br label %.thread392.i

.thread392.i:                                     ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  call void @exit(i32 noundef 31) #20
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #22 ; 2 uses
  %i.bn = icmp ugt i64 %i.bm, 17
  %i.bo = getelementptr i8, ptr %spec.select, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 -17
  %.0290.i = select i1 %i.bn, ptr %i.bp, ptr %spec.select ; 5 uses
  store i32 %.02459, ptr %9, align 8, !tbaa !24
  store ptr %7, ptr %i.q, align 8, !tbaa !25
  store i32 %8, ptr %i.r, align 8, !tbaa !26
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp slt i32 %.02459, 2
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store <2 x ptr> <ptr @LZ4_compressInitStream, ptr @LZ4_compressResetStream>, ptr %i.u, align 8, !tbaa !55
  store <2 x ptr> <ptr @LZ4_compressBlockStream, ptr @LZ4_compressCleanupStream>, ptr %i.v, align 8, !tbaa !55
  br label %LZ4_buildCompressionParameters.exit.i

bb.n:                                             ; preds = %bb.l
  store <2 x ptr> <ptr @LZ4_compressInitStreamHC, ptr @LZ4_compressResetStreamHC>, ptr %i.u, align 8, !tbaa !55
  store <2 x ptr> <ptr @LZ4_compressBlockStreamHC, ptr @LZ4_compressCleanupStreamHC>, ptr %i.v, align 8, !tbaa !55
  br label %LZ4_buildCompressionParameters.exit.i

bb.o:                                             ; preds = %bb.k
  store <2 x ptr> <ptr @LZ4_compressInitNoStream, ptr @LZ4_compressResetNoStream>, ptr %i.u, align 8, !tbaa !55
  store ptr @LZ4_compressCleanupNoStream, ptr %i.t, align 8, !tbaa !56
  %i.br = icmp slt i32 %.02459, 2
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr @LZ4_compressBlockNoStream, ptr %i.v, align 8, !tbaa !57
  br label %LZ4_buildCompressionParameters.exit.i

bb.q:                                             ; preds = %bb.o
  store ptr @LZ4_compressBlockNoStreamHC, ptr %i.v, align 8, !tbaa !57
  br label %LZ4_buildCompressionParameters.exit.i

LZ4_buildCompressionParameters.exit.i:            ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  %i.bs = phi ptr [ @LZ4_compressInitStream, %bb.m ], [ @LZ4_compressInitStreamHC, %bb.n ], [ @LZ4_compressInitNoStream, %bb.p ], [ @LZ4_compressInitNoStream, %bb.q ]
  call void %i.bs(ptr noundef nonnull %9) #19, !inline_history !37
  %i.bt = load ptr, ptr @g_dctx, align 8, !tbaa !28
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.r, %LZ4_buildCompressionParameters.exit.i
  br label %bb.w

bb.r:                                             ; preds = %LZ4_buildCompressionParameters.exit.i
  %i.bv = call i64 @LZ4F_createDecompressionContext(ptr noundef nonnull @g_dctx, i32 noundef 100) #19 ; 0 uses
  %i.bw = load ptr, ptr @g_dctx, align 8, !tbaa !28
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.s, label %.preheader

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not378.i = icmp eq i32 %i.by, 0
  br i1 %.not378.i, label %.thread399.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.5, i32 noundef 1) #17 ; 0 uses
  %.pr394.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not379.i = icmp eq i32 %.pr394.i, 0
  br i1 %.not379.i, label %.thread399.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite380.i = call i64 @fwrite(ptr nonnull @.str.20, i64 38, i64 1, ptr %i.cb) #18 ; 0 uses
  %.pr397.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not381.i = icmp eq i32 %.pr397.i, 0
  br i1 %.not381.i, label %.thread399.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc383.i = call i32 @fputc(i32 10, ptr %i.cc) ; 0 uses
  br label %.thread399.i

.thread399.i:                                     ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  call void @exit(i32 noundef 1) #20
  unreachable

bb.w:                                             ; preds = %.preheader, %._crit_edge.i
  %indvars.iv535.i = phi i64 [ %indvars.iv.next536.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.0328434.i = phi ptr [ %.1329.lcssa.i, %._crit_edge.i ], [ %i.bd, %.preheader ] ; 2 uses
  %.0330433.i = phi ptr [ %.1331.lcssa.i, %._crit_edge.i ], [ %i.aw, %.preheader ] ; 2 uses
  %.0332432.i = phi ptr [ %.1333.lcssa.i, %._crit_edge.i ], [ %0, %.preheader ] ; 2 uses
  %.0334431.i = phi i32 [ %.1335.lcssa.i, %._crit_edge.i ], [ 0, %.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv535.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.cf = add i64 %i.ce, %i.aj
  %i.cg = udiv i64 %i.cf, %i.ai
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %.0334431.i, %i.ch              ; 2 uses
  %i.cj = icmp ult i32 %.0334431.i, %i.ci
  br i1 %i.cj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.ck = zext i32 %.0334431.i to i64
  %i.cl = zext i32 %i.ci to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ck, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0326427.i = phi i64 [ %i.ce, %.lr.ph.preheader.i ], [ %i.db, %.lr.ph.i ] ; 2 uses
  %.1329426.i = phi ptr [ %.0328434.i, %.lr.ph.preheader.i ], [ %i.da, %.lr.ph.i ] ; 2 uses
  %.1331425.i = phi ptr [ %.0330433.i, %.lr.ph.preheader.i ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %.1333424.i = phi ptr [ %.0332432.i, %.lr.ph.preheader.i ], [ %i.cy, %.lr.ph.i ] ; 2 uses
  %i.cm = call i64 @llvm.umin.i64(i64 %.0326427.i, i64 %i.ai) ; 6 uses
  %i.cn = mul i64 %i.cm, %i.ay
  %i.co = icmp ult i64 %i.cm, %i.az
  %i.cp = select i1 %i.co, i64 %i.cn, i64 2113929216
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv.i ; 5 uses
  store ptr %.1333424.i, ptr %i.cq, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %.1331425.i, ptr %i.cr, align 8, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr %.1329426.i, ptr %i.cs, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cm, ptr %i.ct, align 8, !tbaa !62
  %i.cu = trunc i64 %i.cm to i32
  %i.cv = call i32 @LZ4_compressBound(i32 noundef %i.cu) #19
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %.1333424.i, i64 %i.cm ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1331425.i, i64 %i.cw ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1329426.i, i64 %i.cp ; 2 uses
  %i.db = sub nuw i64 %.0326427.i, %i.cm
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i, %i.cl
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !38

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.dd = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.w
  %.1335.lcssa.i = phi i32 [ %.0334431.i, %bb.w ], [ %i.dd, %._crit_edge.loopexit.i ] ; 11 uses
  %.1333.lcssa.i = phi ptr [ %.0332432.i, %bb.w ], [ %i.cy, %._crit_edge.loopexit.i ]
  %.1331.lcssa.i = phi ptr [ %.0330433.i, %bb.w ], [ %i.cz, %._crit_edge.loopexit.i ]
  %.1329.lcssa.i = phi ptr [ %.0328434.i, %bb.w ], [ %i.da, %._crit_edge.loopexit.i ]
  %indvars.iv.next536.i = add nuw nsw i64 %indvars.iv535.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next536.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.x, label %bb.w, !llvm.loop !39

bb.x:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 32, i64 %i.av, i1 false)
  %i.de = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not359.i = icmp ne i32 %i.de, 0
  %i.df = icmp ne i32 %.1335.lcssa.i, 0
  %or.cond500.i = and i1 %i.df, %.not359.i
  br i1 %or.cond500.i, label %.lr.ph437.preheader.i, label %.loopexit413.i

.lr.ph437.preheader.i:                            ; preds = %bb.x
  %wide.trip.count542.i = zext i32 %.1335.lcssa.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count542.i, 1
  %i.dg = icmp eq i32 %.1335.lcssa.i, 1
  br i1 %i.dg, label %.lr.ph437.i.epil.preheader, label %.lr.ph437.preheader.i.new

.lr.ph437.preheader.i.new:                        ; preds = %.lr.ph437.preheader.i
  %unroll_iter = and i64 %wide.trip.count542.i, 4294967294
  br label %.lr.ph437.i

.lr.ph437.i:                                      ; preds = %.lr.ph437.i, %.lr.ph437.preheader.i.new
  %indvars.iv538.i = phi i64 [ 0, %.lr.ph437.preheader.i.new ], [ %indvars.iv.next539.i.1, %.lr.ph437.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph437.preheader.i.new ], [ %niter.next.1, %.lr.ph437.i ]
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !60
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.ds, i64 %i.du, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !64
  %indvars.iv.next539.i.1 = add nuw nsw i64 %indvars.iv538.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit413.i.loopexit.unr-lcssa, label %.lr.ph437.i, !llvm.loop !40

.loopexit413.i.loopexit.unr-lcssa:                ; preds = %.lr.ph437.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit413.i, label %.lr.ph437.i.epil.preheader

.lr.ph437.i.epil.preheader:                       ; preds = %.loopexit413.i.loopexit.unr-lcssa, %.lr.ph437.preheader.i
  %indvars.iv538.i.epil.init = phi i64 [ 0, %.lr.ph437.preheader.i ], [ %indvars.iv.next539.i.1, %.loopexit413.i.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %.1335.lcssa.i to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i.epil.init ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.dz, i64 %i.eb, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !64
  br label %.loopexit413.i

.loopexit413.i:                                   ; preds = %.lr.ph437.i.epil.preheader, %.loopexit413.i.loopexit.unr-lcssa, %bb.x
  %i.ed = call i64 @XXH64(ptr noundef nonnull %0, i64 noundef range(i64 0, 2113929217) %1, i64 noundef 0) #19 ; 2 uses
  %i.ee = call i64 @TIME_getTime() #19
  %i.ef = load i32, ptr @g_nbSeconds, align 4, !tbaa !9 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.eg, 1000000000
  %i.ei = or disjoint i64 %i.eh, 100              ; 2 uses
  %i.ej = udiv i64 5242880, %i.w
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = udiv i64 209715200, %i.w
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = add nuw nsw i32 %i.en, 1
  %i.ep = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %i.eq = icmp ne i32 %i.ep, 1
  %i.er = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.es = icmp ugt i32 %i.er, 1
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit413.i
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18) #17 ; 0 uses
  %.pre.i = load i32, ptr @g_nbSeconds, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit413.i
  %i.ev = phi i32 [ %.pre.i, %bb.y ], [ %i.ef, %.loopexit413.i ]
  %i.ew = icmp eq i32 %i.ev, 0                    ; 2 uses
  %spec.select.i = select i1 %i.ew, i32 1, i32 %i.el
  %spec.select384.i = select i1 %i.ew, i32 1, i32 %i.eo
  %.not502.i = icmp eq i32 %.1335.lcssa.i, 0      ; 6 uses
  %i.ex = select i1 %.not354.i, i64 2147483647, i64 8421504
  %wide.trip.count548.i = zext i32 %.1335.lcssa.i to i64 ; 9 uses
  %xtraiter180 = and i64 %wide.trip.count548.i, 7 ; 3 uses
  %i.ey = icmp ult i32 %.1335.lcssa.i, 8
  %unroll_iter183 = and i64 %wide.trip.count548.i, 4294967288
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod182 = icmp ne i64 %xtraiter180, 0
  %xtraiter185 = and i64 %wide.trip.count548.i, 3 ; 3 uses
  %i.ez = icmp ult i32 %.1335.lcssa.i, 4
  %unroll_iter190 = and i64 %wide.trip.count548.i, 4294967292
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  %lcmp.mod189 = icmp ne i64 %xtraiter185, 0
  %xtraiter192 = and i64 %wide.trip.count548.i, 3 ; 3 uses
  %12 = add i32 %.1335.lcssa.i, -1
  %i.fa = icmp ult i32 %12, 3
  %unroll_iter197 = and i64 %wide.trip.count548.i, 4294967292
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bm, %bb.z
  %.not361486.i = phi i1 [ true, %bb.z ], [ %.1301.i, %bb.bm ]
  %.not360485.i = phi i1 [ %i.eq, %bb.z ], [ %.1303.i, %bb.bm ]
  %.0293484.i = phi i64 [ %1, %bb.z ], [ %.2.i, %bb.bm ] ; 4 uses
  %.0295483.i = phi i64 [ %1, %bb.z ], [ %.2297.i, %bb.bm ]
  %.0298482.i = phi i32 [ 0, %bb.z ], [ %i.lv, %bb.bm ] ; 3 uses
  %.0304481.i = phi i64 [ 0, %bb.z ], [ %.1305.i, %bb.bm ] ; 2 uses
  %.0306480.i = phi i64 [ 0, %bb.z ], [ %.1307.i, %bb.bm ] ; 2 uses
  %.1309478.i = phi i32 [ %spec.select384.i, %bb.z ], [ %.3311.i, %bb.bm ] ; 5 uses
  %.1313476.i = phi i32 [ %spec.select.i, %bb.z ], [ %.3315.i, %bb.bm ] ; 6 uses
  %.sroa.0123.0475.i = phi i64 [ %i.ee, %bb.z ], [ %.sroa.0123.1.i, %bb.bm ] ; 2 uses
  %.0316474.i = phi i64 [ -1, %bb.z ], [ %.3319.i, %bb.bm ] ; 4 uses
  %.0320473.i = phi i64 [ -1, %bb.z ], [ %.3323.i, %bb.bm ] ; 4 uses
  %.0336472.i = phi i32 [ 0, %bb.z ], [ %.9.i, %bb.bm ] ; 4 uses
  %i.fb = call i64 @TIME_clockSpan_ns(i64 %.sroa.0123.0475.i) #19
  %i.fc = icmp ugt i64 %i.fb, 70000000000
  br i1 %i.fc, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.critedge.i
  %i.fd = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.fe = icmp ugt i32 %i.fd, 1
  br i1 %i.fe, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite362.i = call i64 @fwrite(ptr nonnull @.str.26, i64 22, i64 1, ptr %i.ff) #18 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fg = call i32 @sleep(i32 noundef 10) #19     ; 0 uses
  %i.fh = call i64 @TIME_getTime() #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge.i
  %.sroa.0123.1.i = phi i64 [ %i.fh, %bb.ac ], [ %.sroa.0123.0475.i, %.critedge.i ]
  %i.fi = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.fj = icmp ugt i32 %i.fi, 1
  br i1 %i.fj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fl = zext nneg i32 %.0298482.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr @__const.BMK_benchMem.marks, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !20
  %i.fo = trunc i64 %.0293484.i to i32
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.27, ptr noundef %i.fn, ptr noundef %.0290.i, i32 noundef %i.fo) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not360485.i, label %bb.ag, label %.critedge387.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 -27, i64 %i.av, i1 false)
  br i1 %.not502.i, label %._crit_edge441.i, label %.lr.ph440.i.preheader

.lr.ph440.i.preheader:                            ; preds = %bb.ag
  br i1 %i.ey, label %.lr.ph440.i.epil.preheader, label %.lr.ph440.i

.lr.ph440.i:                                      ; preds = %.lr.ph440.i.preheader, %.lr.ph440.i
  %indvars.iv544.i = phi i64 [ %indvars.iv.next545.i.7, %.lr.ph440.i ], [ 0, %.lr.ph440.i.preheader ] ; 9 uses
  %niter184 = phi i64 [ %niter184.next.7, %.lr.ph440.i ], [ 0, %.lr.ph440.i.preheader ]
  %i.fq = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store i64 0, ptr %i.fr, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  store i64 0, ptr %i.ft, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  store i64 0, ptr %i.fv, align 8, !tbaa !64
  %i.fw = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 200
  store i64 0, ptr %i.fx, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  store i64 0, ptr %i.fz, align 8, !tbaa !64
  %i.ga = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 312
  store i64 0, ptr %i.gb, align 8, !tbaa !64
  %i.gc = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 368
  store i64 0, ptr %i.gd, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 424
  store i64 0, ptr %i.gf, align 8, !tbaa !64
  %indvars.iv.next545.i.7 = add nuw nsw i64 %indvars.iv544.i, 8 ; 2 uses
  %niter184.next.7 = add i64 %niter184, 8         ; 2 uses
  %niter184.ncmp.7 = icmp eq i64 %niter184.next.7, %unroll_iter183
  br i1 %niter184.ncmp.7, label %._crit_edge441.i.loopexit.unr-lcssa, label %.lr.ph440.i, !llvm.loop !41

._crit_edge441.i.loopexit.unr-lcssa:              ; preds = %.lr.ph440.i
  br i1 %lcmp.mod181.not, label %._crit_edge441.i, label %.lr.ph440.i.epil.preheader

.lr.ph440.i.epil.preheader:                       ; preds = %._crit_edge441.i.loopexit.unr-lcssa, %.lr.ph440.i.preheader
  %indvars.iv544.i.epil.init = phi i64 [ 0, %.lr.ph440.i.preheader ], [ %indvars.iv.next545.i.7, %._crit_edge441.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph440.i.epil

.lr.ph440.i.epil:                                 ; preds = %.lr.ph440.i.epil, %.lr.ph440.i.epil.preheader
  %indvars.iv544.i.epil = phi i64 [ %indvars.iv.next545.i.epil, %.lr.ph440.i.epil ], [ %indvars.iv544.i.epil.init, %.lr.ph440.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph440.i.epil ], [ 0, %.lr.ph440.i.epil.preheader ]
  %i.gg = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i.epil
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store i64 0, ptr %i.gh, align 8, !tbaa !64
  %indvars.iv.next545.i.epil = add nuw nsw i64 %indvars.iv544.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter180
  br i1 %epil.iter.cmp.not, label %._crit_edge441.i, label %.lr.ph440.i.epil, !llvm.loop !42

._crit_edge441.i:                                 ; preds = %._crit_edge441.i.loopexit.unr-lcssa, %.lr.ph440.i.epil, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 0, ptr %10, align 8, !tbaa !66
  store i64 1000000, ptr %i.x, align 8, !tbaa !67
  %i.gi = call i32 @nanosleep(ptr noundef nonnull %10, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @TIME_waitForNextTick() #19
  %i.gj = call i64 @TIME_getTime() #19
  %.not507.i = icmp eq i32 %.1313476.i, 0
  br i1 %.not507.i, label %._crit_edge452.i, label %.lr.ph451.i

.lr.ph451.i:                                      ; preds = %._crit_edge441.i
  br i1 %.not502.i, label %.lr.ph451.split.i, label %.lr.ph445.us.i

.lr.ph445.us.i:                                   ; preds = %.lr.ph451.i, %._crit_edge446.us.i
  %.0288449.us.i = phi i32 [ %i.hd, %._crit_edge446.us.i ], [ 0, %.lr.ph451.i ]
  %.1337448.us.i = phi i32 [ %.3339.us.i, %._crit_edge446.us.i ], [ %.0336472.i, %.lr.ph451.i ]
  %i.gk = load ptr, ptr %i.s, align 8, !tbaa !68
  call void %i.gk(ptr noundef nonnull %9) #19, !inline_history !37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph445.us.i
  %indvars.iv550.i = phi i64 [ 0, %.lr.ph445.us.i ], [ %indvars.iv.next551.i, %bb.aj ] ; 3 uses
  %.2338442.us.i = phi i32 [ %.1337448.us.i, %.lr.ph445.us.i ], [ %.3339.us.i, %bb.aj ]
  %i.gl = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.gm = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv550.i ; 5 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !60
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !62
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !63
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = call i32 %i.gl(ptr noundef nonnull %9, ptr noundef %i.gn, ptr noundef %i.gp, i32 noundef %i.gs, i32 noundef %i.gv) #19, !inline_history !37 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp eq i32 %i.gw, 0
  br i1 %i.gy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ha = trunc nuw i64 %indvars.iv550.i to i32
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gz, ptr noundef nonnull @.str.28, i32 noundef %i.ha) #17 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3339.us.i = phi i32 [ 1, %bb.ai ], [ %.2338442.us.i, %bb.ah ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i64 %i.gx, ptr %i.hc, align 8, !tbaa !64
  %indvars.iv.next551.i = add nuw nsw i64 %indvars.iv550.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next551.i, %wide.trip.count548.i
  br i1 %exitcond555.not.i, label %._crit_edge446.us.i, label %bb.ah, !llvm.loop !43

._crit_edge446.us.i:                              ; preds = %bb.aj
  %i.hd = add nuw i32 %.0288449.us.i, 1           ; 2 uses
  %exitcond556.not.i = icmp eq i32 %i.hd, %.1313476.i
  br i1 %exitcond556.not.i, label %._crit_edge452.i, label %.lr.ph445.us.i, !llvm.loop !44

.lr.ph451.split.i:                                ; preds = %.lr.ph451.i, %.lr.ph451.split.i
  %.0288449.i = phi i32 [ %i.hf, %.lr.ph451.split.i ], [ 0, %.lr.ph451.i ]
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !68
  call void %i.he(ptr noundef nonnull %9) #19, !inline_history !37
  %i.hf = add nuw i32 %.0288449.i, 1              ; 2 uses
  %exitcond557.not.i = icmp eq i32 %i.hf, %.1313476.i
  br i1 %exitcond557.not.i, label %._crit_edge452.i, label %.lr.ph451.split.i, !llvm.loop !44

._crit_edge452.i:                                 ; preds = %._crit_edge446.us.i, %.lr.ph451.split.i, %._crit_edge441.i
  %.1337.lcssa.i = phi i32 [ %.0336472.i, %._crit_edge441.i ], [ %.0336472.i, %.lr.ph451.split.i ], [ %.3339.us.i, %._crit_edge446.us.i ]
  %i.hg = call i64 @TIME_clockSpan_ns(i64 %i.gj) #19 ; 4 uses
  %.not363.i = icmp eq i64 %i.hg, 0
  br i1 %.not363.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge452.i
  %i.hh = zext i32 %.1313476.i to i64             ; 2 uses
  %i.hi = mul i64 %.0320473.i, %i.hh
  %i.hj = icmp ult i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hk = udiv i64 %i.hg, %i.hh
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1321.i = phi i64 [ %i.hk, %bb.al ], [ %.0320473.i, %bb.ak ] ; 2 uses
  %i.hl = udiv i64 1000000000, %.1321.i
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.hm, 1
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge452.i
  %i.ho = mul i32 %.1313476.i, 100
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2322.i = phi i64 [ %.1321.i, %bb.am ], [ %.0320473.i, %bb.an ] ; 2 uses
  %.2314.i = phi i32 [ %i.hn, %bb.am ], [ %i.ho, %bb.an ]
  %i.hp = add i64 %i.hg, %.0306480.i              ; 2 uses
  %i.hq = icmp ule i64 %i.hp, %i.ei
  br i1 %.not502.i, label %._crit_edge458.i, label %.lr.ph457.i.preheader

.lr.ph457.i.preheader:                            ; preds = %bb.ao
  br i1 %i.ez, label %.lr.ph457.i.epil.preheader, label %.lr.ph457.i

.lr.ph457.i:                                      ; preds = %.lr.ph457.i.preheader, %.lr.ph457.i
  %indvars.iv558.i = phi i64 [ %indvars.iv.next559.i.3, %.lr.ph457.i ], [ 0, %.lr.ph457.i.preheader ] ; 5 uses
  %.1296454.i = phi i64 [ %i.ig, %.lr.ph457.i ], [ 0, %.lr.ph457.i.preheader ]
  %niter191 = phi i64 [ %niter191.next.3, %.lr.ph457.i ], [ 0, %.lr.ph457.i.preheader ]
  %i.hr = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv558.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !64
  %i.hu = add i64 %i.ht, %.1296454.i
  %i.hv = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv558.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 88
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !64
  %i.hy = add i64 %i.hx, %i.hu
  %i.hz = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv558.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 144
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !64
  %i.ic = add i64 %i.ib, %i.hy
  %i.id = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv558.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 200
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !64
  %i.ig = add i64 %i.if, %i.ic                    ; 3 uses
  %indvars.iv.next559.i.3 = add nuw nsw i64 %indvars.iv558.i, 4 ; 2 uses
  %niter191.next.3 = add i64 %niter191, 4         ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %._crit_edge458.loopexit.i.unr-lcssa, label %.lr.ph457.i, !llvm.loop !45

._crit_edge458.loopexit.i.unr-lcssa:              ; preds = %.lr.ph457.i
  br i1 %lcmp.mod187.not, label %._crit_edge458.loopexit.i, label %.lr.ph457.i.epil.preheader

.lr.ph457.i.epil.preheader:                       ; preds = %._crit_edge458.loopexit.i.unr-lcssa, %.lr.ph457.i.preheader
  %indvars.iv558.i.epil.init = phi i64 [ 0, %.lr.ph457.i.preheader ], [ %indvars.iv.next559.i.3, %._crit_edge458.loopexit.i.unr-lcssa ]
  %.1296454.i.epil.init = phi i64 [ 0, %.lr.ph457.i.preheader ], [ %i.ig, %._crit_edge458.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph457.i.epil

.lr.ph457.i.epil:                                 ; preds = %.lr.ph457.i.epil, %.lr.ph457.i.epil.preheader
  %indvars.iv558.i.epil = phi i64 [ %indvars.iv.next559.i.epil, %.lr.ph457.i.epil ], [ %indvars.iv558.i.epil.init, %.lr.ph457.i.epil.preheader ] ; 2 uses
  %.1296454.i.epil = phi i64 [ %i.ik, %.lr.ph457.i.epil ], [ %.1296454.i.epil.init, %.lr.ph457.i.epil.preheader ]
  %epil.iter186 = phi i64 [ %epil.iter186.next, %.lr.ph457.i.epil ], [ 0, %.lr.ph457.i.epil.preheader ]
  %i.ih = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv558.i.epil
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !64
  %i.ik = add i64 %i.ij, %.1296454.i.epil         ; 2 uses
  %indvars.iv.next559.i.epil = add nuw nsw i64 %indvars.iv558.i.epil, 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %._crit_edge458.loopexit.i, label %.lr.ph457.i.epil, !llvm.loop !46

._crit_edge458.loopexit.i:                        ; preds = %.lr.ph457.i.epil, %._crit_edge458.loopexit.i.unr-lcssa
  %.lcssa158 = phi i64 [ %i.ig, %._crit_edge458.loopexit.i.unr-lcssa ], [ %i.ik, %.lr.ph457.i.epil ]
  %i.il = call i64 @llvm.umax.i64(i64 %.lcssa158, i64 1)
  br label %._crit_edge458.i

._crit_edge458.i:                                 ; preds = %._crit_edge458.loopexit.i, %bb.ao
  %.1296.lcssa.i = phi i64 [ 1, %bb.ao ], [ %i.il, %._crit_edge458.loopexit.i ] ; 3 uses
  %i.im = add nuw nsw i32 %.0298482.i, 1
  %i.in = and i32 %i.im, 3                        ; 2 uses
  %i.io = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.ip = icmp ugt i32 %i.io, 1
  br i1 %i.ip, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge458.i
  %i.iq = uitofp i64 %.0293484.i to double
  %i.ir = insertelement <2 x i64> poison, i64 %.1296.lcssa.i, i64 0
  %i.is = insertelement <2 x i64> %i.ir, i64 %.2322.i, i64 1
  %i.it = uitofp <2 x i64> %i.is to <2 x double>
  %i.iu = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.iv = zext nneg i32 %i.in to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @__const.BMK_benchMem.marks, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !20
  %i.iy = trunc i64 %.0293484.i to i32
  %i.iz = trunc i64 %.1296.lcssa.i to i32
  %i.ja = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = fdiv <2 x double> %i.jb, %i.it          ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 1
  %i.je = fmul double %i.jd, 1.000000e+03
  %i.jf = extractelement <2 x double> %i.jc, i64 0
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.29, ptr noundef %i.ix, ptr noundef %.0290.i, i32 noundef %i.iy, i32 noundef %i.iz, double noundef %i.jf, double noundef %i.je) #19 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge458.i
  %i.jh = call i32 @fflush(ptr noundef null)      ; 0 uses
  br label %bb.ar

.critedge387.i:                                   ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 0, ptr %10, align 8, !tbaa !66
  store i64 1000000, ptr %i.x, align 8, !tbaa !67
  %i.ji = call i32 @nanosleep(ptr noundef nonnull %10, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @TIME_waitForNextTick() #19
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge387.i, %bb.aq
  %.4340.i = phi i32 [ %.0336472.i, %.critedge387.i ], [ %.1337.lcssa.i, %bb.aq ] ; 3 uses
  %.3323.i = phi i64 [ %.0320473.i, %.critedge387.i ], [ %.2322.i, %bb.aq ] ; 3 uses
  %.3315.i = phi i32 [ %.1313476.i, %.critedge387.i ], [ %.2314.i, %bb.aq ]
  %.1307.i = phi i64 [ %.0306480.i, %.critedge387.i ], [ %i.hp, %bb.aq ]
  %.1303.i = phi i1 [ false, %.critedge387.i ], [ %i.hq, %bb.aq ] ; 2 uses
  %.1299.i = phi i32 [ %.0298482.i, %.critedge387.i ], [ %i.in, %bb.aq ]
  %.2297.i = phi i64 [ %.0295483.i, %.critedge387.i ], [ %.1296.lcssa.i, %bb.aq ] ; 4 uses
  br i1 %.not361486.i, label %bb.as, label %.critedge389.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 -42, i64 range(i64 0, 2113929217) %1, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 0, ptr %11, align 8, !tbaa !66
  store i64 5000000, ptr %i.y, align 8, !tbaa !67
  %i.jj = call i32 @nanosleep(ptr noundef nonnull %11, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @TIME_waitForNextTick() #19
  %i.jk = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not366.i = icmp eq i32 %i.jk, 0               ; 2 uses
  %i.jl = select i1 %.not366.i, ptr @LZ4_decompress_safe_usingDict, ptr @LZ4F_decompress_binding
  %i.jm = select i1 %.not366.i, ptr @.str.31, ptr @.str.30
  %i.jn = call i64 @TIME_getTime() #19
  %.not508.i = icmp eq i32 %.1309478.i, 0
  %brmerge622.i = or i1 %.not502.i, %.not508.i
  br i1 %brmerge622.i, label %._crit_edge464.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.as, %.thread402.us.i
  %.0285463.us.i = phi i32 [ %i.km, %.thread402.us.i ], [ 0, %bb.as ]
  %.5462.us.i = phi i32 [ %.8.us.i, %.thread402.us.i ], [ %.4340.i, %bb.as ]
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.preheader.us.i
  %indvars.iv564.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next565.i, %bb.au ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv564.i ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !62 ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.ex
  %i.js = mul i64 %i.jq, %i.ay
  %i.jt = trunc i64 %i.js to i32
  %i.ju = select i1 %i.jr, i32 %i.jt, i32 2147483647
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !60
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !61
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !64
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = call i32 %i.jl(ptr noundef %i.jw, ptr noundef %i.jy, i32 noundef %i.kb, i32 noundef %i.ju, ptr noundef %7, i32 noundef range(i32 0, 65537) %8) #19, !callees !69, !inline_history !37 ; 2 uses
  %i.kd = icmp slt i32 %i.kc, 0
  br i1 %i.kd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = zext nneg i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !70
  %indvars.iv.next565.i = add nuw nsw i64 %indvars.iv564.i, 1 ; 2 uses
  %exitcond569.not.i = icmp eq i64 %indvars.iv.next565.i, %wide.trip.count548.i
  br i1 %exitcond569.not.i, label %.thread402.us.i, label %bb.at, !llvm.loop !47

bb.av:                                            ; preds = %bb.at
  %i.kg = trunc nuw i64 %indvars.iv564.i to i32
  %i.kh = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ki = trunc i64 %i.jq to i32
  %i.kj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kh, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.jm, i32 noundef %i.kg, i32 noundef %i.ki) #17 ; 0 uses
  %i.kk = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not368.us.i = icmp eq i32 %i.kk, 0
  br i1 %.not368.us.i, label %.thread402.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite369.us.i = call i64 @fwrite(ptr nonnull @.str.33, i64 35, i64 1, ptr %i.kl) #18 ; 0 uses
  br label %.thread402.us.i

.thread402.us.i:                                  ; preds = %bb.au, %bb.aw, %bb.av
  %.8.us.i = phi i32 [ 1, %bb.av ], [ 1, %bb.aw ], [ %.5462.us.i, %bb.au ] ; 2 uses
  %i.km = add nuw i32 %.0285463.us.i, 1           ; 2 uses
  %exitcond570.not.i = icmp eq i32 %i.km, %.1309478.i
  br i1 %exitcond570.not.i, label %._crit_edge464.i, label %.preheader.us.i, !llvm.loop !48

._crit_edge464.i:                                 ; preds = %.thread402.us.i, %bb.as
  %.5.lcssa.i = phi i32 [ %.4340.i, %bb.as ], [ %.8.us.i, %.thread402.us.i ]
  %i.kn = call i64 @TIME_clockSpan_ns(i64 %i.jn) #19 ; 4 uses
  %.not367.i = icmp eq i64 %i.kn, 0
  br i1 %.not367.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge464.i
  %i.ko = zext i32 %.1309478.i to i64             ; 2 uses
  %i.kp = mul i64 %.0316474.i, %i.ko
  %i.kq = icmp ult i64 %i.kn, %i.kp
  br i1 %i.kq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kr = udiv i64 %i.kn, %i.ko
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1317.i = phi i64 [ %i.kr, %bb.ay ], [ %.0316474.i, %bb.ax ] ; 2 uses
  %i.ks = udiv i64 1000000000, %.1317.i
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = add nuw nsw i32 %i.kt, 1
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge464.i
  %i.kv = mul i32 %.1309478.i, 100
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2318.i = phi i64 [ %.1317.i, %bb.az ], [ %.0316474.i, %bb.ba ]
  %.2310.i = phi i32 [ %i.ku, %bb.az ], [ %i.kv, %bb.ba ]
  %i.kw = add i64 %i.kn, %.0304481.i              ; 2 uses
  %i.kx = icmp ule i64 %i.kw, %i.ei
  br label %bb.bc

.critedge389.i:                                   ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 0, ptr %11, align 8, !tbaa !66
  store i64 5000000, ptr %i.y, align 8, !tbaa !67
  %i.ky = call i32 @nanosleep(ptr noundef nonnull %11, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @TIME_waitForNextTick() #19
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge389.i, %bb.bb
  %.9.i = phi i32 [ %.4340.i, %.critedge389.i ], [ %.5.lcssa.i, %bb.bb ] ; 2 uses
  %.3319.i = phi i64 [ %.0316474.i, %.critedge389.i ], [ %.2318.i, %bb.bb ] ; 3 uses
  %.3311.i = phi i32 [ %.1309478.i, %.critedge389.i ], [ %.2310.i, %bb.bb ]
  %.1305.i = phi i64 [ %.0304481.i, %.critedge389.i ], [ %i.kw, %bb.bb ]
  %.1301.i = phi i1 [ false, %.critedge389.i ], [ %i.kx, %bb.bb ] ; 2 uses
  %i.kz = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not370.i = icmp eq i32 %i.kz, 0               ; 2 uses
  %brmerge.i = or i1 %.not502.i, %.not370.i
  %.0293484.mux.i = select i1 %.not370.i, i64 %.0293484.i, i64 0
  br i1 %brmerge.i, label %.loopexit.i, label %.lr.ph469.i.preheader

.lr.ph469.i.preheader:                            ; preds = %bb.bc
  br i1 %i.fa, label %.lr.ph469.i.epil.preheader, label %.lr.ph469.i

.lr.ph469.i:                                      ; preds = %.lr.ph469.i.preheader, %.lr.ph469.i
  %indvars.iv571.i = phi i64 [ %indvars.iv.next572.i.3, %.lr.ph469.i ], [ 0, %.lr.ph469.i.preheader ] ; 5 uses
  %.1294467.i = phi i64 [ %i.lp, %.lr.ph469.i ], [ 0, %.lr.ph469.i.preheader ]
  %niter198 = phi i64 [ %niter198.next.3, %.lr.ph469.i ], [ 0, %.lr.ph469.i.preheader ]
  %i.la = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv571.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !70
  %i.ld = add i64 %i.lc, %.1294467.i
  %i.le = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv571.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 104
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !70
  %i.lh = add i64 %i.lg, %i.ld
  %i.li = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv571.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 160
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !70
  %i.ll = add i64 %i.lk, %i.lh
  %i.lm = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv571.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 216
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !70
  %i.lp = add i64 %i.lo, %i.ll                    ; 3 uses
  %indvars.iv.next572.i.3 = add nuw nsw i64 %indvars.iv571.i, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph469.i, !llvm.loop !49

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph469.i
  br i1 %lcmp.mod194.not, label %.loopexit.i, label %.lr.ph469.i.epil.preheader

.lr.ph469.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph469.i.preheader
  %indvars.iv571.i.epil.init = phi i64 [ 0, %.lr.ph469.i.preheader ], [ %indvars.iv.next572.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %.1294467.i.epil.init = phi i64 [ 0, %.lr.ph469.i.preheader ], [ %i.lp, %.loopexit.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph469.i.epil

.lr.ph469.i.epil:                                 ; preds = %.lr.ph469.i.epil, %.lr.ph469.i.epil.preheader
  %indvars.iv571.i.epil = phi i64 [ %indvars.iv.next572.i.epil, %.lr.ph469.i.epil ], [ %indvars.iv571.i.epil.init, %.lr.ph469.i.epil.preheader ] ; 2 uses
  %.1294467.i.epil = phi i64 [ %i.lt, %.lr.ph469.i.epil ], [ %.1294467.i.epil.init, %.lr.ph469.i.epil.preheader ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph469.i.epil ], [ 0, %.lr.ph469.i.epil.preheader ]
  %i.lq = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv571.i.epil
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !70
  %i.lt = add i64 %i.ls, %.1294467.i.epil         ; 2 uses
  %indvars.iv.next572.i.epil = add nuw nsw i64 %indvars.iv571.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %.loopexit.i, label %.lr.ph469.i.epil, !llvm.loop !50

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph469.i.epil, %bb.bc
  %.2.i = phi i64 [ %.0293484.mux.i, %bb.bc ], [ %i.lp, %.loopexit.i.loopexit.unr-lcssa ], [ %i.lt, %.lr.ph469.i.epil ] ; 3 uses
  %i.lu = add nuw nsw i32 %.1299.i, 1
  %i.lv = and i32 %i.lu, 3                        ; 2 uses
  %i.lw = uitofp i64 %.2.i to double              ; 2 uses
  %i.lx = uitofp i64 %.2297.i to double
  %i.ly = fdiv double %i.lw, %i.lx                ; 2 uses
  %i.lz = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.ma = icmp ugt i32 %i.lz, 1
  br i1 %i.ma, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit.i
  %i.mb = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.mc = zext nneg i32 %i.lv to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr @__const.BMK_benchMem.marks, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !20
  %i.mf = trunc i64 %.2.i to i32
  %i.mg = trunc i64 %.2297.i to i32
  %i.mh = insertelement <2 x i64> poison, i64 %.3323.i, i64 0
  %i.mi = insertelement <2 x i64> %i.mh, i64 %.3319.i, i64 1
  %i.mj = uitofp <2 x i64> %i.mi to <2 x double>
  %i.mk = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = fdiv <2 x double> %i.ml, %i.mj
  %i.mn = fmul <2 x double> %i.mm, splat (double 1.000000e+03) ; 2 uses
  %i.mo = extractelement <2 x double> %i.mn, i64 0
  %i.mp = extractelement <2 x double> %i.mn, i64 1
  %i.mq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mb, ptr noundef nonnull @.str.34, ptr noundef %i.me, ptr noundef %.0290.i, i32 noundef %i.mf, i32 noundef %i.mg, double noundef %i.ly, double noundef %i.mo, double noundef %i.mp) #19 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.loopexit.i
  %i.mr = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.ms = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not371.i = icmp eq i32 %i.ms, 0
  br i1 %.not371.i, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.mt = call i64 @XXH64(ptr noundef nonnull %i.bd, i64 noundef range(i64 0, 2113929217) %1, i64 noundef 0) #19 ; 2 uses
  %.not372.i = icmp eq i64 %i.ed, %i.mt
  br i1 %.not372.i, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.mv = trunc i64 %i.ed to i32
  %i.mw = trunc i64 %i.mt to i32
  %i.mx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mu, ptr noundef nonnull @.str.35, ptr noundef %.0290.i, i32 noundef %i.mv, i32 noundef %i.mw) #17 ; 0 uses
  br i1 %.not.i, label %.thread406.i, label %.lr.ph489.i

.lr.ph489.i:                                      ; preds = %bb.bg, %bb.bl
  %.0281487.i = phi i64 [ %i.ns, %bb.bl ], [ 0, %bb.bg ] ; 7 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 %.0281487.i
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !71
  %i.na = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0281487.i
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !71
  %.not373.i = icmp eq i8 %i.mz, %i.nb
  br i1 %.not373.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph489.i
  %i.nc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.nd = trunc nuw nsw i64 %.0281487.i to i32
  %i.ne = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nc, ptr noundef nonnull @.str.36, i32 noundef %i.nd) #17 ; 0 uses
  br i1 %.not502.i, label %._crit_edge494.i, label %.lr.ph493.i

.lr.ph493.i:                                      ; preds = %bb.bh, %bb.bi
  %indvars.iv578.i = phi i64 [ %indvars.iv.next579.i, %bb.bi ], [ 0, %bb.bh ] ; 3 uses
  %.0491.i = phi i64 [ %i.ni, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv578.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !62
  %i.ni = add i64 %i.nh, %.0491.i                 ; 3 uses
  %i.nj = icmp ugt i64 %i.ni, %.0281487.i
  br i1 %i.nj, label %._crit_edge494.loopexit.split.loop.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph493.i
  %indvars.iv.next579.i = add nuw nsw i64 %indvars.iv578.i, 1 ; 2 uses
  %exitcond583.not.i = icmp eq i64 %indvars.iv.next579.i, %wide.trip.count548.i
  br i1 %exitcond583.not.i, label %._crit_edge494.i, label %.lr.ph493.i, !llvm.loop !51

._crit_edge494.loopexit.split.loop.exit.i:        ; preds = %.lr.ph493.i
  %i.nk = trunc nuw i64 %indvars.iv578.i to i32
  br label %._crit_edge494.i

._crit_edge494.i:                                 ; preds = %bb.bi, %._crit_edge494.loopexit.split.loop.exit.i, %bb.bh
  %.0280.lcssa.i = phi i32 [ 0, %bb.bh ], [ %i.nk, %._crit_edge494.loopexit.split.loop.exit.i ], [ %.1335.lcssa.i, %bb.bi ]
  %.0.lcssa.i = phi i64 [ 0, %bb.bh ], [ %.0491.i, %._crit_edge494.loopexit.split.loop.exit.i ], [ %i.ni, %bb.bi ]
  %i.nl = sub i64 %.0281487.i, %.0.lcssa.i
  %i.nm = trunc i64 %i.nl to i32                  ; 2 uses
  %i.nn = lshr i32 %i.nm, 17
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.no, ptr noundef nonnull @.str.37, i32 noundef %.0280.lcssa.i, i32 noundef %i.nn, i32 noundef %i.nm) #17 ; 0 uses
  br label %.thread406.i

bb.bj:                                            ; preds = %.lr.ph489.i
  %i.nq = icmp eq i64 %.0281487.i, %i.z
  br i1 %i.nq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nr = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite374.i = call i64 @fwrite(ptr nonnull @.str.38, i64 23, i64 1, ptr %i.nr) #18 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ns = add nuw nsw i64 %.0281487.i, 1          ; 2 uses
  %exitcond577.not.i = icmp eq i64 %i.ns, %1
  br i1 %exitcond577.not.i, label %.thread406.i, label %.lr.ph489.i, !llvm.loop !52

bb.bm:                                            ; preds = %bb.bf, %bb.be
  %or.cond385.i = select i1 %.1303.i, i1 true, i1 %.1301.i
  br i1 %or.cond385.i, label %.critedge.i, label %.thread406.i, !llvm.loop !53

.thread406.i:                                     ; preds = %bb.bm, %bb.bl, %._crit_edge494.i, %bb.bg
  %.12.i = phi i32 [ 1, %bb.bg ], [ 1, %._crit_edge494.i ], [ 1, %bb.bl ], [ %.9.i, %bb.bm ]
  %i.nt = load i32, ptr @g_displayLevel, align 4, !tbaa !9 ; 2 uses
  %i.nu = icmp ugt i32 %i.nt, 1
  br i1 %i.nu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.thread406.i
  %i.nv = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.nw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nv, ptr noundef nonnull @.str.39, i32 noundef %.02459) #19 ; 0 uses
  %.pr409.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.thread406.i
  %i.nx = phi i32 [ %.pr409.i, %bb.bn ], [ %i.nt, %.thread406.i ]
  %i.ny = icmp eq i32 %i.nx, 1
  br i1 %i.ny, label %bb.bp, label %BMK_benchMem.exit

bb.bp:                                            ; preds = %bb.bo
  %i.nz = insertelement <2 x i64> poison, i64 %.3323.i, i64 0
  %i.oa = insertelement <2 x i64> %i.nz, i64 %.3319.i, i64 1
  %i.ob = uitofp <2 x i64> %i.oa to <2 x double>
  %i.oc = fdiv <2 x double> %i.ac, %i.ob
  %i.od = fmul <2 x double> %i.oc, splat (double 1.000000e+03) ; 2 uses
  %i.oe = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.of = trunc i64 %.2297.i to i32
  %i.og = extractelement <2 x double> %i.od, i64 0
  %i.oh = extractelement <2 x double> %i.od, i64 1
  %i.oi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oe, ptr noundef nonnull @.str.40, i32 noundef %.02459, i32 noundef %i.of, double noundef %i.ly, double noundef %i.og, double noundef %i.oh, ptr noundef %.0290.i) #19 ; 0 uses
  %i.oj = load i32, ptr @g_additionalParam, align 4, !tbaa !9 ; 2 uses
  %.not375.i = icmp eq i32 %i.oj, 0
  br i1 %.not375.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ok = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ol = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ok, ptr noundef nonnull @.str.41, i32 noundef %i.oj) #19 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.om = load ptr, ptr @stdout, align 8, !tbaa !12
  %fputc377.i = call i32 @fputc(i32 10, ptr %i.om) ; 0 uses
  br label %BMK_benchMem.exit

BMK_benchMem.exit:                                ; preds = %bb.bo, %bb.br
  %i.on = load ptr, ptr %i.t, align 8, !tbaa !56
  call void %i.on(ptr noundef nonnull %9) #19, !inline_history !37
  call void @free(ptr noundef %i.aq) #19
  call void @free(ptr noundef %i.aw) #19
  call void @free(ptr noundef %i.bd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.oo = or i32 %.12.i, %.02360                  ; 2 uses
  %i.op = add i32 %.02459, 1
  %exitcond.not = icmp eq i32 %.02459, %spec.select32
  br i1 %exitcond.not, label %bb.bs, label %bb.f, !llvm.loop !54

bb.bs:                                            ; preds = %BMK_benchMem.exit
  ret i32 %i.oo
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @LZ4_compressBound(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i64 @LZ4F_createDecompressionContext(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i64 @XXH64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i64 @TIME_getTime() local_unnamed_addr #8

declare i64 @TIME_clockSpan_ns(i64) local_unnamed_addr #8

declare i32 @sleep(i32 noundef) local_unnamed_addr #8

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @TIME_waitForNextTick() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @LZ4F_decompress_binding(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, i32 %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.LZ4F_decompressOptions_t, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = sext i32 %3 to i64
  store i64 %i.c, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.d = sext i32 %2 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) @__const.LZ4F_decompress_binding.dOpt, i64 16, i1 false)
  %i.e = load i32, ptr @g_skipChecksums, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !73
  %i.g = load ptr, ptr @g_dctx, align 8, !tbaa !28
  %i.h = call i64 @LZ4F_decompress(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %6) #19
  %i.i = icmp eq i64 %i.h, 0
  %i.j = load i64, ptr %i.b, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp eq i32 %2, %i.k
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc i64 %i.m to i32
  %.0 = select i1 %or.cond, i32 %i.n, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

declare i32 @LZ4_decompress_safe_usingDict(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @LZ4_compressInitStream(ptr nofree noundef captures(none) initializes((24, 56)) %0) #3 {
bb.a:
  %i.a = tail call ptr @LZ4_createStream() #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !29
  %i.c = tail call ptr @LZ4_createStream() #19    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call i32 @LZ4_loadDictSlow(ptr noundef %i.c, ptr noundef %i.g, i32 noundef %i.i) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LZ4_compressResetStream(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @LZ4_resetStream_fast(ptr noundef %i.b) #19
end_hunk_0
