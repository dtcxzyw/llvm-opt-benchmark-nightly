inline.NumInlined: 48
begin_hunk_0_@execute:bb.a
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  br label %bb.dj

bb.k:                                             ; preds = %.lr.ph161
  %i.cx = ashr i32 %i.r, 10
  %i.cy = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.cy, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.cz = srem i32 %i.r, 1024
  %i.da = sext i32 %i.cx to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !13
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15  ; 2 uses
  %.not113 = icmp sgt i8 %i.df, -1
  br i1 %.not113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = ashr i32 %i.cy, 10
  %i.dh = add nsw i32 %i.p, 3
  store i32 %i.dh, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.di = srem i32 %i.cy, 1024
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.061.in = phi i8 [ %i.do, %bb.l ], [ %i.df, %bb.k ] ; 2 uses
  %.061 = zext i8 %.061.in to i32                 ; 2 uses
  %i.dp = zext i8 %.061.in to i64                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [168 x i8], ptr %i.o, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !31
  %.not114 = icmp eq i8 %i.dr, 0
  br i1 %.not114, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ds = load ptr, ptr @f_names, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dp
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !13
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.2, ptr noundef %i.du) #12
  br label %bb.dj

bb.o:                                             ; preds = %bb.m
  call void @process_params(ptr noundef nonnull @pc, i32 noundef %.061) #12
  %i.dv = load ptr, ptr @functions, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw [168 x i8], ptr %i.dv, i64 %i.dp
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  %.0149 = load ptr, ptr %i.dx, align 8, !tbaa !35 ; 2 uses
  %.not115150 = icmp eq ptr %.0149, null
  br i1 %.not115150, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0151 = phi ptr [ %.0, %.lr.ph ], [ %.0149, %bb.o ] ; 2 uses
  %i.dy = load i32, ptr %.0151, align 8, !tbaa !36
  call void @auto_var(i32 noundef %i.dy) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %.0151, i64 8
  %.0 = load ptr, ptr %i.dz, align 8, !tbaa !35   ; 2 uses
  %.not115 = icmp eq ptr %.0, null
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.ea = load i32, ptr @pc, align 4, !tbaa !12
  call void @fpush(i32 noundef %i.ea) #12
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  call void @fpush(i32 noundef %i.eb) #12
  %i.ec = load i32, ptr @i_base, align 4, !tbaa !4
  call void @fpush(i32 noundef %i.ec) #12
  store i32 %.061, ptr @pc, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  br label %bb.dj

bb.p:                                             ; preds = %.lr.ph161
  %i.ed = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !22
  call void @push_copy(ptr noundef %i.ee) #12
  br label %bb.dj

bb.q:                                             ; preds = %.lr.ph161
  %i.ef = icmp eq i32 %i.n, 0
  %i.eg = load ptr, ptr @fn_stack, align 8
  %.059.in = select i1 %i.ef, ptr @i_base, ptr %i.eg
  %.059 = load i32, ptr %.059.in, align 4, !tbaa !4 ; 2 uses
  %i.eh = icmp eq i32 %.059, 10
  br i1 %i.eh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @push_b10_const(ptr noundef nonnull @pc)
  br label %bb.dj

bb.s:                                             ; preds = %bb.q
  call void @push_constant(ptr noundef nonnull @prog_char, i32 noundef %.059)
  br label %bb.dj

bb.t:                                             ; preds = %.lr.ph161
  %i.ei = ashr i32 %i.r, 10
  %i.ej = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.ek = srem i32 %i.r, 1024
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !13
  %i.eo = sext i32 %i.ek to i64
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !15  ; 2 uses
  %.not112 = icmp sgt i8 %i.eq, -1
  br i1 %.not112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = ashr i32 %i.ej, 10
  %i.es = add nsw i32 %i.p, 3
  store i32 %i.es, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.et = srem i32 %i.ej, 1024
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !13
  %i.ex = sext i32 %i.et to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.in = phi i8 [ %i.ez, %bb.u ], [ %i.eq, %bb.t ]
  %.1 = zext i8 %.1.in to i32
  call void @load_array(i32 noundef %.1) #12
  br label %bb.dj

bb.w:                                             ; preds = %.lr.ph161
  %i.fa = ashr i32 %i.r, 10
  %i.fb = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fc = srem i32 %i.r, 1024
  %i.fd = sext i32 %i.fa to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !13
  %i.fg = sext i32 %i.fc to i64
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !15  ; 2 uses
  %.not111 = icmp sgt i8 %i.fi, -1
  br i1 %.not111, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = ashr i32 %i.fb, 10
  %i.fk = add nsw i32 %i.p, 3
  store i32 %i.fk, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fl = srem i32 %i.fb, 1024
  %i.fm = sext i32 %i.fj to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13
  %i.fp = sext i32 %i.fl to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.in = phi i8 [ %i.fr, %bb.x ], [ %i.fi, %bb.w ]
  call void @decr_array(i8 noundef signext %.2.in) #12
  br label %bb.dj

.preheader147:                                    ; preds = %.lr.ph161, %bb.ab
  %i.fs = phi i32 [ %.pre175, %bb.ab ], [ %i.n, %.lr.ph161 ]
  %i.ft = phi ptr [ %.pre174, %bb.ab ], [ %i.o, %.lr.ph161 ]
  %i.fu = phi i32 [ %.pre173, %bb.ab ], [ %i.r, %.lr.ph161 ] ; 4 uses
  %i.fv = ashr i32 %i.fu, 10
  %i.fw = add nsw i32 %i.fu, 1                    ; 3 uses
  store i32 %i.fw, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fx = srem i32 %i.fu, 1024
  %i.fy = sext i32 %i.fs to i64
  %i.fz = getelementptr inbounds [168 x i8], ptr %i.ft, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = sext i32 %i.fv to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !13
  %i.ge = sext i32 %i.fx to i64
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.gg, label %.sink.split [
    i8 34, label %bb.ac
    i8 92, label %bb.z
  ]

bb.z:                                             ; preds = %.preheader147
  %i.gh = ashr i32 %i.fw, 10
  %i.gi = add nsw i32 %i.fu, 2
  store i32 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.gj = srem i32 %i.fw, 1024
  %i.gk = sext i32 %i.gh to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !13
  %i.gn = sext i32 %i.gj to i64
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15  ; 2 uses
  %i.gq = icmp eq i8 %i.gp, 34
  br i1 %i.gq, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = sext i8 %i.gp to i32                    ; 2 uses
  %0 = call i32 @llvm.fshl.i32(i32 %i.gr, i32 %i.gr, i32 31)
  %switch.tableidx = add i32 %0, -46              ; 3 uses
  %i.gs = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6697, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond198 = select i1 %i.gs, i1 %switch.lobit, i1 false
  br i1 %or.cond198, label %switch.lookup, label %bb.ab

switch.lookup:                                    ; preds = %bb.aa
  %i.gt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.execute, i64 %i.gt
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %.preheader147
  %.sink = phi i8 [ %i.gg, %.preheader147 ], [ %switch.load, %switch.lookup ]
  call void @out_char(i8 noundef signext %.sink) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.sink.split
  %.pre173 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %.pre174 = load ptr, ptr @functions, align 8, !tbaa !10
  %.pre175 = load i32, ptr @pc, align 4, !tbaa !12
  br label %.preheader147, !llvm.loop !39

bb.ac:                                            ; preds = %.preheader147, %bb.z
  %i.gu = load i8, ptr @interactive, align 1, !tbaa !15
  %.not110 = icmp eq i8 %i.gu, 0
  br i1 %.not110, label %bb.dj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.gw = call i32 @fflush(ptr noundef %i.gv)     ; 0 uses
  br label %bb.dj

bb.ae:                                            ; preds = %.lr.ph161
  %.not107 = icmp eq i32 %i.n, 0
  br i1 %.not107, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !42
  call void @pop_vars(ptr noundef %i.gy) #12
  %i.gz = load ptr, ptr @functions, align 8, !tbaa !10
  %i.ha = load i32, ptr @pc, align 4, !tbaa !12
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [168 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 152
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !43
  call void @pop_vars(ptr noundef %i.he) #12
  %i.hf = call i32 @fpop() #12                    ; 0 uses
  %i.hg = call i32 @fpop() #12
  store i32 %i.hg, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.hh = call i32 @fpop() #12
  store i32 %i.hh, ptr @pc, align 4, !tbaa !12
  br label %bb.dj

bb.ag:                                            ; preds = %bb.ae
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.3) #12
  br label %bb.dj

bb.ah:                                            ; preds = %.lr.ph161
  %i.hi = ashr i32 %i.r, 10
  %i.hj = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.hj, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.hk = srem i32 %i.r, 1024
  %i.hl = sext i32 %i.hi to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !13
  %i.ho = sext i32 %i.hk to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !15  ; 2 uses
  %.not106 = icmp sgt i8 %i.hq, -1
  br i1 %.not106, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hr = ashr i32 %i.hj, 10
  %i.hs = add nsw i32 %i.p, 3
  store i32 %i.hs, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.ht = srem i32 %i.hj, 1024
  %i.hu = sext i32 %i.hr to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !13
  %i.hx = sext i32 %i.ht to i64
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3.in = phi i8 [ %i.hz, %bb.ai ], [ %i.hq, %bb.ah ]
  %.3 = zext i8 %.3.in to i32
  call void @store_array(i32 noundef %.3) #12
  br label %bb.dj

bb.ak:                                            ; preds = %.lr.ph161
  %i.ia = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !22
  %i.ic = call signext i8 @is_zero(ptr noundef %i.ib) #12 ; 2 uses
  store i8 %i.ic, ptr @c_code, align 1, !tbaa !15
  %i.id = load ptr, ptr @ex_stack, align 8, !tbaa !20
  call void @free_num(ptr noundef %i.id) #12
  %.not.i = icmp eq i8 %i.ic, 0
  %_zero_.val.i = load ptr, ptr @_zero_, align 8
  %_one_.val.i = load ptr, ptr @_one_, align 8
  %i.ie = select i1 %.not.i, ptr %_zero_.val.i, ptr %_one_.val.i
  %i.if = call ptr @copy_num(ptr noundef %i.ie) #12
  %i.ig = load ptr, ptr @ex_stack, align 8, !tbaa !20
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !22
  br label %bb.dj

bb.al:                                            ; preds = %.lr.ph161, %.lr.ph161
  %i.ih = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !22
  %i.ij = load i32, ptr @o_base, align 4, !tbaa !4
  call void @out_num(ptr noundef %i.ii, i32 noundef %i.ij, ptr noundef nonnull @out_char) #12
  %i.ik = icmp eq i8 %i.z, 87
  br i1 %i.ik, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @out_char(i8 noundef signext 10) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @store_var(i32 noundef 3) #12
  %i.il = load i8, ptr @interactive, align 1, !tbaa !15
  %.not105 = icmp eq i8 %i.il, 0
  br i1 %.not105, label %bb.dj, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.in = call i32 @fflush(ptr noundef %i.im)     ; 0 uses
  br label %bb.dj

bb.ap:                                            ; preds = %.lr.ph161
  %i.io = ashr i32 %i.r, 10
  %i.ip = add nsw i32 %i.p, 2
  store i32 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.iq = srem i32 %i.r, 1024
  %i.ir = sext i32 %i.io to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !13
  %i.iu = sext i32 %i.iq to i64
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !15
  switch i8 %i.iw, label %bb.dj [
    i8 76, label %bb.aq
    i8 83, label %bb.au
    i8 82, label %bb.av
    i8 73, label %bb.ax
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ix = load ptr, ptr @ex_stack, align 8, !tbaa !20 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !22 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !44 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !46 ; 4 uses
  br i1 %i.jb, label %bb.ar, label %._crit_edge171

bb.ar:                                            ; preds = %bb.aq
  %.not104 = icmp eq i32 %i.jd, 0
  br i1 %.not104, label %._crit_edge171, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !15
  %i.jg = icmp eq i8 %i.jf, 0
  br i1 %i.jg, label %bb.at, label %._crit_edge171

bb.at:                                            ; preds = %bb.as
  call void @int2num(ptr noundef nonnull %i.ix, i32 noundef %i.jd) #12
  br label %bb.dj

._crit_edge171:                                   ; preds = %bb.aq, %bb.as, %bb.ar
  %i.jh = phi i32 [ 0, %bb.ar ], [ %i.jd, %bb.as ], [ %i.jd, %bb.aq ]
  %i.ji = add nsw i32 %i.jh, %i.ja
  call void @int2num(ptr noundef nonnull %i.ix, i32 noundef %i.ji) #12
  br label %bb.dj

bb.au:                                            ; preds = %bb.ap
  %i.jj = load ptr, ptr @ex_stack, align 8, !tbaa !20 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !46
  call void @int2num(ptr noundef nonnull %i.jj, i32 noundef %i.jm) #12
  br label %bb.dj

bb.av:                                            ; preds = %bb.ap
  %i.jn = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.jo = load i32, ptr @scale, align 4, !tbaa !4
  %i.jp = call i32 @bc_sqrt(ptr noundef %i.jn, i32 noundef %i.jo) #12
  %.not103 = icmp eq i32 %i.jp, 0
  br i1 %.not103, label %bb.aw, label %bb.dj

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.4) #12
  br label %bb.dj

bb.ax:                                            ; preds = %bb.ap
  %i.jq = load i32, ptr @i_base, align 4, !tbaa !4
  call void @push_constant(ptr noundef nonnull @input_char, i32 noundef %i.jq)
  br label %bb.dj

bb.ay:                                            ; preds = %.lr.ph161
  %i.jr = ashr i32 %i.r, 10
  %i.js = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.js, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.jt = srem i32 %i.r, 1024
end_hunk_0
