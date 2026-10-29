Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 112
begin_hunk_0_@pm_compile_array_node:bb.a
  %i.r = getelementptr i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !372
  %i.t = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split399

._crit_edge:                                      ; preds = %bb.an
  %.not236 = icmp eq i32 %.8228, 0
  br i1 %.not236, label %._crit_edge.thread, label %bb.ao

bb.f:                                             ; preds = %.outer, %.thread296
  %i.u = phi i64 [ %i.fj, %.thread296 ], [ %.ph, %.outer ] ; 4 uses
  %.0212274 = phi i64 [ %i.fi, %.thread296 ], [ %.0212274.ph, %.outer ] ; 16 uses
  %.0216272 = phi i8 [ %.3219, %.thread296 ], [ %.0216272.ph, %.outer ] ; 9 uses
  %.0220271 = phi i32 [ 1, %.thread296 ], [ %.0220271.ph, %.outer ] ; 8 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !380  ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.0212274
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !335  ; 8 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !331  ; 2 uses
  switch i16 %i.y, label %bb.y [
    i16 139, label %bb.g
    i16 90, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %.not242 = icmp eq i32 %.0220271, 0
  br i1 %.not242, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g
  %i.z = trunc nuw i8 %.0216272 to i1
  %i.aa = load i32, ptr %3, align 4, !tbaa !370
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !372
  %i.ac = sext i32 %.0220271 to i64
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %. = select i1 %i.z, i32 27, i32 34
  %i.af = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %., i32 noundef 1, i64 noundef %i.ae) ; 3 uses
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !62
  store ptr %i.af, ptr %i.h, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.1217 = phi i8 [ %.0216272, %bb.g ], [ 0, %.sink.split ]
  %i.aj = getelementptr i8, ptr %i.x, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !443 ; 2 uses
  %.not243 = icmp eq ptr %i.ak, null
  br i1 %.not243, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.ak, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !352
  %i.am = call i32 @rb_st_lookup(ptr noundef %i.al, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not6.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph9.i:                                        ; preds = %bb.j, %bb.k
  %.18.i = phi i32 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  %.1127.i = phi ptr [ %i.ao, %bb.k ], [ %6, %bb.j ]
  %i.an = getelementptr i8, ptr %.1127.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !327 ; 4 uses
  %.not14.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph9.i
  %i.ap = add i32 %.18.i, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !352
  %i.as = call i32 @rb_st_lookup(ptr noundef %i.ar, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !22

bb.l:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef -2147483606) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.k, %bb.j
  %.112.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.ao, %bb.k ]
  %.1.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ap, %bb.k ]
  %i.at = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !424
  %i.av = load i64, ptr %i.a, align 8, !tbaa !63
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %i.au, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ay = load i32, ptr %3, align 4, !tbaa !370
  %i.az = load i32, ptr %i.g, align 4, !tbaa !372
  call fastcc void @pm_iseq_add_getlocal(ptr noundef %0, ptr noundef %4, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ax, i32 noundef %.1.lcssa.i)
  br label %bb.m

bb.m:                                             ; preds = %pm_lookup_local_index.exit, %bb.i
  %i.ba = trunc nuw i8 %.1217 to i1
  %i.bb = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 35, i32 noundef 1, i64 noundef 20)
  br label %.sink.split375

bb.o:                                             ; preds = %bb.m
  %i.be = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 33, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.p:                                             ; preds = %bb.f
  %i.bf = icmp eq i32 %.0220271, 0                ; 2 uses
  %i.bg = trunc nuw i8 %.0216272 to i1            ; 2 uses
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %3, align 4, !tbaa !370
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !372
  %i.bj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split360

bb.r:                                             ; preds = %bb.p
  br i1 %i.bf, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.bm = sext i32 %.0220271 to i64
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 27, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

bb.u:                                             ; preds = %bb.s
  %i.bq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 34, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

.sink.split360:                                   ; preds = %bb.q, %bb.u, %bb.t
  %.sink366 = phi ptr [ %i.bp, %bb.t ], [ %i.bq, %bb.u ], [ %i.bj, %bb.q ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.bs = getelementptr i8, ptr %.sink366, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store ptr %.sink366, ptr %i.bt, align 8, !tbaa !62
  store ptr %.sink366, ptr %i.h, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %.sink.split360, %bb.r
  %.3219 = phi i8 [ %.0216272, %bb.r ], [ 0, %.sink.split360 ] ; 3 uses
  %i.bu = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  call fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.bu, i16 noundef zeroext 0, i64 noundef 36, i1 noundef zeroext false, ptr noundef %4, ptr noundef %6)
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1309 ; 3 uses
  %.not279 = icmp eq i64 %i.bv, 0
  br i1 %.not279, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %i.x, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1310
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.x
  %.0211264 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.x ] ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.0211264
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !335
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !331
  %i.cb = icmp eq i16 %i.ca, 9
  br i1 %i.cb, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cc = add nuw i64 %.0211264, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bv
  br i1 %exitcond.not, label %.critedge.thread, label %bb.w, !llvm.loop !1304

.critedge:                                        ; preds = %bb.w
  %i.cd = icmp eq i64 %i.bv, %.0211264
  br i1 %i.cd, label %.critedge.thread, label %.thread296

.critedge.thread:                                 ; preds = %bb.v, %.critedge, %bb.x
  %i.ce = load i32, ptr %3, align 4, !tbaa !370
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !372
  %i.cg = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef 28, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.y:                                             ; preds = %bb.f
  %i.ch = getelementptr i8, ptr %i.x, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !378
  %i.cj = insertelement <2 x i16> poison, i16 %i.y, i64 0
  %i.ck = insertelement <2 x i16> %i.cj, i16 %i.ci, i64 1
  %i.cl = and <2 x i16> %i.ck, <i16 -1, i16 2>
  %i.cm = shufflevector <2 x i16> %i.cl, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %.fr = freeze <4 x i16> %i.cm
  %i.cn = icmp eq <4 x i16> %.fr, <i16 6, i16 0, i16 65, i16 122>
  %i.co = add i64 %.0212274, 64
  %i.cp = icmp uge i64 %i.co, %i.u
  %i.cq = bitcast <4 x i1> %i.cn to i4
  %i.cr = icmp ne i4 %i.cq, 0
  %op.rdx = or i1 %i.cr, %i.cp
  %op.rdx460 = select i1 %op.rdx, i1 true, i1 %.0213273.ph
  br i1 %op.rdx460, label %bb.aj, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.y
  %i.cs = add nuw i64 %.0212274, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.cs) ; 2 uses
  %.0210450 = add i64 %.0212274, 1                ; 2 uses
  %i.ct = icmp ult i64 %.0210450, %i.u
  br i1 %i.ct, label %.lr.ph452, label %.critedge5

.preheader:                                       ; preds = %bb.z
  %.0210 = add i64 %.0210451, 1                   ; 2 uses
  %i.cu = icmp ult i64 %.0210, %i.u
  br i1 %i.cu, label %.lr.ph452, label %.critedge5, !llvm.loop !1305

.lr.ph452:                                        ; preds = %.preheader.preheader, %.preheader
  %.0210451 = phi i64 [ %.0210, %.preheader ], [ %.0210450, %.preheader.preheader ] ; 4 uses
  %i.cv = getelementptr [8 x i8], ptr %i.v, i64 %.0210451
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !335 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !378
  %i.cz = and i16 %i.cy, 2
  %.not238 = icmp eq i16 %i.cz, 0
  br i1 %.not238, label %.critedge5, label %bb.z

bb.z:                                             ; preds = %.lr.ph452
  %i.da = load i16, ptr %i.cw, align 8, !tbaa !331
  switch i16 %i.da, label %.preheader [
    i16 6, label %..critedge5_crit_edge
    i16 65, label %..critedge5_crit_edge
    i16 122, label %..critedge5_crit_edge
  ], !llvm.loop !1305

..critedge5_crit_edge:                            ; preds = %bb.z, %bb.z, %bb.z
  br label %.critedge5, !llvm.loop !1305

.critedge5:                                       ; preds = %.preheader, %.lr.ph452, %..critedge5_crit_edge, %.preheader.preheader
  %.0210.lcssa = phi i64 [ %.0210451, %..critedge5_crit_edge ], [ %umax, %.preheader.preheader ], [ %umax, %.preheader ], [ %.0210451, %.lr.ph452 ]
  %i.db = sub i64 %.0210.lcssa, %.0212274         ; 3 uses
  %i.dc = icmp ugt i64 %i.db, 63
  br i1 %i.dc, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.critedge5
  %i.dd = call i64 @rb_ary_hidden_new(i64 noundef %i.db) #37 ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.ab
  %.0270 = phi i64 [ %i.db, %bb.aa ], [ %i.dk, %bb.ab ]
  %.1269 = phi i64 [ %.0212274, %bb.aa ], [ %i.df, %bb.ab ] ; 4 uses
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !380
  %i.df = add i64 %.1269, 1
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %.1269
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !335
  %i.di = call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef %i.dh, ptr noundef %6)
  %i.dj = call i64 @rb_ary_push(i64 noundef %i.dd, i64 noundef %i.di) #37 ; 0 uses
  %i.dk = add i64 %.0270, -1                      ; 2 uses
  %.not239 = icmp eq i64 %i.dk, 0
  br i1 %.not239, label %bb.ac, label %bb.ab, !llvm.loop !1306

bb.ac:                                            ; preds = %bb.ab
  call void @rb_obj_freeze_inline(i64 noundef %i.dd) #37
  %i.dl = call i64 @rb_obj_set_shareable(i64 noundef %i.dd) #37 ; 0 uses
  %.not240 = icmp eq i32 %.0220271, 0
  %i.dm = trunc nuw i8 %.0216272 to i1            ; 2 uses
  br i1 %.not240, label %bb.ad, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ac
  %i.dn = load i32, ptr %3, align 4, !tbaa !370
  %i.do = load i32, ptr %i.g, align 4, !tbaa !372
  %i.dp = sext i32 %.0220271 to i64
  %i.dq = shl nsw i64 %i.dp, 1
  %i.dr = or disjoint i64 %i.dq, 1
  %.409 = select i1 %i.dm, i32 27, i32 34
  %i.ds = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.dn, i32 noundef %i.do, i32 noundef %.409, i32 noundef 1, i64 noundef %i.dr) ; 3 uses
  %i.dt = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !61
  %i.dv = getelementptr i8, ptr %i.dt, i64 8
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !62
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !42
  br label %.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.dm, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dw = load i32, ptr %3, align 4, !tbaa !370
  %i.dx = load i32, ptr %i.g, align 4, !tbaa !372
  %i.dy = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef 29, i32 noundef 1, i64 noundef %i.dd)
  br label %.sink.split375

.thread:                                          ; preds = %.thread.sink.split, %bb.ad
  %i.dz = load i32, ptr %3, align 4, !tbaa !370
  %i.ea = load i32, ptr %i.g, align 4, !tbaa !372
  %i.eb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.dz, i32 noundef %i.ea, i32 noundef 19, i32 noundef 1, i64 noundef %i.dd) ; 3 uses
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.eb, i64 16
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !61
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !62
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !42
  %i.ef = load i32, ptr %3, align 4, !tbaa !370
  %i.eg = load i32, ptr %i.g, align 4, !tbaa !372
  %i.eh = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef 33, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.af:                                            ; preds = %.critedge5
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %i.ei = add i32 %.0220271, 1                    ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 255
  br i1 %i.ej, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ek = trunc nuw i8 %.0216272 to i1
  %i.el = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.em = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.en = shl nuw i32 %i.ei, 1
  %i.eo = or disjoint i32 %i.en, 1
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 27, i32 noundef 1, i64 noundef %i.ep)
  br label %.sink.split375

bb.ai:                                            ; preds = %bb.ag
  %i.er = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 34, i32 noundef 1, i64 noundef %i.ep)
  br label %.sink.split375

bb.aj:                                            ; preds = %bb.y
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  %i.es = add i32 %.0220271, 1                    ; 3 uses
  %i.et = icmp sgt i32 %i.es, 255
  br i1 %i.et, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eu = trunc nuw i8 %.0216272 to i1
  %i.ev = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %i.ew = load i32, ptr %i.g, align 4, !tbaa !372 ; 2 uses
  %i.ex = shl nuw i32 %i.es, 1
  %i.ey = or disjoint i32 %i.ex, 1
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 27, i32 noundef 1, i64 noundef %i.ez)
  br label %.sink.split375

bb.am:                                            ; preds = %bb.ak
  %i.fb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 34, i32 noundef 1, i64 noundef %i.ez)
  br label %.sink.split375

.sink.split375:                                   ; preds = %bb.o, %bb.n, %.critedge.thread, %bb.ai, %bb.ah, %bb.ae, %.thread, %bb.al, %bb.am
  %.sink382 = phi ptr [ %i.fb, %bb.am ], [ %i.fa, %bb.al ], [ %i.eh, %.thread ], [ %i.dy, %bb.ae ], [ %i.eq, %bb.ah ], [ %i.er, %bb.ai ], [ %i.cg, %.critedge.thread ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ] ; 3 uses
  %.9.ph = phi i8 [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.3219, %.critedge.thread ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.2215.ph = phi i1 [ false, %bb.am ], [ false, %bb.al ], [ false, %.thread ], [ false, %bb.ae ], [ true, %bb.ah ], [ true, %bb.ai ], [ %.0213273.ph, %.critedge.thread ], [ false, %bb.n ], [ false, %bb.o ]
  %.3.ph = phi i64 [ %.0212274, %bb.am ], [ %.0212274, %bb.al ], [ %.1269, %.thread ], [ %.1269, %bb.ae ], [ %.0212274, %bb.ah ], [ %.0212274, %bb.ai ], [ %.0212274, %.critedge.thread ], [ %.0212274, %bb.n ], [ %.0212274, %bb.o ]
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.fd = getelementptr i8, ptr %.sink382, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !61
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store ptr %.sink382, ptr %i.fe, align 8, !tbaa !62
  store ptr %.sink382, ptr %i.h, align 8, !tbaa !42
  br label %bb.an

bb.an:                                            ; preds = %.sink.split375, %bb.aj, %bb.af
  %.8228 = phi i32 [ %i.es, %bb.aj ], [ %i.ei, %bb.af ], [ 0, %.sink.split375 ] ; 4 uses
  %.9 = phi i8 [ %.0216272, %bb.aj ], [ %.0216272, %bb.af ], [ %.9.ph, %.sink.split375 ] ; 2 uses
  %.2215 = phi i1 [ false, %bb.aj ], [ true, %bb.af ], [ %.2215.ph, %.sink.split375 ]
  %.3 = phi i64 [ %.0212274, %bb.aj ], [ %.0212274, %bb.af ], [ %.3.ph, %.sink.split375 ]
  %i.ff = add i64 %.3, 1                          ; 2 uses
  %i.fg = load i64, ptr %2, align 8, !tbaa !379   ; 2 uses
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br i1 %i.fh, label %.outer, label %._crit_edge, !llvm.loop !1307

.outer:                                           ; preds = %bb.an, %.lr.ph275
  %.ph = phi i64 [ %i.fg, %bb.an ], [ %i.e, %.lr.ph275 ]
  %.0212274.ph = phi i64 [ %i.ff, %bb.an ], [ 0, %.lr.ph275 ]
  %.0213273.ph = phi i1 [ %.2215, %bb.an ], [ false, %.lr.ph275 ] ; 2 uses
  %.0216272.ph = phi i8 [ %.9, %bb.an ], [ 1, %.lr.ph275 ]
  %.0220271.ph = phi i32 [ %.8228, %bb.an ], [ 0, %.lr.ph275 ]
  br label %bb.f

.thread296:                                       ; preds = %.critedge
  %i.fi = add i64 %.0212274, 1                    ; 2 uses
  %i.fj = load i64, ptr %2, align 8, !tbaa !379   ; 2 uses
  %i.fk = icmp ult i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.f, label %._crit_edge.thread303, !llvm.loop !1307

._crit_edge.thread303:                            ; preds = %.thread296
  %i.fl = trunc nuw i8 %.3219 to i1
  br i1 %i.fl, label %._crit_edge.thread.sink.split, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.fm = trunc nuw i8 %.9 to i1
  br i1 %i.fm, label %._crit_edge.thread.sink.split, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread303, %bb.ao
  %.8228301307312 = phi i32 [ 1, %._crit_edge.thread303 ], [ %.8228, %bb.ao ]
  br label %._crit_edge.thread.sink.split
end_hunk_0
