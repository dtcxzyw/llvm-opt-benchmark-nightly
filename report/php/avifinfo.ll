Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/avifinfo?download=true
inline.NumInlined: 68
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@AvifInfoGetFeaturesStream:bb.a
    i32 1886548073, label %bb.q
    i32 1717924457, label %bb.by
    i32 1718511977, label %bb.cq
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.n, align 4, !tbaa !28
  %i.au = icmp eq i32 %i.at, 0                    ; 2 uses
  %i.av = select i1 %i.au, i32 2, i32 4           ; 4 uses
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %.not87.i.i = icmp ugt i32 %i.av, %.076.i.i
  br i1 %.not87.i.i, label %ParseFile.exit.thread17.thread.thread70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.ay = load ptr, ptr %10, align 8, !tbaa !20   ; 4 uses
  %i.az = zext nneg i32 %i.av to i64              ; 4 uses
  %i.ba = tail call ptr %i.ax(ptr noundef %i.ay, i64 noundef %i.az) #8, !inline_history !56 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %ParseFile.exit.thread17.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add i64 %i.aw, %i.az                    ; 2 uses
  store i64 %i.bb, ptr %i.f, align 8, !tbaa !23
  %xtraiter1313 = and i64 %i.az, 2                ; 2 uses
  br i1 %i.au, label %.epil.preheader1312, label %.new1311

.new1311:                                         ; preds = %bb.k
  %unroll_iter1319 = and i64 %i.az, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new1311
  %indvars.iv.i.i.i = phi i64 [ 0, %.new1311 ], [ %indvars.iv.next.i.i.i.3, %bb.l ] ; 5 uses
  %niter1320 = phi i64 [ 0, %.new1311 ], [ %niter1320.next.3, %bb.l ]
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter1320.next.3 = add i64 %niter1320, 4       ; 2 uses
  %niter1320.ncmp.3 = icmp eq i64 %niter1320.next.3, %unroll_iter1319
  br i1 %niter1320.ncmp.3, label %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa, label %bb.l, !llvm.loop !57

AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa: ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bl, %i.bp
  %i.br = shl nuw i32 %i.bq, 8                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.br, %i.bv
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  br i1 %lcmp.mod1315.not, label %AvifInfoInternalReadBigEndian.exit.i.i, label %.epil.preheader1312

.epil.preheader1312:                              ; preds = %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa, %bb.k
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.i.3, %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa ]
  %.067.i.i.i.epil.init = phi i32 [ 0, %bb.k ], [ %i.bw, %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa ]
  %lcmp.mod1318 = icmp ne i64 %xtraiter1313, 0
  tail call void @llvm.assume(i1 %lcmp.mod1318)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader1312
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader1312 ], [ %indvars.iv.next.i.i.i.epil, %bb.m ] ; 2 uses
  %.067.i.i.i.epil = phi i32 [ %.067.i.i.i.epil.init, %.epil.preheader1312 ], [ %i.cb, %bb.m ]
  %epil.iter1314 = phi i64 [ 0, %.epil.preheader1312 ], [ %epil.iter1314.next, %bb.m ]
  %i.bx = shl i32 %.067.i.i.i.epil, 8             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i.i.i.epil
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29  ; 2 uses
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bx, %i.ca
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter1314.next = add i64 %epil.iter1314, 1 ; 2 uses
  %epil.iter1314.cmp.not = icmp eq i64 %epil.iter1314.next, 2
  br i1 %epil.iter1314.cmp.not, label %AvifInfoInternalReadBigEndian.exit.i.i, label %bb.m, !llvm.loop !58

AvifInfoInternalReadBigEndian.exit.i.i:           ; preds = %bb.m, %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa
  %.lcssa1250 = phi i32 [ %i.br, %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa ], [ %i.bx, %bb.m ]
  %.lcssa1249 = phi i8 [ %i.bu, %AvifInfoInternalReadBigEndian.exit.i.i.unr-lcssa ], [ %i.bz, %bb.m ]
  %i.cc = icmp eq i32 %.lcssa1250, 0
  br i1 %i.cc, label %bb.n, label %.thread53

.thread53:                                        ; preds = %AvifInfoInternalReadBigEndian.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.thread60

bb.n:                                             ; preds = %AvifInfoInternalReadBigEndian.exit.i.i
  store i8 1, ptr %11, align 8, !tbaa !32
  store i8 %.lcssa1249, ptr %i.ao, align 1, !tbaa !33
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !88
  %i.cd = trunc nuw nsw i32 %i.av to i8
  store i8 %i.cd, ptr %i.aq, align 8, !tbaa !89
  %i.ce = load i32, ptr %i.m, align 4, !tbaa !26
  %i.cf = sub i32 %i.ce, %i.av                    ; 5 uses
  %.not.i100.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i100.i.i, label %.thread173.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.preheader.i.i.i, label %.thread173.sink.split.sink.split.i.i

.preheader.i.i.i:                                 ; preds = %bb.o
  %i.ci = icmp ugt i32 %i.cf, 64
  br i1 %i.ci, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %.promoted1528 = load i64, ptr %i.f, align 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.p
  %i.cj = phi i64 [ %i.cm, %bb.p ], [ %.promoted1528, %.lr.ph.i.i.i.preheader ]
  %i.ck = phi i64 [ %i.cm, %bb.p ], [ %i.bb, %.lr.ph.i.i.i.preheader ]
  %.01527.i.i.i = phi i32 [ %i.cn, %bb.p ], [ %i.cf, %.lr.ph.i.i.i.preheader ]
  %i.cl = tail call ptr %i.ax(ptr noundef %i.ay, i64 noundef 64) #8, !inline_history !59
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %ParseFile.exit.thread17.thread.thread.loopexit1061, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = add i64 %i.ck, 64                       ; 3 uses
  %i.cn = add i32 %.01527.i.i.i, -64              ; 3 uses
  %i.co = icmp ugt i32 %i.cn, 64
  br i1 %i.co, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i.loopexit, !llvm.loop !0

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.p
  store i64 %i.cm, ptr %i.f, align 1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %.preheader.i.i.i
  %.015.lcssa.i.i.i = phi i32 [ %i.cf, %.preheader.i.i.i ], [ %i.cn, %._crit_edge.i.i.i.loopexit ]
  %i.cp = zext nneg i32 %.015.lcssa.i.i.i to i64  ; 2 uses
  %i.cq = tail call ptr %i.ax(ptr noundef %i.ay, i64 noundef %i.cp) #8, !inline_history !59
  %.not.i20.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i20.i.i.i, label %ParseFile.exit.thread17.thread.thread, label %.thread173.sink.split.i.i

bb.q:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.m, align 4, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %ParseIpco.exit.thread.i.i.i, %bb.q
  %.0113.i.i.i = phi i32 [ %i.cr, %bb.q ], [ %i.ph, %ParseIpco.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.cs = call fastcc i32 @AvifInfoInternalParseBox(i32 noundef 2, ptr noundef nonnull %10, i32 noundef %.0113.i.i.i, ptr noundef nonnull %i.a, ptr noundef %7) ; 3 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %ParseIprp.exit.i.i

bb.s:                                             ; preds = %bb.r
  %lhsv.i.i.i = load i32, ptr %i.aa, align 4
  %i.cu = load i32, ptr %i.ab, align 4, !tbaa !26 ; 10 uses
  switch i32 %lhsv.i.i.i, label %bb.bv [
    i32 1868787817, label %.preheader.i.i.preheader
    i32 1634562153, label %bb.bf
  ]

.preheader.i.i.preheader:                         ; preds = %bb.s
  %.promoted246 = load i8, ptr %i.ai, align 1
  %.promoted255 = load i8, ptr %i.s, align 8
  %.promoted264 = load i8, ptr %i.aj, align 2
  %.promoted273 = load i8, ptr %i.am, align 2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.thread329.i.i.i.i
  %i.cv = phi i8 [ %i.kk, %.thread329.i.i.i.i ], [ %.promoted273, %.preheader.i.i.preheader ] ; 17 uses
  %i.cw = phi i8 [ %i.kl, %.thread329.i.i.i.i ], [ %.promoted264, %.preheader.i.i.preheader ] ; 18 uses
  %i.cx = phi i8 [ %i.km, %.thread329.i.i.i.i ], [ %.promoted255, %.preheader.i.i.preheader ] ; 12 uses
  %i.cy = phi i8 [ %i.kn, %.thread329.i.i.i.i ], [ %.promoted246, %.preheader.i.i.preheader ] ; 18 uses
  %.0202.i.i.i.i = phi i32 [ %i.kq, %.thread329.i.i.i.i ], [ %i.cu, %.preheader.i.i.preheader ] ; 2 uses
  %.0174.i.i.i.i = phi i32 [ %i.ko, %.thread329.i.i.i.i ], [ 1, %.preheader.i.i.preheader ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.cz = call fastcc i32 @AvifInfoInternalParseBox(i32 noundef 3, ptr noundef nonnull %10, i32 noundef %.0202.i.i.i.i, ptr noundef nonnull %i.a, ptr noundef %6) ; 3 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.t, label %ParseIpco.exit.i.i.i

bb.t:                                             ; preds = %.preheader.i.i
  %lhsv.i.i.i.i = load i32, ptr %i.ag, align 4
  %i.db = load i32, ptr %i.ah, align 4, !tbaa !26 ; 15 uses
  switch i32 %lhsv.i.i.i.i, label %bb.bc [
    i32 1701868393, label %bb.u
    i32 1769498992, label %bb.ab
    i32 1127315041, label %bb.al
    i32 1131967841, label %bb.as
  ]

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp ugt i32 %i.db, 7
  br i1 %i.dc, label %bb.v, label %ParseIpco.exit.thread197.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  %i.de = load ptr, ptr %10, align 8, !tbaa !20   ; 4 uses
  %i.df = tail call ptr %i.dd(ptr noundef %i.de, i64 noundef 8) #8, !inline_history !60 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %AvifInfoInternalReadBigEndian.exit.i.i.i.i

AvifInfoInternalReadBigEndian.exit.i.i.i.i:       ; preds = %bb.v
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, 8                        ; 2 uses
  store i64 %i.dh, ptr %i.f, align 8, !tbaa !23
  %12 = load i16, ptr %i.df, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = zext i16 %13 to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %15 = load i16, ptr %i.dm, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %i.dn = zext i16 %16 to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw i32 %i.dn, 16
  %i.ds = shl nuw nsw i32 %i.dq, 8
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 7
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !29
  %i.dw = zext i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.dt, %i.dw            ; 2 uses
  %i.dy = zext i8 %i.dj to i32
  %i.dz = shl nuw i32 %14, 16
  %i.ea = shl nuw nsw i32 %i.dy, 8
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = zext i8 %i.dl to i32
  %i.ed = or disjoint i32 %i.eb, %i.ec            ; 2 uses
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = icmp ne i32 %i.dx, 0
  %or.cond.i.i.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.w, label %ParseIpco.exit.thread197.i.i.i

bb.w:                                             ; preds = %AvifInfoInternalReadBigEndian.exit.i.i.i.i
  %i.eg = icmp ult i8 %i.cv, 8
  %i.eh = icmp ult i32 %.0174.i.i.i.i, 256
  %or.cond23.i.i.i.i = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond23.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ei = trunc nuw i32 %.0174.i.i.i.i to i8
  %i.ej = zext nneg i8 %i.cv to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.ej ; 3 uses
  store i8 %i.ei, ptr %i.ek, align 4, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.ed, ptr %i.el, align 4, !tbaa !90
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.dx, ptr %i.em, align 4, !tbaa !91
  %i.en = add nuw nsw i8 %i.cv, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.eo = phi i8 [ %i.en, %bb.x ], [ %i.cv, %bb.w ] ; 3 uses
  %i.ep = phi i8 [ %i.cx, %bb.x ], [ 1, %bb.w ]   ; 3 uses
  %i.eq = add i32 %i.db, -8                       ; 5 uses
  %.not.i246.i.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i246.i.i.i.i, label %.thread329.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.preheader.i.i.i.i.i, label %.thread329.i.sink.split.sink.split.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.z
  %i.et = icmp ugt i32 %i.eq, 64
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i.i
  %.promoted1519 = load i64, ptr %i.f, align 1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.aa
  %i.eu = phi i64 [ %i.ex, %bb.aa ], [ %.promoted1519, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ev = phi i64 [ %i.ex, %bb.aa ], [ %i.dh, %.lr.ph.i.i.i.i.i.preheader ]
  %.01527.i.i.i.i.i = phi i32 [ %i.ey, %bb.aa ], [ %i.eq, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ew = tail call ptr %i.dd(ptr noundef %i.de, i64 noundef 64) #8, !inline_history !61
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i.loopexit1051, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ex = add i64 %i.ev, 64                       ; 3 uses
  %i.ey = add i32 %.01527.i.i.i.i.i, -64          ; 3 uses
  %i.ez = icmp ugt i32 %i.ey, 64
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.loopexit, !llvm.loop !0

._crit_edge.i.i.i.i.i.loopexit:                   ; preds = %bb.aa
  store i64 %i.ex, ptr %i.f, align 1
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.loopexit, %.preheader.i.i.i.i.i
  %.015.lcssa.i.i.i.i.i = phi i32 [ %i.eq, %.preheader.i.i.i.i.i ], [ %i.ey, %._crit_edge.i.i.i.i.i.loopexit ]
  %i.fa = zext nneg i32 %.015.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.fb = tail call ptr %i.dd(ptr noundef %i.de, i64 noundef %i.fa) #8, !inline_history !61
  %.not.i20.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i20.i.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %.thread329.i.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.t
  %.not224.i.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not224.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !21  ; 6 uses
  %i.fd = load ptr, ptr %10, align 8, !tbaa !20   ; 7 uses
  %i.fe = tail call ptr %i.fc(ptr noundef %i.fd, i64 noundef 1) #8, !inline_history !60 ; 2 uses
  %.not.i247.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i247.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %AvifInfoInternalReadBigEndian.exit254.i.i.i.i

AvifInfoInternalReadBigEndian.exit254.i.i.i.i:    ; preds = %bb.ac
  %i.ff = load i64, ptr %i.f, align 8, !tbaa !23
  %i.fg = load i8, ptr %i.fe, align 1, !tbaa !29  ; 4 uses
  %i.fh = zext i8 %i.fg to i32                    ; 3 uses
  %.not225.i.i.i.i = icmp eq i8 %i.fg, 0
  br i1 %.not225.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %AvifInfoInternalReadBigEndian.exit254.i.i.i.i
  %.neg.i.i.i.i = xor i32 %i.fh, -1
  %.not226.not.i.i.i.i = icmp ugt i32 %i.db, %i.fh
  br i1 %.not226.not.i.i.i.i, label %bb.ae, label %ParseIpco.exit.thread197.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fi = tail call ptr %i.fc(ptr noundef %i.fd, i64 noundef 1) #8, !inline_history !60 ; 2 uses
  %.not.i255.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i255.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %AvifInfoInternalReadBigEndian.exit262.i.i.i.i

AvifInfoInternalReadBigEndian.exit262.i.i.i.i:    ; preds = %bb.ae
  %i.fj = add i64 %i.ff, 2                        ; 3 uses
  store i64 %i.fj, ptr %i.f, align 8, !tbaa !23
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !29  ; 3 uses
  %.not227.i.i.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not227.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %AvifInfoInternalReadBigEndian.exit262.i.i.i.i
  %.not228405.not.i.i.i.i = icmp eq i8 %i.fg, 1
  br i1 %.not228405.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader.i.i.i.i
  %.promoted814 = load i64, ptr %i.f, align 8
  %i.fl = tail call ptr %i.fc(ptr noundef %i.fd, i64 noundef 1) #8, !inline_history !60 ; 2 uses
  %.not.i263.i.i.i.i1039 = icmp eq ptr %i.fl, null
  br i1 %.not.i263.i.i.i.i1039, label %ParseIpco.exit.thread197.i.i.i.sink.split, label %AvifInfoInternalReadBigEndian.exit270.i.i.i.i

bb.af:                                            ; preds = %bb.ag
  %i.fm = add nuw nsw i32 %.0168406.i.i.i.i1040, 1 ; 2 uses
  %exitcond425.not.i.i.i.i = icmp eq i32 %i.fm, %i.fh
  br i1 %exitcond425.not.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !62

.lr.ph.i.i.i.i:                                   ; preds = %bb.af
  %i.fn = tail call ptr %i.fc(ptr noundef %i.fd, i64 noundef 1) #8, !inline_history !60 ; 2 uses
  %.not.i263.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i263.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i.sink.split, label %AvifInfoInternalReadBigEndian.exit270.i.i.i.i, !llvm.loop !62

AvifInfoInternalReadBigEndian.exit270.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.fo = phi ptr [ %i.fn, %.lr.ph.i.i.i.i ], [ %i.fl, %.lr.ph.i.i.i.i.preheader ]
  %.0168406.i.i.i.i1040 = phi i32 [ %i.fm, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.fp = phi i64 [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.fj, %.lr.ph.i.i.i.i.preheader ]
  %i.fq = add i64 %i.fp, 1                        ; 6 uses
  %i.fr = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fs = icmp eq i8 %i.fr, %i.fk
  br i1 %i.fs, label %bb.ag, label %ParseIpco.exit.thread197.i.i.i.sink.split

bb.ag:                                            ; preds = %AvifInfoInternalReadBigEndian.exit270.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i32 %.0168406.i.i.i.i1040, 33
  br i1 %exitcond.not.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i.sink.split, label %bb.af

._crit_edge.i.i.i.i.loopexit:                     ; preds = %bb.af
  store i64 %i.fq, ptr %i.f, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit, %.preheader.i.i.i.i
  %.promoted243 = phi i64 [ %i.fj, %.preheader.i.i.i.i ], [ %i.fq, %._crit_edge.i.i.i.i.loopexit ]
  %i.ft = load i8, ptr %i.ak, align 8, !tbaa !36  ; 3 uses
  %i.fu = icmp ult i8 %i.ft, 8
  %i.fv = icmp ult i32 %.0174.i.i.i.i, 256
  %or.cond29.i.i.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond29.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fw = trunc nuw i32 %.0174.i.i.i.i to i8
  %i.fx = zext nneg i8 %i.ft to i64
  %i.fy = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.fx ; 3 uses
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !38
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 %i.fk, ptr %i.fz, align 1, !tbaa !39
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i8 %i.fg, ptr %i.ga, align 1, !tbaa !40
  %i.gb = add nuw nsw i8 %i.ft, 1
  store i8 %i.gb, ptr %i.ak, align 8, !tbaa !36
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ah
  %i.gc = phi i8 [ %i.cx, %bb.ah ], [ 1, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.gd = add i32 %i.db, %.neg.i.i.i.i            ; 5 uses
  %.not.i179.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i179.i.i.i, label %.thread329.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %.preheader.i183.i.i.i, label %.thread329.i.sink.split.sink.split.i.i.i

.preheader.i183.i.i.i:                            ; preds = %bb.aj
  %i.gg = icmp ugt i32 %i.gd, 64
  br i1 %i.gg, label %.lr.ph.i187.i.i.i.preheader, label %._crit_edge.i184.i.i.i

.lr.ph.i187.i.i.i.preheader:                      ; preds = %.preheader.i183.i.i.i
  %.promoted1516 = load i64, ptr %i.f, align 1
  br label %.lr.ph.i187.i.i.i

.lr.ph.i187.i.i.i:                                ; preds = %.lr.ph.i187.i.i.i.preheader, %bb.ak
  %i.gh = phi i64 [ %i.gk, %bb.ak ], [ %.promoted1516, %.lr.ph.i187.i.i.i.preheader ]
  %i.gi = phi i64 [ %i.gk, %bb.ak ], [ %.promoted243, %.lr.ph.i187.i.i.i.preheader ]
  %.01527.i188.i.i.i = phi i32 [ %i.gl, %bb.ak ], [ %i.gd, %.lr.ph.i187.i.i.i.preheader ]
  %i.gj = tail call ptr %i.fc(ptr noundef %i.fd, i64 noundef 64) #8, !inline_history !63
  %.not.i.i189.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i189.i.i.i, label %ParseIpco.exit.thread197.i.i.i.loopexit1052, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i187.i.i.i
  %i.gk = add i64 %i.gi, 64                       ; 3 uses
  %i.gl = add i32 %.01527.i188.i.i.i, -64         ; 3 uses
  %i.gm = icmp ugt i32 %i.gl, 64
  br i1 %i.gm, label %.lr.ph.i187.i.i.i, label %._crit_edge.i184.i.i.i.loopexit, !llvm.loop !0

._crit_edge.i184.i.i.i.loopexit:                  ; preds = %bb.ak
  store i64 %i.gk, ptr %i.f, align 1
  br label %._crit_edge.i184.i.i.i

._crit_edge.i184.i.i.i:                           ; preds = %._crit_edge.i184.i.i.i.loopexit, %.preheader.i183.i.i.i
  %.015.lcssa.i185.i.i.i = phi i32 [ %i.gd, %.preheader.i183.i.i.i ], [ %i.gl, %._crit_edge.i184.i.i.i.loopexit ]
end_hunk_0
begin_hunk_1_@AvifInfoGetFeaturesStream:bb.a
bb.aw:                                            ; preds = %bb.au
  %i.il = icmp ugt i32 %i.db, 43
  br i1 %i.il, label %bb.ax, label %.thread367.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.im = load i128, ptr %i.ie, align 1
  %i.in = xor i128 %i.im, 131896071631430172898467384656701321845
  %i.io = getelementptr i8, ptr %i.ie, i64 13
  %i.ip = load i128, ptr %i.io, align 1
  %i.iq = xor i128 %i.ip, 129238609953304760370571389553283906114
  %i.ir = or i128 %i.in, %i.iq
  %i.is = icmp ne i128 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.ay, label %.thread367.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.iv = tail call ptr %i.ic(ptr noundef %i.id, i64 noundef 15) #8, !inline_history !60 ; 2 uses
  %.not.i289.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i289.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iw = add i64 %i.if, 44
  store i64 %i.iw, ptr %i.f, align 8, !tbaa !23
  %i.ix = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.iv, ptr noundef nonnull dereferenceable(15) getelementptr inbounds nuw (i8, ptr @.str.16, i64 29)) #9
  %i.iy = icmp eq i32 %i.ix, 0
  %spec.select285 = select i1 %i.iy, i8 1, i8 %i.cy
  br label %.thread367.i.i.i.i

.thread367.i.i.i.i:                               ; preds = %bb.av, %bb.az, %bb.ax, %bb.aw, %bb.as
  %i.iz = phi i8 [ %i.cw, %bb.as ], [ %i.cw, %bb.az ], [ %spec.select288, %bb.av ], [ %i.cw, %bb.ax ], [ %i.cw, %bb.aw ] ; 3 uses
  %i.ja = phi i8 [ %i.cx, %bb.as ], [ %i.cx, %bb.az ], [ %spec.select289, %bb.av ], [ %i.cx, %bb.ax ], [ %i.cx, %bb.aw ] ; 3 uses
  %i.jb = phi i8 [ %i.cy, %bb.as ], [ %spec.select285, %bb.az ], [ %i.cy, %bb.av ], [ %i.cy, %bb.ax ], [ %i.cy, %bb.aw ] ; 3 uses
  %.4.neg.i.i.i.i = phi i32 [ 0, %bb.as ], [ -44, %bb.az ], [ -29, %bb.av ], [ -29, %bb.ax ], [ -29, %bb.aw ]
  %i.jc = add i32 %.4.neg.i.i.i.i, %i.db          ; 5 uses
  %.not.i292.i.i.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i292.i.i.i.i, label %.thread329.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.thread367.i.i.i.i
  %i.jd = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  %.pre479 = load ptr, ptr %10, align 8, !tbaa !20 ; 3 uses
  br i1 %i.je, label %.preheader.i296.i.i.i.i, label %.thread329.i.sink.split.sink.split.i.i.i

.preheader.i296.i.i.i.i:                          ; preds = %bb.ba
  %i.jf = icmp ugt i32 %i.jc, 64
  %.pre475 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br i1 %i.jf, label %.lr.ph.i300.i.i.i.i.preheader, label %._crit_edge.i297.i.i.i.i

.lr.ph.i300.i.i.i.i.preheader:                    ; preds = %.preheader.i296.i.i.i.i
  %.promoted240 = load i64, ptr %i.f, align 8
  br label %.lr.ph.i300.i.i.i.i

.lr.ph.i300.i.i.i.i:                              ; preds = %.lr.ph.i300.i.i.i.i.preheader, %bb.bb
  %i.jg = phi i64 [ %i.ji, %bb.bb ], [ %.promoted240, %.lr.ph.i300.i.i.i.i.preheader ] ; 2 uses
  %.01527.i301.i.i.i.i = phi i32 [ %i.jj, %bb.bb ], [ %i.jc, %.lr.ph.i300.i.i.i.i.preheader ]
  %i.jh = tail call ptr %.pre475(ptr noundef %.pre479, i64 noundef 64) #8, !inline_history !61
  %.not.i.i302.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i302.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i.sink.split, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i300.i.i.i.i
  %i.ji = add i64 %i.jg, 64                       ; 2 uses
  %i.jj = add i32 %.01527.i301.i.i.i.i, -64       ; 3 uses
  %i.jk = icmp ugt i32 %i.jj, 64
  br i1 %i.jk, label %.lr.ph.i300.i.i.i.i, label %._crit_edge.i297.i.i.i.i.loopexit, !llvm.loop !0

._crit_edge.i297.i.i.i.i.loopexit:                ; preds = %bb.bb
  store i64 %i.ji, ptr %i.f, align 8
  br label %._crit_edge.i297.i.i.i.i

._crit_edge.i297.i.i.i.i:                         ; preds = %._crit_edge.i297.i.i.i.i.loopexit, %.preheader.i296.i.i.i.i
  %.015.lcssa.i298.i.i.i.i = phi i32 [ %i.jc, %.preheader.i296.i.i.i.i ], [ %i.jj, %._crit_edge.i297.i.i.i.i.loopexit ]
  %i.jl = zext nneg i32 %.015.lcssa.i298.i.i.i.i to i64 ; 2 uses
  %i.jm = tail call ptr %.pre475(ptr noundef %.pre479, i64 noundef %i.jl) #8, !inline_history !61
  %.not.i20.i299.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i20.i299.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %.thread329.i.sink.split.i.i.i

bb.bc:                                            ; preds = %bb.t
  %.not.i304.i.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i304.i.i.i.i, label %.thread329.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jn = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %.preheader.i308.i.i.i.i, label %..thread329.i.sink.split.sink.split.i.i.i_crit_edge

..thread329.i.sink.split.sink.split.i.i.i_crit_edge: ; preds = %bb.bd
  %.pre478 = load ptr, ptr %10, align 8, !tbaa !20
  br label %.thread329.i.sink.split.sink.split.i.i.i

.preheader.i308.i.i.i.i:                          ; preds = %bb.bd
  %i.jp = icmp ugt i32 %i.db, 64
  %.pre480 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %.pre481 = load ptr, ptr %10, align 8, !tbaa !20 ; 2 uses
  br i1 %i.jp, label %.lr.ph.i312.i.i.i.i.preheader, label %._crit_edge.i309.i.i.i.i

.lr.ph.i312.i.i.i.i.preheader:                    ; preds = %.preheader.i308.i.i.i.i
  %.promoted245 = load i64, ptr %i.f, align 8
  %.promoted1522 = load i64, ptr %i.f, align 1
  br label %.lr.ph.i312.i.i.i.i

.lr.ph.i312.i.i.i.i:                              ; preds = %.lr.ph.i312.i.i.i.i.preheader, %bb.be
  %i.jq = phi i64 [ %i.jt, %bb.be ], [ %.promoted1522, %.lr.ph.i312.i.i.i.i.preheader ]
  %i.jr = phi i64 [ %i.jt, %bb.be ], [ %.promoted245, %.lr.ph.i312.i.i.i.i.preheader ]
  %.01527.i313.i.i.i.i = phi i32 [ %i.ju, %bb.be ], [ %i.db, %.lr.ph.i312.i.i.i.i.preheader ]
  %i.js = tail call ptr %.pre480(ptr noundef %.pre481, i64 noundef 64) #8, !inline_history !61
  %.not.i.i314.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i314.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i.loopexit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i312.i.i.i.i
  %i.jt = add i64 %i.jr, 64                       ; 3 uses
  %i.ju = add i32 %.01527.i313.i.i.i.i, -64       ; 3 uses
  %i.jv = icmp ugt i32 %i.ju, 64
  br i1 %i.jv, label %.lr.ph.i312.i.i.i.i, label %._crit_edge.i309.i.i.i.i.loopexit, !llvm.loop !0

._crit_edge.i309.i.i.i.i.loopexit:                ; preds = %bb.be
  store i64 %i.jt, ptr %i.f, align 1
  br label %._crit_edge.i309.i.i.i.i

._crit_edge.i309.i.i.i.i:                         ; preds = %._crit_edge.i309.i.i.i.i.loopexit, %.preheader.i308.i.i.i.i
  %.015.lcssa.i310.i.i.i.i = phi i32 [ %i.db, %.preheader.i308.i.i.i.i ], [ %i.ju, %._crit_edge.i309.i.i.i.i.loopexit ]
  %i.jw = zext nneg i32 %.015.lcssa.i310.i.i.i.i to i64 ; 2 uses
  %i.jx = tail call ptr %.pre480(ptr noundef %.pre481, i64 noundef %i.jw) #8, !inline_history !61
  %.not.i20.i311.i.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i20.i311.i.i.i.i, label %ParseIpco.exit.thread197.i.i.i, label %.thread329.i.sink.split.i.i.i

.thread329.i.sink.split.sink.split.i.i.i:         ; preds = %..thread329.i.sink.split.sink.split.i.i.i_crit_edge, %bb.ba, %bb.ar, %bb.aj, %bb.z
  %i.jy = phi ptr [ %i.fd, %bb.aj ], [ %.pre479, %bb.ba ], [ %i.gr, %bb.ar ], [ %i.de, %bb.z ], [ %.pre478, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %i.jz = phi i8 [ %i.cv, %bb.aj ], [ %i.cv, %bb.ba ], [ %i.cv, %bb.ar ], [ %i.eo, %bb.z ], [ %i.cv, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %i.ka = phi i8 [ %i.cw, %bb.aj ], [ %i.iz, %bb.ba ], [ %i.cw, %bb.ar ], [ %i.cw, %bb.z ], [ %i.cw, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %i.kb = phi i8 [ %i.gc, %bb.aj ], [ %i.ja, %bb.ba ], [ %i.ho, %bb.ar ], [ %i.ep, %bb.z ], [ %i.cx, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %i.kc = phi i8 [ %i.cy, %bb.aj ], [ %i.jb, %bb.ba ], [ %i.cy, %bb.ar ], [ %i.cy, %bb.z ], [ %i.cy, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %.sink475.i.sink.i.i.i = phi i32 [ %i.gd, %bb.aj ], [ %i.jc, %bb.ba ], [ %i.hp, %bb.ar ], [ %i.eq, %bb.z ], [ %i.db, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %.sink474.i.sink.i.i.i = phi ptr [ %i.ge, %bb.aj ], [ %i.jd, %bb.ba ], [ %i.hq, %bb.ar ], [ %i.er, %bb.z ], [ %i.jn, %..thread329.i.sink.split.sink.split.i.i.i_crit_edge ]
  %i.kd = zext i32 %.sink475.i.sink.i.i.i to i64  ; 2 uses
  tail call void %.sink474.i.sink.i.i.i(ptr noundef %i.jy, i64 noundef %i.kd) #8, !inline_history !64
  br label %.thread329.i.sink.split.i.i.i

.thread329.i.sink.split.i.i.i:                    ; preds = %.thread329.i.sink.split.sink.split.i.i.i, %._crit_edge.i309.i.i.i.i, %._crit_edge.i297.i.i.i.i, %._crit_edge.i279.i.i.i.i, %._crit_edge.i184.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ke = phi i8 [ %i.cv, %._crit_edge.i184.i.i.i ], [ %i.cv, %._crit_edge.i309.i.i.i.i ], [ %i.cv, %._crit_edge.i297.i.i.i.i ], [ %i.cv, %._crit_edge.i279.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i.i ], [ %i.jz, %.thread329.i.sink.split.sink.split.i.i.i ]
  %i.kf = phi i8 [ %i.cw, %._crit_edge.i184.i.i.i ], [ %i.cw, %._crit_edge.i309.i.i.i.i ], [ %i.iz, %._crit_edge.i297.i.i.i.i ], [ %i.cw, %._crit_edge.i279.i.i.i.i ], [ %i.cw, %._crit_edge.i.i.i.i.i ], [ %i.ka, %.thread329.i.sink.split.sink.split.i.i.i ]
  %i.kg = phi i8 [ %i.gc, %._crit_edge.i184.i.i.i ], [ %i.cx, %._crit_edge.i309.i.i.i.i ], [ %i.ja, %._crit_edge.i297.i.i.i.i ], [ %i.ho, %._crit_edge.i279.i.i.i.i ], [ %i.ep, %._crit_edge.i.i.i.i.i ], [ %i.kb, %.thread329.i.sink.split.sink.split.i.i.i ]
  %i.kh = phi i8 [ %i.cy, %._crit_edge.i184.i.i.i ], [ %i.cy, %._crit_edge.i309.i.i.i.i ], [ %i.jb, %._crit_edge.i297.i.i.i.i ], [ %i.cy, %._crit_edge.i279.i.i.i.i ], [ %i.cy, %._crit_edge.i.i.i.i.i ], [ %i.kc, %.thread329.i.sink.split.sink.split.i.i.i ]
  %.sink32.i181.sink.i.i.i = phi i64 [ %i.gn, %._crit_edge.i184.i.i.i ], [ %i.jw, %._crit_edge.i309.i.i.i.i ], [ %i.jl, %._crit_edge.i297.i.i.i.i ], [ %i.hz, %._crit_edge.i279.i.i.i.i ], [ %i.fa, %._crit_edge.i.i.i.i.i ], [ %i.kd, %.thread329.i.sink.split.sink.split.i.i.i ]
  %i.ki = load i64, ptr %i.f, align 8, !tbaa !23
  %i.kj = add i64 %i.ki, %.sink32.i181.sink.i.i.i
  store i64 %i.kj, ptr %i.f, align 8, !tbaa !23
  br label %.thread329.i.i.i.i

.thread329.i.i.i.i:                               ; preds = %.thread329.i.sink.split.i.i.i, %bb.bc, %.thread367.i.i.i.i, %bb.aq, %bb.ai, %bb.y
  %i.kk = phi i8 [ %i.ke, %.thread329.i.sink.split.i.i.i ], [ %i.cv, %bb.bc ], [ %i.cv, %.thread367.i.i.i.i ], [ %i.cv, %bb.aq ], [ %i.cv, %bb.ai ], [ %i.eo, %bb.y ] ; 2 uses
  %i.kl = phi i8 [ %i.kf, %.thread329.i.sink.split.i.i.i ], [ %i.cw, %bb.bc ], [ %i.iz, %.thread367.i.i.i.i ], [ %i.cw, %bb.aq ], [ %i.cw, %bb.ai ], [ %i.cw, %bb.y ] ; 2 uses
  %i.km = phi i8 [ %i.kg, %.thread329.i.sink.split.i.i.i ], [ %i.cx, %bb.bc ], [ %i.ja, %.thread367.i.i.i.i ], [ %i.ho, %bb.aq ], [ %i.gc, %bb.ai ], [ %i.ep, %bb.y ] ; 2 uses
  %i.kn = phi i8 [ %i.kh, %.thread329.i.sink.split.i.i.i ], [ %i.cy, %bb.bc ], [ %i.jb, %.thread367.i.i.i.i ], [ %i.cy, %bb.aq ], [ %i.cy, %bb.ai ], [ %i.cy, %bb.y ] ; 2 uses
  %i.ko = add i32 %.0174.i.i.i.i, 1
  %i.kp = load i32, ptr %6, align 4, !tbaa !41
  %i.kq = sub i32 %.0202.i.i.i.i, %i.kp           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.not236.i.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not236.i.i.i.i, label %ParseIpco.exit.thread.i.i.i.loopexit, label %.preheader.i.i, !llvm.loop !65

ParseIpco.exit.thread197.i.i.i.sink.split:        ; preds = %.lr.ph.i282.i.i.i.i.preheader, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i300.i.i.i.i, %.lr.ph.i282.i.i.i.i, %.lr.ph.i.i.i.i, %AvifInfoInternalReadBigEndian.exit270.i.i.i.i, %bb.ag
  %.lcssa809.sink = phi i64 [ %i.jg, %.lr.ph.i300.i.i.i.i ], [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.hw, %.lr.ph.i282.i.i.i.i ], [ %i.fq, %bb.ag ], [ %i.fq, %AvifInfoInternalReadBigEndian.exit270.i.i.i.i ], [ %.promoted814, %.lr.ph.i.i.i.i.preheader ], [ %.promoted811, %.lr.ph.i282.i.i.i.i.preheader ]
  %.29.ph.i.ph.i.i.i.ph816 = phi i32 [ 2, %.lr.ph.i300.i.i.i.i ], [ 3, %bb.ag ], [ 2, %.lr.ph.i282.i.i.i.i ], [ 4, %AvifInfoInternalReadBigEndian.exit270.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i.preheader ], [ 2, %.lr.ph.i282.i.i.i.i.preheader ]
  store i64 %.lcssa809.sink, ptr %i.f, align 8
  br label %ParseIpco.exit.thread197.i.i.i

ParseIpco.exit.thread197.i.i.i.loopexit:          ; preds = %.lr.ph.i312.i.i.i.i
  store i64 %i.jq, ptr %i.f, align 1
  br label %ParseIpco.exit.thread197.i.i.i

ParseIpco.exit.thread197.i.i.i.loopexit1051:      ; preds = %.lr.ph.i.i.i.i.i
  store i64 %i.eu, ptr %i.f, align 1
  br label %ParseIpco.exit.thread197.i.i.i

ParseIpco.exit.thread197.i.i.i.loopexit1052:      ; preds = %.lr.ph.i187.i.i.i
  store i64 %i.gh, ptr %i.f, align 1
  br label %ParseIpco.exit.thread197.i.i.i

ParseIpco.exit.thread197.i.i.i:                   ; preds = %._crit_edge.i309.i.i.i.i, %._crit_edge.i297.i.i.i.i, %bb.ay, %bb.at, %._crit_edge.i279.i.i.i.i, %bb.an, %bb.am, %bb.al, %._crit_edge.i184.i.i.i, %AvifInfoInternalReadBigEndian.exit262.i.i.i.i, %bb.ae, %bb.ad, %AvifInfoInternalReadBigEndian.exit254.i.i.i.i, %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i, %AvifInfoInternalReadBigEndian.exit.i.i.i.i, %bb.v, %bb.u, %ParseIpco.exit.thread197.i.i.i.loopexit1052, %ParseIpco.exit.thread197.i.i.i.loopexit1051, %ParseIpco.exit.thread197.i.i.i.loopexit, %ParseIpco.exit.thread197.i.i.i.sink.split
  %.29.ph.i.ph.i.i.i = phi i32 [ %.29.ph.i.ph.i.i.i.ph816, %ParseIpco.exit.thread197.i.i.i.sink.split ], [ 2, %ParseIpco.exit.thread197.i.i.i.loopexit1051 ], [ 2, %ParseIpco.exit.thread197.i.i.i.loopexit ], [ 2, %ParseIpco.exit.thread197.i.i.i.loopexit1052 ], [ 2, %._crit_edge.i184.i.i.i ], [ 4, %bb.al ], [ 2, %bb.v ], [ 2, %._crit_edge.i297.i.i.i.i ], [ 2, %bb.am ], [ 2, %bb.ay ], [ 4, %AvifInfoInternalReadBigEndian.exit.i.i.i.i ], [ 4, %AvifInfoInternalReadBigEndian.exit262.i.i.i.i ], [ 4, %bb.ab ], [ 4, %AvifInfoInternalReadBigEndian.exit254.i.i.i.i ], [ 2, %bb.ac ], [ 4, %bb.ad ], [ 2, %._crit_edge.i309.i.i.i.i ], [ 2, %bb.ae ], [ 4, %bb.an ], [ 2, %bb.at ], [ 2, %._crit_edge.i.i.i.i.i ], [ 2, %._crit_edge.i279.i.i.i.i ], [ 4, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.loopexit.i.i

ParseIpco.exit.i.i.i:                             ; preds = %.preheader.i.i
  store i8 %i.cy, ptr %i.ai, align 1
  store i8 %i.cx, ptr %i.s, align 8
  store i8 %i.cw, ptr %i.aj, align 2
  store i8 %i.cv, ptr %i.am, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.kr = icmp eq i32 %i.cz, 1
  br i1 %i.kr, label %ParseIpco.exit.thread.i.i.i, label %.loopexit.i.i.loopexit294

bb.bf:                                            ; preds = %bb.s
  %i.ks = icmp ugt i32 %i.cu, 3
  br i1 %i.ks, label %bb.bg, label %.loopexit.i.i.loopexit294

bb.bg:                                            ; preds = %bb.bf
  %i.kt = load ptr, ptr %i.d, align 8, !tbaa !21  ; 6 uses
  %i.ku = load ptr, ptr %10, align 8, !tbaa !20   ; 7 uses
  %i.kv = tail call ptr %i.kt(ptr noundef %i.ku, i64 noundef 4) #8, !inline_history !66 ; 4 uses
  %.not.i.i101.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i101.i.i, label %.loopexit.i.i.loopexit294, label %AvifInfoInternalReadBigEndian.exit.i.i.i

AvifInfoInternalReadBigEndian.exit.i.i.i:         ; preds = %bb.bg
  %i.kw = load i64, ptr %i.f, align 8, !tbaa !23
  %i.kx = add i64 %i.kw, 4                        ; 3 uses
  store i64 %i.kx, ptr %i.f, align 8, !tbaa !23
  %17 = load i16, ptr %i.kv, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %i.ky = zext i16 %18 to i32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !29
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw i32 %i.ky, 16
  %i.ld = shl nuw nsw i32 %i.lb, 8
  %i.le = or disjoint i32 %i.lc, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 3
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !29
  %i.lh = zext i8 %i.lg to i32
  %i.li = or disjoint i32 %i.le, %i.lh            ; 2 uses
  %i.lj = load i32, ptr %i.ad, align 4, !tbaa !42
  %i.lk = and i32 %i.lj, 1                        ; 4 uses
  %i.ll = add nuw nsw i32 %i.lk, 1                ; 2 uses
  %.not293.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not293.i.i.i, label %.loopexit.i.i.i, label %.lr.ph291.i.i.i

.lr.ph291.i.i.i:                                  ; preds = %AvifInfoInternalReadBigEndian.exit.i.i.i
  %.not131.i.i.i = icmp eq i32 %i.lk, 0
  %i.lm = load i32, ptr %i.ac, align 4, !tbaa !28
  %i.ln = icmp eq i32 %i.lm, 0                    ; 2 uses
  %i.lo = select i1 %i.ln, i32 2, i32 4           ; 3 uses
  %i.lp = or disjoint i32 %i.lo, 1                ; 2 uses
  %i.lq = zext nneg i32 %i.lp to i64              ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.lo to i64 ; 3 uses
  %i.lr = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.ls = select i1 %.not131.i.i.i, i32 -129, i32 -32769
  %i.lt = shl nuw nsw i32 %i.lk, 5
  %.promoted221 = load i8, ptr %i.ae, align 1
  %.promoted231 = load i8, ptr %i.s, align 8
  %.promoted798 = load i64, ptr %i.f, align 8
  %xtraiter1302 = and i64 %wide.trip.count.i.i.i.i, 2 ; 2 uses
  %unroll_iter1308 = and i64 %wide.trip.count.i.i.i.i, 4
  %lcmp.mod1304.not = icmp eq i64 %xtraiter1302, 0
  %lcmp.mod1307 = icmp ne i64 %xtraiter1302, 0
  %exitcond.not.i160.i.i.i = icmp eq i32 %i.lk, 0
  br label %bb.bh

bb.bh:                                            ; preds = %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i, %.lr.ph291.i.i.i
  %.lcssa797799 = phi i64 [ %.promoted798, %.lr.ph291.i.i.i ], [ %.lcssa797800, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 2 uses
  %.lcssa220233 = phi i8 [ %.promoted231, %.lr.ph291.i.i.i ], [ %.lcssa220232, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 2 uses
  %.promoted215229 = phi i64 [ %i.kx, %.lr.ph291.i.i.i ], [ %.lcssa797800, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 2 uses
  %.lcssa214223 = phi i8 [ %.promoted221, %.lr.ph291.i.i.i ], [ %.lcssa214222, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 4 uses
  %.094290.i.i.i = phi i32 [ 0, %.lr.ph291.i.i.i ], [ %i.oa, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 2 uses
  %.095289.i.i.i = phi i32 [ 4, %.lr.ph291.i.i.i ], [ %.1.lcssa.i.i.i, %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i ] ; 3 uses
  %exitcond337.i.i.i = icmp eq i32 %.094290.i.i.i, 32
  %i.lu = icmp ugt i8 %.lcssa214223, 31
  %or.cond79 = select i1 %exitcond337.i.i.i, i1 true, i1 %i.lu
  br i1 %or.cond79, label %.loopexit.sink.split.i.i.i.loopexit91, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lv = add i32 %.095289.i.i.i, %i.lp           ; 3 uses
  %.not132.i.i.i = icmp ult i32 %i.cu, %i.lv
  br i1 %.not132.i.i.i, label %.loopexit.i.i.loopexit92, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lw = tail call ptr %i.kt(ptr noundef %i.ku, i64 noundef %i.lq) #8, !inline_history !66 ; 7 uses
  %.not.i140.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i140.i.i.i, label %.loopexit.i.i.loopexit92, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lx = add i64 %.promoted215229, %i.lq         ; 2 uses
  br i1 %i.ln, label %.epil.preheader1301, label %.new1300

.new1300:                                         ; preds = %bb.bk, %.new1300
  %indvars.iv.i143.i.i.i = phi i64 [ %indvars.iv.next.i145.i.i.i.3, %.new1300 ], [ 0, %bb.bk ] ; 5 uses
  %niter1309 = phi i64 [ %niter1309.next.3, %.new1300 ], [ 0, %bb.bk ]
  %indvars.iv.next.i145.i.i.i.3 = add nuw nsw i64 %indvars.iv.i143.i.i.i, 4 ; 2 uses
  %niter1309.next.3 = add i64 %niter1309, 4       ; 2 uses
  %niter1309.ncmp.3 = icmp eq i64 %niter1309.next.3, %unroll_iter1308
  br i1 %niter1309.ncmp.3, label %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa, label %.new1300, !llvm.loop !57

AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa: ; preds = %.new1300
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %indvars.iv.i143.i.i.i
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !29
  %i.ma = zext i8 %i.lz to i32
  %i.mb = shl nuw nsw i32 %i.ma, 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 %indvars.iv.i143.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !29
  %i.mf = zext i8 %i.me to i32
  %i.mg = shl nuw nsw i32 %i.mf, 8
  %i.mh = or disjoint i32 %i.mb, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 %indvars.iv.i143.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !29
  %i.ml = zext i8 %i.mk to i32
  %i.mm = or disjoint i32 %i.mh, %i.ml
  %i.mn = shl nuw i32 %i.mm, 8                    ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lw, i64 %indvars.iv.i143.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !29  ; 2 uses
  %i.mr = zext i8 %i.mq to i32
  %i.ms = or disjoint i32 %i.mn, %i.mr
  br i1 %lcmp.mod1304.not, label %AvifInfoInternalReadBigEndian.exit147.i.i.i, label %.epil.preheader1301

.epil.preheader1301:                              ; preds = %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa, %bb.bk
  %indvars.iv.i143.i.i.i.epil.init = phi i64 [ 0, %bb.bk ], [ %indvars.iv.next.i145.i.i.i.3, %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa ]
  %.067.i144.i.i.i.epil.init = phi i32 [ 0, %bb.bk ], [ %i.ms, %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1307)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader1301
  %indvars.iv.i143.i.i.i.epil = phi i64 [ %indvars.iv.i143.i.i.i.epil.init, %.epil.preheader1301 ], [ %indvars.iv.next.i145.i.i.i.epil, %bb.bl ] ; 2 uses
  %.067.i144.i.i.i.epil = phi i32 [ %.067.i144.i.i.i.epil.init, %.epil.preheader1301 ], [ %i.mx, %bb.bl ]
  %epil.iter1303 = phi i64 [ 0, %.epil.preheader1301 ], [ %epil.iter1303.next, %bb.bl ]
  %i.mt = shl i32 %.067.i144.i.i.i.epil, 8        ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 %indvars.iv.i143.i.i.i.epil
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !29  ; 2 uses
  %i.mw = zext i8 %i.mv to i32
  %i.mx = or disjoint i32 %i.mt, %i.mw
  %indvars.iv.next.i145.i.i.i.epil = add nuw nsw i64 %indvars.iv.i143.i.i.i.epil, 1
  %epil.iter1303.next = add i64 %epil.iter1303, 1 ; 2 uses
  %epil.iter1303.cmp.not = icmp eq i64 %epil.iter1303.next, 2
  br i1 %epil.iter1303.cmp.not, label %AvifInfoInternalReadBigEndian.exit147.i.i.i, label %bb.bl, !llvm.loop !67

AvifInfoInternalReadBigEndian.exit147.i.i.i:      ; preds = %bb.bl, %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa
  %.lcssa1122 = phi i32 [ %i.mn, %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa ], [ %i.mt, %bb.bl ]
  %.lcssa1121 = phi i8 [ %i.mq, %AvifInfoInternalReadBigEndian.exit147.i.i.i.unr-lcssa ], [ %i.mv, %bb.bl ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.lw, i64 %wide.trip.count.i.i.i.i
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !29  ; 2 uses
  %i.na = zext i8 %i.mz to i32
  %.not294.i.i.i = icmp eq i8 %i.mz, 0
  br i1 %.not294.i.i.i, label %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i, label %.lr.ph.i102.i.i

.lr.ph.i102.i.i:                                  ; preds = %AvifInfoInternalReadBigEndian.exit147.i.i.i
  %i.nb = icmp eq i32 %.lcssa1122, 0
  br label %bb.bm

bb.bm:                                            ; preds = %AvifInfoInternalReadBigEndian.exit152.i.i.i, %.lr.ph.i102.i.i
  %i.nc = phi i64 [ %i.lx, %.lr.ph.i102.i.i ], [ %i.ni, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 6 uses
  %i.nd = phi i8 [ %.lcssa220233, %.lr.ph.i102.i.i ], [ %i.nx, %AvifInfoInternalReadBigEndian.exit152.i.i.i ]
  %i.ne = phi i8 [ %.lcssa214223, %.lr.ph.i102.i.i ], [ %i.ny, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 5 uses
  %.0288.i.i.i = phi i32 [ 0, %.lr.ph.i102.i.i ], [ %i.nz, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 2 uses
  %.1287.i.i.i = phi i32 [ %i.lv, %.lr.ph.i102.i.i ], [ %i.ng, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 2 uses
  %exitcond.i.i.i = icmp eq i32 %.0288.i.i.i, 32
  br i1 %exitcond.i.i.i, label %select.unfold.split.loop.exit434.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nf = icmp ugt i8 %i.ne, 31
  br i1 %i.nf, label %.loopexit.sink.split.i.i.i.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ng = add i32 %.1287.i.i.i, %i.ll             ; 3 uses
  %.not133.i.i.i = icmp ult i32 %i.cu, %i.ng
  br i1 %.not133.i.i.i, label %.loopexit.i.i.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nh = tail call ptr %i.kt(ptr noundef %i.ku, i64 noundef %i.lr) #8, !inline_history !66 ; 3 uses
  %.not.i153.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not.i153.i.i.i, label %.loopexit.i.i.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ni = add i64 %i.nc, %i.lr                    ; 2 uses
  %i.nj = load i8, ptr %i.nh, align 1, !tbaa !29
  %i.nk = zext i8 %i.nj to i32                    ; 2 uses
  br i1 %exitcond.not.i160.i.i.i, label %AvifInfoInternalReadBigEndian.exit161.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nl = shl nuw nsw i32 %i.nk, 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !29
  %i.no = zext i8 %i.nn to i32
  %i.np = or disjoint i32 %i.nl, %i.no
  br label %AvifInfoInternalReadBigEndian.exit161.i.i.i

AvifInfoInternalReadBigEndian.exit161.i.i.i:      ; preds = %bb.br, %bb.bq
  %.lcssa1123 = phi i32 [ %i.nk, %bb.bq ], [ %i.np, %bb.br ]
  %i.nq = and i32 %.lcssa1123, %i.ls              ; 2 uses
  %i.nr = icmp ult i32 %i.nq, 256
  %or.cond.i.i.i = select i1 %i.nr, i1 %i.nb, i1 false
  br i1 %or.cond.i.i.i, label %bb.bs, label %AvifInfoInternalReadBigEndian.exit152.i.i.i

bb.bs:                                            ; preds = %AvifInfoInternalReadBigEndian.exit161.i.i.i
  %i.ns = trunc nuw i32 %i.nq to i8
  %i.nt = zext nneg i8 %i.ne to i64
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.nt ; 2 uses
  store i8 %i.ns, ptr %i.nu, align 2, !tbaa !44
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  store i8 %.lcssa1121, ptr %i.nv, align 1, !tbaa !45
  %i.nw = add nuw nsw i8 %i.ne, 1
  br label %AvifInfoInternalReadBigEndian.exit152.i.i.i

AvifInfoInternalReadBigEndian.exit152.i.i.i:      ; preds = %AvifInfoInternalReadBigEndian.exit161.i.i.i, %bb.bs
  %i.nx = phi i8 [ %i.nd, %bb.bs ], [ 1, %AvifInfoInternalReadBigEndian.exit161.i.i.i ] ; 2 uses
  %i.ny = phi i8 [ %i.nw, %bb.bs ], [ %i.ne, %AvifInfoInternalReadBigEndian.exit161.i.i.i ] ; 2 uses
  %i.nz = add nuw nsw i32 %.0288.i.i.i, 1         ; 2 uses
  %exitcond336.not.i.i.i = icmp eq i32 %i.nz, %i.na
  br i1 %exitcond336.not.i.i.i, label %AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i, label %bb.bm, !llvm.loop !68

AvifInfoInternalReadBigEndian.exit152._crit_edge.i.i.i: ; preds = %AvifInfoInternalReadBigEndian.exit152.i.i.i, %AvifInfoInternalReadBigEndian.exit147.i.i.i
  %.lcssa797800 = phi i64 [ %i.lx, %AvifInfoInternalReadBigEndian.exit147.i.i.i ], [ %i.ni, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 4 uses
  %.lcssa220232 = phi i8 [ %.lcssa220233, %AvifInfoInternalReadBigEndian.exit147.i.i.i ], [ %i.nx, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 2 uses
  %.lcssa214222 = phi i8 [ %.lcssa214223, %AvifInfoInternalReadBigEndian.exit147.i.i.i ], [ %i.ny, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ %i.lv, %AvifInfoInternalReadBigEndian.exit147.i.i.i ], [ %i.ng, %AvifInfoInternalReadBigEndian.exit152.i.i.i ] ; 2 uses
  %i.oa = add nuw nsw i32 %.094290.i.i.i, 1       ; 2 uses
  %exitcond338.not.i.i.i = icmp eq i32 %i.oa, %i.li
  br i1 %exitcond338.not.i.i.i, label %.loopexit.i.i.i.loopexit, label %bb.bh, !llvm.loop !69

select.unfold.split.loop.exit434.i.i.i:           ; preds = %bb.bm
  store i64 %i.nc, ptr %i.f, align 8
  store i8 %i.ne, ptr %i.ae, align 1
  %i.ob = add nuw nsw i32 %i.lt, 33
  %i.oc = or disjoint i32 %i.ob, %i.lo
  %i.od = add i32 %i.oc, %.095289.i.i.i
  br label %.loopexit.i.i.i.sink.split

.loopexit.sink.split.i.i.i.loopexit:              ; preds = %bb.bn
  store i64 %i.nc, ptr %i.f, align 8
  store i8 32, ptr %i.ae, align 1
  br label %.loopexit.i.i.i.sink.split
end_hunk_1
begin_hunk_2_@AvifInfoInternalGetPrimaryItemFeatures:bb.a
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !100
  %.not51 = icmp eq i8 %i.ar, 0
  br i1 %.not51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.o, %bb.p, %.loopexit, %bb.n, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %.loopexit ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @AvifInfoInternalGetItemFeatures(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.b = load i8, ptr %i.a, align 1, !tbaa !50    ; 2 uses
  %.not112 = icmp eq i8 %i.b, 0
  br i1 %.not112, label %.preheader, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 265
  %wide.trip.count128 = zext i8 %i.b to i64
  br label %bb.b

.preheader:                                       ; preds = %.thread91, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = icmp ne i32 %2, 3
  %i.o = load i8, ptr %i.m, align 4, !tbaa !49    ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %.lr.ph108, label %.thread95

.lr.ph108:                                        ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.s = add nuw nsw i32 %2, 1
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph106, %.thread91
  %indvars.iv125 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next126, %.thread91 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv125 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !45
  %i.w = zext i8 %i.v to i32
  %.not = icmp eq i32 %1, %i.w
  br i1 %.not, label %bb.c, label %.thread91

bb.c:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.t, align 2, !tbaa !44    ; 2 uses
  %i.y = load i8, ptr %i.d, align 1, !tbaa !33
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !105
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !106
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = load i8, ptr %i.g, align 2, !tbaa !48   ; 2 uses
  %.not113 = icmp eq i8 %i.af, 0
  br i1 %.not113, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext i8 %i.af to i64
  br label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !101

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !35
  %.not77 = icmp eq i8 %i.ah, %i.x
  br i1 %.not77, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !tbaa !24
  store <2 x i32> %i.aj, ptr %i.e, align 8, !tbaa !24
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !107
  %.not78 = icmp eq i32 %i.ak, 0
  br i1 %.not78, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.j, align 4, !tbaa !51
  %.not79 = icmp eq i32 %i.al, 0
  br i1 %.not79, label %.thread.thread, label %.thread95

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.pr = load i32, ptr %i.i, align 8, !tbaa !107
  %i.am = icmp eq i32 %.pr, 0
  br i1 %i.am, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %.thread
  %.pr136 = load i32, ptr %i.j, align 4, !tbaa !51
  %i.an = icmp eq i32 %.pr136, 0
  br i1 %i.an, label %.thread.thread, label %.thread91

.thread.thread:                                   ; preds = %bb.i, %bb.h, %bb.j, %.thread
  %i.ao = load i8, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %.not114 = icmp eq i8 %i.ao, 0
  br i1 %.not114, label %.thread91, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.thread.thread
  %wide.trip.count123 = zext i8 %i.ao to i64
  br label %.lr.ph104

bb.k:                                             ; preds = %.lr.ph104
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.thread91, label %.lr.ph104, !llvm.loop !102

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %bb.k
  %indvars.iv120 = phi i64 [ 0, %.lr.ph104.preheader ], [ %indvars.iv.next121, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.l, i64 %indvars.iv120 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !38
  %.not80 = icmp eq i8 %i.aq, %i.x
  br i1 %.not80, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.as = load <2 x i8>, ptr %i.ar, align 1, !tbaa !29
  %i.at = zext <2 x i8> %i.as to <2 x i32>
  store <2 x i32> %i.at, ptr %i.i, align 8, !tbaa !24
  %i.au = load i32, ptr %i.e, align 8, !tbaa !105
  %.not81 = icmp eq i32 %i.au, 0
  br i1 %.not81, label %.thread91, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr %i.f, align 4, !tbaa !106
  %.not82 = icmp eq i32 %i.av, 0
  br i1 %.not82, label %.thread91, label %.thread95

.thread91:                                        ; preds = %bb.k, %.thread.thread, %bb.l, %bb.m, %bb.j, %bb.b
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader, label %bb.b, !llvm.loop !103

bb.n:                                             ; preds = %.lr.ph108, %bb.p
  %i.aw = phi i8 [ %i.o, %.lr.ph108 ], [ %i.be, %bb.p ]
  %indvars.iv130 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next131, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [3 x i8], ptr %i.r, i64 %indvars.iv130 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = zext i8 %i.az to i32
  %.not83 = icmp eq i32 %1, %i.ba
  br i1 %.not83, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !38
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call fastcc i32 @AvifInfoInternalGetItemFeatures(ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.s)
  %.not99 = icmp eq i32 %i.bd, 0
  br i1 %.not99, label %.thread95, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i8, ptr %i.m, align 4, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n
  %i.be = phi i8 [ %.pre, %._crit_edge ], [ %i.aw, %bb.n ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next131, %i.bf
  br i1 %i.bg, label %bb.n, label %.thread95, !llvm.loop !104

.thread95:                                        ; preds = %bb.i, %bb.m, %bb.p, %bb.o, %.preheader
  %.12 = phi i32 [ 1, %.preheader ], [ 0, %bb.o ], [ 1, %bb.p ], [ 0, %bb.m ], [ 0, %bb.i ]
  ret i32 %.12
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !27}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !15, i64 24}
!20 = !{!19, !13, i64 0}
!21 = !{!19, !13, i64 8}
!22 = !{!19, !13, i64 16}
!23 = !{!19, !15, i64 24}
!24 = !{!10, !10, i64 0}
!25 = !{!"", !10, i64 0, !9, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!26 = !{!25, !10, i64 16}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!25, !10, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 17, !15, i64 24, !9, i64 32}
!31 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !30, i64 8, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 101, !9, i64 102, !9, i64 166, !9, i64 168, !9, i64 264, !9, i64 265}
!32 = !{!31, !9, i64 0}
!33 = !{!31, !9, i64 3}
!34 = !{!"", !9, i64 0, !10, i64 4, !10, i64 8}
!35 = !{!34, !9, i64 0}
!36 = !{!31, !9, i64 264}
!37 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2}
!38 = !{!37, !9, i64 0}
!39 = !{!37, !9, i64 1}
!40 = !{!37, !9, i64 2}
!41 = !{!25, !10, i64 0}
!42 = !{!25, !10, i64 12}
!43 = !{!"", !9, i64 0, !9, i64 1}
!44 = !{!43, !9, i64 0}
!45 = !{!43, !9, i64 1}
!46 = !{!31, !9, i64 51}
!47 = !{!31, !9, i64 50}
!48 = !{!31, !9, i64 166}
!49 = !{!31, !9, i64 52}
!50 = !{!31, !9, i64 101}
!51 = !{!31, !10, i64 20}
!52 = distinct !{null, null}
!53 = distinct !{null, null, null}
!54 = distinct !{null, null}
!55 = distinct !{!55, !27}
!56 = distinct !{null, null, null}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !87}
!59 = distinct !{null, null, null, null}
!60 = distinct !{null, null, null, null, null}
!61 = distinct !{null, null, null, null, null, null}
!62 = distinct !{!62, !27}
!63 = distinct !{null, null, null, null, null}
!64 = distinct !{null, null, null}
!65 = distinct !{!65, !27}
!66 = distinct !{null, null, null, null}
!67 = distinct !{!67, !87}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = distinct !{null, null, null, null}
!72 = distinct !{!72, !87}
!73 = distinct !{!73, !87}
!74 = distinct !{!74, !27}
!75 = distinct !{null, null, null, null, null}
!76 = distinct !{null, null, null}
!77 = distinct !{null, null, null, null}
!78 = distinct !{!78, !87}
!79 = distinct !{!79, !87}
!80 = distinct !{null, null, null, null, null}
!81 = distinct !{null, null, null, null}
!82 = distinct !{null, null}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = distinct !{null, null, null}
!86 = distinct !{null, null}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!31, !15, i64 32}
!89 = !{!31, !9, i64 40}
!90 = !{!34, !10, i64 4}
!91 = !{!34, !10, i64 8}
!92 = !{!31, !9, i64 48}
!93 = distinct !{null}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, !27}
!96 = !{!31, !9, i64 49}
!97 = !{!31, !9, i64 24}
!98 = !{!31, !9, i64 25}
!99 = !{!31, !9, i64 2}
!100 = !{!31, !9, i64 1}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = !{!31, !10, i64 8}
!106 = !{!31, !10, i64 12}
!107 = !{!31, !10, i64 16}
end_hunk_2
