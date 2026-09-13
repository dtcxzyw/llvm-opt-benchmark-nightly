Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/rangetypes_gist?download=true
inline.NumInlined: 81
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@errstart_cold

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @range_deserialize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @range_get_flags(ptr noundef) local_unnamed_addr #2

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
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  %i.co = zext nneg i32 %i.cm to i64              ; 12 uses
  %i.cp = tail call ptr @palloc_mul(i64 noundef 32, i64 noundef %i.co) #8 ; 8 uses
  %i.cq = tail call ptr @palloc_mul(i64 noundef 32, i64 noundef %i.co) #8 ; 7 uses
  %.not242.i = icmp eq i32 %i.cm, 0
  br i1 %.not242.i, label %._crit_edge286.thread.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.cr = trunc i32 %i.cl to i16                  ; 2 uses
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
  %i.dc = add nuw nsw i32 %i.cm, 1
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
  %3 = zext nneg i32 %i.cn to i64                 ; 3 uses
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %3
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  br label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %range_gist_consider_split.exit211.i, %.critedge.i
  %.3310.i = phi ptr [ %i.es, %.critedge.i ], [ %i.ew, %range_gist_consider_split.exit211.i ]
  %.1174309.i = phi ptr [ %i.eu, %.critedge.i ], [ %.2175283.i, %range_gist_consider_split.exit211.i ]
  %.2179308.i = phi i64 [ %3, %.critedge.i ], [ %indvars.iv353.i, %range_gist_consider_split.exit211.i ]
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
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %indvars.iv353.i ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 4 uses
  %i.ex = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %.3310.i, ptr noundef nonnull %i.ew) #8
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.q, label %.critedge4.i

bb.q:                                             ; preds = %bb.p
  %i.ez = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ev, ptr noundef %.2175283.i) #8
  %i.fa = icmp slt i32 %i.ez, 0
  %spec.select204.i = select i1 %i.fa, ptr %i.ev, ptr %.2175283.i
  %indvars.iv.next354.i = add nsw i64 %indvars.iv353.i, -1
  %i.fb = trunc nuw i64 %indvars.iv353.i to i32
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.p, label %._crit_edge286.i, !llvm.loop !12

.critedge4.i:                                     ; preds = %bb.p
  %i.fd = trunc nuw i64 %indvars.iv353.i to i32   ; 3 uses
  %i.fe = icmp sgt i32 %.2183307.i, -1
  br i1 %i.fe, label %.lr.ph297.preheader.i, label %.critedge6.i

.lr.ph297.preheader.i:                            ; preds = %.critedge4.i
  %i.ff = zext nneg i32 %.2183307.i to i64
  br label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %bb.r, %.lr.ph297.preheader.i
  %indvars.iv356.i = phi i64 [ %i.ff, %.lr.ph297.preheader.i ], [ %indvars.iv.next357.i, %bb.r ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %indvars.iv356.i
  %i.fh = call i32 @range_cmp_bounds(ptr noundef nonnull %i.r, ptr noundef %i.fg, ptr noundef %.2175283.i) #8
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %bb.r, label %.critedge6.loopexit.split.loop.exit405.i

bb.r:                                             ; preds = %.lr.ph297.i
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, -1
  %i.fj = icmp sgt i64 %indvars.iv356.i, 0
  br i1 %i.fj, label %.lr.ph297.i, label %.critedge6.i, !llvm.loop !13

.critedge6.loopexit.split.loop.exit405.i:         ; preds = %.lr.ph297.i
  %i.fk = trunc nuw nsw i64 %indvars.iv356.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %bb.r, %.critedge6.loopexit.split.loop.exit405.i, %.critedge4.i
  %.3184.lcssa.i = phi i32 [ %.2183307.i, %.critedge4.i ], [ %i.fk, %.critedge6.loopexit.split.loop.exit405.i ], [ -1, %bb.r ] ; 3 uses
  %i.fl = add nsw i32 %.3184.lcssa.i, 1           ; 2 uses
  %i.fm = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %.not.i205.i = icmp slt i32 %i.fl, %i.dd
  %..i210.i = call i32 @llvm.smin.i32(i32 %i.fm, i32 %i.de)
  %.044.i206.i = select i1 %.not.i205.i, i32 %..i210.i, i32 %i.fl ; 3 uses
  %i.fn = sub i32 %i.cm, %.044.i206.i
  %i.fo = call i32 @llvm.smin.i32(i32 %.044.i206.i, i32 %i.fn)
  %i.fp = sitofp i32 %i.fo to float
  %i.fq = fdiv float %i.fp, %i.df                 ; 3 uses
  %i.fr = fpext float %i.fq to double
  %i.fs = fcmp ogt double %i.fr, 3.000000e-01
  br i1 %i.fs, label %bb.s, label %range_gist_consider_split.exit211.i

bb.s:                                             ; preds = %.critedge6.i
  br i1 %.not235.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = load i64, ptr %i.ew, align 8
  %i.fu = load i64, ptr %.2175283.i, align 8
  %i.fv = load i32, ptr %i.dh, align 4
  %i.fw = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.dg, i32 noundef %i.fv, i64 noundef %i.ft, i64 noundef %i.fu) #8
  %i.fx = bitcast i64 %i.fw to double             ; 2 uses
  %.inv.i.i208.i = fcmp oge double %i.fx, 0.000000e+00
  %..i.i209.i = select i1 %.inv.i.i208.i, double %i.fx, double 0.000000e+00
  %i.fy = fptrunc double %..i.i209.i to float
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fz = sub i32 %i.fd, %.3184.lcssa.i
  %i.ga = sitofp i32 %i.fz to float
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.043.i207.i = phi float [ %i.fy, %bb.t ], [ %i.ga, %bb.u ] ; 3 uses
  %i.gb = trunc nuw i8 %.sroa.13.1301.i to i1
  %i.gc = fcmp olt float %.043.i207.i, %.sroa.31.1305.i
  %or.cond233.i = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond233.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = fcmp oeq float %.043.i207.i, %.sroa.31.1305.i
  %i.ge = fcmp ogt float %i.fq, %.sroa.27.1304.i
  %or.cond234.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond234.i, label %bb.x, label %range_gist_consider_split.exit211.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gf = sub i32 %i.fm, %.044.i206.i
  br label %range_gist_consider_split.exit211.i

range_gist_consider_split.exit211.i:              ; preds = %bb.x, %bb.w, %.critedge6.i
  %.sroa.13.3.i = phi i8 [ 0, %bb.x ], [ %.sroa.13.1301.i, %.critedge6.i ], [ 0, %bb.w ] ; 2 uses
  %.sroa.19222.3.i = phi ptr [ %i.ew, %bb.x ], [ %.sroa.19222.1302.i, %.critedge6.i ], [ %.sroa.19222.1302.i, %bb.w ] ; 2 uses
  %.sroa.23.3.i = phi ptr [ %.2175283.i, %bb.x ], [ %.sroa.23.1303.i, %.critedge6.i ], [ %.sroa.23.1303.i, %bb.w ] ; 2 uses
  %.sroa.27.3.i = phi float [ %i.fq, %bb.x ], [ %.sroa.27.1304.i, %.critedge6.i ], [ %.sroa.27.1304.i, %bb.w ]
  %.sroa.31.3.i = phi float [ %.043.i207.i, %bb.x ], [ %.sroa.31.1305.i, %.critedge6.i ], [ %.sroa.31.1305.i, %bb.w ]
  %.sroa.35.3.i = phi i32 [ %i.gf, %bb.x ], [ %.sroa.35.1306.i, %.critedge6.i ], [ %.sroa.35.1306.i, %bb.w ] ; 2 uses
  %i.gg = icmp sgt i32 %i.fd, -1
  br i1 %i.gg, label %.lr.ph285.i, label %._crit_edge286.i

._crit_edge286.i:                                 ; preds = %range_gist_consider_split.exit211.i, %bb.q
  %.sroa.13.1.lcssa.i = phi i8 [ %.sroa.13.1301.i, %bb.q ], [ %.sroa.13.3.i, %range_gist_consider_split.exit211.i ]
  %.sroa.19222.1.lcssa.i = phi ptr [ %.sroa.19222.1302.i, %bb.q ], [ %.sroa.19222.3.i, %range_gist_consider_split.exit211.i ] ; 2 uses
  %.sroa.23.1.lcssa.i = phi ptr [ %.sroa.23.1303.i, %bb.q ], [ %.sroa.23.3.i, %range_gist_consider_split.exit211.i ] ; 2 uses
  %.sroa.35.1.lcssa.i = phi i32 [ %.sroa.35.1306.i, %bb.q ], [ %.sroa.35.3.i, %range_gist_consider_split.exit211.i ]
  %i.gh = trunc nuw i8 %.sroa.13.1.lcssa.i to i1
  br i1 %i.gh, label %._crit_edge286.thread.i, label %bb.y

._crit_edge286.thread.critedge.i:                 ; preds = %bb.d
  tail call void @qsort_arg(ptr noundef %i.cp, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_lower, ptr noundef nonnull %i.r) #8
  tail call void @qsort_arg(ptr noundef %i.cq, i64 noundef %i.co, i64 noundef 32, ptr noundef nonnull @interval_cmp_upper, ptr noundef nonnull %i.r) #8
  br label %._crit_edge286.thread.i

._crit_edge286.thread.i:                          ; preds = %._crit_edge286.thread.critedge.i, %._crit_edge286.i
  call fastcc void @range_gist_fallback_split(ptr noundef nonnull %i.r, ptr noundef nonnull readonly %i.g, ptr noundef nonnull %i.j)
  br label %range_gist_double_sorting_split.exit

bb.y:                                             ; preds = %._crit_edge286.i
  %i.gi = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.co) #8
  store ptr %i.gi, ptr %i.j, align 8
  %i.gj = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.co) #8
  store ptr %i.gj, ptr %i.aa, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store i32 0, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 7 uses
  store i32 0, ptr %i.gl, align 8
  %i.gm = call ptr @palloc_mul(i64 noundef 16, i64 noundef %i.co) #8 ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ak, %bb.y
  %i.gn = phi i32 [ 1, %bb.y ], [ %i.id, %bb.ak ]
  %.1319.i = phi i16 [ 1, %bb.y ], [ %i.ic, %bb.ak ] ; 4 uses
  %.0185318.i = phi i32 [ 0, %bb.y ], [ %.1186.i, %bb.ak ] ; 4 uses
  %.0187317.i = phi ptr [ null, %bb.y ], [ %.2189.i, %bb.ak ] ; 3 uses
  %.0191316.i = phi ptr [ null, %bb.y ], [ %.2193.i, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.go = zext i16 %.1319.i to i64
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.go
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
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.gm, i64 %i.gx ; 2 uses
  store i32 %i.gn, ptr %i.gy, align 8
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
  %i.hm = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
end_hunk_0
begin_hunk_1_@range_gist_picksplit:bb.a
  %i.lj = getelementptr inbounds [2 x i8], ptr %.sink44.i, i64 %i.li
  store i16 %.038.i, ptr %i.lj, align 2
  %i.lk = add i16 %.038.i, 1                      ; 2 uses
  %.not.i83 = icmp ugt i16 %i.lk, %i.kj
  br i1 %.not.i83, label %._crit_edge.loopexit.i, label %bb.bg, !llvm.loop !16

._crit_edge.loopexit.i:                           ; preds = %bb.bo
  %i.ll = ptrtoint ptr %.233.i to i64
  %i.lm = ptrtoint ptr %.2.i82 to i64
  br label %range_gist_class_split.exit

range_gist_class_split.exit:                      ; preds = %bb.bf, %._crit_edge.loopexit.i
  %.031.lcssa.i = phi i64 [ 0, %bb.bf ], [ %i.ll, %._crit_edge.loopexit.i ]
  %.030.lcssa.i = phi i64 [ 0, %bb.bf ], [ %i.lm, %._crit_edge.loopexit.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.031.lcssa.i, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %.030.lcssa.i, ptr %i.lo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %range_gist_double_sorting_split.exit

range_gist_double_sorting_split.exit:             ; preds = %.loopexit.i, %._crit_edge286.thread.i, %bb.av, %bb.aw, %bb.au, %range_gist_class_split.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @range_gist_single_sorting_split(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.RangeBound, align 8         ; 6 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = trunc i32 %i.b to i16
  %i.d = add i16 %i.c, -1                         ; 5 uses
  %i.e = zext i16 %i.d to i64                     ; 4 uses
  %i.f = tail call ptr @palloc_mul(i64 noundef 24, i64 noundef %i.e) #8 ; 5 uses
  %.not61 = icmp eq i16 %i.d, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.062.us = phi i16 [ %i.q, %.lr.ph.split.us ], [ 1, %.lr.ph ] ; 3 uses
  %i.h = zext i16 %.062.us to i32
  %i.i = zext i16 %.062.us to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = call ptr @pg_detoast_datum(ptr noundef %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr [24 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  store i32 %i.h, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  call void @range_deserialize(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %4, ptr noundef %i.p, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.q = add i16 %.062.us, 1                      ; 2 uses
  %.not.us = icmp ugt i16 %i.q, %i.d
  br i1 %.not.us, label %.lr.ph67, label %.lr.ph.split.us, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.062 = phi i16 [ %i.aa, %.lr.ph.split ], [ 1, %.lr.ph ] ; 3 uses
  %i.r = zext i16 %.062 to i32
  %i.s = zext i16 %.062 to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call ptr @pg_detoast_datum(ptr noundef %i.v) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.x = getelementptr [24 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  store i32 %i.r, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -16
  call void @range_deserialize(ptr noundef %0, ptr noundef %i.w, ptr noundef %i.z, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.aa = add i16 %.062, 1                        ; 2 uses
  %.not = icmp ugt i16 %i.aa, %i.d
  br i1 %.not, label %.lr.ph67, label %.lr.ph.split, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.a
  tail call void @qsort_arg(ptr noundef %i.f, i64 noundef %i.e, i64 noundef 24, ptr noundef nonnull @single_bound_cmp, ptr noundef %0) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.ac, align 8
  br label %._crit_edge68

.lr.ph67:                                         ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @qsort_arg(ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 24, ptr noundef nonnull @single_bound_cmp, ptr noundef %0) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = lshr i16 %i.d, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = zext nneg i16 %i.af to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.05364 = phi ptr [ null, %.lr.ph67 ], [ %.2, %bb.i ] ; 2 uses
  %.05563 = phi ptr [ null, %.lr.ph67 ], [ %.257, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = call ptr @pg_detoast_datum(ptr noundef %i.ao) #8 ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %i.aq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = call fastcc ptr @range_super_union(ptr noundef %0, ptr noundef %.05563, ptr noundef %i.ap)
  %.pre73 = load i32, ptr %i.ad, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi i32 [ %.pre73, %bb.d ], [ %i.ar, %bb.c ] ; 2 uses
  %.156 = phi ptr [ %i.at, %bb.d ], [ %i.ap, %bb.c ]
  %i.av = load ptr, ptr %2, align 8
  %i.aw = add i32 %i.au, 1
  store i32 %i.aw, ptr %i.ad, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = call fastcc ptr @range_super_union(ptr noundef %0, ptr noundef %.05364, ptr noundef %i.ap)
  %.pre = load i32, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ba = phi i32 [ %.pre, %bb.g ], [ %i.ax, %bb.f ] ; 2 uses
  %.154 = phi ptr [ %i.az, %bb.g ], [ %i.ap, %bb.f ]
  %i.bb = load ptr, ptr %i.ah, align 8
  %i.bc = add i32 %i.ba, 1
  store i32 %i.bc, ptr %i.ae, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink80 = phi i32 [ %i.ba, %bb.h ], [ %i.au, %bb.e ]
  %.sink78 = phi ptr [ %i.bb, %bb.h ], [ %i.av, %bb.e ]
  %.257 = phi ptr [ %.05563, %bb.h ], [ %.156, %bb.e ] ; 2 uses
  %.2 = phi ptr [ %.154, %bb.h ], [ %.05364, %bb.e ] ; 2 uses
  %.sink = trunc i32 %i.ak to i16
  %i.bd = sext i32 %.sink80 to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %.sink78, i64 %i.bd
  store i16 %.sink, ptr %i.be, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge68.loopexit, label %bb.b, !llvm.loop !18

._crit_edge68.loopexit:                           ; preds = %bb.i
  %i.bf = ptrtoint ptr %.257 to i64
  %i.bg = ptrtoint ptr %.2 to i64
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge, %._crit_edge68.loopexit
  %.055.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.bf, %._crit_edge68.loopexit ]
  %.053.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.bg, %._crit_edge68.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.055.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.053.lcssa, ptr %i.bi, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @range_gist_fallback_split(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((8, 12), (40, 44)) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = add i32 %i.a, 65535                      ; 2 uses
  %i.c = and i32 %i.b, 65535                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store i32 0, ptr %i.e, align 8
  %.not35 = icmp eq i32 %i.c, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.c, 131071
  %i.g = lshr i32 %i.f, 1
  %3 = add nuw nsw i32 %i.g, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = and i32 %3, 65535
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = trunc i32 %i.b to i16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.k = phi i32 [ 1, %.lr.ph ], [ %i.af, %bb.i ]
  %.038 = phi i16 [ 1, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %.03037 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.i ] ; 2 uses
  %.03136 = phi ptr [ null, %.lr.ph ], [ %.233, %bb.i ] ; 2 uses
  %i.l = zext i16 %.038 to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call ptr @pg_detoast_datum(ptr noundef %i.o) #8 ; 4 uses
  %5 = icmp samesign ugt i32 %4, %i.k
  br i1 %5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.d, align 8              ; 2 uses
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

end_hunk_1
