Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/rangetypes_gist?download=true
inline.NumInlined: 81
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@range_get_flags

declare i32 @range_cmp_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @range_gist_picksplit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %1 = alloca %struct.RangeBound, align 8         ; 5 uses
  %2 = alloca %struct.RangeBound, align 8         ; 5 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca [9 x i32], align 16               ; 13 uses
  %i.d = alloca [9 x i32], align 16               ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @pg_detoast_datum(ptr noundef %i.n) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = tail call ptr @range_get_typcache(ptr noundef %0, i32 noundef %i.q) #8 ; 27 uses
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add i32 %i.s, 65535                      ; 2 uses
  %i.u = and i32 %i.t, 65535                      ; 4 uses
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = add nuw nsw i32 %i.v, 2
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = tail call ptr @palloc(i64 noundef %i.x) #8
  store ptr %i.y, ptr %i.j, align 8
  %i.z = tail call ptr @palloc(i64 noundef %i.x) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  store ptr %i.z, ptr %i.aa, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  %.not107 = icmp eq i32 %i.u, 0
  br i1 %.not107, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ab = trunc i32 %i.t to i16
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %get_gist_range_class.exit
  %.pre = load i32, ptr %i.c, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre135 = load i32, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert136 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre137 = load i32, ptr %.phi.trans.insert136, align 8
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.pre139 = load i32, ptr %.phi.trans.insert138, align 4
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre141 = load i32, ptr %.phi.trans.insert140, align 16
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.pre143 = load i32, ptr %.phi.trans.insert142, align 4
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre145 = load i32, ptr %.phi.trans.insert144, align 8
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.pre147 = load i32, ptr %.phi.trans.insert146, align 4
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre149 = load i32, ptr %.phi.trans.insert148, align 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.ac = phi i32 [ %.pre149, %.preheader.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.ad = phi i32 [ %.pre147, %.preheader.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.ae = phi i32 [ %.pre145, %.preheader.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.af = phi i32 [ %.pre143, %.preheader.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.ag = phi i32 [ %.pre141, %.preheader.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.ah = phi i32 [ %.pre139, %.preheader.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.ai = phi i32 [ %.pre137, %.preheader.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.aj = phi i32 [ %.pre135, %.preheader.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.ak = phi i32 [ %.pre, %.preheader.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.al = icmp sgt i32 %i.ak, 0                   ; 3 uses
  %spec.select76 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 3 uses
  %i.am = zext i1 %i.al to i32
  %not. = xor i1 %i.al, true
  %.263 = sext i1 %not. to i32
  %i.an = icmp sgt i32 %i.aj, 0                   ; 3 uses
  %i.ao = icmp sgt i32 %i.aj, %spec.select76
  %spec.select76.1 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %spec.select76)
  %i.ap = zext i1 %i.an to i32
  %.165.1 = add nuw nsw i32 %i.am, %i.ap
  %i.aq = select i1 %i.an, i1 %i.ao, i1 false
  %.263.1 = select i1 %i.aq, i32 1, i32 %.263
  %.2.1 = select i1 %i.an, i32 %spec.select76.1, i32 %spec.select76 ; 3 uses
  %i.ar = icmp sgt i32 %i.ai, 0                   ; 3 uses
  %i.as = icmp sgt i32 %i.ai, %.2.1
  %spec.select76.2 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %.2.1)
  %i.at = zext i1 %i.ar to i32
  %.165.2 = add nuw nsw i32 %.165.1, %i.at
  %i.au = select i1 %i.ar, i1 %i.as, i1 false
  %.263.2 = select i1 %i.au, i32 2, i32 %.263.1
  %.2.2 = select i1 %i.ar, i32 %spec.select76.2, i32 %.2.1 ; 3 uses
  %i.av = icmp sgt i32 %i.ah, 0                   ; 3 uses
  %i.aw = icmp sgt i32 %i.ah, %.2.2
  %spec.select76.3 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %.2.2)
  %i.ax = zext i1 %i.av to i32
  %.165.3 = add nuw nsw i32 %.165.2, %i.ax
  %i.ay = select i1 %i.av, i1 %i.aw, i1 false
  %.263.3 = select i1 %i.ay, i32 3, i32 %.263.2
  %.2.3 = select i1 %i.av, i32 %spec.select76.3, i32 %.2.2 ; 3 uses
  %i.az = icmp sgt i32 %i.ag, 0                   ; 3 uses
  %i.ba = icmp sgt i32 %i.ag, %.2.3
  %spec.select76.4 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.2.3)
  %i.bb = zext i1 %i.az to i32
  %.165.4 = add nuw nsw i32 %.165.3, %i.bb
  %i.bc = select i1 %i.az, i1 %i.ba, i1 false
  %.263.4 = select i1 %i.bc, i32 4, i32 %.263.3
  %.2.4 = select i1 %i.az, i32 %spec.select76.4, i32 %.2.3 ; 3 uses
  %i.bd = icmp sgt i32 %i.af, 0                   ; 3 uses
  %i.be = icmp sgt i32 %i.af, %.2.4
  %spec.select76.5 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %.2.4)
  %i.bf = zext i1 %i.bd to i32
  %.165.5 = add nuw nsw i32 %.165.4, %i.bf
  %i.bg = select i1 %i.bd, i1 %i.be, i1 false
  %.263.5 = select i1 %i.bg, i32 5, i32 %.263.4
  %.2.5 = select i1 %i.bd, i32 %spec.select76.5, i32 %.2.4 ; 3 uses
  %i.bh = icmp sgt i32 %i.ae, 0                   ; 3 uses
  %i.bi = icmp sgt i32 %i.ae, %.2.5
  %spec.select76.6 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %.2.5)
  %i.bj = zext i1 %i.bh to i32
  %.165.6 = add nuw nsw i32 %.165.5, %i.bj
  %i.bk = select i1 %i.bh, i1 %i.bi, i1 false
  %.263.6 = select i1 %i.bk, i32 6, i32 %.263.5
  %.2.6 = select i1 %i.bh, i32 %spec.select76.6, i32 %.2.5 ; 3 uses
  %i.bl = icmp sgt i32 %i.ad, 0                   ; 3 uses
  %i.bm = icmp sgt i32 %i.ad, %.2.6
  %spec.select76.7 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.2.6)
  %i.bn = zext i1 %i.bl to i32
  %.165.7 = add nuw nsw i32 %.165.6, %i.bn
  %i.bo = select i1 %i.bl, i1 %i.bm, i1 false
  %.263.7 = select i1 %i.bo, i32 7, i32 %.263.6
  %.2.7 = select i1 %i.bl, i32 %spec.select76.7, i32 %.2.6
  %i.bp = icmp sgt i32 %i.ac, 0                   ; 2 uses
  %i.bq = icmp sgt i32 %i.ac, %.2.7
  %i.br = zext i1 %i.bp to i32
  %.165.8 = add nuw nsw i32 %.165.7, %i.br
  %i.bs = select i1 %i.bp, i1 %i.bq, i1 false
  %.263.8 = select i1 %i.bs, i32 8, i32 %.263.7   ; 2 uses
  %i.bt = icmp eq i32 %.165.8, 1
  br i1 %i.bt, label %bb.c, label %bb.ax

.lr.ph:                                           ; preds = %.lr.ph.preheader, %get_gist_range_class.exit
  %.067108 = phi i16 [ %i.cg, %get_gist_range_class.exit ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.bu = zext i16 %.067108 to i64
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = tail call ptr @pg_detoast_datum(ptr noundef %i.bx) #8
  %i.bz = tail call signext i8 @range_get_flags(ptr noundef %i.by) #8 ; 3 uses
  %i.ca = and i8 %i.bz, 1
  %.not.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i, label %bb.b, label %get_gist_range_class.exit

bb.b:                                             ; preds = %.lr.ph
  %i.cb = lshr i8 %i.bz, 3
  %.112.i = and i8 %i.cb, 3
  %.1.i = zext nneg i8 %.112.i to i64             ; 2 uses
  %i.cc = or disjoint i64 %.1.i, 4
  %.not1013.i = icmp slt i8 %i.bz, 0
  %spec.select11.i = select i1 %.not1013.i, i64 %i.cc, i64 %.1.i
  br label %get_gist_range_class.exit

get_gist_range_class.exit:                        ; preds = %.lr.ph, %bb.b
  %.2.i = phi i64 [ %spec.select11.i, %bb.b ], [ 8, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.2.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = add i16 %.067108, 1                     ; 2 uses
  %.not = icmp ugt i16 %i.cg, %i.ab
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !8

bb.c:                                             ; preds = %.preheader
  %i.ch = and i32 %.263.8, -5
  switch i32 %i.ch, label %bb.aw [
    i32 0, label %bb.d
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 408
  %i.cj = load i32, ptr %i.ci, align 8
  %.not235.i = icmp eq i32 %i.cj, 0               ; 3 uses
  %i.ck = load i32, ptr %i.g, align 8
  %i.cl = add i32 %i.ck, 65535                    ; 2 uses
  %i.cm = and i32 %i.cl, 65535                    ; 11 uses
  %i.cn = add nsw i32 %i.cm, -1                   ; 3 uses
  %i.co = zext nneg i32 %i.cm to i64              ; 12 uses
  %i.cp = tail call ptr @palloc_mul(i64 noundef 32, i64 noundef %i.co) #8 ; 8 uses
  %i.cq = tail call ptr @palloc_mul(i64 noundef 32, i64 noundef %i.co) #8 ; 7 uses
  %.not242.i = icmp eq i32 %i.cm, 0
  br i1 %.not242.i, label %._crit_edge286.thread.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.cr = trunc i32 %i.cl to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0243.i = phi i16 [ 1, %.lr.ph.i ], [ %i.da, %bb.e ] ; 2 uses
  %i.cs = zext i16 %.0243.i to i64                ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = call ptr @pg_detoast_datum(ptr noundef %i.cv) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cx = getelementptr [32 x i8], ptr %i.cp, i64 %i.cs ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -32
  %i.cz = getelementptr i8, ptr %i.cx, i64 -16
  call void @range_deserialize(ptr noundef nonnull %i.r, ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef %i.cz, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.da = add i16 %.0243.i, 1                     ; 2 uses
  %.not.i77 = icmp ugt i16 %i.da, %i.cr
  br i1 %.not.i77, label %._crit_edge.i, label %bb.e, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.e
  %i.db = shl nuw nsw i64 %i.co, 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cq, ptr align 8 %i.cp, i64 %i.db, i1 false)
  call void @qsort_arg(ptr noundef %i.cp, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_lower, ptr noundef nonnull %i.r) #8
  call void @qsort_arg(ptr noundef %i.cq, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_upper, ptr noundef nonnull %i.r) #8
  %i.dc = add nuw nsw i32 %i.cm, 1                ; 2 uses
  %i.dd = lshr i32 %i.dc, 1                       ; 2 uses
  %i.de = lshr i32 %i.cm, 1                       ; 2 uses
  %i.df = uitofp nneg i32 %i.cm to float          ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 400 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 300 ; 4 uses
  br label %.lr.ph247.i

.lr.ph247.i:                                      ; preds = %range_gist_consider_split.exit.i, %._crit_edge.i
  %.0170275.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %.1171245.i, %range_gist_consider_split.exit.i ]
  %.0173274.i = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.di, %range_gist_consider_split.exit.i ]
  %.0177273.i = phi i32 [ 0, %._crit_edge.i ], [ %.1178.lcssa.i, %range_gist_consider_split.exit.i ] ; 3 uses
  %.0181272.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.i, %range_gist_consider_split.exit.i ]
  %.sroa.35.0271.i = phi i32 [ 0, %._crit_edge.i ], [ %.sroa.35.2.i, %range_gist_consider_split.exit.i ] ; 3 uses
  %.sroa.31.0270.i = phi float [ 0.000000e+00, %._crit_edge.i ], [ %.sroa.31.2.i, %range_gist_consider_split.exit.i ] ; 5 uses
  %.sroa.27.0269.i = phi float [ 0.000000e+00, %._crit_edge.i ], [ %.sroa.27.2.i, %range_gist_consider_split.exit.i ] ; 4 uses
  %.sroa.23.0268.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.23.2.i, %range_gist_consider_split.exit.i ] ; 3 uses
  %.sroa.19222.0267.i = phi ptr [ null, %._crit_edge.i ], [ %.sroa.19222.2.i, %range_gist_consider_split.exit.i ] ; 3 uses
  %.sroa.13.0266.i = phi i8 [ 1, %._crit_edge.i ], [ %.sroa.13.2.i, %range_gist_consider_split.exit.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph247.i
  %indvars.iv.i = phi i64 [ %.0181272.i, %.lr.ph247.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.1171245.i = phi ptr [ %.0170275.i, %.lr.ph247.i ], [ %spec.select.i, %bb.g ] ; 6 uses
  %i.di = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %indvars.iv.i ; 5 uses
  %i.dj = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef %.0173274.i, ptr noundef %i.di) #8
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dm = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %i.dl, ptr noundef %.1171245.i) #8
  %i.dn = icmp sgt i32 %i.dm, 0
  %spec.select.i = select i1 %i.dn, ptr %i.dl, ptr %.1171245.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.do = icmp slt i64 %indvars.iv.next.i, %i.co
  br i1 %i.do, label %bb.f, label %.critedge.i, !llvm.loop !10

bb.h:                                             ; preds = %bb.f
  %i.dp = trunc nsw i64 %indvars.iv.i to i32      ; 4 uses
  %i.dq = icmp slt i32 %.0177273.i, %i.cm
  br i1 %i.dq, label %.lr.ph262.preheader.i, label %.critedge2.i

.lr.ph262.preheader.i:                            ; preds = %bb.h
  %i.dr = sext i32 %.0177273.i to i64
  br label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %bb.i, %.lr.ph262.preheader.i
  %indvars.iv350.i = phi i64 [ %i.dr, %.lr.ph262.preheader.i ], [ %indvars.iv.next351.i, %bb.i ] ; 3 uses
  %i.ds = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %indvars.iv350.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %i.dt, ptr noundef %.1171245.i) #8
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %bb.i, label %.critedge2.loopexit.split.loop.exit403.i

bb.i:                                             ; preds = %.lr.ph262.i
  %indvars.iv.next351.i = add nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next351.i, %i.co
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph262.i, !llvm.loop !11

.critedge2.loopexit.split.loop.exit403.i:         ; preds = %.lr.ph262.i
  %i.dw = trunc nsw i64 %indvars.iv350.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.i, %.critedge2.loopexit.split.loop.exit403.i, %bb.h
  %.1178.lcssa.i = phi i32 [ %.0177273.i, %bb.h ], [ %i.dw, %.critedge2.loopexit.split.loop.exit403.i ], [ %i.cm, %bb.i ] ; 4 uses
  %.not.i.i = icmp sgt i32 %i.dd, %i.dp
  %..i.i = call i32 @llvm.smin.i32(i32 %.1178.lcssa.i, i32 %i.de)
  %.044.i.i = select i1 %.not.i.i, i32 %..i.i, i32 %i.dp ; 3 uses
  %i.dx = sub i32 %i.cm, %.044.i.i
  %i.dy = call i32 @llvm.smin.i32(i32 %.044.i.i, i32 %i.dx)
  %i.dz = sitofp i32 %i.dy to float
  %i.ea = fdiv float %i.dz, %i.df                 ; 3 uses
  %i.eb = fpext float %i.ea to double
  %i.ec = fcmp ogt double %i.eb, 3.000000e-01
  br i1 %i.ec, label %bb.j, label %range_gist_consider_split.exit.i

bb.j:                                             ; preds = %.critedge2.i
  br i1 %.not235.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = load i64, ptr %.1171245.i, align 8
  %i.ee = load i64, ptr %i.di, align 8
  %i.ef = load i32, ptr %i.dh, align 4
  %i.eg = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.dg, i32 noundef %i.ef, i64 noundef %i.ed, i64 noundef %i.ee) #8
  %i.eh = bitcast i64 %i.eg to double             ; 2 uses
  %.inv.i.i.i = fcmp oge double %i.eh, 0.000000e+00
  %..i.i.i = select i1 %.inv.i.i.i, double %i.eh, double 0.000000e+00
  %i.ei = fptrunc double %..i.i.i to float
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ej = sub i32 %.1178.lcssa.i, %i.dp
  %i.ek = sitofp i32 %i.ej to float
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.043.i.i = phi float [ %i.ei, %bb.k ], [ %i.ek, %bb.l ] ; 3 uses
  %i.el = trunc nuw i8 %.sroa.13.0266.i to i1
  %i.em = fcmp olt float %.043.i.i, %.sroa.31.0270.i
  %or.cond.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = fcmp oeq float %.043.i.i, %.sroa.31.0270.i
  %i.eo = fcmp ogt float %i.ea, %.sroa.27.0269.i
  %or.cond232.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond232.i, label %bb.o, label %range_gist_consider_split.exit.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ep = sub i32 %.1178.lcssa.i, %.044.i.i
  br label %range_gist_consider_split.exit.i

range_gist_consider_split.exit.i:                 ; preds = %bb.o, %bb.n, %.critedge2.i
  %.sroa.13.2.i = phi i8 [ 0, %bb.o ], [ %.sroa.13.0266.i, %.critedge2.i ], [ 0, %bb.n ] ; 2 uses
  %.sroa.19222.2.i = phi ptr [ %.1171245.i, %bb.o ], [ %.sroa.19222.0267.i, %.critedge2.i ], [ %.sroa.19222.0267.i, %bb.n ] ; 2 uses
  %.sroa.23.2.i = phi ptr [ %i.di, %bb.o ], [ %.sroa.23.0268.i, %.critedge2.i ], [ %.sroa.23.0268.i, %bb.n ] ; 2 uses
  %.sroa.27.2.i = phi float [ %i.ea, %bb.o ], [ %.sroa.27.0269.i, %.critedge2.i ], [ %.sroa.27.0269.i, %bb.n ] ; 2 uses
  %.sroa.31.2.i = phi float [ %.043.i.i, %bb.o ], [ %.sroa.31.0270.i, %.critedge2.i ], [ %.sroa.31.0270.i, %bb.n ] ; 2 uses
  %.sroa.35.2.i = phi i32 [ %i.ep, %bb.o ], [ %.sroa.35.0271.i, %.critedge2.i ], [ %.sroa.35.0271.i, %bb.n ] ; 2 uses
  %i.eq = icmp sgt i32 %i.cm, %i.dp
  br i1 %i.eq, label %.lr.ph247.i, label %.critedge.i

.critedge.i:                                      ; preds = %range_gist_consider_split.exit.i, %bb.g
  %.sroa.13.0.lcssa.i = phi i8 [ %.sroa.13.0266.i, %bb.g ], [ %.sroa.13.2.i, %range_gist_consider_split.exit.i ]
  %.sroa.19222.0.lcssa.i = phi ptr [ %.sroa.19222.0267.i, %bb.g ], [ %.sroa.19222.2.i, %range_gist_consider_split.exit.i ]
  %.sroa.23.0.lcssa.i = phi ptr [ %.sroa.23.0268.i, %bb.g ], [ %.sroa.23.2.i, %range_gist_consider_split.exit.i ]
  %.sroa.27.0.lcssa.i = phi float [ %.sroa.27.0269.i, %bb.g ], [ %.sroa.27.2.i, %range_gist_consider_split.exit.i ]
  %.sroa.31.0.lcssa.i = phi float [ %.sroa.31.0270.i, %bb.g ], [ %.sroa.31.2.i, %range_gist_consider_split.exit.i ]
  %.sroa.35.0.lcssa.i = phi i32 [ %.sroa.35.0271.i, %bb.g ], [ %.sroa.35.2.i, %range_gist_consider_split.exit.i ]
  %i.er = sext i32 %i.cn to i64                   ; 2 uses
  %i.es = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = zext i32 %i.cn to i64
  br label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %range_gist_consider_split.exit211.i, %.critedge.i
  %.3310.i = phi ptr [ %i.et, %.critedge.i ], [ %i.ey, %range_gist_consider_split.exit211.i ]
  %.1174309.i = phi ptr [ %i.ev, %.critedge.i ], [ %.2175283.i, %range_gist_consider_split.exit211.i ]
  %.2179308.i = phi i64 [ %i.ew, %.critedge.i ], [ %indvars.iv353.i, %range_gist_consider_split.exit211.i ]
  %.2183307.i = phi i32 [ %i.cn, %.critedge.i ], [ %.3184.lcssa.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  %.sroa.35.1306.i = phi i32 [ %.sroa.35.0.lcssa.i, %.critedge.i ], [ %.sroa.35.3.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  %.sroa.31.1305.i = phi float [ %.sroa.31.0.lcssa.i, %.critedge.i ], [ %.sroa.31.3.i, %range_gist_consider_split.exit211.i ] ; 4 uses
  %.sroa.27.1304.i = phi float [ %.sroa.27.0.lcssa.i, %.critedge.i ], [ %.sroa.27.3.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  %.sroa.23.1303.i = phi ptr [ %.sroa.23.0.lcssa.i, %.critedge.i ], [ %.sroa.23.3.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  %.sroa.19222.1302.i = phi ptr [ %.sroa.19222.0.lcssa.i, %.critedge.i ], [ %.sroa.19222.3.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  %.sroa.13.1301.i = phi i8 [ %.sroa.13.0.lcssa.i, %.critedge.i ], [ %.sroa.13.3.i, %range_gist_consider_split.exit211.i ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph285.i
  %indvars.iv353.i = phi i64 [ %.2179308.i, %.lr.ph285.i ], [ %indvars.iv.next354.i, %bb.q ] ; 5 uses
  %.2175283.i = phi ptr [ %.1174309.i, %.lr.ph285.i ], [ %spec.select204.i, %bb.q ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %indvars.iv353.i ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 4 uses
  %i.ez = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %.3310.i, ptr noundef nonnull %i.ey) #8
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.q, label %.critedge4.i

bb.q:                                             ; preds = %bb.p
  %i.fb = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ex, ptr noundef %.2175283.i) #8
  %i.fc = icmp slt i32 %i.fb, 0
  %spec.select204.i = select i1 %i.fc, ptr %i.ex, ptr %.2175283.i
  %indvars.iv.next354.i = add nsw i64 %indvars.iv353.i, -1
  %i.fd = trunc nuw i64 %indvars.iv353.i to i32
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.p, label %._crit_edge286.i, !llvm.loop !12

.critedge4.i:                                     ; preds = %bb.p
  %i.ff = trunc nuw i64 %indvars.iv353.i to i32   ; 3 uses
  %i.fg = icmp sgt i32 %.2183307.i, -1
  br i1 %i.fg, label %.lr.ph297.preheader.i, label %.critedge6.i

.lr.ph297.preheader.i:                            ; preds = %.critedge4.i
  %i.fh = zext nneg i32 %.2183307.i to i64
  br label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %bb.r, %.lr.ph297.preheader.i
  %indvars.iv356.i = phi i64 [ %i.fh, %.lr.ph297.preheader.i ], [ %indvars.iv.next357.i, %bb.r ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %indvars.iv356.i
  %i.fj = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef %i.fi, ptr noundef %.2175283.i) #8
  %i.fk = icmp sgt i32 %i.fj, -1
  br i1 %i.fk, label %bb.r, label %.critedge6.loopexit.split.loop.exit405.i

bb.r:                                             ; preds = %.lr.ph297.i
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, -1
  %i.fl = icmp sgt i64 %indvars.iv356.i, 0
  br i1 %i.fl, label %.lr.ph297.i, label %.critedge6.i, !llvm.loop !13

.critedge6.loopexit.split.loop.exit405.i:         ; preds = %.lr.ph297.i
  %i.fm = trunc nuw nsw i64 %indvars.iv356.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %bb.r, %.critedge6.loopexit.split.loop.exit405.i, %.critedge4.i
  %.3184.lcssa.i = phi i32 [ %.2183307.i, %.critedge4.i ], [ %i.fm, %.critedge6.loopexit.split.loop.exit405.i ], [ -1, %bb.r ] ; 3 uses
  %i.fn = add nsw i32 %.3184.lcssa.i, 1           ; 2 uses
  %i.fo = add nuw nsw i32 %i.ff, 1                ; 2 uses
  %.not.i205.i = icmp slt i32 %i.fn, %i.dd
  %..i210.i = call i32 @llvm.smin.i32(i32 %i.fo, i32 %i.de)
  %.044.i206.i = select i1 %.not.i205.i, i32 %..i210.i, i32 %i.fn ; 3 uses
  %i.fp = sub i32 %i.cm, %.044.i206.i
  %i.fq = call i32 @llvm.smin.i32(i32 %.044.i206.i, i32 %i.fp)
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = fdiv float %i.fr, %i.df                 ; 3 uses
  %i.ft = fpext float %i.fs to double
  %i.fu = fcmp ogt double %i.ft, 3.000000e-01
  br i1 %i.fu, label %bb.s, label %range_gist_consider_split.exit211.i

bb.s:                                             ; preds = %.critedge6.i
  br i1 %.not235.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = load i64, ptr %i.ey, align 8
  %i.fw = load i64, ptr %.2175283.i, align 8
  %i.fx = load i32, ptr %i.dh, align 4
  %i.fy = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.dg, i32 noundef %i.fx, i64 noundef %i.fv, i64 noundef %i.fw) #8
  %i.fz = bitcast i64 %i.fy to double             ; 2 uses
  %.inv.i.i208.i = fcmp oge double %i.fz, 0.000000e+00
  %..i.i209.i = select i1 %.inv.i.i208.i, double %i.fz, double 0.000000e+00
  %i.ga = fptrunc double %..i.i209.i to float
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.gb = sub i32 %i.ff, %.3184.lcssa.i
  %i.gc = sitofp i32 %i.gb to float
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.043.i207.i = phi float [ %i.ga, %bb.t ], [ %i.gc, %bb.u ] ; 3 uses
  %i.gd = trunc nuw i8 %.sroa.13.1301.i to i1
  %i.ge = fcmp olt float %.043.i207.i, %.sroa.31.1305.i
  %or.cond233.i = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond233.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = fcmp oeq float %.043.i207.i, %.sroa.31.1305.i
  %i.gg = fcmp ogt float %i.fs, %.sroa.27.1304.i
  %or.cond234.i = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond234.i, label %bb.x, label %range_gist_consider_split.exit211.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gh = sub i32 %i.fo, %.044.i206.i
  br label %range_gist_consider_split.exit211.i

range_gist_consider_split.exit211.i:              ; preds = %bb.x, %bb.w, %.critedge6.i
  %.sroa.13.3.i = phi i8 [ 0, %bb.x ], [ %.sroa.13.1301.i, %.critedge6.i ], [ 0, %bb.w ] ; 2 uses
  %.sroa.19222.3.i = phi ptr [ %i.ey, %bb.x ], [ %.sroa.19222.1302.i, %.critedge6.i ], [ %.sroa.19222.1302.i, %bb.w ] ; 2 uses
  %.sroa.23.3.i = phi ptr [ %.2175283.i, %bb.x ], [ %.sroa.23.1303.i, %.critedge6.i ], [ %.sroa.23.1303.i, %bb.w ] ; 2 uses
  %.sroa.27.3.i = phi float [ %i.fs, %bb.x ], [ %.sroa.27.1304.i, %.critedge6.i ], [ %.sroa.27.1304.i, %bb.w ]
  %.sroa.31.3.i = phi float [ %.043.i207.i, %bb.x ], [ %.sroa.31.1305.i, %.critedge6.i ], [ %.sroa.31.1305.i, %bb.w ]
  %.sroa.35.3.i = phi i32 [ %i.gh, %bb.x ], [ %.sroa.35.1306.i, %.critedge6.i ], [ %.sroa.35.1306.i, %bb.w ] ; 2 uses
  %i.gi = icmp sgt i32 %i.ff, -1
  br i1 %i.gi, label %.lr.ph285.i, label %._crit_edge286.i

._crit_edge286.i:                                 ; preds = %range_gist_consider_split.exit211.i, %bb.q
  %.sroa.13.1.lcssa.i = phi i8 [ %.sroa.13.1301.i, %bb.q ], [ %.sroa.13.3.i, %range_gist_consider_split.exit211.i ]
  %.sroa.19222.1.lcssa.i = phi ptr [ %.sroa.19222.1302.i, %bb.q ], [ %.sroa.19222.3.i, %range_gist_consider_split.exit211.i ] ; 2 uses
  %.sroa.23.1.lcssa.i = phi ptr [ %.sroa.23.1303.i, %bb.q ], [ %.sroa.23.3.i, %range_gist_consider_split.exit211.i ] ; 2 uses
  %.sroa.35.1.lcssa.i = phi i32 [ %.sroa.35.1306.i, %bb.q ], [ %.sroa.35.3.i, %range_gist_consider_split.exit211.i ]
  %i.gj = trunc nuw i8 %.sroa.13.1.lcssa.i to i1
  br i1 %i.gj, label %._crit_edge286.thread.i, label %bb.y

._crit_edge286.thread.critedge.i:                 ; preds = %bb.d
  tail call void @qsort_arg(ptr noundef %i.cp, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_lower, ptr noundef nonnull %i.r) #8
  tail call void @qsort_arg(ptr noundef %i.cq, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_upper, ptr noundef nonnull %i.r) #8
  br label %._crit_edge286.thread.i

._crit_edge286.thread.i:                          ; preds = %._crit_edge286.thread.critedge.i, %._crit_edge286.i
  call fastcc void @range_gist_fallback_split(ptr noundef nonnull %i.r, ptr noundef nonnull readonly %i.g, ptr noundef nonnull %i.j)
  br label %range_gist_double_sorting_split.exit

bb.y:                                             ; preds = %._crit_edge286.i
  %i.gk = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.co) #8
  store ptr %i.gk, ptr %i.j, align 8
  %i.gl = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.co) #8
  store ptr %i.gl, ptr %i.aa, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store i32 0, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 7 uses
  store i32 0, ptr %i.gn, align 8
  %i.go = call ptr @palloc_mul(i64 noundef 16, i64 noundef %i.co) #8 ; 3 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.dc, i32 2)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ak, %bb.y
  %indvars.iv359.i = phi i64 [ 1, %bb.y ], [ %indvars.iv.next360.i, %bb.ak ] ; 5 uses
  %.0185318.i = phi i32 [ 0, %bb.y ], [ %.1186.i, %bb.ak ] ; 4 uses
  %.0187317.i = phi ptr [ null, %bb.y ], [ %.2189.i, %bb.ak ] ; 3 uses
  %.0191316.i = phi ptr [ null, %bb.y ], [ %.2193.i, %bb.ak ] ; 3 uses
  %indvars135 = trunc i64 %indvars.iv359.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv359.i
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = call ptr @pg_detoast_datum(ptr noundef %i.gr) #8 ; 5 uses
  call void @range_deserialize(ptr noundef nonnull %i.r, ptr noundef %i.gs, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #8
  %i.gt = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %2, ptr noundef %.sroa.19222.1.lcssa.i) #8
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.gv = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %1, ptr noundef %.sroa.23.1.lcssa.i) #8
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gx = sext i32 %.0185318.i to i64
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.go, i64 %i.gx ; 2 uses
  store i32 %indvars135, ptr %i.gy, align 8
  br i1 %.not235.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gz = load i64, ptr %1, align 8
  %i.ha = load i64, ptr %.sroa.23.1.lcssa.i, align 8
  %i.hb = load i32, ptr %i.dh, align 4
  %i.hc = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.dg, i32 noundef %i.hb, i64 noundef %i.gz, i64 noundef %i.ha) #8
  %i.hd = bitcast i64 %i.hc to double             ; 2 uses
  %.inv.i.i = fcmp oge double %i.hd, 0.000000e+00
  %..i212.i = select i1 %.inv.i.i, double %i.hd, double 0.000000e+00
  %i.he = load i64, ptr %.sroa.19222.1.lcssa.i, align 8
  %i.hf = load i64, ptr %2, align 8
  %i.hg = load i32, ptr %i.dh, align 4
  %i.hh = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.dg, i32 noundef %i.hg, i64 noundef %i.he, i64 noundef %i.hf) #8
  %i.hi = bitcast i64 %i.hh to double             ; 2 uses
  %.inv.i213.i = fcmp oge double %i.hi, 0.000000e+00
  %..i214.i = select i1 %.inv.i213.i, double %i.hi, double 0.000000e+00
  %i.hj = fsub double %..i212.i, %..i214.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i = phi double [ %i.hj, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store double %.sink.i, ptr %i.hk, align 8
  %i.hl = add i32 %.0185318.i, 1
  br label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.hm = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ho = call fastcc ptr @range_super_union(ptr noundef nonnull %i.r, ptr noundef %.0191316.i, ptr noundef %i.gs)
  %.pre359.i = load i32, ptr %i.gm, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hp = phi i32 [ %.pre359.i, %bb.af ], [ %i.hm, %bb.ae ] ; 2 uses
  %.1192.i = phi ptr [ %i.ho, %bb.af ], [ %i.gs, %bb.ae ]
  %i.hq = load ptr, ptr %i.j, align 8
  %i.hr = add i32 %i.hp, 1
  store i32 %i.hr, ptr %i.gm, align 8
  %i.hs = sext i32 %i.hp to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.hs
  %3 = trunc nuw i64 %indvars.iv359.i to i16
  store i16 %3, ptr %i.ht, align 2
  br label %bb.ak

bb.ah:                                            ; preds = %bb.z
  %i.hu = load i32, ptr %i.gn, align 8            ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hw = call fastcc ptr @range_super_union(ptr noundef nonnull %i.r, ptr noundef %.0187317.i, ptr noundef %i.gs)
  %.pre.i = load i32, ptr %i.gn, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hx = phi i32 [ %.pre.i, %bb.ai ], [ %i.hu, %bb.ah ] ; 2 uses
  %.1188.i = phi ptr [ %i.hw, %bb.ai ], [ %i.gs, %bb.ah ]
  %i.hy = load ptr, ptr %i.aa, align 8
  %i.hz = add i32 %i.hx, 1
  store i32 %i.hz, ptr %i.gn, align 8
  %i.ia = sext i32 %i.hx to i64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %i.ia
  %4 = trunc nuw i64 %indvars.iv359.i to i16
  store i16 %4, ptr %i.ib, align 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.ad
  %.2193.i = phi ptr [ %.0191316.i, %bb.ad ], [ %.1192.i, %bb.ag ], [ %.0191316.i, %bb.aj ] ; 3 uses
  %.2189.i = phi ptr [ %.0187317.i, %bb.ad ], [ %.0187317.i, %bb.ag ], [ %.1188.i, %bb.aj ] ; 3 uses
  %.1186.i = phi i32 [ %i.hl, %bb.ad ], [ %.0185318.i, %bb.ag ], [ %.0185318.i, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next360.i, %wide.trip.count
  br i1 %exitcond, label %._crit_edge322.i, label %bb.z, !llvm.loop !14

._crit_edge322.i:                                 ; preds = %bb.ak
  %i.ic = icmp sgt i32 %.1186.i, 0
  br i1 %i.ic, label %bb.al, label %.loopexit.i

bb.al:                                            ; preds = %._crit_edge322.i
  %i.id = zext nneg i32 %.1186.i to i64
  call void @pg_qsort(ptr noundef %i.go, i64 noundef %i.id, i64 noundef 16, ptr noundef nonnull @common_entry_cmp) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %bb.al
  %i.ie = phi i32 [ 0, %bb.al ], [ %i.jd, %bb.at ]
  %.2328.i = phi i16 [ 0, %bb.al ], [ %i.jc, %bb.at ] ; 2 uses
  %.3190327.i = phi ptr [ %.2189.i, %bb.al ], [ %.5.i, %bb.at ] ; 2 uses
  %.3194326.i = phi ptr [ %.2193.i, %bb.al ], [ %.5196.i, %bb.at ] ; 2 uses
  %i.if = zext i16 %.2328.i to i64
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 8            ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = call ptr @pg_detoast_datum(ptr noundef %i.il) #8 ; 4 uses
  %i.in = icmp sgt i32 %.sroa.35.1.lcssa.i, %i.ie
  br i1 %i.in, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.io = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iq = call fastcc ptr @range_super_union(ptr noundef nonnull %i.r, ptr noundef %.3194326.i, ptr noundef %i.im)
  %.pre361.i = load i32, ptr %i.gm, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ir = phi i32 [ %.pre361.i, %bb.ao ], [ %i.io, %bb.an ] ; 2 uses
  %.4195.i = phi ptr [ %i.iq, %bb.ao ], [ %i.im, %bb.an ]
  %i.is = load ptr, ptr %i.j, align 8
  %i.it = add i32 %i.ir, 1
  store i32 %i.it, ptr %i.gm, align 8
  br label %bb.at

bb.aq:                                            ; preds = %bb.am
  %i.iu = load i32, ptr %i.gn, align 8            ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iw = call fastcc ptr @range_super_union(ptr noundef nonnull %i.r, ptr noundef %.3190327.i, ptr noundef %i.im)
  %.pre360.i = load i32, ptr %i.gn, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ix = phi i32 [ %.pre360.i, %bb.ar ], [ %i.iu, %bb.aq ] ; 2 uses
  %.4.i = phi ptr [ %i.iw, %bb.ar ], [ %i.im, %bb.aq ]
  %i.iy = load ptr, ptr %i.aa, align 8
  %i.iz = add i32 %i.ix, 1
  store i32 %i.iz, ptr %i.gn, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.sink411.i.a = phi i32 [ %i.ix, %bb.as ], [ %i.ir, %bb.ap ]
  %.sink409.i.a = phi ptr [ %i.iy, %bb.as ], [ %i.is, %bb.ap ]
  %.5196.i = phi ptr [ %.3194326.i, %bb.as ], [ %.4195.i, %bb.ap ] ; 2 uses
  %.5.i = phi ptr [ %.4.i, %bb.as ], [ %.3190327.i, %bb.ap ] ; 2 uses
  %.sink407.i = trunc i32 %i.ih to i16
  %i.ja = sext i32 %.sink411.i.a to i64
  %i.jb = getelementptr inbounds [2 x i8], ptr %.sink409.i.a, i64 %i.ja
  store i16 %.sink407.i, ptr %i.jb, align 2
  %i.jc = add i16 %.2328.i, 1                     ; 2 uses
  %i.jd = zext i16 %i.jc to i32                   ; 2 uses
  %i.je = icmp samesign ugt i32 %.1186.i, %i.jd
  br i1 %i.je, label %bb.am, label %.loopexit.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %bb.at, %._crit_edge322.i
  %.6197.i = phi ptr [ %.2193.i, %._crit_edge322.i ], [ %.5196.i, %bb.at ]
  %.6.i = phi ptr [ %.2189.i, %._crit_edge322.i ], [ %.5.i, %bb.at ]
  %i.jf = ptrtoint ptr %.6197.i to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.jf, ptr %i.jg, align 8
  %i.jh = ptrtoint ptr %.6.i to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.jh, ptr %i.ji, align 8
  br label %range_gist_double_sorting_split.exit

bb.au:                                            ; preds = %bb.c
  tail call fastcc void @range_gist_single_sorting_split(ptr noundef %i.r, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, i1 noundef zeroext true)
  br label %range_gist_double_sorting_split.exit

bb.av:                                            ; preds = %bb.c
  tail call fastcc void @range_gist_single_sorting_split(ptr noundef %i.r, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %range_gist_double_sorting_split.exit

bb.aw:                                            ; preds = %bb.c
  tail call fastcc void @range_gist_fallback_split(ptr noundef %i.r, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j)
  br label %range_gist_double_sorting_split.exit

bb.ax:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  br i1 %i.al, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %i.d, align 16
  br label %bb.bf

bb.az:                                            ; preds = %bb.ax
  %i.jj = add i32 %i.ag, %i.ak
  %i.jk = add i32 %i.jj, %i.ac                    ; 3 uses
  %i.jl = sub i32 %i.u, %i.jk                     ; 2 uses
  %i.jm = add i32 %i.aj, %i.ak
  %i.jn = add i32 %i.jm, %i.ai
  %i.jo = add i32 %i.jn, %i.ah                    ; 3 uses
  %i.jp = sub i32 %i.u, %i.jo                     ; 2 uses
  %i.jq = icmp sgt i32 %i.jl, 0
  %i.jr = icmp sgt i32 %i.jk, 0
  %or.cond = and i1 %i.jr, %i.jq
  br i1 %or.cond, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.js = sub nsw i32 %i.jl, %i.jk
  %i.jt = tail call i32 @llvm.abs.i32(i32 %i.js, i1 true)
  %i.ju = sub i32 %i.jp, %i.jo
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 false)
  %.not75 = icmp sgt i32 %i.jt, %i.jv
  br i1 %.not75, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.d, align 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1, ptr %i.jw, align 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 1, ptr %i.jx, align 16
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.jy = icmp sgt i32 %i.jp, 0
  %i.jz = icmp sgt i32 %i.jo, 0
  %or.cond3 = and i1 %i.jz, %i.jy
  br i1 %or.cond3, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store <4 x i32> splat (i32 1), ptr %i.d, align 16
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ka = sext i32 %.263.8 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ka
  store i32 1, ptr %i.kb, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.bd, %bb.ay
  %i.kc = load i32, ptr %i.g, align 8
  %i.kd = add i32 %i.kc, 65535                    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store i32 0, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  store i32 0, ptr %i.kf, align 8
  %i.kg = and i32 %i.kd, 65535
  %.not35.i = icmp eq i32 %i.kg, 0
  br i1 %.not35.i, label %range_gist_class_split.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.bf
  %i.kh = trunc i32 %i.kd to i16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bo, %.lr.ph.i78
  %.038.i = phi i16 [ 1, %.lr.ph.i78 ], [ %i.li, %bb.bo ] ; 3 uses
  %.03037.i = phi ptr [ null, %.lr.ph.i78 ], [ %.2.i82, %bb.bo ] ; 2 uses
  %.03136.i = phi ptr [ null, %.lr.ph.i78 ], [ %.233.i, %bb.bo ] ; 2 uses
  %i.ki = zext i16 %.038.i to i64
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = tail call ptr @pg_detoast_datum(ptr noundef %i.kl) #8 ; 5 uses
  %i.kn = tail call signext i8 @range_get_flags(ptr noundef %i.km) #8 ; 3 uses
  %i.ko = and i8 %i.kn, 1
  %.not.i.i79 = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i79, label %bb.bh, label %get_gist_range_class.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.kp = lshr i8 %i.kn, 3
  %.112.i.i = and i8 %i.kp, 3
  %.1.i.i = zext nneg i8 %.112.i.i to i64         ; 2 uses
  %i.kq = or disjoint i64 %.1.i.i, 4
  %.not1013.i.i = icmp slt i8 %i.kn, 0
  %spec.select11.i.i = select i1 %.not1013.i.i, i64 %i.kq, i64 %.1.i.i
  br label %get_gist_range_class.exit.i

get_gist_range_class.exit.i:                      ; preds = %bb.bh, %bb.bg
  %.2.i.i = phi i64 [ %spec.select11.i.i, %bb.bh ], [ 8, %bb.bg ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.2.i.i
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %get_gist_range_class.exit.i
  %i.ku = load i32, ptr %i.ke, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@range_gist_fallback_split:bb.a
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call fastcc ptr @range_super_union(ptr noundef %0, ptr noundef %.03136, ptr noundef %i.p)
  %.pre40 = load i32, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi i32 [ %.pre40, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.132 = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %2, align 8
  %i.v = add i32 %i.t, 1
  store i32 %i.v, ptr %i.d, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.e, align 8              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc ptr @range_super_union(ptr noundef %0, ptr noundef %.03037, ptr noundef %i.p)
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = phi i32 [ %.pre, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %i.y, %bb.g ], [ %i.p, %bb.f ]
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink = phi i32 [ %i.z, %bb.h ], [ %i.t, %bb.e ]
  %.sink45 = phi ptr [ %i.aa, %bb.h ], [ %i.u, %bb.e ]
  %.233 = phi ptr [ %.03136, %bb.h ], [ %.132, %bb.e ] ; 2 uses
  %.2 = phi ptr [ %.1, %bb.h ], [ %.03037, %bb.e ] ; 2 uses
  %i.ac = sext i32 %.sink to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %.sink45, i64 %i.ac
  store i16 %.038, ptr %i.ad, align 2
  %i.ae = add i16 %.038, 1                        ; 3 uses
  %i.af = zext i16 %i.ae to i32
  %.not = icmp ugt i16 %i.ae, %i.j
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %.233 to i64
  %i.ah = ptrtoint ptr %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.031.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.031.lcssa, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.030.lcssa, ptr %i.aj, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @range_gist_same(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call signext i8 @range_get_flags(ptr noundef %i.d) #8
  %i.l = tail call signext i8 @range_get_flags(ptr noundef %i.h) #8
  %.not = icmp eq i8 %i.k, %i.l
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @range_get_typcache(ptr noundef nonnull %0, i32 noundef %i.n) #8
  %i.p = tail call zeroext i1 @range_eq_internal(ptr noundef %i.o, ptr noundef %i.d, ptr noundef %i.h) #8
  %i.q = zext i1 %i.p to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i8 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.r = inttoptr i64 %i.j to ptr
  store i8 %storemerge, ptr %i.r, align 1
  ret i64 %i.j
}

declare zeroext i1 @range_eq_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @range_set_contain_empty(ptr noundef) local_unnamed_addr #2

declare ptr @make_range(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overright_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_after_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overlaps_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_before_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overleft_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_adjacent_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_contains_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overright_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_after_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overlaps_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_before_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_overleft_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_adjacent_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_contains_multirange_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @range_contains_elem_internal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @range_contained_by_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @multirange_contains_range_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multirange_get_bounds(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @single_bound_cmp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call i32 @range_cmp_bounds(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal i32 @interval_cmp_lower(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @range_cmp_bounds(ptr noundef %2, ptr noundef %0, ptr noundef %1) #8
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @interval_cmp_upper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = tail call i32 @range_cmp_bounds(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  ret i32 %i.c
}

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @common_entry_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = fcmp olt double %i.b, %i.d
  %i.f = fcmp ogt double %i.b, %i.d
  %. = zext i1 %i.f to i32
  %.0 = select i1 %i.e, i32 -1, i32 %.
  ret i32 %.0
}

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
end_hunk_1
