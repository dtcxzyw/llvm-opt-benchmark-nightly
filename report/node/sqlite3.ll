Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sessionChangesetApplyV23:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 76
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 124 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 88
  %.not132.i = icmp eq ptr %5, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 3 uses
  %.not141.i = icmp eq ptr %6, null
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 21 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 10 uses
  br label %bb.h

bb.h:                                             ; preds = %sqlite3Strlen30.exit.i, %.lr.ph250.i
  %i.br = phi ptr [ null, %.lr.ph250.i ], [ %i.yi, %sqlite3Strlen30.exit.i ] ; 7 uses
  %.097248.i = phi i32 [ 0, %.lr.ph250.i ], [ %.5.i, %sqlite3Strlen30.exit.i ] ; 5 uses
  %.0106247.i = phi i32 [ 0, %.lr.ph250.i ], [ %.6112.i, %sqlite3Strlen30.exit.i ] ; 3 uses
  %i.bs = call fastcc range(i32 1, 0) i32 @sessionChangesetNext(ptr noundef nonnull %i.i, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.bt = icmp eq i32 %i.bs, 100
  br i1 %i.bt, label %bb.i, label %bb.ew

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.ax, align 8, !tbaa !1591 ; 6 uses
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !1603 ; 5 uses
  %i.bw = icmp eq ptr %i.br, null
  %i.bx = icmp eq ptr %i.bv, null
  %or.cond238.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond238.i, label %sqlite3_strnicmp.exit.thread188.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %i.by = icmp sgt i32 %.097248.i, -1
  br i1 %i.by, label %.lr.ph.i.preheader.i, label %sqlite3_strnicmp.exit.thread.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader.i.i
  %i.bz = add nuw nsw i32 %.097248.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.preheader.i
  %.in.i.i = phi i32 [ %i.ca, %bb.k ], [ %i.bz, %.lr.ph.i.preheader.i ] ; 2 uses
  %.023.i.i = phi ptr [ %i.cl, %bb.k ], [ %i.br, %.lr.ph.i.preheader.i ] ; 3 uses
  %.01422.i.i = phi ptr [ %i.ck, %bb.k ], [ %i.bv, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ca = add nsw i32 %.in.i.i, -1
  %i.cb = load i8, ptr %.01422.i.i, align 1, !tbaa !741 ; 2 uses
  %.not.i148.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i148.i, label %sqlite3_strnicmp.exit.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !741 ; 2 uses
  %i.cf = load i8, ptr %.023.i.i, align 1, !tbaa !741
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !741 ; 2 uses
  %i.cj = icmp eq i8 %i.ce, %i.ci
  br i1 %i.cj, label %bb.k, label %split.i.i

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.01422.i.i, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 1
  %i.cm = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i, label %sqlite3_strnicmp.exit.thread.i, !llvm.loop !21

split.i.i:                                        ; preds = %bb.j
  %i.cn = zext i8 %i.ce to i32
  br label %sqlite3_strnicmp.exit.i

sqlite3_strnicmp.exit.loopexit.i:                 ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %.023.i.i, align 1, !tbaa !741
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert267.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre268.i = load i8, ptr %.phi.trans.insert267.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.i

sqlite3_strnicmp.exit.i:                          ; preds = %sqlite3_strnicmp.exit.loopexit.i, %split.i.i
  %i.co = phi i8 [ %i.ci, %split.i.i ], [ %.pre268.i, %sqlite3_strnicmp.exit.loopexit.i ]
  %i.cp = phi i32 [ %i.cn, %split.i.i ], [ 0, %sqlite3_strnicmp.exit.loopexit.i ]
  %i.cq = zext i8 %i.co to i32
  %.not.i16 = icmp eq i32 %i.cp, %i.cq
  br i1 %.not.i16, label %sqlite3_strnicmp.exit.thread.i, label %sqlite3_strnicmp.exit.thread188.i

sqlite3_strnicmp.exit.thread188.i:                ; preds = %sqlite3_strnicmp.exit.i, %bb.i
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !1600
  %i.cs = call fastcc i32 @sessionRetryConstraints(ptr noundef nonnull %0, i32 noundef %i.cr, ptr noundef %i.br, ptr noundef %14, ptr noundef readonly %7, ptr noundef %8) ; 2 uses
  %.not131.i = icmp eq i32 %i.cs, 0
  br i1 %.not131.i, label %bb.l, label %.thread218.i

bb.l:                                             ; preds = %sqlite3_strnicmp.exit.thread188.i
  call fastcc void @sessionUpdateFree(ptr noundef %14)
  %i.ct = load ptr, ptr %i.ba, align 8, !tbaa !1616 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %sqlite3_free.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i149.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i149.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.cx(ptr noundef nonnull %i.cw) #59, !inline_history !4190
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.o, %bb.n
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.cz = call i32 %i.cy(ptr noundef nonnull %i.ct) #59, !inline_history !4191
  %i.da = sext i32 %i.cz to i64
  %i.db = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.dc = sub nsw i64 %i.db, %i.da
  store i64 %i.dc, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.de = add nsw i64 %i.dd, -1
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.df(ptr noundef nonnull %i.ct) #59, !inline_history !4192
  %i.dg = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.dh(ptr noundef nonnull %i.dg) #59, !inline_history !4193
  br label %sqlite3_free.exit.i

bb.q:                                             ; preds = %bb.m
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.di(ptr noundef nonnull %i.ct) #59, !inline_history !4192
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.q, %bb.p, %sqlite3_mutex_enter.exit.i.i, %bb.l
  %i.dj = load ptr, ptr %i.bb, align 8, !tbaa !1617
  %i.dk = call i32 @sqlite3_finalize(ptr noundef %i.dj) ; 0 uses
  %i.dl = load ptr, ptr %i.bc, align 8, !tbaa !1618
  %i.dm = call i32 @sqlite3_finalize(ptr noundef %i.dl) ; 0 uses
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !1619
  %i.do = call i32 @sqlite3_finalize(ptr noundef %i.dn) ; 0 uses
  store ptr %0, ptr %14, align 8, !tbaa !1620
  store i32 0, ptr %i.bg, align 8, !tbaa !1621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bh, align 4, !tbaa !1622
  store i8 0, ptr %i.bi, align 8, !tbaa !1623
  store i32 0, ptr %i.bj, align 4, !tbaa !4213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br i1 %.not132.i, label %.thread191.i, label %bb.r

bb.r:                                             ; preds = %sqlite3_free.exit.i
  %i.dp = call i32 %5(ptr noundef %8, ptr noundef %i.bv) #59, !inline_history !4194
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.s, label %.thread191.i

bb.s:                                             ; preds = %bb.r
  %i.dr = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.30, ptr noundef %i.bv) ; 5 uses
  store ptr %i.dr, ptr %i.f, align 8, !tbaa !747
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.thread218.i, label %sqlite3_strnicmp.exit.thread.thread.i

sqlite3_strnicmp.exit.thread.thread.i:            ; preds = %bb.s
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dr) #60
  %i.du = trunc i64 %i.dt to i32
  store ptr %i.dr, ptr %i.ba, align 8, !tbaa !1616
  br label %sqlite3Strlen30.exit.i

.thread191.i:                                     ; preds = %bb.r, %sqlite3_free.exit.i
  %i.dv = load ptr, ptr %i.bl, align 8, !tbaa !1602
  %i.dw = call fastcc i32 @sessionTableInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.404, ptr noundef %i.bv, ptr noundef nonnull %i.be, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ba, ptr noundef null, ptr noundef null, ptr noundef %i.bf, ptr noundef nonnull %i.bj) ; 2 uses
  %.not133.i = icmp eq i32 %i.dw, 0
  br i1 %.not133.i, label %.preheader.i, label %.thread218.i

.preheader.i:                                     ; preds = %.thread191.i
  %i.dx = load i32, ptr %i.be, align 8, !tbaa !1624 ; 6 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dz = load ptr, ptr %i.bf, align 8, !tbaa !1625 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.dx to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi.a = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi346 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.phi346, splat (i32 4)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %wide.load = load <4 x i8>, ptr %i.ea, align 1, !tbaa !741
  %wide.load347 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !741
  %i.ec = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.ed = icmp eq <4 x i8> %wide.load347, zeroinitializer
  %i.ee = select <4 x i1> %i.ec, <4 x i32> %vec.phi, <4 x i32> %vec.phi346 ; 2 uses
  %i.ef = select <4 x i1> %i.ed, <4 x i32> %vec.phi.a, <4 x i32> %step.add ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.phi346, splat (i32 8)
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !4195

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ee, <4 x i32> %i.ef)
  %i.eh = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %.not = icmp eq i32 %i.eh, -2147483648
  %i.ei = select i1 %.not, i32 0, i32 %i.eh       ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.094244.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.094244.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.094244.i.ph, %scalar.ph.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !741
  %.not139.i = icmp eq i8 %i.ek, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.el = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select.i = select i1 %.not139.i, i32 %.094244.i, i32 %i.el ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !4196

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.t, label %._crit_edge.thread.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !747 ; 2 uses
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 17, ptr noundef nonnull @.str.2128, ptr noundef %i.en)
  br label %bb.er

._crit_edge.thread.i:                             ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  %.094.lcssa318.i = phi i32 [ 0, %._crit_edge.i ], [ %i.ei, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.eo = icmp slt i32 %i.dx, %i.bu
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.thread.i
  %i.ep = load ptr, ptr %i.f, align 8, !tbaa !747 ; 2 uses
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 17, ptr noundef nonnull @.str.2129, ptr noundef %i.ep, i32 noundef %i.dx, i32 noundef %i.bu)
  br label %bb.er

bb.v:                                             ; preds = %._crit_edge.thread.i
  %i.eq = icmp slt i32 %i.bu, %.094.lcssa318.i
  br i1 %i.eq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = load ptr, ptr %i.bf, align 8, !tbaa !1625 ; 2 uses
  %i.es = sext i32 %i.bu to i64
  %bcmp.i = call i32 @bcmp(ptr %i.er, ptr %i.dv, i64 %i.es)
  %.not134.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not134.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !747 ; 2 uses
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 17, ptr noundef nonnull @.str.2130, ptr noundef %i.et)
  br label %bb.er

bb.y:                                             ; preds = %bb.w
  store i32 %i.bu, ptr %i.be, align 8, !tbaa !1624
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !747 ; 6 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %sqlite3_stricmp.exit.thread193.i, label %.preheader.i150.i

.preheader.i150.i:                                ; preds = %bb.y, %bb.ab
  %.013.i.i.i = phi ptr [ %i.fg, %bb.ab ], [ %i.eu, %bb.y ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.fh, %bb.ab ], [ @.str.405, %bb.y ] ; 2 uses
  %i.ew = load i8, ptr %.013.i.i.i, align 1, !tbaa !741 ; 3 uses
  %i.ex = load i8, ptr %.012.i.i.i, align 1, !tbaa !741 ; 2 uses
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.i150.i
  %i.ez = icmp eq i8 %i.ew, 0
  br i1 %i.ez, label %sqlite3_stricmp.exit.thread.i, label %bb.ab

bb.aa:                                            ; preds = %.preheader.i150.i
  %i.fa = zext i8 %i.ew to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !741
  %i.fd = zext i8 %i.ex to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !741
  %.not.i.i151.i = icmp eq i8 %i.fc, %i.ff
  br i1 %.not.i.i151.i, label %bb.ab, label %sqlite3_stricmp.exit.thread193.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %.preheader.i150.i

sqlite3_stricmp.exit.thread.i:                    ; preds = %bb.z
  %i.fi = call fastcc i32 @sessionStat1Sql(ptr noundef nonnull %0, ptr noundef %14) ; 2 uses
  %.not138.i = icmp eq i32 %i.fi, 0
  br i1 %.not138.i, label %thread-pre-split.i, label %.thread218.i

sqlite3_stricmp.exit.thread193.i:                 ; preds = %bb.aa, %bb.y
  %i.fj = load i8, ptr %i.aq, align 2, !tbaa !1615
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load ptr, ptr %i.ba, align 8, !tbaa !1616
  %i.fm = call fastcc i32 @sessionSelectStmt(ptr noundef nonnull %0, i32 noundef %i.fk, ptr noundef nonnull @.str.404, ptr noundef %i.eu, i32 noundef %i.bu, ptr noundef %i.fl, ptr noundef %i.er, ptr noundef %i.bd, ptr noundef nonnull %i.bm) ; 2 uses
  %.not135.i = icmp eq i32 %i.fm, 0
  br i1 %.not135.i, label %bb.ac, label %.thread218.i

bb.ac:                                            ; preds = %sqlite3_stricmp.exit.thread193.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 0, ptr %i.d, align 4, !tbaa !576
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.fn = call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i.i26 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i26, label %sqlite3_realloc64.exit.i.i.i63, label %sqlite3_realloc64.exit.thread.i.i.i27

sqlite3_realloc64.exit.i.i.i63:                   ; preds = %bb.ac
  %i.fo = call fastcc ptr @sqlite3Malloc(i64 noundef 256) ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %sqlite3_realloc64.exit.thread.i.i.i27, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i64

sqlite3_realloc64.exit.thread.i.i.i27:            ; preds = %sqlite3_realloc64.exit.i.i.i63, %bb.ac
  store i32 7, ptr %i.d, align 4, !tbaa !576
  br label %sessionAppendStr.exit.i28

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i64: ; preds = %sqlite3_realloc64.exit.i.i.i63
  store ptr %i.fo, ptr %12, align 8, !tbaa !1574
  store i32 256, ptr %i.bo, align 4, !tbaa !1573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.fo, ptr noundef nonnull align 1 dereferenceable(17) @.str.2136, i64 17, i1 false)
  store i32 17, ptr %i.bn, align 8, !tbaa !1570
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 17
  store i8 0, ptr %i.fq, align 1, !tbaa !741
  br label %sessionAppendStr.exit.i28

sessionAppendStr.exit.i28:                        ; preds = %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i.i64, %sqlite3_realloc64.exit.thread.i.i.i27
  call fastcc void @sessionAppendIdent(ptr noundef %12, ptr noundef readonly %i.eu, ptr noundef %i.d)
  %i.fr = load i32, ptr %i.bn, align 8, !tbaa !1570 ; 6 uses
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = add nsw i64 %i.fs, 8                    ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !576 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ad, label %sessionAppendStr.exit49.i29

bb.ad:                                            ; preds = %sessionAppendStr.exit.i28
  %i.fw = load i32, ptr %i.bo, align 4, !tbaa !1573 ; 2 uses
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = icmp sgt i64 %i.ft, %i.fx
  br i1 %i.fy, label %bb.ae, label %.sessionBufferGrow.exit.thread12_crit_edge.i31.i51

.sessionBufferGrow.exit.thread12_crit_edge.i31.i51: ; preds = %bb.ad
  %.pre.i32.i52 = load ptr, ptr %12, align 8, !tbaa !1574
  br label %sessionBufferGrow.exit.thread12.i33.i53

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i35.i54 = icmp eq i32 %i.fw, 0
  %spec.select.i.i36.i55 = select i1 %.not.i.i35.i54, i64 128, i64 %i.fx
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.024.i.i37.i56 = phi i64 [ %spec.select.i.i36.i55, %bb.ae ], [ %i.fz, %bb.af ] ; 2 uses
  %i.fz = shl nsw i64 %.024.i.i37.i56, 1          ; 3 uses
  %i.ga = icmp slt i64 %i.fz, %i.ft
  br i1 %i.ga, label %bb.af, label %bb.ag, !llvm.loop !125

bb.ag:                                            ; preds = %bb.af
  %i.gb = icmp sgt i64 %.024.i.i37.i56, 1073741695
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gc = icmp sgt i32 %i.fr, 2147483383
  br i1 %i.gc, label %.critedge.i.i48.i62, label %bb.ai

.critedge.i.i48.i62:                              ; preds = %bb.ah
  store i32 7, ptr %i.d, align 4, !tbaa !576
  br label %sessionAppendStr.exit49.i29

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.i.i38.i57 = phi i64 [ 2147483391, %bb.ah ], [ %i.fz, %bb.ag ] ; 2 uses
  %i.gd = load ptr, ptr %12, align 8, !tbaa !1574
  %i.ge = call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i.i.i39.i58 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i39.i58, label %sqlite3_realloc64.exit.i.i41.i60, label %sqlite3_realloc64.exit.thread.i.i40.i59

sqlite3_realloc64.exit.i.i41.i60:                 ; preds = %bb.ai
  %i.gf = call fastcc ptr @sqlite3Realloc(ptr noundef %i.gd, i64 noundef %.1.i.i38.i57), !inline_history !1272 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %sqlite3_realloc64.exit.thread.i.i40.i59, label %sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i45.i61

sqlite3_realloc64.exit.thread.i.i40.i59:          ; preds = %sqlite3_realloc64.exit.i.i41.i60, %bb.ai
  store i32 7, ptr %i.d, align 4, !tbaa !576
  br label %sessionAppendStr.exit49.i29

sessionBufferGrow.exit.sessionBufferGrow.exit.thread12_crit_edge.i45.i61: ; preds = %sqlite3_realloc64.exit.i.i41.i60
  store ptr %i.gf, ptr %12, align 8, !tbaa !1574
  %i.gh = trunc nsw i64 %.1.i.i38.i57 to i32
  store i32 %i.gh, ptr %i.bo, align 4, !tbaa !1573
  br label %sessionBufferGrow.exit.thread12.i33.i53

end_hunk_0
