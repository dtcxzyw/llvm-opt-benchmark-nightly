inline.NumInlined: 205
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@blame_chunk:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i, %scan_parent_range.exit.thread.i ] ; 4 uses
  %i.bz = add nsw i64 %indvars.iv.i, %.pre-phi    ; 3 uses
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !30 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -1
  br i1 %i.cc, label %scan_parent_range.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cd = load ptr, ptr %i.ax, align 8, !tbaa !138
  %i.ce = load i32, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i, label %.scan_parent_range.exit.thread41.i_crit_edge

.scan_parent_range.exit.thread41.i_crit_edge:     ; preds = %bb.n
  %.pre159 = trunc nsw i64 %i.bz to i32
  br label %scan_parent_range.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !138
  %i.ch = getelementptr inbounds [56 x i8], ptr %i.cg, i64 %i.bz
  %wide.trip.count.i.i = zext nneg i32 %i.ce to i64
  %i.ci = trunc nsw i64 %i.bz to i32              ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 4 uses
  %.027.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 4 uses
  %.02126.i.i = phi i32 [ 10, %.lr.ph.i.i ], [ %.122.i.i, %bb.t ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %indvars.iv.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @hashmap_iter_init(ptr noundef %i.cj, ptr noundef nonnull %9) #20
  %i.ck = call ptr @hashmap_iter_next(ptr noundef nonnull %9) #20 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not15.i.i.i, label %fingerprint_similarity.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.q
  %.017.i.i.i = phi ptr [ %i.cr, %bb.q ], [ %i.ck, %bb.o ] ; 2 uses
  %.01016.i.i.i = phi i32 [ %.1.i.i.i, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.cl = call ptr @hashmap_get(ptr noundef %i.ch, ptr noundef nonnull %.017.i.i.i, ptr noundef null) #20 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not14.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !313
  %i.co = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !313
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = add nsw i32 %..i.i.i, %.01016.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %i.cq, %bb.p ], [ %.01016.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cr = call ptr @hashmap_iter_next(ptr noundef nonnull %9) #20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %fingerprint_similarity.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !323

fingerprint_similarity.exit.i.i:                  ; preds = %bb.q, %bb.o
  %.010.lcssa.i.i.i = phi i32 [ 0, %bb.o ], [ %.1.i.i.i, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.cs = icmp slt i32 %.010.lcssa.i.i.i, %.02126.i.i
  br i1 %i.cs, label %bb.t, label %bb.r

bb.r:                                             ; preds = %fingerprint_similarity.exit.i.i
  %i.ct = icmp eq i32 %.010.lcssa.i.i.i, %.02126.i.i
  %i.cu = icmp ne i32 %.027.i.i, -1
  %or.cond.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i.i, label %bb.s, label %._crit_edge45.i

._crit_edge45.i:                                  ; preds = %bb.r
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = sub nsw i32 %.027.i.i, %i.ci
  %i.cw = call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.cy = sub i32 %i.cx, %i.ci
  %i.cz = call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = icmp samesign ult i32 %i.cw, %i.cz
  %spec.select52.i = select i1 %i.da, i32 %.027.i.i, i32 %i.cx
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge45.i, %fingerprint_similarity.exit.i.i
  %.122.i.i = phi i32 [ %.02126.i.i, %fingerprint_similarity.exit.i.i ], [ %.02126.i.i, %bb.s ], [ %.010.lcssa.i.i.i, %._crit_edge45.i ]
  %.1.i.i = phi i32 [ %.027.i.i, %fingerprint_similarity.exit.i.i ], [ %spec.select52.i, %bb.s ], [ %.pre.i, %._crit_edge45.i ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %scan_parent_range.exit.i, label %bb.o, !llvm.loop !324

scan_parent_range.exit.i:                         ; preds = %bb.t
  %i.db = icmp sgt i32 %.1.i.i, -1                ; 2 uses
  %spec.select = zext i1 %i.db to i32
  %spec.select199 = select i1 %i.db, i32 %.1.i.i, i32 %i.ci
  br label %scan_parent_range.exit.thread.i

scan_parent_range.exit.thread.i:                  ; preds = %scan_parent_range.exit.i, %.scan_parent_range.exit.thread41.i_crit_edge, %bb.m
  %.sink = phi i32 [ 1, %bb.m ], [ %spec.select, %scan_parent_range.exit.i ], [ 0, %.scan_parent_range.exit.thread41.i_crit_edge ]
  %.pre-phi160.sink = phi i32 [ %i.cb, %bb.m ], [ %spec.select199, %scan_parent_range.exit.i ], [ %.pre159, %.scan_parent_range.exit.thread41.i_crit_edge ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i ; 2 uses
  store i32 %.sink, ptr %i.dc, align 4, !tbaa !325
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %.pre-phi160.sink, ptr %i.dd, align 4, !tbaa !327
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.au
  br i1 %exitcond.not.i, label %guess_line_blames.exit, label %bb.l, !llvm.loop !328

guess_line_blames.exit:                           ; preds = %scan_parent_range.exit.thread.i
  call void @free(ptr noundef %.0.i.i) #20
  br label %bb.u

bb.u:                                             ; preds = %guess_line_blames.exit, %bb.j, %reverse_blame.exit96
  %.076 = phi ptr [ %i.av, %guess_line_blames.exit ], [ null, %bb.j ], [ null, %reverse_blame.exit96 ] ; 2 uses
  %.not86149 = icmp eq ptr %.07.lcssa.i95, null
  br i1 %.not86149, label %.critedge2, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.u
  %i.de = sext i32 %2 to i64
  %i.df = sub nsw i64 0, %i.de
  %invariant.gep = getelementptr [8 x i8], ptr %.076, i64 %i.df
  %.not.i44.i = icmp eq ptr %6, null
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph152, %ignore_blame_entry.exit
  %.1151 = phi ptr [ %.07.lcssa.i95, %.lr.ph152 ], [ %i.dj, %ignore_blame_entry.exit ] ; 11 uses
  %.175150 = phi ptr [ null, %.lr.ph152 ], [ %.2, %ignore_blame_entry.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1151, i64 24 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56 ; 3 uses
  %i.di = icmp slt i32 %i.dh, %4
  br i1 %i.di, label %bb.w, label %.critedge2

bb.w:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %.1151, align 8, !tbaa !40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1151, i64 12 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !57 ; 2 uses
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = icmp sgt i32 %i.dm, %4
  br i1 %i.dn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.do = sub nsw i32 %4, %i.dh                   ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1151, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !55 ; 4 uses
  %.not.i99 = icmp eq ptr %i.dq, null
  br i1 %.not.i99, label %blame_origin_incref.exit100, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !30
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !30
  br label %blame_origin_incref.exit100

blame_origin_incref.exit100:                      ; preds = %bb.x, %bb.y
  %i.dt = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.dq, ptr %i.du, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %.1151, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load <2 x i32>, ptr %i.dv, align 8, !tbaa !30
  store <2 x i32> %i.dx, ptr %i.dw, align 8, !tbaa !30
  %i.dy = getelementptr inbounds nuw i8, ptr %.1151, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !42
  %i.ea = add nsw i32 %i.dz, %i.do
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !42
  %i.ec = load i32, ptr %i.dg, align 8, !tbaa !56
  %i.ed = add nsw i32 %i.ec, %i.do
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !56
  %i.ef = load i32, ptr %i.dk, align 4, !tbaa !57
  %i.eg = sub nsw i32 %i.ef, %i.do
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !57
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !57
  %i.ei = getelementptr inbounds nuw i8, ptr %.1151, i64 28
  store i32 0, ptr %i.ei, align 4, !tbaa !60
  store ptr %.175150, ptr %i.dt, align 8, !tbaa !40
  br label %bb.z

bb.z:                                             ; preds = %blame_origin_incref.exit100, %bb.w
  %i.ej = phi i32 [ %i.do, %blame_origin_incref.exit100 ], [ %i.dl, %bb.w ] ; 2 uses
  %.2 = phi ptr [ %i.dt, %blame_origin_incref.exit100 ], [ %.175150, %bb.w ] ; 2 uses
  br i1 %.not85, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = load i32, ptr %i.dg, align 8, !tbaa !56
  %i.el = sext i32 %i.ek to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.el ; 4 uses
  %i.em = icmp sgt i32 %i.ej, 0
  br i1 %i.em, label %.lr.ph.i101, label %._crit_edge.thread.i

.lr.ph.i101:                                      ; preds = %bb.aa
  %i.en = zext nneg i32 %i.ej to i64              ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ak, %.lr.ph.i101
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.i101 ], [ %indvars.iv.next.i104, %bb.ak ] ; 4 uses
  %.03750.i = phi ptr [ %.1151, %.lr.ph.i101 ], [ %.1.i, %bb.ak ] ; 13 uses
  %.03849.i = phi i32 [ 1, %.lr.ph.i101 ], [ %.139.i, %bb.ak ] ; 7 uses
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i103, 1 ; 4 uses
  %i.eo = icmp samesign ult i64 %indvars.iv.next.i104, %i.en
  br i1 %i.eo, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.i103 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.next.i104 ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !325
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !325
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %are_lines_adjacent.exit.i, label %are_lines_adjacent.exit.thread.i

are_lines_adjacent.exit.i:                        ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !327
  %i.ew = add nsw i32 %i.ev, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !327
  %.not47.i = icmp eq i32 %i.ew, %i.ey
  br i1 %.not47.i, label %bb.ad, label %are_lines_adjacent.exit.thread.i

bb.ad:                                            ; preds = %are_lines_adjacent.exit.i
  %i.ez = add nsw i32 %.03849.i, 1
  br label %bb.ak

are_lines_adjacent.exit.thread.i:                 ; preds = %are_lines_adjacent.exit.i, %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.03750.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !55 ; 4 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %blame_origin_incref.exit.i, label %bb.ae

bb.ae:                                            ; preds = %are_lines_adjacent.exit.thread.i
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !30
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !30
  br label %blame_origin_incref.exit.i

blame_origin_incref.exit.i:                       ; preds = %bb.ae, %are_lines_adjacent.exit.thread.i
  %i.fe = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fb, ptr %i.ff, align 8, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %.03750.i, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fi = load <2 x i32>, ptr %i.fg, align 8, !tbaa !30
  store <2 x i32> %i.fi, ptr %i.fh, align 8, !tbaa !30
  %i.fj = getelementptr inbounds nuw i8, ptr %.03750.i, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !42
  %i.fl = add nsw i32 %i.fk, %.03849.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %.03750.i, i64 24
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !56
  %i.fp = add nsw i32 %i.fo, %.03849.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !56
  %i.fr = getelementptr inbounds nuw i8, ptr %.03750.i, i64 12 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !57
  %i.ft = sub nsw i32 %i.fs, %.03849.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !57
  store i32 %.03849.i, ptr %i.fr, align 4, !tbaa !57
  %i.fv = getelementptr inbounds nuw i8, ptr %.03750.i, i64 28
  store i32 0, ptr %i.fv, align 4, !tbaa !60
  br label %bb.af

bb.af:                                            ; preds = %blame_origin_incref.exit.i, %bb.ab
  %.0.i = phi ptr [ %i.fe, %blame_origin_incref.exit.i ], [ null, %bb.ab ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.i103
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !325
  %.not43.i = icmp eq i32 %i.fx, 0
  br i1 %.not43.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %.03750.i, i64 32
  store i32 1, ptr %i.fy, align 8, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %.03750.i, i64 16 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !55
  call void @blame_origin_decref(ptr noundef %i.ga)
  br i1 %.not.i44.i, label %blame_origin_incref.exit45.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load i32, ptr %6, align 8, !tbaa !30
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %6, align 8, !tbaa !30
  br label %blame_origin_incref.exit45.i

blame_origin_incref.exit45.i:                     ; preds = %bb.ah, %bb.ag
  store ptr %6, ptr %i.fz, align 8, !tbaa !55
  %i.gd = trunc nuw nsw i64 %indvars.iv.i103 to i32
  %i.ge = sub nsw i32 %i.gd, %.03849.i
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %gep, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !327
  br label %bb.ai

bb.ai:                                            ; preds = %blame_origin_incref.exit45.i, %bb.af
  %.sink61.i = phi i64 [ 24, %blame_origin_incref.exit45.i ], [ 36, %bb.af ]
  %.sink59.i = phi i32 [ %i.gi, %blame_origin_incref.exit45.i ], [ 1, %bb.af ]
  %.sink58.i = phi ptr [ %i.b, %blame_origin_incref.exit45.i ], [ %i.a, %bb.af ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.03750.i, i64 %.sink61.i
  store i32 %.sink59.i, ptr %11, align 4, !tbaa !30
  %i.gj = load ptr, ptr %.sink58.i, align 8, !tbaa !38
  store ptr %i.gj, ptr %.03750.i, align 8, !tbaa !40
  store ptr %.03750.i, ptr %.sink58.i, align 8, !tbaa !38
  %i.gk = getelementptr inbounds nuw i8, ptr %.03750.i, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !57
  %i.gm = icmp eq i32 %i.gl, %.03849.i
  br i1 %i.gm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 1783, ptr noundef nonnull @__PRETTY_FUNCTION__.ignore_blame_entry) #21
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  %.139.i = phi i32 [ %i.ez, %bb.ad ], [ 1, %bb.ai ]
  %.1.i = phi ptr [ %.03750.i, %bb.ad ], [ %.0.i, %bb.ai ] ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %i.en
  br i1 %exitcond.not.i105, label %._crit_edge.i, label %bb.ab, !llvm.loop !329

._crit_edge.i:                                    ; preds = %bb.ak
  %i.gn = icmp eq ptr %.1.i, null
  br i1 %i.gn, label %ignore_blame_entry.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 1787, ptr noundef nonnull @__PRETTY_FUNCTION__.ignore_blame_entry) #21
  unreachable

bb.al:                                            ; preds = %bb.z
  %.0..0..0.133 = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %.0..0..0.133, ptr %.1151, align 8, !tbaa !40
  store ptr %.1151, ptr %i.a, align 8, !tbaa !38
  br label %ignore_blame_entry.exit

ignore_blame_entry.exit:                          ; preds = %._crit_edge.i, %bb.al
  %.not86 = icmp eq ptr %i.dj, null
  br i1 %.not86, label %.critedge2, label %bb.v, !llvm.loop !330

.critedge2:                                       ; preds = %bb.v, %ignore_blame_entry.exit, %bb.u
  %.175.lcssa = phi ptr [ null, %bb.u ], [ %.2, %ignore_blame_entry.exit ], [ %.175150, %bb.v ] ; 2 uses
  %.1.lcssa = phi ptr [ null, %bb.u ], [ null, %ignore_blame_entry.exit ], [ %.1151, %bb.v ] ; 2 uses
  call void @free(ptr noundef %.076) #20
  %.0..0..0. = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %.not87 = icmp eq ptr %.0..0..0., null
  br i1 %.not87, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge2
  %i.go = load ptr, ptr %0, align 8, !tbaa !118   ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !38
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.am, %.lr.ph.i107
  %.010.i108 = phi ptr [ %i.gq, %.lr.ph.i107 ], [ %.0..0..0., %bb.am ] ; 4 uses
  %.079.i109 = phi ptr [ %.010.i108, %.lr.ph.i107 ], [ %i.gp, %bb.am ]
  %i.gq = load ptr, ptr %.010.i108, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i109, ptr %.010.i108, align 8, !tbaa !40
  %.not.i110 = icmp eq ptr %i.gq, null
  br i1 %.not.i110, label %reverse_blame.exit113, label %.lr.ph.i107, !llvm.loop !164

reverse_blame.exit113:                            ; preds = %.lr.ph.i107
  store ptr %.010.i108, ptr %i.go, align 8, !tbaa !38
  store ptr %.0..0..0., ptr %0, align 8, !tbaa !118
  br label %bb.an

bb.an:                                            ; preds = %reverse_blame.exit113, %.critedge2
  %.0..0..0.134 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not8.i114 = icmp eq ptr %.175.lcssa, null
  br i1 %.not8.i114, label %reverse_blame.exit121, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.an, %.lr.ph.i115
  %.010.i116 = phi ptr [ %i.gr, %.lr.ph.i115 ], [ %.175.lcssa, %bb.an ] ; 4 uses
  %.079.i117 = phi ptr [ %.010.i116, %.lr.ph.i115 ], [ %.1.lcssa, %bb.an ]
  %i.gr = load ptr, ptr %.010.i116, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i117, ptr %.010.i116, align 8, !tbaa !40
  %.not.i118 = icmp eq ptr %i.gr, null
  br i1 %.not.i118, label %reverse_blame.exit121, label %.lr.ph.i115, !llvm.loop !164

reverse_blame.exit121:                            ; preds = %.lr.ph.i115, %bb.an
  %.07.lcssa.i120 = phi ptr [ %.1.lcssa, %bb.an ], [ %.010.i116, %.lr.ph.i115 ] ; 2 uses
  %.not8.i122 = icmp eq ptr %.0..0..0.134, null
  br i1 %.not8.i122, label %reverse_blame.exit129, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %reverse_blame.exit121, %.lr.ph.i123
  %.010.i124 = phi ptr [ %i.gs, %.lr.ph.i123 ], [ %.0..0..0.134, %reverse_blame.exit121 ] ; 4 uses
  %.079.i125 = phi ptr [ %.010.i124, %.lr.ph.i123 ], [ %.07.lcssa.i120, %reverse_blame.exit121 ]
  %i.gs = load ptr, ptr %.010.i124, align 8, !tbaa !40 ; 2 uses
  store ptr %.079.i125, ptr %.010.i124, align 8, !tbaa !40
  %.not.i126 = icmp eq ptr %i.gs, null
  br i1 %.not.i126, label %reverse_blame.exit129, label %.lr.ph.i123, !llvm.loop !164

reverse_blame.exit129:                            ; preds = %.lr.ph.i123, %reverse_blame.exit121
  %.07.lcssa.i128 = phi ptr [ %.07.lcssa.i120, %reverse_blame.exit121 ], [ %.010.i124, %.lr.ph.i123 ]
  %i.gt = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %.07.lcssa.i128, ptr %i.gt, align 8, !tbaa !38
  %.0..0..0.135 = load ptr, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %.not88 = icmp eq ptr %.0..0..0.135, null
  br i1 %.not88, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %reverse_blame.exit129
  store ptr %.0..0..0.135, ptr %1, align 8, !tbaa !118
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %reverse_blame.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

declare void @hashmap_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @hashmap_add(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @xdi_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @fuzzy_find_matching_lines_recurse(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef range(i32 0, 11) %10, i32 noundef range(i32 -2147483648, 2147483647) %11, ptr noundef nonnull %12) unnamed_addr #2 {
bb.a:
  %13 = alloca %struct.hashmap_iter, align 8      ; 6 uses
  %14 = alloca %struct.hashmap_iter, align 8      ; 5 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.e = zext nneg i32 %10 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %i.e
  %i.f = shl nuw nsw i32 %10, 1
  %i.g = or disjoint i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %find_best_line_matches.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %find_best_line_matches.exit ] ; 8 uses
  %.0130158 = phi i32 [ -1, %.lr.ph ], [ %spec.select147, %find_best_line_matches.exit ] ; 2 uses
  %.0132157 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %find_best_line_matches.exit ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.c, label %find_best_line_matches.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !321
  %i.l = trunc i64 %indvars.iv to i32
  %i.m = add i32 %1, %i.l
  %i.n = sub i32 %i.m, %i.k
  %i.o = shl nsw i32 %i.n, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = load i32, ptr %i.c, align 4, !tbaa !320
  %i.r = mul nsw i32 %i.p, %i.q
  %i.s = load i32, ptr %i.d, align 4, !tbaa !322
  %i.t = shl nsw i32 %i.s, 1
  %i.u = sdiv i32 %i.r, %i.t
  %i.v = load i32, ptr %12, align 4, !tbaa !318
  %i.w = sub i32 %i.u, %0
  %i.x = add i32 %i.w, %i.v                       ; 4 uses
  %i.y = sub nsw i32 %i.x, %10
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.y, i32 0) ; 2 uses
  %i.z = add nsw i32 %i.x, %10                    ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  %.not72.i = icmp slt i32 %i.z, %2
  %spec.select.i = select i1 %.not72.i, i32 %i.aa, i32 %2 ; 2 uses
  %i.ab = icmp slt i32 %spec.store.select.i, %spec.select.i
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ac = sext i32 %i.x to i64
  %i.ad = sub nsw i64 0, %i.ac
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = mul nuw nsw i64 %indvars.iv, %i.h
  %invariant.gep91.i = getelementptr [4 x i8], ptr %gep, i64 %i.ae
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %5, i64 %indvars.iv
  %i.ag = zext nneg i32 %spec.store.select.i to i64
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %.085.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.k ]
  %.05984.i = phi i32 [ 0, %.lr.ph.i ], [ %.160.i, %bb.k ] ; 2 uses
  %.06183.i = phi i32 [ 0, %.lr.ph.i ], [ %.162.i, %bb.k ] ; 2 uses
  %.06382.i = phi i32 [ 0, %.lr.ph.i ], [ %.164.i, %bb.k ] ; 3 uses
  %i.ah = trunc i64 %indvars.iv.i to i32          ; 3 uses
  %i.ai = sub i32 %i.ah, %i.x
  %i.aj = call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.aj, %10
  br i1 %.not.i.i, label %bb.e, label %get_similarity.exit.i

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 603, ptr noundef nonnull @__PRETTY_FUNCTION__.get_similarity) #21
  unreachable

get_similarity.exit.i:                            ; preds = %bb.d
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep91.i, i64 %indvars.iv.i ; 2 uses
  %i.ak = load i32, ptr %gep.i, align 4, !tbaa !30 ; 2 uses
end_hunk_0
