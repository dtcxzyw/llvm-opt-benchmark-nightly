inline.NumInlined: 123
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@st_general_foreach:bb.a
  %i.bl = getelementptr [2 x i8], ptr %.pre230, i64 %i.bh
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !46
  %i.bn = zext i16 %i.bm to i64
  br label %get_bin.exit.i

bb.m:                                             ; preds = %bb.j
  %i.bo = getelementptr [4 x i8], ptr %.pre230, i64 %i.bh
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = zext i32 %i.bp to i64
  br label %get_bin.exit.i

bb.n:                                             ; preds = %bb.j
  %i.br = getelementptr [8 x i8], ptr %.pre230, i64 %i.bh
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !48
  br label %get_bin.exit.i

get_bin.exit.i:                                   ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bt = phi i64 [ %i.bk, %bb.k ], [ %i.bn, %bb.l ], [ %i.bq, %bb.m ], [ %i.bs, %bb.n ] ; 5 uses
  %i.bu = icmp ult i64 %i.bt, 2
  br i1 %i.bu, label %bb.r, label %bb.o

bb.o:                                             ; preds = %get_bin.exit.i
  %i.bv = getelementptr [24 x i8], ptr %i.al, i64 %i.bt ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !34
  %i.by = icmp eq i64 %i.bx, %i.aa
  br i1 %i.by, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %i.bv, i64 -40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cb = icmp eq i64 %i.ao, %i.ca
  br i1 %i.cb, label %find_table_entry_ind.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37
  %i.ce = call i32 %i.cd(i64 noundef %i.ao, i64 noundef %i.ca) #25, !inline_history !49
  %i.cf = icmp eq i32 %i.ce, 0
  %.pre.i94 = load i32, ptr %i.n, align 4, !tbaa !28 ; 3 uses
  %i.cg = icmp ne i32 %i.ak, %.pre.i94            ; 2 uses
  %brmerge.i91 = select i1 %i.cg, i1 true, i1 %i.cf, !prof !39
  br i1 %brmerge.i91, label %.loopexit.split.loop.exit41.i, label %.._crit_edge.i_crit_edge, !prof !40

.._crit_edge.i_crit_edge:                         ; preds = %bb.q
  %.val32.pre.i.pre = load i8, ptr %i.p, align 1, !tbaa !21 ; 2 uses
  %.pre.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  br label %._crit_edge.i

bb.r:                                             ; preds = %get_bin.exit.i
  %i.ch = icmp eq i64 %i.bt, 0
  br i1 %i.ch, label %find_table_entry_ind.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %.._crit_edge.i_crit_edge, %bb.r
  %.pre.pre253 = phi ptr [ %.pre.pre252, %bb.r ], [ %.pre.pre252, %bb.o ], [ %.pre.pre.pre, %.._crit_edge.i_crit_edge ]
  %.pre.i239 = phi i32 [ %.pre.i238, %bb.r ], [ %.pre.i238, %bb.o ], [ %i.ak, %.._crit_edge.i_crit_edge ]
  %.pre = phi ptr [ %.pre230, %bb.r ], [ %.pre.pre252, %bb.o ], [ %.pre.pre.pre, %.._crit_edge.i_crit_edge ]
  %.val32.pre.i228 = phi i8 [ %.val32.pre.i227, %bb.r ], [ %.val32.pre.i227, %bb.o ], [ %.val32.pre.i.pre, %.._crit_edge.i_crit_edge ]
  %.val32.i = phi i8 [ %.val32.i.sink, %bb.r ], [ %.val32.pre.i227, %bb.o ], [ %.val32.pre.i.pre, %.._crit_edge.i_crit_edge ]
  %i.ci = lshr i64 %.033.i, 11                    ; 2 uses
  %i.cj = mul i64 %i.bh, 5
  %i.ck = add nuw nsw i64 %i.ci, 1
  %i.cl = add i64 %i.ck, %i.cj
  br label %bb.j

.loopexit.split.loop.exit41.i:                    ; preds = %bb.q
  br i1 %i.cg, label %.preheader.outer.backedge, label %find_table_entry_ind.exit, !prof !50

.preheader.outer.backedge:                        ; preds = %.loopexit.split.loop.exit31.i, %.loopexit.split.loop.exit41.i, %find_table_entry_ind.exit
  %.pre.i.ph.be = phi i32 [ %.pre.i94, %.loopexit.split.loop.exit41.i ], [ %.pre.i237, %find_table_entry_ind.exit ], [ %.pre39.i, %.loopexit.split.loop.exit31.i ]
  %.ph.be = phi i32 [ %.pre.i94, %.loopexit.split.loop.exit41.i ], [ %i.ak, %find_table_entry_ind.exit ], [ %.pre39.i, %.loopexit.split.loop.exit31.i ]
  br label %.preheader.outer

find_table_entry_ind.exit:                        ; preds = %bb.p, %.loopexit.split.loop.exit41.i
  %.pre.i237 = phi i32 [ %i.ak, %.loopexit.split.loop.exit41.i ], [ %.pre.i238, %bb.p ] ; 2 uses
  %i.cm = icmp eq i64 %i.bt, -2
  br i1 %i.cm, label %.preheader.outer.backedge, label %find_table_entry_ind.exit.thread, !prof !68

find_table_entry_ind.exit.thread:                 ; preds = %find_table_entry_ind.exit, %bb.r
  %.pre.i97242 = phi i32 [ %.pre.i238, %bb.r ], [ %.pre.i237, %find_table_entry_ind.exit ]
  %.0.i93129 = phi i64 [ -1, %bb.r ], [ %i.bt, %find_table_entry_ind.exit ] ; 2 uses
  %i.cn = add i64 %.0.i93129, -2
  br label %find_entry.exit.thread

find_entry.exit.thread:                           ; preds = %bb.f, %find_entry.exit, %.thread, %find_table_entry_ind.exit.thread
  %.pre.i97241 = phi i32 [ %.pre.i97242, %find_table_entry_ind.exit.thread ], [ %.pre.i.ph, %.thread ], [ %.pre.i.ph, %find_entry.exit ], [ %.pre.i.ph, %bb.f ]
  %i.co = phi i32 [ 0, %find_table_entry_ind.exit.thread ], [ 1, %.thread ], [ 1, %find_entry.exit ], [ 1, %bb.f ]
  %.178 = phi i64 [ %i.cn, %find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %find_entry.exit ], [ -1, %bb.f ] ; 2 uses
  %.072.in.in = phi i64 [ %.0.i93129, %find_table_entry_ind.exit.thread ], [ -1, %.thread ], [ %.02233.i, %find_entry.exit ], [ -1, %bb.f ]
  %.072.in = icmp eq i64 %.072.in.in, -1
  %or.cond3 = and i1 %i.s, %.072.in
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %find_entry.exit.thread
  %i.cp = call i32 %1(i64 noundef 0, i64 noundef 0, i64 noundef %3, i32 noundef 1) #25 ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %find_entry.exit.thread
  %i.cq = getelementptr [24 x i8], ptr %i.al, i64 %.178
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  %.pre.i97248 = phi i32 [ %.pre.i97241, %bb.t ], [ %i.z, %bb.e ] ; 2 uses
  %.081 = phi ptr [ %i.cq, %bb.t ], [ %i.u, %bb.e ]
  %.279 = phi i64 [ %.178, %bb.t ], [ %.077197, %bb.e ] ; 9 uses
  %.175 = phi ptr [ %i.al, %bb.t ], [ %.074198, %bb.e ] ; 10 uses
  %.1 = phi i32 [ %i.co, %bb.t ], [ %.071199, %bb.e ] ; 5 uses
  switch i32 %.080, label %update_range_for_deleted.exit [
    i32 2, label %bb.w
    i32 1, label %.loopexit
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %.not87, label %.loopexit, label %update_range_for_deleted.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = getelementptr i8, ptr %.081, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !36 ; 4 uses
  %.not88 = icmp eq i32 %.1, 0
  br i1 %.not88, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.w, %.loopexit.split.loop.exit40.i.us
  %i.ct = phi i32 [ %.pre.i123.us, %.loopexit.split.loop.exit40.i.us ], [ %.pre.i97248, %bb.w ]
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !26
  %.val.i109.us = load i8, ptr %i.p, align 1, !tbaa !21 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i117.us, %.split.us
  %.val32.i119.us.sink = phi i8 [ %.val32.i119.us, %._crit_edge.i117.us ], [ %.val.i109.us, %.split.us ] ; 2 uses
  %.sink332 = phi i64 [ %i.ec, %._crit_edge.i117.us ], [ %i.aa, %.split.us ]
  %.val32.pre.i118.us249 = phi i8 [ %.val32.pre.i118.us250, %._crit_edge.i117.us ], [ %.val.i109.us, %.split.us ] ; 3 uses
  %.033.i111.us = phi i64 [ %i.dz, %._crit_edge.i117.us ], [ %i.aa, %.split.us ]
  %i.cv = zext nneg i8 %.val32.i119.us.sink to i64
  %notmask.i.i.i.i120.us = shl nsw i64 -1, %i.cv
  %i.cw = xor i64 %notmask.i.i.i.i120.us, -1
  %i.cx = and i64 %.sink332, %i.cw                ; 9 uses
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !24  ; 4 uses
  %.val31.i113.us = load i8, ptr %i.q, align 2, !tbaa !23
  switch i8 %.val31.i113.us, label %bb.ab [
    i8 0, label %bb.aa
    i8 1, label %bb.z
    i8 2, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr [4 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  br label %get_bin.exit.i114.us

bb.z:                                             ; preds = %bb.x
  %i.dc = getelementptr [2 x i8], ptr %i.cy, i64 %i.cx
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !46
  %i.de = zext i16 %i.dd to i64
  br label %get_bin.exit.i114.us

bb.aa:                                            ; preds = %bb.x
  %i.df = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !45
  %i.dh = zext i8 %i.dg to i64
  br label %get_bin.exit.i114.us

bb.ab:                                            ; preds = %bb.x
  %i.di = getelementptr [8 x i8], ptr %i.cy, i64 %i.cx
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !48
  br label %get_bin.exit.i114.us

get_bin.exit.i114.us:                             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.dk = phi i64 [ %i.dh, %bb.aa ], [ %i.de, %bb.z ], [ %i.db, %bb.y ], [ %i.dj, %bb.ab ] ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 2
  br i1 %i.dl, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %get_bin.exit.i114.us
  %i.dm = getelementptr [24 x i8], ptr %i.cu, i64 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -48
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !34
  %i.dp = icmp eq i64 %i.do, %i.aa
  br i1 %i.dp, label %bb.ad, label %._crit_edge.i117.us

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr i8, ptr %i.dm, i64 -40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !36 ; 2 uses
  %i.ds = icmp eq i64 %i.cs, %i.dr
  br i1 %i.ds, label %.split195.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !37
  %i.dv = call i32 %i.du(i64 noundef %i.cs, i64 noundef %i.dr) #25, !inline_history !60
  %i.dw = icmp eq i32 %i.dv, 0
  %.pre.i123.us = load i32, ptr %i.n, align 4, !tbaa !28 ; 2 uses
  %i.dx = icmp ne i32 %i.ct, %.pre.i123.us        ; 2 uses
  %brmerge.i116.us = select i1 %i.dx, i1 true, i1 %i.dw, !prof !39
  br i1 %brmerge.i116.us, label %.loopexit.split.loop.exit40.i.us, label %.._crit_edge.i117.us_crit_edge, !prof !40

.._crit_edge.i117.us_crit_edge:                   ; preds = %bb.ae
  %.val32.pre.i118.us.pre = load i8, ptr %i.p, align 1, !tbaa !21 ; 2 uses
  br label %._crit_edge.i117.us

.loopexit.split.loop.exit40.i.us:                 ; preds = %bb.ae
  br i1 %i.dx, label %.split.us, label %.split195.us, !prof !50

bb.af:                                            ; preds = %get_bin.exit.i114.us
  %i.dy = icmp eq i64 %i.dk, 0
  br i1 %i.dy, label %update_range_for_deleted.exit, label %._crit_edge.i117.us

._crit_edge.i117.us:                              ; preds = %bb.ac, %.._crit_edge.i117.us_crit_edge, %bb.af
  %.val32.pre.i118.us250 = phi i8 [ %.val32.pre.i118.us249, %bb.af ], [ %.val32.pre.i118.us.pre, %.._crit_edge.i117.us_crit_edge ], [ %.val32.pre.i118.us249, %bb.ac ]
  %.val32.i119.us = phi i8 [ %.val32.i119.us.sink, %bb.af ], [ %.val32.pre.i118.us.pre, %.._crit_edge.i117.us_crit_edge ], [ %.val32.pre.i118.us249, %bb.ac ]
  %i.dz = lshr i64 %.033.i111.us, 11              ; 2 uses
  %i.ea = mul i64 %i.cx, 5
  %i.eb = add nuw nsw i64 %i.dz, 1
  %i.ec = add i64 %i.eb, %i.ea
  br label %bb.x

.split195.us:                                     ; preds = %.loopexit.split.loop.exit40.i.us, %bb.ad
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !24  ; 4 uses
  %.val89 = load i8, ptr %i.q, align 2, !tbaa !23
  switch i8 %.val89, label %get_bin.exit [
    i8 0, label %get_bin.exit.thread
    i8 1, label %get_bin.exit.thread135
    i8 2, label %get_bin.exit.thread136
  ]

.split:                                           ; preds = %bb.w
  %i.ee = load i64, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  br i1 %i.eg, label %.lr.ph.i96, label %update_range_for_deleted.exit

.lr.ph.i96:                                       ; preds = %.split, %.backedge
  %.pre.i97 = phi i32 [ %.pre.i97245294, %.backedge ], [ %.pre.i97248, %.split ] ; 7 uses
  %i.eh = phi i64 [ %i.ez, %.backedge ], [ %i.ef, %.split ]
  %i.ei = phi i64 [ %i.ey, %.backedge ], [ %i.ee, %.split ]
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %.thread146, %.lr.ph.i96
  %.pre.i97246 = phi i32 [ %.pre.i97, %.lr.ph.i96 ], [ %.pre.i97244, %.thread146 ] ; 3 uses
  %i.ek = phi i32 [ %.pre.i97, %.lr.ph.i96 ], [ %i.ew, %.thread146 ] ; 2 uses
  %.02233.i98 = phi i64 [ %i.eh, %.lr.ph.i96 ], [ %i.ex, %.thread146 ] ; 4 uses
  %i.el = getelementptr [24 x i8], ptr %i.ej, i64 %.02233.i98 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !34
  %i.en = icmp eq i64 %i.em, %i.aa
  br i1 %i.en, label %bb.ah, label %.thread146

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr i8, ptr %i.el, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !36 ; 2 uses
  %i.eq = icmp eq i64 %i.cs, %i.ep
  br i1 %i.eq, label %.thread.i105, label %bb.ai

.thread.i105:                                     ; preds = %bb.ah
  %.not25.not.i106 = icmp eq i32 %.pre.i97, %i.ek
  br i1 %.not25.not.i106, label %find_entry.exit108, label %.backedge, !prof !69

bb.ai:                                            ; preds = %bb.ah
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !37
  %i.et = call i32 %i.es(i64 noundef %i.cs, i64 noundef %i.ep) #25, !inline_history !38
  %i.eu = icmp eq i32 %i.et, 0
  %.pre39.i104 = load i32, ptr %i.n, align 4, !tbaa !28 ; 2 uses
  %i.ev = icmp ne i32 %.pre.i97, %.pre39.i104     ; 2 uses
  %brmerge.i100 = select i1 %i.ev, i1 true, i1 %i.eu, !prof !39
  br i1 %brmerge.i100, label %.loopexit.split.loop.exit31.i102, label %.thread146, !prof !40

.thread146:                                       ; preds = %bb.ag, %bb.ai
  %.pre.i97244 = phi i32 [ %.pre.i97, %bb.ai ], [ %.pre.i97246, %bb.ag ]
  %i.ew = phi i32 [ %.pre.i97, %bb.ai ], [ %i.ek, %bb.ag ]
  %i.ex = add i64 %.02233.i98, 1                  ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.ex, %i.ei
  br i1 %exitcond.not.i101, label %update_range_for_deleted.exit, label %bb.ag, !llvm.loop !41

.loopexit.split.loop.exit31.i102:                 ; preds = %bb.ai
  br i1 %i.ev, label %.backedge, label %find_entry.exit108, !prof !43

find_entry.exit108:                               ; preds = %.thread.i105, %.loopexit.split.loop.exit31.i102
  %.pre.i97245 = phi i32 [ %.pre.i97, %.loopexit.split.loop.exit31.i102 ], [ %.pre.i97246, %.thread.i105 ]
  switch i64 %.02233.i98, label %set_bin.exit [
    i64 -2, label %.backedge
    i64 -1, label %update_range_for_deleted.exit
  ], !prof !70

.backedge:                                        ; preds = %.loopexit.split.loop.exit31.i102, %.thread.i105, %find_entry.exit108
  %.pre.i97245294 = phi i32 [ %.pre.i97245, %find_entry.exit108 ], [ %.pre.i97246, %.thread.i105 ], [ %.pre39.i104, %.loopexit.split.loop.exit31.i102 ]
  %i.ey = load i64, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  br i1 %i.fa, label %.lr.ph.i96, label %update_range_for_deleted.exit

get_bin.exit.thread:                              ; preds = %.split195.us
  %i.fb = getelementptr i8, ptr %i.ed, i64 %i.cx  ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !45
  %i.fd = zext i8 %i.fc to i64
  %i.fe = add nsw i64 %i.fd, -2
  store i8 1, ptr %i.fb, align 1, !tbaa !45
  br label %set_bin.exit

get_bin.exit.thread135:                           ; preds = %.split195.us
  %i.ff = getelementptr [2 x i8], ptr %i.ed, i64 %i.cx ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !46
  %i.fh = zext i16 %i.fg to i64
  %i.fi = add nsw i64 %i.fh, -2
  store i16 1, ptr %i.ff, align 2, !tbaa !46
  br label %set_bin.exit

get_bin.exit.thread136:                           ; preds = %.split195.us
  %i.fj = getelementptr [4 x i8], ptr %i.ed, i64 %i.cx ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nsw i64 %i.fl, -2
  store i32 1, ptr %i.fj, align 4, !tbaa !7
  br label %set_bin.exit

get_bin.exit:                                     ; preds = %.split195.us
  %i.fn = getelementptr [8 x i8], ptr %i.ed, i64 %i.cx ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !48
  %i.fp = add i64 %i.fo, -2
  store i64 1, ptr %i.fn, align 8, !tbaa !48
  br label %set_bin.exit

set_bin.exit:                                     ; preds = %find_entry.exit108, %get_bin.exit, %get_bin.exit.thread136, %get_bin.exit.thread135, %get_bin.exit.thread
  %.073 = phi i64 [ %i.fp, %get_bin.exit ], [ %i.fe, %get_bin.exit.thread ], [ %i.fi, %get_bin.exit.thread135 ], [ %i.fm, %get_bin.exit.thread136 ], [ %.02233.i98, %find_entry.exit108 ] ; 4 uses
  %i.fq = getelementptr [24 x i8], ptr %.175, i64 %.073
  store i64 -1, ptr %i.fq, align 8, !tbaa !34
  %i.fr = load i64, ptr %i.t, align 8, !tbaa !27
  %i.fs = add i64 %i.fr, -1
  store i64 %i.fs, ptr %i.t, align 8, !tbaa !27
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !33
  %i.fu = icmp eq i64 %i.ft, %.073
  br i1 %i.fu, label %bb.aj, label %update_range_for_deleted.exit

bb.aj:                                            ; preds = %set_bin.exit
  %i.fv = load i64, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.fw = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.fx = add i64 %.073, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 %i.fx) ; 2 uses
  %.0.i124370 = add i64 %.073, 1                  ; 2 uses
  %i.fy = icmp ult i64 %.0.i124370, %i.fv
  br i1 %i.fy, label %.lr.ph372, label %.critedge.i

bb.ak:                                            ; preds = %.lr.ph372
  %.0.i124 = add i64 %.0.i124371, 1               ; 2 uses
  %i.fz = icmp ult i64 %.0.i124, %i.fv
  br i1 %i.fz, label %.lr.ph372, label %.critedge.i, !llvm.loop !61

.lr.ph372:                                        ; preds = %bb.aj, %bb.ak
  %.0.i124371 = phi i64 [ %.0.i124, %bb.ak ], [ %.0.i124370, %bb.aj ] ; 3 uses
  %i.ga = getelementptr [24 x i8], ptr %i.fw, i64 %.0.i124371
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !34
  %i.gc = icmp eq i64 %i.gb, -1
  br i1 %i.gc, label %bb.ak, label %..critedge.i_crit_edge, !llvm.loop !61

..critedge.i_crit_edge:                           ; preds = %.lr.ph372
  br label %.critedge.i, !llvm.loop !61

.critedge.i:                                      ; preds = %bb.ak, %..critedge.i_crit_edge, %bb.aj
  %.0.lcssa.i = phi i64 [ %umax.i, %bb.aj ], [ %.0.i124371, %..critedge.i_crit_edge ], [ %umax.i, %bb.ak ]
  store i64 %.0.lcssa.i, ptr %i.e, align 8, !tbaa !33
  br label %update_range_for_deleted.exit

update_range_for_deleted.exit:                    ; preds = %find_entry.exit108, %.backedge, %.thread146, %bb.af, %.split, %.critedge.i, %set_bin.exit, %bb.u, %bb.v, %bb.b
  %.3 = phi i64 [ %.077197, %bb.b ], [ %.279, %bb.u ], [ %.279, %bb.v ], [ %.279, %set_bin.exit ], [ %.279, %.split ], [ %.279, %.thread146 ], [ %.279, %.critedge.i ], [ %.279, %bb.af ], [ %.279, %.backedge ], [ %.279, %find_entry.exit108 ]
  %.276 = phi ptr [ %.074198, %bb.b ], [ %.175, %bb.u ], [ %.175, %bb.v ], [ %.175, %set_bin.exit ], [ %.175, %.split ], [ %.175, %.thread146 ], [ %.175, %.critedge.i ], [ %.175, %bb.af ], [ %.175, %.backedge ], [ %.175, %find_entry.exit108 ]
  %.2 = phi i32 [ %.071199, %bb.b ], [ %.1, %bb.u ], [ %.1, %bb.v ], [ %.1, %set_bin.exit ], [ 1, %.split ], [ 1, %.thread146 ], [ %.1, %.critedge.i ], [ 0, %bb.af ], [ 1, %.backedge ], [ 1, %find_entry.exit108 ]
  %i.gd = add i64 %.3, 1                          ; 2 uses
  %i.ge = load i64, ptr %i.g, align 8, !tbaa !32
  %i.gf = icmp ult i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.b, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %bb.v, %bb.u, %update_range_for_deleted.exit, %bb.a, %bb.s
  %.0 = phi i32 [ 1, %bb.s ], [ 0, %bb.a ], [ 0, %update_range_for_deleted.exit ], [ 0, %bb.u ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_parser_st_foreach(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.functor, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !74
  %i.b = ptrtoint ptr %3 to i64
  %i.c = call fastcc i32 @st_general_foreach(ptr noundef %0, ptr noundef nonnull @apply_functor, ptr noundef null, i64 noundef %i.b, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_functor(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #8 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = tail call i32 %i.b(i64 noundef %0, i64 noundef %1, i64 noundef %i.d) #25
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_parser_st_foreach_check(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i32 @st_general_foreach(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -1152921504606846976, 1152921504606846976) i64 @rb_parser_st_keys(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 2 uses
end_hunk_0
