inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@escape_read:bb.a
  br i1 %i.ke, label %bb.de, label %.lr.ph

bb.de:                                            ; preds = %peek.exit592
  %i.kf = getelementptr i8, ptr %.val494, i64 1   ; 2 uses
  %i.kg = icmp ult ptr %i.kf, %.val493
  br i1 %i.kg, label %peek_offset.exit, label %.lr.ph

peek_offset.exit:                                 ; preds = %bb.de
  %i.kh = load i8, ptr %i.kf, align 1, !tbaa !67
  %i.ki = icmp eq i8 %i.kh, 110
  br i1 %i.ki, label %bb.df, label %.lr.ph

bb.df:                                            ; preds = %peek_offset.exit
  %i.kj = getelementptr i8, ptr %.val494, i64 2
  br label %.backedge

.backedge:                                        ; preds = %bb.df, %bb.dc
  %.be = phi ptr [ %.val493, %bb.df ], [ %.pre1320.pre, %bb.dc ]
  %storemerge475.be = phi ptr [ %i.kj, %bb.df ], [ %i.kb, %bb.dc ]
  br label %bb.db

.lr.ph:                                           ; preds = %bb.de, %peek.exit592, %peek_offset.exit
  %i.kk = and i8 %.tr7301054, 4                   ; 3 uses
  %i.kl = icmp ne i8 %i.kk, 0
  %.not.i594 = icmp eq i8 %i.kk, 0
  %i.km = getelementptr i8, ptr %0, i64 672       ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph, %bb.ds
  %i.kn = phi ptr [ %.val493, %.lr.ph ], [ %i.nt, %bb.ds ] ; 2 uses
  %i.ko = phi ptr [ %.val494, %.lr.ph ], [ %i.ns, %bb.ds ] ; 15 uses
  %.04501061 = phi ptr [ null, %.lr.ph ], [ %spec.select, %bb.ds ] ; 2 uses
  %.04521060 = phi i32 [ 0, %.lr.ph ], [ %i.lh, %bb.ds ] ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !67
  %.not471 = icmp eq i8 %i.kp, 125
  br i1 %.not471, label %.critedge, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kq = ptrtoint ptr %i.kn to i64
  %i.kr = ptrtoint ptr %i.ko to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef nonnull %i.ko, i64 noundef %i.ks) #27 ; 8 uses
  %i.ku = icmp ugt i64 %i.kt, 6
  br i1 %i.ku, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.kv = getelementptr i8, ptr %i.ko, i64 %i.kt
  %i.kw = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef nonnull %i.ko, ptr noundef %i.kv, i32 noundef 86) #27 ; 0 uses
  br label %.lr.ph.preheader.i

bb.dj:                                            ; preds = %bb.dh
  %i.kx = icmp eq i64 %i.kt, 0
  br i1 %i.kx, label %bb.dk, label %.lr.ph.preheader.i

bb.dk:                                            ; preds = %bb.dj
  %.not474 = icmp samesign ult i8 %.tr7301054, 8
  %i.ky = load ptr, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  br i1 %.not474, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.jn to i64
  %i.lb = sub i64 %i.kz, %i.la
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.lb) #27
  br label %.critedge480

bb.dm:                                            ; preds = %bb.dk
  %i.lc = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.ky, ptr noundef %i.ky, i32 noundef 82) #27 ; 0 uses
  %i.ld = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.le = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.ld, ptr noundef %i.ld, i32 noundef 88) #27 ; 0 uses
  br label %.critedge480

.lr.ph.preheader.i:                               ; preds = %bb.di, %bb.dj
  %i.lf = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.kt  ; 3 uses
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !76
  %i.lh = add i32 %.04521060, 1                   ; 3 uses
  %i.li = icmp eq i32 %i.lh, 2
  %or.cond = select i1 %i.kl, i1 %i.li, i1 false
  %spec.select = select i1 %or.cond, ptr %i.ko, ptr %.04501061 ; 2 uses
  %i.lj = load i8, ptr %i.ko, align 1, !tbaa !67  ; 3 uses
  %i.lk = icmp ult i8 %i.lj, 58
  %i.ll = add nsw i8 %i.lj, -48
  %i.lm = and i8 %i.lj, 7
  %i.ln = add nuw nsw i8 %i.lm, 9
  %i.lo = select i1 %i.lk, i8 %i.ll, i8 %i.ln
  %i.lp = zext i8 %i.lo to i32                    ; 3 uses
  %exitcond.peel.not.i = icmp eq i64 %i.kt, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %i.lq = add i64 %i.kt, -1                       ; 3 uses
  %xtraiter = and i64 %i.lq, 1
  %i.lr = icmp eq i64 %i.kt, 2
  br i1 %i.lr, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.lq, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.026.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.my, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02025.i.epil.init = phi i32 [ %i.lp, %.lr.ph.i.preheader ], [ %i.mx, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2109 = trunc i64 %i.lq to i1
  tail call void @llvm.assume(i1 %lcmp.mod2109)
  %i.ls = shl i32 %.02025.i.epil.init, 4
  %i.lt = getelementptr i8, ptr %i.ko, i64 %.026.i.epil.init
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !67  ; 3 uses
  %i.lv = icmp ult i8 %i.lu, 58
  %i.lw = add nsw i8 %i.lu, -48
  %i.lx = and i8 %i.lu, 7
  %i.ly = add nuw nsw i8 %i.lx, 9
  %i.lz = select i1 %i.lv, i8 %i.lw, i8 %i.ly
  %i.ma = zext i8 %i.lz to i32
  %i.mb = or i32 %i.ls, %i.ma
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.020.lcssa.i = phi i32 [ %i.lp, %.lr.ph.preheader.i ], [ %i.mx, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.mb, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.mc = and i32 %.020.lcssa.i, -2048
  %or.cond.i = icmp eq i32 %i.mc, 55296
  br i1 %or.cond.i, label %escape_unicode.exit.thread, label %escape_unicode.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.026.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.my, %.lr.ph.i ] ; 3 uses
  %.02025.i = phi i32 [ %i.lp, %.lr.ph.i.preheader.new ], [ %i.mx, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.md = getelementptr i8, ptr %i.ko, i64 %.026.i
  %i.me = load i8, ptr %i.md, align 1, !tbaa !67  ; 3 uses
  %i.mf = icmp ult i8 %i.me, 58
  %i.mg = add nsw i8 %i.me, -48
  %i.mh = and i8 %i.me, 7
  %i.mi = add nuw nsw i8 %i.mh, 9
  %i.mj = select i1 %i.mf, i8 %i.mg, i8 %i.mi
  %i.mk = zext i8 %i.mj to i32
  %i.ml = shl i32 %.02025.i, 8
  %i.mm = shl nuw nsw i32 %i.mk, 4
  %i.mn = or i32 %i.ml, %i.mm
  %i.mo = getelementptr i8, ptr %i.ko, i64 %.026.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !67  ; 3 uses
  %i.mr = icmp ult i8 %i.mq, 58
  %i.ms = add nsw i8 %i.mq, -48
  %i.mt = and i8 %i.mq, 7
  %i.mu = add nuw nsw i8 %i.mt, 9
  %i.mv = select i1 %i.mr, i8 %i.ms, i8 %i.mu
  %i.mw = zext i8 %i.mv to i32
  %i.mx = or i32 %i.mn, %i.mw                     ; 3 uses
  %i.my = add nuw i64 %.026.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !277

escape_unicode.exit.thread:                       ; preds = %._crit_edge.i
  %i.mz = getelementptr i8, ptr %i.ko, i64 %i.kt
  %i.na = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef nonnull %i.ko, ptr noundef %i.mz, i32 noundef 82) #27 ; 0 uses
  %i.nb = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %bb.dn

escape_unicode.exit:                              ; preds = %._crit_edge.i
  %i.nc = icmp ult i32 %.020.lcssa.i, 128
  %or.cond.i595 = and i1 %.not.i594, %i.nc
  br i1 %or.cond.i595, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %escape_unicode.exit.thread, %escape_unicode.exit
  %i.nd = phi ptr [ %i.nb, %escape_unicode.exit.thread ], [ %i.lg, %escape_unicode.exit ] ; 2 uses
  %.021.i677 = phi i32 [ 65533, %escape_unicode.exit.thread ], [ %.020.lcssa.i, %escape_unicode.exit ]
  %i.ne = load ptr, ptr %i.km, align 8, !tbaa !207 ; 3 uses
  %.not16.i = icmp eq ptr %i.ne, null
  %.not17.i = icmp eq ptr %i.ne, @pm_encodings
  %or.cond18.i = or i1 %.not16.i, %.not17.i
  br i1 %or.cond18.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nf = getelementptr i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !276
  %i.nh = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef nonnull %i.ko, ptr noundef %i.nd, i32 noundef 187, ptr noundef %i.ng) #27 ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store ptr @pm_encodings, ptr %i.km, align 8, !tbaa !207
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %escape_unicode.exit
  %i.ni = phi ptr [ %i.nd, %bb.dp ], [ %i.lg, %escape_unicode.exit ]
  %.021.i678 = phi i32 [ %.021.i677, %bb.dp ], [ %.020.lcssa.i, %escape_unicode.exit ]
  %i.nj = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef %1, i32 noundef %.021.i678) #27
  br i1 %i.nj, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef nonnull %i.ko, ptr noundef %i.ni, i32 noundef 82) #27 ; 0 uses
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -17) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -65) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -67) #27
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.nl = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %i.nl, i64 noundef %i.np) #27
  %i.nr = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nq  ; 4 uses
  store ptr %i.ns, ptr %i.b, align 8, !tbaa !76
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  %i.nu = icmp ult ptr %i.ns, %i.nt
  br i1 %i.nu, label %bb.dg, label %.critedge, !llvm.loop !279

.critedge:                                        ; preds = %bb.dg, %bb.ds
  %i.nv = phi ptr [ %i.kn, %bb.dg ], [ %i.nt, %bb.ds ]
  %.0452.lcssa.ph = phi i32 [ %.04521060, %bb.dg ], [ %i.lh, %bb.ds ]
  %.0450.lcssa.ph = phi ptr [ %.04501061, %bb.dg ], [ %spec.select, %bb.ds ]
  %.lcssa731.ph = phi ptr [ %i.ko, %bb.dg ], [ %i.ns, %bb.ds ] ; 2 uses
  %i.nw = icmp sgt i32 %.0452.lcssa.ph, 1
  %i.nx = icmp ne i8 %i.kk, 0
  %or.cond4 = select i1 %i.nx, i1 %i.nw, i1 false
  br i1 %or.cond4, label %bb.dt, label %.critedge.thread

bb.dt:                                            ; preds = %.critedge
  %i.ny = getelementptr i8, ptr %.lcssa731.ph, i64 -1
  %i.nz = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %.0450.lcssa.ph, ptr noundef %i.ny, i32 noundef 85) #27 ; 0 uses
  %.pre1321 = load ptr, ptr %i.b, align 8, !tbaa !76
  %.pre1322.a = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.dd, %bb.dt, %.critedge
  %i.oa = phi ptr [ %.pre1322.a, %bb.dt ], [ %i.nv, %.critedge ], [ %.val493, %bb.dd ] ; 3 uses
  %i.ob = phi ptr [ %.pre1321, %bb.dt ], [ %.lcssa731.ph, %.critedge ], [ %.val494, %bb.dd ] ; 7 uses
  %i.oc = icmp eq ptr %i.ob, %i.oa
  br i1 %i.oc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.critedge.thread
  %i.od = ptrtoint ptr %i.oa to i64
  %i.oe = ptrtoint ptr %i.jn to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = trunc i64 %i.of to i32
  %i.oh = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.jn, ptr noundef %i.ob, i32 noundef 84, i32 noundef %i.og, ptr noundef %i.jn) #27 ; 0 uses
  br label %bb.dx

bb.dv:                                            ; preds = %.critedge.thread
  %i.oi = icmp ult ptr %i.ob, %i.oa
  br i1 %i.oi, label %peek.exit597, label %peek.exit597.thread

peek.exit597:                                     ; preds = %bb.dv
  %i.oj = load i8, ptr %i.ob, align 1, !tbaa !67
  %i.ok = icmp eq i8 %i.oj, 125
  br i1 %i.ok, label %bb.dw, label %peek.exit597.thread

bb.dw:                                            ; preds = %peek.exit597
  %i.ol = getelementptr i8, ptr %i.ob, i64 1
  store ptr %i.ol, ptr %i.b, align 8, !tbaa !76
  br label %bb.dx

peek.exit597.thread:                              ; preds = %bb.dv, %peek.exit597
  %.not472 = icmp samesign ult i8 %.tr7301054, 8
  br i1 %.not472, label %.thread683, label %.thread685

.thread685:                                       ; preds = %peek.exit597.thread
  %i.om = ptrtoint ptr %i.ob to i64
  %i.on = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.oo = sub i64 %i.om, %i.on
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.oo) #27
  br label %bb.dy

.thread683:                                       ; preds = %peek.exit597.thread
  %i.op = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.jn, ptr noundef %i.ob, i32 noundef 88) #27 ; 0 uses
  br label %.critedge480

bb.dx:                                            ; preds = %bb.dw, %bb.du
  %.not473 = icmp samesign ult i8 %.tr7301054, 8
  br i1 %.not473, label %.critedge480, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dx
  %.pre1325 = ptrtoint ptr %i.jn to i64
  br label %bb.dy

bb.dy:                                            ; preds = %._crit_edge, %.thread685
  %.pre-phi1326 = phi i64 [ %.pre1325, %._crit_edge ], [ %i.on, %.thread685 ]
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = sub i64 %i.or, %.pre-phi1326
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.os) #27
  br label %.critedge480

peek.exit590.thread:                              ; preds = %bb.cz, %peek.exit590
  %i.ot = ptrtoint ptr %.val5051316 to i64
  %i.ou = ptrtoint ptr %i.jo to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %spec.select481 = tail call i64 @llvm.smin.i64(i64 %i.ov, i64 4)
  %i.ow = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef %i.jo, i64 noundef %spec.select481) #27 ; 2 uses
  switch i64 %i.ow, label %bb.ef [
    i64 0, label %bb.dz
    i64 4, label %bb.ec
  ]

bb.dz:                                            ; preds = %peek.exit590.thread
  %.not469 = icmp samesign ult i8 %.tr7301054, 8
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  br i1 %.not469, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.jn to i64
  %i.pa = sub i64 %i.oy, %i.oz
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.pa) #27
  br label %.critedge480

bb.eb:                                            ; preds = %bb.dz
  %i.pb = getelementptr i8, ptr %i.ox, i64 -2     ; 2 uses
  %i.pc = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.pb, ptr noundef %i.ox, i32 noundef 87, i32 noundef 2, ptr noundef %i.pb) #27 ; 0 uses
  br label %.critedge480

bb.ec:                                            ; preds = %peek.exit590.thread
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pe = tail call fastcc i32 @escape_unicode(ptr noundef nonnull %0, ptr noundef %i.pd, i64 noundef 4, ptr noundef null)
  %.not468 = icmp samesign ult i8 %.tr7301054, 8
  br i1 %.not468, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pf = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pg = getelementptr i8, ptr %i.pf, i64 4
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = ptrtoint ptr %i.jn to i64
  %i.pj = sub i64 %i.ph, %i.pi
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.pj) #27
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.pk = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pl = getelementptr i8, ptr %i.pk, i64 4
  tail call fastcc void @escape_write_unicode(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %.tr7301054, ptr noundef %i.jn, ptr noundef %i.pl, i32 noundef %i.pe)
  %i.pm = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pn = getelementptr i8, ptr %i.pm, i64 4
  store ptr %i.pn, ptr %i.b, align 8, !tbaa !76
  br label %.critedge480

bb.ef:                                            ; preds = %peek.exit590.thread
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.ow  ; 3 uses
  store ptr %i.pp, ptr %i.b, align 8, !tbaa !76
  %.not467 = icmp samesign ult i8 %.tr7301054, 8
  br i1 %.not467, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.jn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.ps) #27
  br label %.critedge480

bb.eh:                                            ; preds = %bb.ef
  %i.pt = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.pu = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.pt, ptr noundef %i.pp, i32 noundef 82) #27 ; 0 uses
  br label %.critedge480

bb.ei:                                            ; preds = %peek.exit
  %i.pv = getelementptr i8, ptr %.val5061056, i64 1 ; 3 uses
  store ptr %i.pv, ptr %i.b, align 8, !tbaa !76
  %i.pw = and i8 %.tr7301054, 1
  %.not466 = icmp eq i8 %i.pw, 0                  ; 2 uses
  br i1 %.not466, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.px = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.py = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.px, ptr noundef %i.pv, i32 noundef 78) #27 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !76
  %.pre1313 = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.val5051315 = phi ptr [ %.pre1313, %bb.ej ], [ %.val5051316, %bb.ei ] ; 5 uses
  %i.pz = phi ptr [ %.pre, %bb.ej ], [ %i.pv, %bb.ei ] ; 11 uses
  %i.qa = icmp eq ptr %i.pz, %.val5051315
  br i1 %i.qa, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.qb = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.qc = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.qb, ptr noundef %i.pz, i32 noundef 77) #27 ; 0 uses
  br label %.critedge480

bb.em:                                            ; preds = %bb.ek
  %i.qd = icmp ult ptr %i.pz, %.val5051315
  br i1 %i.qd, label %peek.exit599, label %char_is_ascii_printable.exit

peek.exit599:                                     ; preds = %bb.em
  %i.qe = load i8, ptr %i.pz, align 1, !tbaa !67  ; 3 uses
  switch i8 %i.qe, label %bb.er [
    i8 63, label %bb.en
    i8 92, label %bb.eo
    i8 32, label %bb.ep
    i8 9, label %bb.eq
  ]

bb.en:                                            ; preds = %peek.exit599
  %i.qf = getelementptr i8, ptr %i.pz, i64 1
end_hunk_0
begin_hunk_1_@escape_read:bb.a
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.val5051318 = phi ptr [ %.val483.pre, %bb.fg ], [ %.val5051316, %bb.ff ] ; 8 uses
  %.val484 = phi ptr [ %.val484.pre, %bb.fg ], [ %i.tr, %bb.ff ] ; 10 uses
  %i.tv = icmp ult ptr %.val484, %.val5051318
  br i1 %i.tv, label %peek.exit642, label %peek.exit642.thread

peek.exit642:                                     ; preds = %bb.fh
  %i.tw = load i8, ptr %.val484, align 1, !tbaa !67
  %.not463 = icmp eq i8 %i.tw, 45
  br i1 %.not463, label %bb.fi, label %peek.exit642.thread

peek.exit642.thread:                              ; preds = %bb.fh, %peek.exit642
  %i.tx = getelementptr i8, ptr %0, i64 520
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !40
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !151
  %i.ua = ptrtoint ptr %.val5051318 to i64
  %i.ub = ptrtoint ptr %.val484 to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = tail call i64 %i.tz(ptr noundef %.val484, i64 noundef %i.uc) #27
  %i.ue = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.uf = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.ud
  %i.uh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.ue, ptr noundef %i.ug, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fi:                                            ; preds = %peek.exit642
  %i.ui = getelementptr i8, ptr %.val484, i64 1   ; 7 uses
  store ptr %i.ui, ptr %i.b, align 8, !tbaa !76
  %i.uj = icmp eq ptr %i.ui, %.val5051318
  br i1 %i.uj, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.uk = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.ul = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.uk, ptr noundef %i.ui, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fk:                                            ; preds = %bb.fi
  %i.um = icmp ult ptr %i.ui, %.val5051318
  br i1 %i.um, label %peek.exit644, label %char_is_ascii_printable.exit659

peek.exit644:                                     ; preds = %bb.fk
  %i.un = load i8, ptr %i.ui, align 1, !tbaa !67  ; 3 uses
  switch i8 %i.un, label %bb.fo [
    i8 92, label %bb.fl
    i8 32, label %bb.fm
    i8 9, label %bb.fn
  ]

bb.fl:                                            ; preds = %peek.exit644
  %i.uo = getelementptr i8, ptr %.val484, i64 2   ; 6 uses
  store ptr %i.uo, ptr %i.b, align 8, !tbaa !76
  %i.up = icmp ult ptr %i.uo, %.val5051318
  br i1 %i.up, label %peek.exit.i647, label %tailrecurse.backedge

peek.exit.i647:                                   ; preds = %bb.fl
  %i.uq = load i8, ptr %i.uo, align 1, !tbaa !67
  %i.ur = icmp eq i8 %i.uq, 117
  br i1 %i.ur, label %match.exit648, label %peek.exit.i651

peek.exit.i651:                                   ; preds = %peek.exit.i647
  %i.us = load i8, ptr %i.uo, align 1, !tbaa !67
  %i.ut = icmp eq i8 %i.us, 85
  br i1 %i.ut, label %match.exit648, label %tailrecurse.backedge

match.exit648:                                    ; preds = %peek.exit.i651, %peek.exit.i647
  %storemerge725 = getelementptr i8, ptr %.val484, i64 3 ; 2 uses
  store ptr %storemerge725, ptr %i.b, align 8, !tbaa !76
  %i.uu = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.uv = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.uu, ptr noundef %storemerge725, i32 noundef 149) #27 ; 0 uses
  br label %.critedge480

bb.fm:                                            ; preds = %peek.exit644
  %i.uw = getelementptr i8, ptr %.val484, i64 2
  store ptr %i.uw, ptr %i.b, align 8, !tbaa !76
  tail call fastcc void @escape_read_warn(ptr noundef nonnull %0, i8 noundef zeroext %.tr7301054, i8 noundef zeroext 2, ptr noundef nonnull @.str.99)
  %i.ux = shl i8 %.tr7301054, 5
  %i.uy = and i8 %i.ux, 32
  %.1.i655 = xor i8 %i.uy, -96
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7301054, i8 noundef zeroext %.1.i655)
  br label %.critedge480

bb.fn:                                            ; preds = %peek.exit644
  %i.uz = getelementptr i8, ptr %.val484, i64 2
  store ptr %i.uz, ptr %i.b, align 8, !tbaa !76
  %i.va = and i8 %.tr7301054, 14
  tail call fastcc void @escape_read_warn(ptr noundef nonnull %0, i8 noundef zeroext %i.va, i8 noundef zeroext 2, ptr noundef nonnull @.str.100)
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7301054, i8 noundef zeroext -119)
  br label %.critedge480

bb.fo:                                            ; preds = %peek.exit644
  %i.vb = icmp sgt i8 %i.un, -1
  br i1 %i.vb, label %char_is_ascii_printable.exit659, label %char_is_ascii_printable.exit659.thread

char_is_ascii_printable.exit659:                  ; preds = %bb.fk, %bb.fo
  %.0.i.i643706709 = phi i8 [ %i.un, %bb.fo ], [ 0, %bb.fk ] ; 3 uses
  %i.vc = zext nneg i8 %.0.i.i643706709 to i64
  %i.vd = getelementptr i8, ptr @ascii_printable_chars, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !17, !range !45, !noundef !46
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.fp, label %char_is_ascii_printable.exit659.thread

char_is_ascii_printable.exit659.thread:           ; preds = %bb.fo, %char_is_ascii_printable.exit659
  %i.vg = getelementptr i8, ptr %0, i64 520
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !40
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !151
  %i.vj = ptrtoint ptr %.val5051318 to i64
  %i.vk = ptrtoint ptr %i.ui to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = tail call i64 %i.vi(ptr noundef %i.ui, i64 noundef %i.vl) #27
  %i.vn = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.vo = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.vp = getelementptr i8, ptr %i.vo, i64 %i.vm
  %i.vq = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.vn, ptr noundef %i.vp, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fp:                                            ; preds = %char_is_ascii_printable.exit659
  %i.vr = getelementptr i8, ptr %.val484, i64 2
  store ptr %i.vr, ptr %i.b, align 8, !tbaa !76
  %i.vs = and i8 %.tr7301054, 1
  %.not.i660 = icmp eq i8 %i.vs, 0
  %i.vt = and i8 %.0.i.i643706709, 31
  %spec.select.i661 = select i1 %.not.i660, i8 %.0.i.i643706709, i8 %i.vt
  %.1.i662 = or disjoint i8 %spec.select.i661, -128
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7301054, i8 noundef zeroext %.1.i662)
  br label %.critedge480

bb.fq:                                            ; preds = %peek.exit
  %i.vu = getelementptr i8, ptr %.val5061056, i64 1 ; 2 uses
  %i.vv = icmp ult ptr %i.vu, %.val5051316
  br i1 %i.vv, label %peek_offset.exit664, label %peek_offset.exit664.thread

peek_offset.exit664:                              ; preds = %bb.fq
  %i.vw = load i8, ptr %i.vu, align 1, !tbaa !67
  %i.vx = icmp eq i8 %i.vw, 10
  br i1 %i.vx, label %bb.fr, label %peek_offset.exit664.thread

bb.fr:                                            ; preds = %peek_offset.exit664
  %i.vy = getelementptr i8, ptr %.val5061056, i64 2
  store ptr %i.vy, ptr %i.b, align 8, !tbaa !76
  %i.vz = shl i8 %.tr7301054, 6
  %i.wa = and i8 %i.vz, -128
  %.1.i667 = or disjoint i8 %i.wa, 10
  tail call fastcc void @escape_write_byte_encoded(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %.1.i667)
  br label %.critedge480

peek_offset.exit664.thread:                       ; preds = %peek.exit, %bb.fq, %peek_offset.exit664
  %i.wb = and i8 %.tr7301054, 3
  %.not478 = icmp eq i8 %i.wb, 0
  br i1 %.not478, label %.thread720, label %bb.fs

.thread713:                                       ; preds = %tailrecurse.backedge, %bb.a
  %.tr730.lcssa = phi i8 [ %3, %bb.a ], [ %i.qq, %tailrecurse.backedge ]
  %.val505.lcssa = phi ptr [ %.val5051052, %bb.a ], [ %.val505, %tailrecurse.backedge ]
  %.val506.lcssa = phi ptr [ %.val5061053, %bb.a ], [ %.val506.a, %tailrecurse.backedge ] ; 2 uses
  %i.wc = and i8 %.tr730.lcssa, 3
  %.not478715 = icmp eq i8 %i.wc, 0
  br i1 %.not478715, label %.thread721, label %char_is_ascii_printable.exit668.thread

bb.fs:                                            ; preds = %peek_offset.exit664.thread
  %i.wd = icmp sgt i8 %i.f, -1
  br i1 %i.wd, label %char_is_ascii_printable.exit668, label %char_is_ascii_printable.exit668.thread

char_is_ascii_printable.exit668:                  ; preds = %bb.fs
  %i.we = zext nneg i8 %i.f to i64
  %i.wf = getelementptr i8, ptr @ascii_printable_chars, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !17, !range !45, !noundef !46
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %.thread720, label %char_is_ascii_printable.exit668.thread

char_is_ascii_printable.exit668.thread:           ; preds = %.thread713, %bb.fs, %char_is_ascii_printable.exit668
  %.val505913 = phi ptr [ %.val505.lcssa, %.thread713 ], [ %.val5051316, %bb.fs ], [ %.val5051316, %char_is_ascii_printable.exit668 ]
  %.val506834 = phi ptr [ %.val506.lcssa, %.thread713 ], [ %.val5061056, %bb.fs ], [ %.val5061056, %char_is_ascii_printable.exit668 ] ; 2 uses
  %i.wi = getelementptr i8, ptr %0, i64 520
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !40
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !151
  %i.wl = ptrtoint ptr %.val505913 to i64
  %i.wm = ptrtoint ptr %.val506834 to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = tail call i64 %i.wk(ptr noundef %.val506834, i64 noundef %i.wn) #27
  %i.wp = getelementptr i8, ptr %0, i64 352
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !166
  %i.wr = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.ws = getelementptr i8, ptr %i.wr, i64 %i.wo
  %i.wt = getelementptr i8, ptr %0, i64 472
  %i.wu = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.wt, ptr noundef %i.wq, ptr noundef %i.ws, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

.thread720:                                       ; preds = %char_is_ascii_printable.exit668, %peek_offset.exit664.thread
  tail call fastcc void @escape_write_escape_encoded(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7301054)
  br label %.critedge480

.thread721:                                       ; preds = %.thread713
  %i.wv = getelementptr i8, ptr %0, i64 352
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !166
  %i.wx = getelementptr i8, ptr %0, i64 472
  %i.wy = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.wx, ptr noundef %i.ww, ptr noundef %.val506.lcssa, i32 noundef 149) #27 ; 0 uses
  br label %.critedge480

.critedge480:                                     ; preds = %bb.dl, %bb.dm, %.thread683, %.thread720, %.thread721, %match.exit648, %bb.fm, %bb.fn, %char_is_ascii_printable.exit659.thread, %bb.fp, %bb.ez, %match.exit626, %bb.fb, %bb.fc, %char_is_ascii_printable.exit637.thread, %bb.fe, %bb.en, %match.exit, %bb.ep, %bb.eq, %char_is_ascii_printable.exit.thread, %bb.es, %bb.eb, %bb.ea, %bb.eg, %bb.eh, %bb.ee, %bb.dy, %bb.dx, %bb.cy, %bb.cv, %bb.cw, %char_is_ascii_printable.exit668.thread, %bb.fr, %bb.fj, %peek.exit642.thread, %bb.ex, %peek.exit617.thread, %bb.el, %escape_write_byte.exit581, %escape_write_byte.exit571, %escape_write_byte.exit565, %escape_write_byte.exit559, %escape_write_byte.exit553, %escape_write_byte.exit547, %escape_write_byte.exit541, %escape_write_byte.exit535, %escape_write_byte.exit529, %escape_write_byte.exit523, %escape_write_byte.exit517, %escape_write_byte.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_push_escaped(ptr noundef nonnull %0, ptr noundef captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 699
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 520
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr i8, ptr %1, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = tail call i64 %i.f(ptr noundef %i.h, i64 noundef %i.m) #27, !inline_history !280
  br label %parser_char_width.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 360
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef %i.p, i64 noundef %i.u) #27
  br label %parser_char_width.exit

parser_char_width.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.v, %bb.c ]
  %i.w = tail call range(i64 1, 0) i64 @llvm.umax.i64(i64 %.0.i, i64 1) ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 360        ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  tail call void @pm_buffer_append_bytes(ptr noundef nonnull %0, ptr noundef %i.y, i64 noundef %i.w) #27
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 48, 165) i32 @lex_interpolation(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1          ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 7 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.d, align 8, !tbaa !76
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !67
  switch i8 %i.e, label %bb.au [
    i8 64, label %bb.d
    i8 36, label %bb.t
    i8 123, label %bb.ao
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 2          ; 3 uses
  %.not79 = icmp ult ptr %i.f, %i.c
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.g, align 8, !tbaa !76
  br label %bb.av

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.f, align 1, !tbaa !67
  %i.i = icmp eq i8 %i.h, 64
  %i.j = getelementptr i8, ptr %1, i64 3          ; 2 uses
  %i.k = icmp ult ptr %i.j, %i.c
  %or.cond = and i1 %i.k, %i.i
  %.066 = select i1 %or.cond, ptr %i.j, ptr %i.f  ; 6 uses
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %.066 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %char_is_identifier_start.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 699
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43, !range !45, !noundef !46
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = tail call i64 %i.v(ptr noundef %.066, i64 noundef %i.n) #27, !inline_history !225
  %.not20.i = icmp eq i64 %i.w, 0
  br i1 %.not20.i, label %bb.i, label %char_is_identifier_start.exit.thread118

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %.066, align 1, !tbaa !67   ; 2 uses
  %i.y = icmp eq i8 %i.x, 95
  br i1 %i.y, label %char_is_identifier_start.exit.thread118, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = icmp slt i8 %i.x, 0
  br i1 %i.z, label %bb.k, label %char_is_identifier_start.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !151
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull %.066, i64 noundef %i.n) #27, !inline_history !225
  br label %char_is_identifier_start.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %.066, align 1, !tbaa !67  ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i8 %i.ad to i64
  %i.ag = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !67
  %.not.i = trunc i8 %i.ah to i1
  %i.ai = icmp eq i8 %i.ad, 95
  %narrow.i = or i1 %i.ai, %.not.i
  %i.aj = zext i1 %narrow.i to i64
  br label %char_is_identifier_start.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %.066, i64 noundef %i.n) #27
  br label %char_is_identifier_start.exit

char_is_identifier_start.exit:                    ; preds = %bb.k, %bb.m, %bb.n
  %.1.i = phi i64 [ %i.ak, %bb.n ], [ %i.ac, %bb.k ], [ %i.aj, %bb.m ]
  %.not80 = icmp eq i64 %.1.i, 0
  br i1 %.not80, label %char_is_identifier_start.exit.thread, label %char_is_identifier_start.exit.thread118

char_is_identifier_start.exit.thread118:          ; preds = %bb.h, %bb.i, %char_is_identifier_start.exit
  %i.al = getelementptr i8, ptr %0, i64 352
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !166
  %i.an = icmp ugt ptr %1, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %char_is_identifier_start.exit.thread118
  %i.ao = getelementptr i8, ptr %0, i64 360
  store ptr %1, ptr %i.ao, align 8, !tbaa !76
  br label %bb.av

bb.p:                                             ; preds = %char_is_identifier_start.exit.thread118
  %i.ap = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 296       ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !90
  %i.at = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !90
  %i.au = icmp ugt i64 %i.at, 3
  br i1 %i.au, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 5 uses
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !91
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %lex_mode_push.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 2, ptr %i.av, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.5.0..sroa_idx98, i8 0, i64 52, i1 false)
  %.sroa.6.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %i.aq, ptr %.sroa.6.0..sroa_idx99, align 8, !tbaa !11
  br label %lex_mode_push.exit

bb.s:                                             ; preds = %bb.p
  %i.ax = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ay = getelementptr [64 x i8], ptr %i.ax, i64 %i.at ; 3 uses
  store i32 2, ptr %i.ay, align 8, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.5.0..sroa_idx, i8 0, i64 52, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.aq, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !90
  %i.ba = getelementptr [64 x i8], ptr %i.ax, i64 %i.az
  store ptr %i.ba, ptr %i.ap, align 8, !tbaa !91
  br label %lex_mode_push.exit

lex_mode_push.exit:                               ; preds = %bb.q, %bb.r, %bb.s
  %i.bb = getelementptr i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.bb, align 8, !tbaa !76
  br label %bb.av

end_hunk_1
