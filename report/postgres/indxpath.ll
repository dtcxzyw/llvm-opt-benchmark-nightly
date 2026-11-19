Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/indxpath?download=true
inline.NumInlined: 126
inline.NumDeleted: 43
begin_hunk_0_@match_clause_to_index:bb.a
  %.val34.i.i = load ptr, ptr %i.dz, align 8      ; 2 uses
  %i.ea = load ptr, ptr %.val34.i.i, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = tail call ptr @pull_varnos(ptr noundef %0, ptr noundef %i.ec) #6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.g, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 112
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = load ptr, ptr %i.o, align 8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv158
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = load ptr, ptr %i.q, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv158
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.es = tail call zeroext i1 @match_index_to_operand(ptr noundef %i.ea, i32 noundef %i.er, ptr noundef nonnull readonly %2)
  br i1 %i.es, label %bb.ab, label %match_clause_to_indexcol.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.et = tail call zeroext i1 @bms_is_member(i32 noundef %i.ek, ptr noundef %i.ed) #6
  br i1 %i.et, label %match_clause_to_indexcol.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = tail call zeroext i1 @contain_volatile_functions(ptr noundef %i.ec) #6
  br i1 %i.eu, label %match_clause_to_indexcol.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp eq i32 %i.eq, 0
  %i.ew = icmp eq i32 %i.eq, %i.eh
  %or.cond.i59.i = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %or.cond.i59.i, label %bb.ae, label %match_clause_to_indexcol.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ex = tail call zeroext i1 @op_in_opfamily(i32 noundef %i.ef, i32 noundef %i.en) #6
  br i1 %i.ex, label %bb.af, label %match_clause_to_indexcol.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ey = tail call noundef ptr @palloc0(i64 noundef 40) #6 ; 7 uses
  store i32 298, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %1, ptr %i.ez, align 8
  %i.fa = tail call ptr @list_make1_impl(i32 noundef 1, ptr nonnull %1) #6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i8 0, ptr %i.fc, align 8
  %i.fd = trunc i64 %indvars.iv158 to i16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 26
  store i16 %i.fd, ptr %i.fe, align 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr null, ptr %i.ff, align 8
  br label %match_clause_to_indexcol.exit.thread40

bb.ag:                                            ; preds = %bb.h
  %i.fg = load i32, ptr %i.p, align 8
  %.not.i60.i = icmp eq i32 %i.fg, 403
  br i1 %.not.i60.i, label %bb.ah, label %match_clause_to_indexcol.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load ptr, ptr %i.n, align 8             ; 4 uses
  %i.fi = load ptr, ptr %i.g, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 112
  %i.fk = load i32, ptr %i.fj, align 8            ; 2 uses
  %i.fl = load ptr, ptr %i.o, align 8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv158
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = load ptr, ptr %i.q, align 8
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv158
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %.val44.i.i = load ptr, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %.val44.i.i, align 8      ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  %.val43.i.i = load ptr, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %.val43.i.i, align 8      ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %.val42.i.i = load ptr, ptr %i.gb, align 8
  %i.gc = load i32, ptr %.val42.i.i, align 8      ; 2 uses
  %i.gd = icmp eq i32 %i.fq, 0
  br i1 %i.gd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %.val.i.i = load ptr, ptr %i.gg, align 8
  %i.gh = load i32, ptr %.val.i.i, align 8
  %i.gi = icmp eq i32 %i.fq, %i.gh
  br i1 %i.gi, label %bb.aj, label %match_clause_to_indexcol.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gj = trunc nuw nsw i64 %indvars.iv158 to i32 ; 2 uses
  %i.gk = tail call zeroext i1 @match_index_to_operand(ptr noundef %i.fu, i32 noundef %i.gj, ptr noundef nonnull readonly %2)
  br i1 %i.gk, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gl = tail call ptr @pull_varnos(ptr noundef %0, ptr noundef %i.fy) #6
  %i.gm = tail call zeroext i1 @bms_is_member(i32 noundef %i.fk, ptr noundef %i.gl) #6
  br i1 %i.gm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = tail call zeroext i1 @contain_volatile_functions(ptr noundef %i.fy) #6
  br i1 %i.gn, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.go = tail call zeroext i1 @match_index_to_operand(ptr noundef %i.fy, i32 noundef %i.gj, ptr noundef nonnull readonly %2)
  br i1 %i.go, label %bb.an, label %match_clause_to_indexcol.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.gp = tail call ptr @pull_varnos(ptr noundef %0, ptr noundef %i.fu) #6
  %i.gq = tail call zeroext i1 @bms_is_member(i32 noundef %i.fk, ptr noundef %i.gp) #6
  br i1 %i.gq, label %match_clause_to_indexcol.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gr = tail call zeroext i1 @contain_volatile_functions(ptr noundef %i.fu) #6
  br i1 %i.gr, label %match_clause_to_indexcol.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = tail call i32 @get_commutator(i32 noundef %i.gc) #6 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %match_clause_to_indexcol.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al
  %.038.i.i = phi i1 [ true, %bb.al ], [ false, %bb.ap ] ; 4 uses
  %.0.i61.i = phi i32 [ %i.gc, %bb.al ], [ %i.gs, %bb.ap ] ; 3 uses
  %i.gu = tail call i32 @get_op_opfamily_strategy(i32 noundef %.0.i61.i, i32 noundef %i.fn) #6
  switch i32 %i.gu, label %match_clause_to_indexcol.exit.thread [
    i32 1, label %bb.ar
    i32 2, label %bb.ar
    i32 4, label %bb.ar
    i32 5, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.gv = tail call noundef ptr @palloc0(i64 noundef 40) #6 ; 8 uses
  store i32 298, ptr %i.gv, align 4
  %i.gw = load ptr, ptr %i.n, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %1, ptr %i.gx, align 8
  %i.gy = trunc i64 %indvars.iv158 to i16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 26
  store i16 %i.gy, ptr %i.gz, align 2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %.0164.in.i.i.i = select i1 %.038.i.i, ptr %i.hb, ptr %i.ha
  %.0163.in.i.i.i = select i1 %.038.i.i, ptr %i.ha, ptr %i.hb
  %.0163.i.i.i = load ptr, ptr %.0163.in.i.i.i, align 8 ; 4 uses
  %.0164.i.i.i = load ptr, ptr %.0164.in.i.i.i, align 8 ; 2 uses
  %i.hc = load ptr, ptr %i.o, align 8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv158
  %i.he = load i32, ptr %i.hd, align 4
  call void @get_op_opfamily_properties(i32 noundef %.0.i61.i, i32 noundef %i.he, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %i.hf = inttoptr i64 %indvars.iv158 to ptr
  %i.hg = call ptr @list_make1_impl(i32 noundef 494, ptr %i.hf) #6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 4 uses
  store ptr %i.hg, ptr %i.hh, align 8
  %.sroa.0.0.insert.ext.i181.i.i.i = zext i32 %.0.i61.i to i64
  %i.hi = inttoptr i64 %.sroa.0.0.insert.ext.i181.i.i.i to ptr
  %i.hj = call ptr @list_make1_impl(i32 noundef 495, ptr %i.hi) #6 ; 3 uses
  %i.hk = load ptr, ptr %i.o, align 8
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv158
  %i.hm = load i32, ptr %i.hl, align 4
  %.sroa.0.0.insert.ext.i182.i.i.i = zext i32 %i.hm to i64
  %i.hn = inttoptr i64 %.sroa.0.0.insert.ext.i182.i.i.i to ptr
  %i.ho = call ptr @list_make1_impl(i32 noundef 495, ptr %i.hn) #6 ; 3 uses
  %i.hp = load i32, ptr %i.b, align 4
  %.sroa.0.0.insert.ext.i183.i.i.i = zext i32 %i.hp to i64
  %i.hq = inttoptr i64 %.sroa.0.0.insert.ext.i183.i.i.i to ptr
  %i.hr = call ptr @list_make1_impl(i32 noundef 495, ptr %i.hq) #6 ; 3 uses
  %i.hs = load i32, ptr %i.c, align 4
  %.sroa.0.0.insert.ext.i184.i.i.i = zext i32 %i.hs to i64
  %i.ht = inttoptr i64 %.sroa.0.0.insert.ext.i184.i.i.i to ptr
  %i.hu = call ptr @list_make1_impl(i32 noundef 495, ptr %i.ht) #6 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.0163.i.i.i, null
  %i.hv = getelementptr inbounds nuw i8, ptr %.0163.i.i.i, i64 4 ; 2 uses
  %i.hw = getelementptr i8, ptr %.0163.i.i.i, i64 16 ; 2 uses
  %i.hx = getelementptr i8, ptr %.0164.i.i.i, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %list_length.exit.i.i.preheader.i

list_length.exit.i.i.preheader.i:                 ; preds = %bb.ar
  %i.ia = load i32, ptr %i.hv, align 4
  %i.ib = icmp sgt i32 %i.ia, 1
  br i1 %i.ib, label %.lr.ph.i, label %.thread.i.i.i

.lr.ph.i:                                         ; preds = %list_length.exit.i.i.preheader.i, %list_length.exit.i.i.i
  %indvars.iv242.i50.i86.i = phi i64 [ %indvars.iv.next243.i.i.i.a, %list_length.exit.i.i.i ], [ 1, %list_length.exit.i.i.preheader.i ] ; 10 uses
  %.0158.i51.i85.i = phi ptr [ %i.kd, %list_length.exit.i.i.i ], [ %i.hu, %list_length.exit.i.i.preheader.i ] ; 6 uses
  %.0155.i52.i84.i = phi ptr [ %i.kb, %list_length.exit.i.i.i ], [ %i.hr, %list_length.exit.i.i.preheader.i ] ; 6 uses
  %.0152.i53.i83.i = phi ptr [ %i.jz, %list_length.exit.i.i.i ], [ %i.ho, %list_length.exit.i.i.preheader.i ] ; 6 uses
  %.0147.i54.i82.i = phi ptr [ %i.jv, %list_length.exit.i.i.i ], [ %i.hj, %list_length.exit.i.i.preheader.i ] ; 6 uses
  %.0163.val178.i.i.i = load ptr, ptr %i.hw, align 8
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.0163.val178.i.i.i, i64 %indvars.iv242.i50.i86.i
  %i.id = load ptr, ptr %i.ic, align 8
  %.0164.val177.i.i.i = load ptr, ptr %i.hx, align 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.0164.val177.i.i.i, i64 %indvars.iv242.i50.i86.i
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = load ptr, ptr %i.hy, align 8
  %i.ih = getelementptr i8, ptr %i.ig, i64 16
  %.val180.i.i.i = load ptr, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.val180.i.i.i, i64 %indvars.iv242.i50.i86.i
  %i.ij = load i32, ptr %i.ii, align 8            ; 2 uses
  br i1 %.038.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i
  %i.ik = call i32 @get_commutator(i32 noundef %i.ij) #6 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i
  %.0.i.i.i = phi i32 [ %i.ij, %.lr.ph.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = load ptr, ptr %i.g, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 112
  %i.io = load i32, ptr %i.in, align 8
  %i.ip = call ptr @pull_varnos(ptr noundef %0, ptr noundef %i.if) #6
  %i.iq = call zeroext i1 @bms_is_member(i32 noundef %i.io, ptr noundef %i.ip) #6
  br i1 %i.iq, label %.thread.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = call zeroext i1 @contain_volatile_functions(ptr noundef %i.if) #6
  br i1 %i.ir, label %.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.au
  %i.is = load i32, ptr %i.j, align 8
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph.i.i.i, label %.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ay
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ay ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %i.iu = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.iv = call zeroext i1 @match_index_to_operand(ptr noundef %i.id, i32 noundef %i.iu, ptr noundef nonnull readonly %2)
  br i1 %i.iv, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.iw = load ptr, ptr %i.o, align 8
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = call i32 @get_op_opfamily_strategy(i32 noundef %.0.i.i.i, i32 noundef %i.iy) #6
  %i.ja = load i32, ptr %i.a, align 4
  %i.jb = icmp eq i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.jc = load ptr, ptr %i.q, align 8
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.i.i
  %i.je = load i32, ptr %i.jd, align 4            ; 2 uses
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %._crit_edge.i.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = load ptr, ptr %i.hz, align 8
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %.val179.i.i.i = load ptr, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.val179.i.i.i, i64 %indvars.iv242.i50.i86.i
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = icmp eq i32 %i.je, %i.jj
  br i1 %i.jk, label %._crit_edge.i.loopexit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.jl = load i32, ptr %i.j, align 8             ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv.next.i.i.i, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i.i, label %._crit_edge.split.loop.exit.i.i.i, !llvm.loop !32

._crit_edge.split.loop.exit.i.i.i:                ; preds = %bb.ay
  %indvars.le.i.i.i = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.ax, %bb.aw
  %.pre.i.pre.i.i = load i32, ptr %i.j, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %._crit_edge.split.loop.exit.i.i.i
  %.pre.i.i.i = phi i32 [ %i.jl, %._crit_edge.split.loop.exit.i.i.i ], [ %.pre.i.pre.i.i, %._crit_edge.i.loopexit.i.i ]
  %.0151.lcssa.ph.i.i.i = phi i32 [ %indvars.le.i.i.i, %._crit_edge.split.loop.exit.i.i.i ], [ %i.iu, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %i.jo = icmp slt i32 %.0151.lcssa.ph.i.i.i, %.pre.i.i.i
  br i1 %i.jo, label %list_length.exit.i.i.i, label %.thread.i.i.i

list_length.exit.i.i.i:                           ; preds = %._crit_edge.i.i.i
  %i.jp = load ptr, ptr %i.hh, align 8
  %i.jq = call ptr @lappend_int(ptr noundef %i.jp, i32 noundef %.0151.lcssa.ph.i.i.i) #6
  store ptr %i.jq, ptr %i.hh, align 8
  %i.jr = load ptr, ptr %i.o, align 8
  %i.js = zext nneg i32 %.0151.lcssa.ph.i.i.i to i64 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4
  call void @get_op_opfamily_properties(i32 noundef %.0.i.i.i, i32 noundef %i.ju, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %i.jv = call ptr @lappend_oid(ptr noundef %.0147.i54.i82.i, i32 noundef %.0.i.i.i) #6 ; 2 uses
  %i.jw = load ptr, ptr %i.o, align 8
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.js
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = call ptr @lappend_oid(ptr noundef %.0152.i53.i83.i, i32 noundef %i.jy) #6 ; 2 uses
  %i.ka = load i32, ptr %i.b, align 4
  %i.kb = call ptr @lappend_oid(ptr noundef %.0155.i52.i84.i, i32 noundef %i.ka) #6 ; 2 uses
  %i.kc = load i32, ptr %i.c, align 4
  %i.kd = call ptr @lappend_oid(ptr noundef %.0158.i51.i85.i, i32 noundef %i.kc) #6 ; 2 uses
  %indvars.iv.next243.i.i.i.a = add nuw nsw i64 %indvars.iv242.i50.i86.i, 1 ; 3 uses
  %i.ke = load i32, ptr %i.hv, align 4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next243.i.i.i.a, %i.kf
  br i1 %i.kg, label %.lr.ph.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %list_length.exit.i.i.i, %._crit_edge.i.i.i, %.preheader.i.i.i, %bb.au, %bb.at, %bb.as, %list_length.exit.i.i.preheader.i, %bb.ar
  %indvars.iv242.i.lcssa.i.i = phi i64 [ 1, %bb.ar ], [ 1, %list_length.exit.i.i.preheader.i ], [ %indvars.iv242.i50.i86.i, %._crit_edge.i.i.i ], [ %indvars.iv242.i50.i86.i, %.preheader.i.i.i ], [ %indvars.iv242.i50.i86.i, %bb.au ], [ %indvars.iv242.i50.i86.i, %bb.at ], [ %indvars.iv242.i50.i86.i, %bb.as ], [ %indvars.iv.next243.i.i.i.a, %list_length.exit.i.i.i ] ; 2 uses
  %.0158.i.lcssa.i.i = phi ptr [ %i.hu, %bb.ar ], [ %i.hu, %list_length.exit.i.i.preheader.i ], [ %.0158.i51.i85.i, %._crit_edge.i.i.i ], [ %.0158.i51.i85.i, %.preheader.i.i.i ], [ %.0158.i51.i85.i, %bb.au ], [ %.0158.i51.i85.i, %bb.at ], [ %.0158.i51.i85.i, %bb.as ], [ %i.kd, %list_length.exit.i.i.i ] ; 3 uses
  %.0155.i.lcssa.i.i = phi ptr [ %i.hr, %bb.ar ], [ %i.hr, %list_length.exit.i.i.preheader.i ], [ %.0155.i52.i84.i, %._crit_edge.i.i.i ], [ %.0155.i52.i84.i, %.preheader.i.i.i ], [ %.0155.i52.i84.i, %bb.au ], [ %.0155.i52.i84.i, %bb.at ], [ %.0155.i52.i84.i, %bb.as ], [ %i.kb, %list_length.exit.i.i.i ] ; 3 uses
  %.0152.i.lcssa.i.i = phi ptr [ %i.ho, %bb.ar ], [ %i.ho, %list_length.exit.i.i.preheader.i ], [ %.0152.i53.i83.i, %._crit_edge.i.i.i ], [ %.0152.i53.i83.i, %.preheader.i.i.i ], [ %.0152.i53.i83.i, %bb.au ], [ %.0152.i53.i83.i, %bb.at ], [ %.0152.i53.i83.i, %bb.as ], [ %i.jz, %list_length.exit.i.i.i ] ; 3 uses
  %.0147.i.lcssa.i.i = phi ptr [ %i.hj, %bb.ar ], [ %i.hj, %list_length.exit.i.i.preheader.i ], [ %.0147.i54.i82.i, %._crit_edge.i.i.i ], [ %.0147.i54.i82.i, %.preheader.i.i.i ], [ %.0147.i54.i82.i, %bb.au ], [ %.0147.i54.i82.i, %bb.at ], [ %.0147.i54.i82.i, %bb.as ], [ %i.jv, %list_length.exit.i.i.i ] ; 2 uses
  %4 = trunc nuw nsw i64 %indvars.iv242.i.lcssa.i.i to i32 ; 6 uses
  %i.kh = load ptr, ptr %i.hy, align 8            ; 2 uses
  %.not.i185.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i185.i.i.i, label %.thread263.i.i.i, label %list_length.exit186.i.i.i

.thread263.i.i.i:                                 ; preds = %.thread.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store i8 1, ptr %i.ki, align 8
  br label %bb.ba

list_length.exit186.i.i.i:                        ; preds = %.thread.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = icmp ne i32 %i.kk, %4                   ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.kn = zext i1 %i.kl to i8
  store i8 %i.kn, ptr %i.km, align 8
  %.not176.i.i.i = xor i1 %.038.i.i, true
  %brmerge.i.i.i = select i1 %.not176.i.i.i, i1 true, i1 %i.kl
  br i1 %brmerge.i.i.i, label %bb.az, label %expand_indexqual_rowcompare.exit.i.i

bb.az:                                            ; preds = %list_length.exit186.i.i.i
  br i1 %i.kl, label %bb.ba, label %.critedge.i.i.i

bb.ba:                                            ; preds = %bb.az, %.thread263.i.i.i
  %i.ko = load i32, ptr %i.a, align 4
  switch i32 %i.ko, label %bb.bd [
    i32 4, label %bb.bb
    i32 2, label %bb.bb
    i32 1, label %bb.be
    i32 5, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.kp = call ptr @list_truncate(ptr noundef %.0147.i.lcssa.i.i, i32 noundef %4) #6
  br label %.critedge.i.i.i

bb.bc:                                            ; preds = %bb.ba
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.kq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.kr = load i32, ptr %i.a, align 4
  %i.ks = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.kr) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3640, ptr noundef nonnull @__func__.expand_indexqual_rowcompare) #6
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.ba
  %storemerge.i.i.i = phi i32 [ 4, %bb.bc ], [ 2, %bb.ba ]
  store i32 %storemerge.i.i.i, ptr %i.a, align 4
  %.not172.i.i.i = icmp eq ptr %.0152.i.lcssa.i.i, null
  %.not173.i.i.i = icmp eq ptr %.0155.i.lcssa.i.i, null
  %.not174.i.i.i = icmp eq ptr %.0158.i.lcssa.i.i, null
  %i.kt = getelementptr inbounds nuw i8, ptr %.0152.i.lcssa.i.i, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.0152.i.lcssa.i.i, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %.0155.i.lcssa.i.i, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %.0155.i.lcssa.i.i, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %.0158.i.lcssa.i.i, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.0158.i.lcssa.i.i, i64 16
  %i.kz = select i1 %.not174.i.i.i, i1 true, i1 %.not172.i.i.i
  %or.cond.i.i.i = select i1 %i.kz, i1 true, i1 %.not173.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %.split.split.split.i.i.i

.split.split.split.i.i.i:                         ; preds = %bb.be, %bb.bl
  %indvars.iv246.i.i.i = phi i64 [ %indvars.iv.next247.i.i.i, %bb.bl ], [ 0, %bb.be ] ; 7 uses
  %.0161.i.i.i = phi ptr [ %i.md, %bb.bl ], [ null, %bb.be ] ; 3 uses
  %i.la = load i32, ptr %i.kt, align 4
  %i.lb = sext i32 %i.la to i64
  %i.lc = icmp slt i64 %indvars.iv246.i.i.i, %i.lb
  br i1 %i.lc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.split.split.split.i.i.i
  %i.ld = load ptr, ptr %i.ku, align 8
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv246.i.i.i
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.split.split.split.i.i.i
  %i.lf = phi ptr [ %i.le, %bb.bf ], [ null, %.split.split.split.i.i.i ] ; 2 uses
  %i.lg = load i32, ptr %i.kv, align 4
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv246.i.i.i, %i.lh
  br i1 %i.li, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lj = load ptr, ptr %i.kw, align 8
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv246.i.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ll = phi ptr [ %i.lk, %bb.bh ], [ null, %bb.bg ] ; 2 uses
  %i.lm = load i32, ptr %i.kx, align 4
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp slt i64 %indvars.iv246.i.i.i, %i.ln
  br i1 %i.lo, label %bb.bj, label %.critedge.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.lp = load ptr, ptr %i.ky, align 8            ; 2 uses
  %i.lq = icmp ne ptr %i.lf, null
  %i.lr = icmp ne ptr %i.ll, null
  %or.cond3.i.i.i = select i1 %i.lq, i1 %i.lr, i1 false
  %i.ls = icmp ne ptr %i.lp, null
  %or.cond5.i.i.i = select i1 %or.cond3.i.i.i, i1 %i.ls, i1 false
  br i1 %or.cond5.i.i.i, label %bb.bk, label %.critedge.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv246.i.i.i
  %i.lu = load i32, ptr %i.lf, align 8            ; 2 uses
  %i.lv = load i32, ptr %i.ll, align 8            ; 2 uses
  %i.lw = load i32, ptr %i.lt, align 8            ; 2 uses
  %i.lx = load i32, ptr %i.a, align 4
  %i.ly = trunc i32 %i.lx to i16
  %i.lz = call i32 @get_opfamily_member(i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef %i.lw, i16 noundef signext %i.ly) #6 ; 2 uses
  %.not175.i.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not175.i.i.i, label %.split211.i.i.i, label %bb.bl

.split211.i.i.i:                                  ; preds = %bb.bk
  %i.ma = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.mb = load i32, ptr %i.a, align 4
  %i.mc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %i.mb, i32 noundef %i.lv, i32 noundef %i.lw, i32 noundef %i.lu) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3654, ptr noundef nonnull @__func__.expand_indexqual_rowcompare) #6
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.md = call ptr @lappend_oid(ptr noundef %.0161.i.i.i, i32 noundef %i.lz) #6
  %indvars.iv.next247.i.i.i = add nuw nsw i64 %indvars.iv246.i.i.i, 1
  br label %.split.split.split.i.i.i, !llvm.loop !33

.critedge.i.i.i:                                  ; preds = %bb.bj, %bb.bi, %bb.be, %bb.bb, %bb.az
  %.1162.i.i.i = phi ptr [ %i.kp, %bb.bb ], [ %.0147.i.lcssa.i.i, %bb.az ], [ null, %bb.be ], [ %.0161.i.i.i, %bb.bi ], [ %.0161.i.i.i, %bb.bj ] ; 2 uses
  %i.me = icmp samesign ugt i64 %indvars.iv242.i.lcssa.i.i, 1
  br i1 %i.me, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.critedge.i.i.i
  %i.mf = call noundef ptr @palloc0(i64 noundef 48) #6 ; 8 uses
  store i32 37, ptr %i.mf, align 4
  %i.mg = load i32, ptr %i.a, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 %i.mg, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %.1162.i.i.i, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = call ptr @list_copy_head(ptr noundef %i.mk, i32 noundef %4) #6
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store ptr %i.ml, ptr %i.mm, align 8
  %i.mn = load ptr, ptr %i.hz, align 8
  %i.mo = call ptr @list_copy_head(ptr noundef %i.mn, i32 noundef %4) #6
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  store ptr %i.mo, ptr %i.mp, align 8
  %i.mq = call ptr @list_copy_head(ptr noundef %.0163.i.i.i, i32 noundef %4) #6
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  store ptr %i.mq, ptr %i.mr, align 8
  %i.ms = call ptr @list_copy_head(ptr noundef %.0164.i.i.i, i32 noundef %4) #6
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  store ptr %i.ms, ptr %i.mt, align 8
  br label %.sink.split.i.i.i

bb.bn:                                            ; preds = %.critedge.i.i.i
  store ptr null, ptr %i.hh, align 8
  %i.mu = getelementptr i8, ptr %.1162.i.i.i, i64 16
  %.1162.val.i.i.i = load ptr, ptr %i.mu, align 8
  %i.mv = load i32, ptr %.1162.val.i.i.i, align 8
  %.0163.val.i.i.i = load ptr, ptr %i.hw, align 8
  %i.mw = load ptr, ptr %.0163.val.i.i.i, align 8
  %i.mx = call ptr @copyObjectImpl(ptr noundef %i.mw) #6
  %.0164.val.i.i.i = load ptr, ptr %i.hx, align 8
  %i.my = load ptr, ptr %.0164.val.i.i.i, align 8
  %i.mz = call ptr @copyObjectImpl(ptr noundef %i.my) #6
  %i.na = load ptr, ptr %i.hz, align 8
  %i.nb = getelementptr i8, ptr %i.na, i64 16
  %.val.i.i.i = load ptr, ptr %i.nb, align 8
  %i.nc = load i32, ptr %.val.i.i.i, align 8
  %i.nd = call ptr @make_opclause(i32 noundef %i.mv, i32 noundef 16, i1 noundef zeroext false, ptr noundef %i.mx, ptr noundef %i.mz, i32 noundef 0, i32 noundef %i.nc) #6
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.bn, %bb.bm
  %.sink.i.i.i = phi ptr [ %i.mf, %bb.bm ], [ %i.nd, %bb.bn ]
  %i.ne = call ptr @make_restrictinfo(ptr noundef %0, ptr noundef %.sink.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #6
  br label %expand_indexqual_rowcompare.exit.i.i

expand_indexqual_rowcompare.exit.i.i:             ; preds = %.sink.split.i.i.i, %list_length.exit186.i.i.i
  %.sink286.i.i.i = phi ptr [ %1, %list_length.exit186.i.i.i ], [ %i.ne, %.sink.split.i.i.i ]
  %i.nf = call ptr @list_make1_impl(i32 noundef 1, ptr %.sink286.i.i.i) #6
  %i.ng = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr %i.nf, ptr %i.ng, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %match_clause_to_indexcol.exit.thread40

bb.bo:                                            ; preds = %bb.h
  %i.nh = tail call zeroext i1 @restriction_is_or_clause(ptr noundef nonnull %1) #6
  br i1 %i.nh, label %bb.bp, label %bb.cr

bb.bp:                                            ; preds = %bb.bo
  %i.ni = load ptr, ptr %i.g, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 112
  %i.nk = load i32, ptr %i.nj, align 8            ; 4 uses
  %i.nl = load i8, ptr %i.u, align 8, !range !4, !noundef !5
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.bq, label %match_clause_to_indexcol.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.nn = load ptr, ptr %i.v, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8            ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.np, null
  br i1 %.not.i63.i, label %.thread.thread.i.i, label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %bb.bq
  %i.ns = load i32, ptr %i.nq, align 4
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %bb.br, label %.thread.thread.i.i

bb.br:                                            ; preds = %.lr.ph.i64.i
  %i.nu = load ptr, ptr %i.nr, align 8
  %i.nv = load ptr, ptr %i.nu, align 8            ; 4 uses
  %i.nw = load i32, ptr %i.nv, align 4
  %i.nx = icmp eq i32 %i.nw, 334
  br i1 %i.nx, label %bb.bs, label %.thread.thread.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8            ; 4 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp eq i32 %i.oa, 17
  br i1 %i.ob, label %bb.bt, label %.thread.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.od = load i32, ptr %i.oc, align 4            ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.of = load ptr, ptr %i.oe, align 8            ; 3 uses
  %.not.i.peel.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i.peel.i.i, label %.thread.thread.i.i, label %list_length.exit.peel.i.i

list_length.exit.peel.i.i:                        ; preds = %bb.bt
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = load i32, ptr %i.og, align 4
  %.not116.peel.i.i = icmp eq i32 %i.oh, 2
  br i1 %.not116.peel.i.i, label %bb.bu, label %.thread.thread.i.i

bb.bu:                                            ; preds = %list_length.exit.peel.i.i
  %i.oi = getelementptr i8, ptr %i.of, i64 16
  %.val123.peel.i.i = load ptr, ptr %i.oi, align 8 ; 2 uses
  %i.oj = load ptr, ptr %.val123.peel.i.i, align 8 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val123.peel.i.i, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8            ; 4 uses
  %i.om = trunc nuw nsw i64 %indvars.iv158 to i32 ; 4 uses
  %i.on = tail call zeroext i1 @match_index_to_operand(ptr noundef %i.oj, i32 noundef %i.om, ptr noundef nonnull readonly %2)
  br i1 %i.on, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nv, i64 80
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = tail call zeroext i1 @bms_is_member(i32 noundef %i.nk, ptr noundef %i.op) #6
  br i1 %i.oq, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.or = tail call zeroext i1 @contain_volatile_functions(ptr noundef %i.ol) #6
  br i1 %i.or, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.os = tail call zeroext i1 @match_index_to_operand(ptr noundef %i.ol, i32 noundef %i.om, ptr noundef nonnull readonly %2)
  br i1 %i.os, label %bb.by, label %.thread.thread.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nv, i64 72
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = tail call zeroext i1 @bms_is_member(i32 noundef %i.nk, ptr noundef %i.ou) #6
  br i1 %i.ov, label %.thread.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ow = tail call zeroext i1 @contain_volatile_functions(ptr noundef %i.oj) #6
  br i1 %i.ow, label %.thread.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ox = tail call i32 @get_commutator(i32 noundef %i.od) #6 ; 2 uses
  %.not117.peel.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not117.peel.i.i, label %.thread.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bw
  %.1105.peel.i.i = phi ptr [ %i.oj, %bb.bw ], [ %i.ol, %bb.ca ] ; 2 uses
  %.085.peel.i.i = phi i32 [ %i.od, %bb.bw ], [ %i.ox, %bb.ca ] ; 3 uses
  %.084.peel.i.i = phi ptr [ %i.ol, %bb.bw ], [ %i.oj, %bb.ca ] ; 3 uses
  %i.oy = tail call i32 @exprType(ptr noundef %.084.peel.i.i) #6 ; 4 uses
  %i.oz = tail call i32 @get_array_type(i32 noundef %i.oy) #6
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.pb = load i32, ptr %i.pa, align 8            ; 4 uses
  %i.pc = load ptr, ptr %i.q, align 8
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv158
  %i.pe = load i32, ptr %i.pd, align 4            ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  %i.pg = icmp eq i32 %i.pe, %i.pb
  %or.cond121.peel.i.i = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %or.cond121.peel.i.i, label %bb.cc, label %.thread.thread.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ph = load ptr, ptr %i.o, align 8
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv158
  %i.pj = load i32, ptr %i.pi, align 4
  %i.pk = tail call zeroext i1 @op_in_opfamily(i32 noundef %.085.peel.i.i, i32 noundef %i.pj) #6
  %i.pl = icmp eq i32 %i.oz, 0
  %not..peel.i.i = xor i1 %i.pk, true
  %or.cond.peel.i.i = select i1 %not..peel.i.i, i1 true, i1 %i.pl
  %i.pm = icmp eq i32 %i.oy, 2249
  %or.cond122.peel.i.i = or i1 %i.pm, %or.cond.peel.i.i
  br i1 %or.cond122.peel.i.i, label %.thread.thread.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pn = tail call i32 @exprType(ptr noundef %.1105.peel.i.i) #6
  %i.po = icmp eq i32 %i.pn, 2249
  br i1 %i.po, label %.thread.thread.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.cd
  %.pre.i.i = load i32, ptr %.084.peel.i.i, align 4
  %i.pp = tail call ptr @lappend(ptr noundef null, ptr noundef nonnull %.084.peel.i.i) #6 ; 2 uses
  %i.pq = icmp ne i32 %.pre.i.i, 7                ; 2 uses
  %i.pr = load i32, ptr %i.nq, align 4
  %i.ps = icmp sgt i32 %i.pr, 1
  br i1 %i.ps, label %.lr.ph121.i, label %.thread.i66.i

.lr.ph121.i:                                      ; preds = %.peel.next.i.i, %._crit_edge278.i.i
  %.0108138.i120.i = phi ptr [ %i.rb, %._crit_edge278.i.i ], [ %i.pp, %.peel.next.i.i ] ; 12 uses
  %.088144.i119.i = phi i1 [ %spec.select.i.i, %._crit_edge278.i.i ], [ %i.pq, %.peel.next.i.i ]
  %indvars.iv.i65118.i = phi i64 [ %indvars.iv.next.i69.i, %._crit_edge278.i.i ], [ 1, %.peel.next.i.i ] ; 2 uses
  %i.pt = load ptr, ptr %i.nr, align 8
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv.i65118.i
  %i.pv = load ptr, ptr %i.pu, align 8            ; 4 uses
  %i.pw = load i32, ptr %i.pv, align 4
  %i.px = icmp eq i32 %i.pw, 334
  br i1 %i.px, label %bb.ce, label %.thread.thread.i.i

bb.ce:                                            ; preds = %.lr.ph121.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.pz = load ptr, ptr %i.py, align 8            ; 4 uses
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = icmp eq i32 %i.qa, 17
  br i1 %i.qb, label %bb.cf, label %.thread.thread.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qd = load i32, ptr %i.qc, align 4            ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8            ; 3 uses
  %.not.i.i67.i = icmp eq ptr %i.qf, null
  br i1 %.not.i.i67.i, label %.thread.thread.i.i, label %list_length.exit.i68.i

list_length.exit.i68.i:                           ; preds = %bb.cf
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qh = load i32, ptr %i.qg, align 4
end_hunk_0
