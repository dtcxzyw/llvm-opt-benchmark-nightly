Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ini?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
begin_hunk_0_@zend_ini_parse_quantity_internal:bb.a
  %i.am = icmp eq i8 %i.q, 48
  br i1 %i.am, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.1107, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !50  ; 3 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !108
  %i.as = and i16 %i.ar, 2048
  %.not121 = icmp eq i16 %i.as, 0
  br i1 %.not121, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq ptr %i.an, %.0109.lcssa
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

bb.n:                                             ; preds = %bb.l
  switch i8 %i.ao, label %bb.q [
    i8 103, label %bb.ad
    i8 71, label %bb.ad
    i8 109, label %bb.ad
    i8 77, label %bb.ad
    i8 107, label %bb.ad
    i8 75, label %bb.ad
    i8 120, label %bb.r
    i8 88, label %bb.r
    i8 111, label %bb.o
    i8 79, label %bb.o
    i8 98, label %bb.p
    i8 66, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.au = sext i8 %i.ao to i32
  %i.av = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %i.au) #17
  store ptr %i.av, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

bb.r:                                             ; preds = %bb.n, %bb.n, %bb.p, %bb.o
  %.not20.i = phi i64 [ 2, %bb.p ], [ 2, %bb.o ], [ 0, %bb.n ], [ 0, %bb.n ]
  %.0100 = phi i32 [ 2, %bb.p ], [ 8, %bb.o ], [ 16, %bb.n ], [ 16, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.1107, i64 2 ; 8 uses
  %i.ax = icmp eq ptr %i.aw, %.0109.lcssa
  br i1 %i.ax, label %.critedge125, label %bb.s, !prof !59

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp ult ptr %i.aw, %.0109.lcssa
  br i1 %i.ay, label %.lr.ph.preheader.i, label %.critedgethread-pre-split.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = sub i64 %.0109.lcssa219, %i.az
  %scevgep.i = getelementptr i8, ptr %i.aw, i64 %i.ba
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.023.i = phi ptr [ %i.bc, %bb.t ], [ %i.aw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bb = load i8, ptr %.023.i, align 1, !tbaa !50 ; 2 uses
  switch i8 %i.bb, label %.critedge.i [
    i8 32, label %bb.t
    i8 13, label %bb.t
    i8 11, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 12, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bc, %.0109.lcssa
  br i1 %exitcond.not.i, label %.critedgethread-pre-split.i, label %.lr.ph.i, !llvm.loop !104

.critedgethread-pre-split.i:                      ; preds = %bb.t, %bb.s
  %.0.lcssa.i = phi ptr [ %i.aw, %bb.s ], [ %scevgep.i, %bb.t ] ; 2 uses
  %.pr.i = load i8, ptr %.0.lcssa.i, align 1, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedgethread-pre-split.i
  %.022.i = phi ptr [ %.0.lcssa.i, %.critedgethread-pre-split.i ], [ %.023.i, %.lr.ph.i ] ; 2 uses
  %i.bd = phi i8 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  switch i8 %i.bd, label %bb.v [
    i8 43, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %.critedge.i, %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.be, align 1, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge.i
  %i.bf = phi i8 [ %.pre.i, %bb.u ], [ %i.bd, %.critedge.i ]
  %.1.i = phi ptr [ %i.be, %bb.u ], [ %.022.i, %.critedge.i ] ; 6 uses
  %i.bg = icmp eq i8 %i.bf, 48
  br i1 %i.bg, label %bb.w, label %zend_ini_consume_quantity_prefix.exit

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !108
  %i.bm = and i16 %i.bl, 2048
  %.not.i194 = icmp ne i16 %i.bm, 0
  %i.bn = icmp eq ptr %i.bh, %.0109.lcssa
  %or.cond.i = or i1 %i.bn, %.not.i194
  br i1 %or.cond.i, label %zend_ini_consume_quantity_prefix.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i8 %i.bi, label %zend_ini_consume_quantity_prefix.exit [
    i8 120, label %bb.y
    i8 88, label %bb.y
    i8 111, label %bb.y
    i8 79, label %bb.y
    i8 98, label %bb.z
    i8 66, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %zend_ini_consume_quantity_prefix.exit

bb.z:                                             ; preds = %bb.x, %bb.x
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.not20.i
  br label %zend_ini_consume_quantity_prefix.exit

zend_ini_consume_quantity_prefix.exit:            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.018.i = phi ptr [ %spec.select.i, %bb.z ], [ %.1.i, %bb.w ], [ %.1.i, %bb.x ], [ %i.bo, %bb.y ], [ %.1.i, %bb.v ]
  %.not196 = icmp eq ptr %i.aw, %.018.i
  br i1 %.not196, label %bb.ad, label %.critedge125, !prof !111

.critedge125:                                     ; preds = %bb.r, %zend_ini_consume_quantity_prefix.exit
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.e) #17
  %i.bp = load ptr, ptr %3, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !50
  %.pre = load ptr, ptr %3, align 8, !tbaa !110
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bv = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bu) #17
  store ptr %i.bv, ptr %2, align 8, !tbaa !83
  %i.bw = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i149 = icmp eq ptr %i.bw, null
  br i1 %.not.i149, label %smart_str_free_ex.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge125
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !50
  %i.bz = and i32 %i.by, 64
  %.not.i.i150 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i150, label %bb.ab, label %smart_str_free_ex.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !54 ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.bw, align 4, !tbaa !54
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ac, label %smart_str_free_ex.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_efree(ptr noundef nonnull %i.bw) #17
  br label %smart_str_free_ex.exit

bb.ad:                                            ; preds = %bb.j, %bb.k, %zend_ini_consume_quantity_prefix.exit, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.2108 = phi ptr [ %.1107, %bb.k ], [ %.1107, %bb.n ], [ %.1107, %bb.n ], [ %.1107, %bb.n ], [ %.1107, %bb.n ], [ %.1107, %bb.n ], [ %.1107, %bb.n ], [ %i.aw, %zend_ini_consume_quantity_prefix.exit ], [ %.1107, %bb.j ] ; 2 uses
  %.1101 = phi i32 [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.n ], [ %.0100, %zend_ini_consume_quantity_prefix.exit ], [ 0, %bb.j ]
  %i.ce = tail call ptr @__errno_location() #19   ; 2 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !74
  %i.cf = call i64 @__isoc23_strtoull(ptr noundef nonnull %.2108, ptr noundef nonnull %i.b, i32 noundef %.1101) #17 ; 9 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !74
  %i.ch = icmp eq i32 %i.cg, 34
  br i1 %i.ch, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not122 = icmp eq i32 %1, 0
  br i1 %.not122, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.0102, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ci = icmp ne i64 %i.cf, 1
  %i.cj = load ptr, ptr %i.b, align 8
  %i.ck = icmp ne ptr %i.cj, %.0109.lcssa
  %or.cond127.not = select i1 %i.ci, i1 true, i1 %i.ck ; 2 uses
  %spec.select129 = select i1 %or.cond127.not, i64 %i.cf, i64 -1
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.cl = icmp eq i64 %i.cf, -9223372036854775808
  %or.cond = select i1 %.0102, i1 %i.cl, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = icmp slt i64 %i.cf, 0
  br i1 %i.cm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = sub nsw i64 0, %i.cf
  %spec.select = select i1 %.0102, i64 %i.cn, i64 %i.cf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj, %bb.ai, %bb.ah, %bb.ad, %bb.af
  %6 = phi i1 [ true, %bb.ai ], [ true, %bb.ad ], [ false, %bb.aj ], [ false, %bb.af ], [ %or.cond127.not, %bb.ag ], [ false, %bb.ah ] ; 2 uses
  %.0 = phi i64 [ %i.cf, %bb.ai ], [ %i.cf, %bb.ad ], [ %spec.select, %bb.aj ], [ %i.cf, %bb.af ], [ %spec.select129, %bb.ag ], [ -9223372036854775808, %bb.ah ] ; 10 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !84  ; 6 uses
  %i.cp = icmp eq ptr %i.co, %.2108
  br i1 %i.cp, label %smart_str_0.exit143, label %.preheader, !prof !59

.preheader:                                       ; preds = %bb.ak
  %i.cq = icmp ult ptr %i.co, %.0109.lcssa
  br i1 %i.cq, label %.lr.ph210.preheader, label %.critedge5

.lr.ph210.preheader:                              ; preds = %.preheader
  %.promoted220 = ptrtoaddr ptr %i.co to i64
  %i.cr = sub i64 %.0109.lcssa219, %.promoted220
  %scevgep221 = getelementptr i8, ptr %i.co, i64 %i.cr
  br label %.lr.ph210

smart_str_0.exit143:                              ; preds = %bb.ak
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !69
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.cs) #17
  %i.ct = load ptr, ptr %3, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !69
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  store i8 0, ptr %i.cx, align 1, !tbaa !50
  %.pre225 = load ptr, ptr %3, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre225, i64 24
  %i.cz = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cy) #17
  store ptr %i.cz, ptr %2, align 8, !tbaa !83
  %i.da = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i153 = icmp eq ptr %i.da, null
  br i1 %.not.i153, label %smart_str_free_ex.exit, label %bb.al

bb.al:                                            ; preds = %smart_str_0.exit143
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !50
  %i.dd = and i32 %i.dc, 64
  %.not.i.i154 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i154, label %bb.am, label %smart_str_free_ex.exit

bb.am:                                            ; preds = %bb.al
  %i.de = load i32, ptr %i.da, align 4, !tbaa !54 ; 2 uses
  %i.df = icmp ne i32 %i.de, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.da, align 4, !tbaa !54
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.an, label %smart_str_free_ex.exit

bb.an:                                            ; preds = %bb.am
  call void @_efree(ptr noundef nonnull %i.da) #17
  br label %smart_str_free_ex.exit

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.ao
  %i.di = phi ptr [ %i.dk, %bb.ao ], [ %i.co, %.lr.ph210.preheader ] ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !50
  switch i8 %i.dj, label %.critedge5 [
    i8 32, label %bb.ao
    i8 13, label %bb.ao
    i8 11, label %bb.ao
    i8 10, label %bb.ao
    i8 9, label %bb.ao
    i8 12, label %bb.ao
  ]

bb.ao:                                            ; preds = %.lr.ph210, %.lr.ph210, %.lr.ph210, %.lr.ph210, %.lr.ph210, %.lr.ph210
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 3 uses
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !84
  %exitcond.not = icmp eq ptr %i.dk, %.0109.lcssa
  br i1 %exitcond.not, label %.critedge5, label %.lr.ph210, !llvm.loop !105

.critedge5:                                       ; preds = %bb.ao, %.lr.ph210, %.preheader
  %.lcssa = phi ptr [ %i.co, %.preheader ], [ %i.di, %.lr.ph210 ], [ %scevgep221, %bb.ao ] ; 2 uses
  %i.dl = icmp eq ptr %.lcssa, %.0109.lcssa
  br i1 %i.dl, label %bb.bu, label %bb.ap

bb.ap:                                            ; preds = %.critedge5
  %i.dm = getelementptr inbounds i8, ptr %.0109.lcssa, i64 -1 ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !50
  %switch.tableidx = add i8 %i.dn, -71            ; 3 uses
  %i.do = icmp ult i8 %switch.tableidx, 39
  br i1 %i.do, label %switch.hole_check, label %bb.aq

bb.aq:                                            ; preds = %switch.hole_check, %bb.ap
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !69
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.dp) #17
  %i.dq = load ptr, ptr %3, align 8, !tbaa !110   ; 3 uses
  %.not.i140 = icmp eq ptr %i.dq, null
  br i1 %.not.i140, label %smart_str_0.exit141, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  store i8 0, ptr %i.du, align 1, !tbaa !50
  br label %smart_str_0.exit141

smart_str_0.exit141:                              ; preds = %bb.aq, %bb.ar
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.c to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @smart_str_append_escaped(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i64 noundef %i.dy) #17
  %i.dz = load ptr, ptr %4, align 8, !tbaa !110   ; 3 uses
  %.not.i138 = icmp eq ptr %i.dz, null
  br i1 %.not.i138, label %smart_str_0.exit139, label %bb.as

bb.as:                                            ; preds = %smart_str_0.exit141
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !69
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  store i8 0, ptr %i.ed, align 1, !tbaa !50
  br label %smart_str_0.exit139

smart_str_0.exit139:                              ; preds = %smart_str_0.exit141, %bb.as
  call void @smart_str_append_escaped(ptr noundef nonnull %5, ptr noundef nonnull %i.dm, i64 noundef 1) #17
  %i.ee = load ptr, ptr %5, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  store i8 0, ptr %i.ei, align 1, !tbaa !50
  %.pre223 = load ptr, ptr %5, align 8, !tbaa !110
  %i.ej = load ptr, ptr %3, align 8, !tbaa !110
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %.pre223, i64 24
  %i.em = load ptr, ptr %4, align 8, !tbaa !110
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, ptr noundef nonnull %i.en) #17
  store ptr %i.eo, ptr %2, align 8, !tbaa !83
  %i.ep = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i157 = icmp eq ptr %i.ep, null
  br i1 %.not.i157, label %smart_str_free_ex.exit160, label %bb.at

bb.at:                                            ; preds = %smart_str_0.exit139
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = and i32 %i.er, 64
  %.not.i.i158 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i158, label %bb.au, label %zend_string_release_ex.exit.i159

bb.au:                                            ; preds = %bb.at
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !54 ; 2 uses
  %i.eu = icmp ne i32 %i.et, 0
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.ep, align 4, !tbaa !54
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.av, label %zend_string_release_ex.exit.i159

bb.av:                                            ; preds = %bb.au
  call void @_efree(ptr noundef nonnull %i.ep) #17
  br label %zend_string_release_ex.exit.i159

zend_string_release_ex.exit.i159:                 ; preds = %bb.av, %bb.au, %bb.at
  store ptr null, ptr %3, align 8, !tbaa !110
  br label %smart_str_free_ex.exit160

smart_str_free_ex.exit160:                        ; preds = %smart_str_0.exit139, %zend_string_release_ex.exit.i159
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ex, align 8, !tbaa !112
  %i.ey = load ptr, ptr %4, align 8, !tbaa !110   ; 5 uses
  %.not.i161 = icmp eq ptr %i.ey, null
  br i1 %.not.i161, label %smart_str_free_ex.exit164, label %bb.aw

bb.aw:                                            ; preds = %smart_str_free_ex.exit160
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !50
  %i.fb = and i32 %i.fa, 64
  %.not.i.i162 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i162, label %bb.ax, label %zend_string_release_ex.exit.i163

bb.ax:                                            ; preds = %bb.aw
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !54 ; 2 uses
  %i.fd = icmp ne i32 %i.fc, 0
  call void @llvm.assume(i1 %i.fd)
  %i.fe = add i32 %i.fc, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !54
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ay, label %zend_string_release_ex.exit.i163

bb.ay:                                            ; preds = %bb.ax
  call void @_efree(ptr noundef nonnull %i.ey) #17
  br label %zend_string_release_ex.exit.i163

zend_string_release_ex.exit.i163:                 ; preds = %bb.ay, %bb.ax, %bb.aw
  store ptr null, ptr %4, align 8, !tbaa !110
  br label %smart_str_free_ex.exit164

smart_str_free_ex.exit164:                        ; preds = %smart_str_free_ex.exit160, %zend_string_release_ex.exit.i163
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.fg, align 8, !tbaa !112
  %i.fh = load ptr, ptr %5, align 8, !tbaa !110   ; 5 uses
  %.not.i165 = icmp eq ptr %i.fh, null
  br i1 %.not.i165, label %smart_str_free_ex.exit, label %bb.az

bb.az:                                            ; preds = %smart_str_free_ex.exit164
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !50
  %i.fk = and i32 %i.fj, 64
  %.not.i.i166 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i166, label %bb.ba, label %smart_str_free_ex.exit

bb.ba:                                            ; preds = %bb.az
  %i.fl = load i32, ptr %i.fh, align 4, !tbaa !54 ; 2 uses
  %i.fm = icmp ne i32 %i.fl, 0
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add i32 %i.fl, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !54
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.bb, label %smart_str_free_ex.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_efree(ptr noundef nonnull %i.fh) #17
  br label %smart_str_free_ex.exit

switch.hole_check:                                ; preds = %bb.ap
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 347892351057, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.aq

switch.lookup:                                    ; preds = %switch.hole_check
  %i.fp = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.zend_ini_parse_quantity_internal, i64 %i.fp
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64      ; 3 uses
  br i1 %6, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %switch.lookup
  %i.fq = icmp eq i32 %1, 0
  br i1 %i.fq, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fr = icmp sgt i64 %.0, 0
  %i.fs = call range(i64 10, 65) i64 @llvm.cttz.i64(i64 %switch.ext, i1 true) ; 2 uses
  br i1 %i.fr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ft = lshr i64 9223372036854775807, %i.fs
  %i.fu = icmp samesign ugt i64 %.0, %i.ft
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.fv = lshr exact i64 -9223372036854775808, %i.fs
  %.neg = sub nsw i64 0, %i.fv
  %i.fw = icmp slt i64 %.0, %.neg
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.fx = call range(i64 10, 65) i64 @llvm.cttz.i64(i64 %switch.ext, i1 true)
  %i.fy = lshr i64 -1, %i.fx
  %i.fz = icmp ugt i64 %.0, %i.fy
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bg, %switch.lookup
  %.2.shrunk = phi i1 [ true, %switch.lookup ], [ %i.fz, %bb.bg ], [ %i.fu, %bb.be ], [ %i.fw, %bb.bf ]
  %i.ga = mul i64 %.0, %switch.ext                ; 5 uses
  %.not123 = icmp eq ptr %.lcssa, %i.dm
  br i1 %.not123, label %bb.bu, label %bb.bi, !prof !111

bb.bi:                                            ; preds = %bb.bh
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !69
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.gb) #17
  %i.gc = load ptr, ptr %3, align 8, !tbaa !110   ; 3 uses
  %.not.i134 = icmp eq ptr %i.gc, null
  br i1 %.not.i134, label %smart_str_0.exit135, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !69
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gf
  store i8 0, ptr %i.gg, align 1, !tbaa !50
  br label %smart_str_0.exit135

smart_str_0.exit135:                              ; preds = %bb.bi, %bb.bj
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.c to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @smart_str_append_escaped(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i64 noundef %i.gk) #17
  %i.gl = load ptr, ptr %4, align 8, !tbaa !110   ; 3 uses
  %.not.i132 = icmp eq ptr %i.gl, null
  br i1 %.not.i132, label %smart_str_0.exit133, label %bb.bk

bb.bk:                                            ; preds = %smart_str_0.exit135
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !69
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go
  store i8 0, ptr %i.gp, align 1, !tbaa !50
  br label %smart_str_0.exit133

smart_str_0.exit133:                              ; preds = %smart_str_0.exit135, %bb.bk
  call void @smart_str_append_escaped(ptr noundef nonnull %5, ptr noundef nonnull %i.dm, i64 noundef 1) #17
  %i.gq = load ptr, ptr %5, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !69
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  store i8 0, ptr %i.gu, align 1, !tbaa !50
  %.pre222 = load ptr, ptr %5, align 8, !tbaa !110
  %i.gv = load ptr, ptr %3, align 8, !tbaa !110
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %4, align 8, !tbaa !110
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre222, i64 24
  %i.ha = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz) #17
  store ptr %i.ha, ptr %2, align 8, !tbaa !83
  %i.hb = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i169 = icmp eq ptr %i.hb, null
  br i1 %.not.i169, label %smart_str_free_ex.exit172, label %bb.bl

bb.bl:                                            ; preds = %smart_str_0.exit133
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !50
  %i.he = and i32 %i.hd, 64
  %.not.i.i170 = icmp eq i32 %i.he, 0
  br i1 %.not.i.i170, label %bb.bm, label %zend_string_release_ex.exit.i171

bb.bm:                                            ; preds = %bb.bl
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !54 ; 2 uses
  %i.hg = icmp ne i32 %i.hf, 0
  call void @llvm.assume(i1 %i.hg)
  %i.hh = add i32 %i.hf, -1                       ; 2 uses
  store i32 %i.hh, ptr %i.hb, align 4, !tbaa !54
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bn, label %zend_string_release_ex.exit.i171

bb.bn:                                            ; preds = %bb.bm
  call void @_efree(ptr noundef nonnull %i.hb) #17
  br label %zend_string_release_ex.exit.i171

zend_string_release_ex.exit.i171:                 ; preds = %bb.bn, %bb.bm, %bb.bl
  store ptr null, ptr %3, align 8, !tbaa !110
  br label %smart_str_free_ex.exit172

smart_str_free_ex.exit172:                        ; preds = %smart_str_0.exit133, %zend_string_release_ex.exit.i171
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.hj, align 8, !tbaa !112
  %i.hk = load ptr, ptr %4, align 8, !tbaa !110   ; 5 uses
  %.not.i173 = icmp eq ptr %i.hk, null
  br i1 %.not.i173, label %smart_str_free_ex.exit176, label %bb.bo

bb.bo:                                            ; preds = %smart_str_free_ex.exit172
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !50
  %i.hn = and i32 %i.hm, 64
  %.not.i.i174 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i174, label %bb.bp, label %zend_string_release_ex.exit.i175

bb.bp:                                            ; preds = %bb.bo
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !54 ; 2 uses
  %i.hp = icmp ne i32 %i.ho, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = add i32 %i.ho, -1                       ; 2 uses
  store i32 %i.hq, ptr %i.hk, align 4, !tbaa !54
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bq, label %zend_string_release_ex.exit.i175

bb.bq:                                            ; preds = %bb.bp
  call void @_efree(ptr noundef nonnull %i.hk) #17
  br label %zend_string_release_ex.exit.i175

zend_string_release_ex.exit.i175:                 ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr null, ptr %4, align 8, !tbaa !110
  br label %smart_str_free_ex.exit176

smart_str_free_ex.exit176:                        ; preds = %smart_str_free_ex.exit172, %zend_string_release_ex.exit.i175
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.hs, align 8, !tbaa !112
  %i.ht = load ptr, ptr %5, align 8, !tbaa !110   ; 5 uses
  %.not.i177 = icmp eq ptr %i.ht, null
  br i1 %.not.i177, label %smart_str_free_ex.exit, label %bb.br

bb.br:                                            ; preds = %smart_str_free_ex.exit176
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !50
  %i.hw = and i32 %i.hv, 64
  %.not.i.i178 = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i178, label %bb.bs, label %smart_str_free_ex.exit

bb.bs:                                            ; preds = %bb.br
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !54 ; 2 uses
  %i.hy = icmp ne i32 %i.hx, 0
  call void @llvm.assume(i1 %i.hy)
  %i.hz = add i32 %i.hx, -1                       ; 2 uses
  store i32 %i.hz, ptr %i.ht, align 4, !tbaa !54
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bt, label %smart_str_free_ex.exit

bb.bt:                                            ; preds = %bb.bs
  call void @_efree(ptr noundef nonnull %i.ht) #17
  br label %smart_str_free_ex.exit

bb.bu:                                            ; preds = %bb.bh, %.critedge5
  %.3 = phi i1 [ %6, %.critedge5 ], [ %.2.shrunk, %bb.bh ]
  %.1 = phi i64 [ %.0, %.critedge5 ], [ %i.ga, %bb.bh ] ; 5 uses
  br i1 %.3, label %smart_str_0.exit, label %bb.ce, !prof !59

smart_str_0.exit:                                 ; preds = %bb.bu
  %i.ib = load i64, ptr %i.d, align 8, !tbaa !69
  call void @smart_str_append_escaped(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %i.ib) #17
  %i.ic = load ptr, ptr %3, align 8, !tbaa !110, !nonnull !80, !noundef !80 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !69
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if
  store i8 0, ptr %i.ig, align 1, !tbaa !50
  %.pre224 = load ptr, ptr %3, align 8, !tbaa !110
  %i.ih = getelementptr inbounds nuw i8, ptr %.pre224, i64 24
  %i.ii = call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ih) #17
  store ptr %i.ii, ptr %2, align 8, !tbaa !83
  %i.ij = load ptr, ptr %3, align 8, !tbaa !110   ; 5 uses
  %.not.i181 = icmp eq ptr %i.ij, null
  br i1 %.not.i181, label %smart_str_free_ex.exit184, label %bb.bv

bb.bv:                                            ; preds = %smart_str_0.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !50
  %i.im = and i32 %i.il, 64
  %.not.i.i182 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i182, label %bb.bw, label %zend_string_release_ex.exit.i183

bb.bw:                                            ; preds = %bb.bv
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !54 ; 2 uses
  %i.io = icmp ne i32 %i.in, 0
  call void @llvm.assume(i1 %i.io)
  %i.ip = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.ip, ptr %i.ij, align 4, !tbaa !54
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bx, label %zend_string_release_ex.exit.i183

bb.bx:                                            ; preds = %bb.bw
  call void @_efree(ptr noundef nonnull %i.ij) #17
  br label %zend_string_release_ex.exit.i183

zend_string_release_ex.exit.i183:                 ; preds = %bb.bx, %bb.bw, %bb.bv
  store ptr null, ptr %3, align 8, !tbaa !110
  br label %smart_str_free_ex.exit184

smart_str_free_ex.exit184:                        ; preds = %smart_str_0.exit, %zend_string_release_ex.exit.i183
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ir, align 8, !tbaa !112
  %i.is = load ptr, ptr %4, align 8, !tbaa !110   ; 5 uses
  %.not.i185 = icmp eq ptr %i.is, null
  br i1 %.not.i185, label %smart_str_free_ex.exit188, label %bb.by

bb.by:                                            ; preds = %smart_str_free_ex.exit184
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !50
  %i.iv = and i32 %i.iu, 64
  %.not.i.i186 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i186, label %bb.bz, label %zend_string_release_ex.exit.i187

bb.bz:                                            ; preds = %bb.by
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !54 ; 2 uses
  %i.ix = icmp ne i32 %i.iw, 0
  call void @llvm.assume(i1 %i.ix)
  %i.iy = add i32 %i.iw, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.is, align 4, !tbaa !54
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.ca, label %zend_string_release_ex.exit.i187

bb.ca:                                            ; preds = %bb.bz
  call void @_efree(ptr noundef nonnull %i.is) #17
  br label %zend_string_release_ex.exit.i187

zend_string_release_ex.exit.i187:                 ; preds = %bb.ca, %bb.bz, %bb.by
  store ptr null, ptr %4, align 8, !tbaa !110
  br label %smart_str_free_ex.exit188

smart_str_free_ex.exit188:                        ; preds = %smart_str_free_ex.exit184, %zend_string_release_ex.exit.i187
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ja, align 8, !tbaa !112
  %i.jb = load ptr, ptr %5, align 8, !tbaa !110   ; 5 uses
  %.not.i189 = icmp eq ptr %i.jb, null
  br i1 %.not.i189, label %smart_str_free_ex.exit, label %bb.cb

bb.cb:                                            ; preds = %smart_str_free_ex.exit188
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !50
  %i.je = and i32 %i.jd, 64
  %.not.i.i190 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i190, label %bb.cc, label %smart_str_free_ex.exit

bb.cc:                                            ; preds = %bb.cb
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !54 ; 2 uses
  %i.jg = icmp ne i32 %i.jf, 0
  call void @llvm.assume(i1 %i.jg)
  %i.jh = add i32 %i.jf, -1                       ; 2 uses
  store i32 %i.jh, ptr %i.jb, align 4, !tbaa !54
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.cd, label %smart_str_free_ex.exit

bb.cd:                                            ; preds = %bb.cc
  call void @_efree(ptr noundef nonnull %i.jb) #17
  br label %smart_str_free_ex.exit

bb.ce:                                            ; preds = %bb.bu
  store ptr null, ptr %2, align 8, !tbaa !83
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %smart_str_free_ex.exit188, %bb.cd, %bb.cc, %bb.cb, %smart_str_free_ex.exit176, %bb.bt, %bb.bs, %bb.br, %smart_str_free_ex.exit164, %bb.bb, %bb.ba, %bb.az, %smart_str_0.exit143, %bb.an, %bb.am, %bb.al, %.critedge125, %bb.ac, %bb.ab, %bb.aa, %smart_str_0.exit147, %bb.i, %bb.h, %bb.g, %bb.ce, %bb.q, %bb.m, %bb.c
  %.2112 = phi i64 [ 0, %bb.c ], [ 0, %smart_str_0.exit147 ], [ 0, %.critedge125 ], [ %i.ga, %smart_str_free_ex.exit176 ], [ %.1, %bb.ce ], [ 0, %smart_str_0.exit143 ], [ %.0, %smart_str_free_ex.exit164 ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %bb.an ], [ %.0, %bb.az ], [ %.0, %bb.ba ], [ %.0, %bb.bb ], [ %i.ga, %bb.br ], [ %i.ga, %bb.bs ], [ %i.ga, %bb.bt ], [ %.1, %bb.cb ], [ %.1, %bb.cc ], [ %.1, %bb.cd ], [ %.1, %smart_str_free_ex.exit188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.2112
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zend_ini_parse_uquantity(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @zend_ini_parse_quantity_internal(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zend_ini_parse_quantity_warn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i64 @zend_ini_parse_quantity_internal(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !83   ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %zend_string_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 2 uses
  %i.h = and i32 %i.g, 64
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %zend_string_release.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !54
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %zend_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 128
  %.not5.i = icmp eq i32 %i.m, 0
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %zend_string_release.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_efree(ptr noundef nonnull %i.c) #17
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.b
}

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @zend_ini_parse_uquantity_warn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i64 @zend_ini_parse_quantity_internal(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !83   ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %zend_string_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 2 uses
  %i.h = and i32 %i.g, 64
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %zend_string_release.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !54
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %zend_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 128
end_hunk_0
