inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@escape_read:bb.a
  store ptr %i.jo, ptr %i.b, align 8, !tbaa !76
  %i.jp = icmp eq ptr %i.jo, %.val5061313
  br i1 %i.jp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jq = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.jn, ptr noundef %i.jo, i32 noundef 87, i32 noundef 2, ptr noundef %i.jn) #27 ; 0 uses
  br label %.critedge480

bb.cz:                                            ; preds = %bb.cx
  %i.jr = icmp ult ptr %i.jo, %.val5061313
  br i1 %i.jr, label %peek.exit591, label %peek.exit591.thread

peek.exit591:                                     ; preds = %bb.cz
  %i.js = load i8, ptr %i.jo, align 1, !tbaa !67
  %i.jt = icmp eq i8 %i.js, 123
  br i1 %i.jt, label %bb.da, label %peek.exit591.thread

bb.da:                                            ; preds = %peek.exit591
  %i.ju = getelementptr i8, ptr %.val5071053, i64 2
  br label %bb.db

bb.db:                                            ; preds = %.backedge, %bb.da
  %i.jv = phi ptr [ %.val5061313, %bb.da ], [ %.be, %.backedge ]
  %storemerge475 = phi ptr [ %i.ju, %bb.da ], [ %storemerge475.be, %.backedge ] ; 3 uses
  store ptr %storemerge475, ptr %i.b, align 8, !tbaa !76
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %storemerge475 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %storemerge475, i64 noundef %i.jy) #27 ; 2 uses
  %.not470 = icmp eq i64 %i.jz, 0
  br i1 %.not470, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.jz
  %.pre1317.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %.backedge

bb.dd:                                            ; preds = %bb.db
  %.val494 = load ptr, ptr %i.a, align 8, !tbaa !78 ; 5 uses
  %.val495 = load ptr, ptr %i.b, align 8, !tbaa !76 ; 6 uses
  %i.kc = icmp ult ptr %.val495, %.val494
  br i1 %i.kc, label %peek.exit593, label %.critedge.thread

peek.exit593:                                     ; preds = %bb.dd
  %i.kd = load i8, ptr %.val495, align 1, !tbaa !67
  %i.ke = icmp eq i8 %i.kd, 92
  br i1 %i.ke, label %bb.de, label %.lr.ph

bb.de:                                            ; preds = %peek.exit593
  %i.kf = getelementptr i8, ptr %.val495, i64 1   ; 2 uses
  %i.kg = icmp ult ptr %i.kf, %.val494
  br i1 %i.kg, label %peek_offset.exit, label %.lr.ph

peek_offset.exit:                                 ; preds = %bb.de
  %i.kh = load i8, ptr %i.kf, align 1, !tbaa !67
  %i.ki = icmp eq i8 %i.kh, 110
  br i1 %i.ki, label %bb.df, label %.lr.ph

bb.df:                                            ; preds = %peek_offset.exit
  %i.kj = getelementptr i8, ptr %.val495, i64 2
  br label %.backedge

.backedge:                                        ; preds = %bb.df, %bb.dc
  %.be = phi ptr [ %.val494, %bb.df ], [ %.pre1317.pre, %bb.dc ]
  %storemerge475.be = phi ptr [ %i.kj, %bb.df ], [ %i.kb, %bb.dc ]
  br label %bb.db

.lr.ph:                                           ; preds = %bb.de, %peek.exit593, %peek_offset.exit
  %i.kk = and i8 %.tr7271051, 4                   ; 3 uses
  %i.kl = icmp ne i8 %i.kk, 0
  %.not.i595 = icmp eq i8 %i.kk, 0
  %i.km = getelementptr i8, ptr %0, i64 672       ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph, %escape_write_unicode.exit
  %i.kn = phi ptr [ %.val494, %.lr.ph ], [ %i.nt, %escape_write_unicode.exit ] ; 2 uses
  %i.ko = phi ptr [ %.val495, %.lr.ph ], [ %i.ns, %escape_write_unicode.exit ] ; 15 uses
  %.04501058 = phi ptr [ null, %.lr.ph ], [ %spec.select, %escape_write_unicode.exit ] ; 2 uses
  %.04521057 = phi i32 [ 0, %.lr.ph ], [ %i.lh, %escape_write_unicode.exit ] ; 2 uses
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
  %.not474 = icmp samesign ult i8 %.tr7271051, 8
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
  %i.lh = add i32 %.04521057, 1                   ; 3 uses
  %i.li = icmp eq i32 %i.lh, 2
  %or.cond = select i1 %i.kl, i1 %i.li, i1 false
  %spec.select = select i1 %or.cond, ptr %i.ko, ptr %.04501058 ; 2 uses
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
  %lcmp.mod2107 = trunc i64 %i.lq to i1
  tail call void @llvm.assume(i1 %lcmp.mod2107)
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
  %or.cond.i596 = and i1 %.not.i595, %i.nc
  br i1 %or.cond.i596, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %escape_unicode.exit.thread, %escape_unicode.exit
  %i.nd = phi ptr [ %i.nb, %escape_unicode.exit.thread ], [ %i.lg, %escape_unicode.exit ] ; 2 uses
  %.021.i678 = phi i32 [ 65533, %escape_unicode.exit.thread ], [ %.020.lcssa.i, %escape_unicode.exit ]
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
  %.021.i679 = phi i32 [ %.021.i678, %bb.dp ], [ %.020.lcssa.i, %escape_unicode.exit ]
  %i.nj = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef %1, i32 noundef %.021.i679) #27
  br i1 %i.nj, label %escape_write_unicode.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef nonnull %i.ko, ptr noundef %i.ni, i32 noundef 82) #27 ; 0 uses
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -17) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -65) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -67) #27
  br label %escape_write_unicode.exit

escape_write_unicode.exit:                        ; preds = %bb.dq, %bb.dr
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

.critedge:                                        ; preds = %bb.dg, %escape_write_unicode.exit
  %i.nv = phi ptr [ %i.kn, %bb.dg ], [ %i.nt, %escape_write_unicode.exit ]
  %.0452.lcssa.ph = phi i32 [ %.04521057, %bb.dg ], [ %i.lh, %escape_write_unicode.exit ]
  %.0450.lcssa.ph = phi ptr [ %.04501058, %bb.dg ], [ %spec.select, %escape_write_unicode.exit ]
  %.lcssa728.ph = phi ptr [ %i.ko, %bb.dg ], [ %i.ns, %escape_write_unicode.exit ] ; 2 uses
  %i.nw = icmp sgt i32 %.0452.lcssa.ph, 1
  %i.nx = icmp ne i8 %i.kk, 0
  %or.cond4 = select i1 %i.nx, i1 %i.nw, i1 false
  br i1 %or.cond4, label %bb.ds, label %.critedge.thread

bb.ds:                                            ; preds = %.critedge
  %i.ny = getelementptr i8, ptr %.lcssa728.ph, i64 -1
  %i.nz = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %.0450.lcssa.ph, ptr noundef %i.ny, i32 noundef 85) #27 ; 0 uses
  %.pre1318 = load ptr, ptr %i.b, align 8, !tbaa !76
  %.pre1319 = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.dd, %bb.ds, %.critedge
  %i.oa = phi ptr [ %.pre1319, %bb.ds ], [ %i.nv, %.critedge ], [ %.val494, %bb.dd ] ; 3 uses
  %i.ob = phi ptr [ %.pre1318, %bb.ds ], [ %.lcssa728.ph, %.critedge ], [ %.val495, %bb.dd ] ; 7 uses
  %i.oc = icmp eq ptr %i.ob, %i.oa
  br i1 %i.oc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.critedge.thread
  %i.od = ptrtoint ptr %i.oa to i64
  %i.oe = ptrtoint ptr %i.jn to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = trunc i64 %i.of to i32
  %i.oh = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.jn, ptr noundef %i.ob, i32 noundef 84, i32 noundef %i.og, ptr noundef %i.jn) #27 ; 0 uses
  br label %bb.dw

bb.du:                                            ; preds = %.critedge.thread
  %i.oi = icmp ult ptr %i.ob, %i.oa
  br i1 %i.oi, label %peek.exit598, label %peek.exit598.thread

peek.exit598:                                     ; preds = %bb.du
  %i.oj = load i8, ptr %i.ob, align 1, !tbaa !67
  %i.ok = icmp eq i8 %i.oj, 125
  br i1 %i.ok, label %bb.dv, label %peek.exit598.thread

bb.dv:                                            ; preds = %peek.exit598
  %i.ol = getelementptr i8, ptr %i.ob, i64 1
  store ptr %i.ol, ptr %i.b, align 8, !tbaa !76
  br label %bb.dw

peek.exit598.thread:                              ; preds = %bb.du, %peek.exit598
  %.not472 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not472, label %.thread, label %.thread682

.thread682:                                       ; preds = %peek.exit598.thread
  %i.om = ptrtoint ptr %i.ob to i64
  %i.on = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.oo = sub i64 %i.om, %i.on
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.oo) #27
  br label %bb.dx

.thread:                                          ; preds = %peek.exit598.thread
  %i.op = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.jn, ptr noundef %i.ob, i32 noundef 88) #27 ; 0 uses
  br label %.critedge480

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %.not473 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not473, label %.critedge480, label %._crit_edge

._crit_edge:                                      ; preds = %bb.dw
  %.pre1322 = ptrtoint ptr %i.jn to i64
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge, %.thread682
  %.pre-phi1323 = phi i64 [ %.pre1322, %._crit_edge ], [ %i.on, %.thread682 ]
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = sub i64 %i.or, %.pre-phi1323
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.os) #27
  br label %.critedge480

peek.exit591.thread:                              ; preds = %bb.cz, %peek.exit591
  %i.ot = ptrtoint ptr %.val5061313 to i64
  %i.ou = ptrtoint ptr %i.jo to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %spec.select482 = tail call i64 @llvm.smin.i64(i64 %i.ov, i64 4)
  %i.ow = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef %i.jo, i64 noundef %spec.select482) #27 ; 2 uses
  switch i64 %i.ow, label %bb.ee [
    i64 0, label %bb.dy
    i64 4, label %bb.eb
  ]

bb.dy:                                            ; preds = %peek.exit591.thread
  %.not469 = icmp samesign ult i8 %.tr7271051, 8
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  br i1 %.not469, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.jn to i64
  %i.pa = sub i64 %i.oy, %i.oz
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.pa) #27
  br label %.critedge480

bb.ea:                                            ; preds = %bb.dy
  %i.pb = getelementptr i8, ptr %i.ox, i64 -2     ; 2 uses
  %i.pc = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.pb, ptr noundef %i.ox, i32 noundef 87, i32 noundef 2, ptr noundef %i.pb) #27 ; 0 uses
  br label %.critedge480

bb.eb:                                            ; preds = %peek.exit591.thread
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pe = tail call fastcc i32 @escape_unicode(ptr noundef nonnull %0, ptr noundef %i.pd, i64 noundef 4, ptr noundef null)
  %.not468 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not468, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pf = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pg = getelementptr i8, ptr %i.pf, i64 4
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = ptrtoint ptr %i.jn to i64
  %i.pj = sub i64 %i.ph, %i.pi
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.pj) #27
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.pk = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pl = getelementptr i8, ptr %i.pk, i64 4
  tail call fastcc void @escape_write_unicode(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %.tr7271051, ptr noundef %i.jn, ptr noundef %i.pl, i32 noundef %i.pe)
  %i.pm = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pn = getelementptr i8, ptr %i.pm, i64 4
  store ptr %i.pn, ptr %i.b, align 8, !tbaa !76
  br label %.critedge480

bb.ee:                                            ; preds = %peek.exit591.thread
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.ow  ; 3 uses
  store ptr %i.pp, ptr %i.b, align 8, !tbaa !76
  %.not467 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not467, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.jn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  tail call void @pm_buffer_append_bytes(ptr noundef %2, ptr noundef %i.jn, i64 noundef %i.ps) #27
end_hunk_0
begin_hunk_1_@lex_optional_float_suffix:bb.a
  br label %bb.n

bb.n:                                             ; preds = %pm_strspn_decimal_number_validate.exit54, %bb.k, %pm_strspn_decimal_number_validate.exit58
  store i8 1, ptr %1, align 1, !tbaa !17
  br label %peek.exit46.thread

peek.exit46.thread:                               ; preds = %peek.exit44, %peek.exit.thread, %bb.n, %peek_offset.exit56, %peek_offset.exit
  %.026 = phi i32 [ %.0, %peek_offset.exit56 ], [ 69, %peek_offset.exit ], [ 55, %bb.n ], [ %.0, %peek.exit44 ], [ %.0, %peek.exit.thread ]
  ret i32 %.026
}

declare i64 @pm_strspn_decimal_digit(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @pm_strspn_decimal_number(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @pm_strspn_binary_number(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @pm_strspn_octal_number(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @pm_strspn_hexadecimal_number(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @pm_constant_pool_insert_shared(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @pm_buffer_append_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @escape_write_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 12) %3, i8 noundef zeroext %4) unnamed_addr #8 {
bb.a:
  %.not = icmp samesign ult i8 %3, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp slt i8 %4, 0
  br i1 %i.b, label %bb.d, label %escape_write_byte_encoded.exit

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = icmp eq ptr %i.d, @pm_encodings
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 520
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not12.i = icmp eq ptr %i.g, @pm_encodings
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 472
  %i.i = getelementptr i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.k = getelementptr i8, ptr %0, i64 360
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr i8, ptr %i.g, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276
  %i.o = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, i32 noundef 187, ptr noundef %i.n) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %0, i64 520
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  store ptr %i.q, ptr %i.c, align 8, !tbaa !207
  br label %escape_write_byte_encoded.exit

escape_write_byte_encoded.exit:                   ; preds = %bb.c, %bb.g
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %4) #27
  ret void
}

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @escape_write_byte_encoded(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i8 %2, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.d = icmp eq ptr %i.c, @pm_encodings
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not12 = icmp eq ptr %i.f, @pm_encodings
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = getelementptr i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = getelementptr i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, i32 noundef 187, ptr noundef %i.m) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 520
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  store ptr %i.p, ptr %i.b, align 8, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %2) #27
  ret void
}

declare i64 @pm_strspn_hexadecimal_digit(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 57344, 55296) i32 @escape_unicode(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #8 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !67      ; 3 uses
  %i.b = icmp ult i8 %i.a, 58
  %i.c = add nsw i8 %i.a, -48
  %i.d = and i8 %i.a, 7
  %i.e = add nuw nsw i8 %i.d, 9
  %i.f = select i1 %i.b, i8 %i.c, i8 %i.e
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader
  %i.h = add i64 %2, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader33.new

.lr.ph.preheader33.new:                           ; preds = %.lr.ph.preheader33
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader33
  %.026.epil.init = phi i64 [ 1, %.lr.ph.preheader33 ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %.02025.epil.init = phi i32 [ %i.g, %.lr.ph.preheader33 ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.j = shl i32 %.02025.epil.init, 4
  %i.k = getelementptr i8, ptr %1, i64 %.026.epil.init
  %i.l = load i8, ptr %i.k, align 1, !tbaa !67    ; 3 uses
  %i.m = icmp ult i8 %i.l, 58
  %i.n = add nsw i8 %i.l, -48
  %i.o = and i8 %i.l, 7
  %i.p = add nuw nsw i8 %i.o, 9
  %i.q = select i1 %i.m, i8 %i.n, i8 %i.p
  %i.r = zext i8 %i.q to i32
  %i.s = or i32 %i.j, %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.lcssa = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ] ; 2 uses
  %i.t = and i32 %.020.lcssa, -2048
  %or.cond = icmp eq i32 %i.t, 55296
  br i1 %or.cond, label %bb.b, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader33.new
  %.026 = phi i64 [ 1, %.lr.ph.preheader33.new ], [ %i.ap, %.lr.ph ] ; 3 uses
  %.02025 = phi i32 [ %i.g, %.lr.ph.preheader33.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader33.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr i8, ptr %1, i64 %.026
  %i.v = load i8, ptr %i.u, align 1, !tbaa !67    ; 3 uses
  %i.w = icmp ult i8 %i.v, 58
  %i.x = add nsw i8 %i.v, -48
  %i.y = and i8 %i.v, 7
  %i.z = add nuw nsw i8 %i.y, 9
  %i.aa = select i1 %i.w, i8 %i.x, i8 %i.z
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl i32 %.02025, 8
  %i.ad = shl nuw nsw i32 %i.ab, 4
  %i.ae = or i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %1, i64 %.026
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !67  ; 3 uses
  %i.ai = icmp ult i8 %i.ah, 58
  %i.aj = add nsw i8 %i.ah, -48
  %i.ak = and i8 %i.ah, 7
  %i.al = add nuw nsw i8 %i.ak, 9
  %i.am = select i1 %i.ai, i8 %i.aj, i8 %i.al
  %i.an = zext i8 %i.am to i32
  %i.ao = or i32 %i.ae, %i.an                     ; 3 uses
  %i.ap = add nuw i64 %.026, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !277

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %3, align 8, !tbaa !283
  %i.ar = getelementptr i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !284
  %i.at = getelementptr i8, ptr %0, i64 472
  %i.au = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.at, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef 82) #27 ; 0 uses
  br label %._crit_edge.thread

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %1, i64 %2
  %i.aw = getelementptr i8, ptr %0, i64 472
  %i.ax = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aw, ptr noundef nonnull %1, ptr noundef %i.av, i32 noundef 82) #27 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.c, %bb.d
  %.021 = phi i32 [ 65533, %bb.c ], [ 65533, %bb.d ], [ %.020.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.021
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @escape_write_unicode(ptr noundef %0, ptr noundef %1, i8 noundef zeroext range(i8 0, 12) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %5, 128
  %i.b = and i8 %2, 4
  %.not = icmp eq i8 %i.b, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %.not16 = icmp eq ptr %i.d, null
  %.not17 = icmp eq ptr %i.d, @pm_encodings
  %or.cond18 = or i1 %.not16, %.not17
  br i1 %or.cond18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 472
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  %i.h = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %3, ptr noundef %4, i32 noundef 187, ptr noundef %i.g) #27 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @pm_encodings, ptr %i.c, align 8, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.i = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef %1, i32 noundef %5) #27
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 472
  %i.k = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %3, ptr noundef %4, i32 noundef 82) #27 ; 0 uses
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -17) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -65) #27
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext -67) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @escape_read_warn(ptr noundef %0, i8 noundef zeroext range(i8 0, 12) %1, i8 noundef zeroext range(i8 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 448
  %i.b = getelementptr i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr i8, ptr %0, i64 360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = zext nneg i8 %1 to i32                   ; 2 uses
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.f, 2
  %.not7 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not7, ptr @.str.103, ptr @.str.102
  %i.j = select i1 %.not, ptr %i.i, ptr @.str.101
  %i.k = and i8 %2, 1
  %.not8 = icmp eq i8 %i.k, 0
  %.not9 = icmp samesign ult i8 %2, 2
  %i.l = select i1 %.not9, ptr @.str.103, ptr @.str.102
  %i.m = select i1 %.not8, ptr %i.l, ptr @.str.101
  %i.n = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, i32 noundef 314, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, ptr noundef %3) #27 ; 0 uses
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @escape_write_escape_encoded(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 12) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 699
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 520
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = tail call i64 %i.f(ptr noundef %i.h, i64 noundef %i.m) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 360
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef %i.p, i64 noundef %i.u) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.v, %bb.c ]  ; 3 uses
  switch i64 %.0, label %bb.l [
    i64 1, label %bb.e
    i64 0, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.w, align 8, !tbaa !76
  %i.z = load i8, ptr %i.x, align 1, !tbaa !67    ; 2 uses
  %i.aa = and i8 %3, 1
  %.not.i = icmp eq i8 %i.aa, 0
  %i.ab = and i8 %i.z, -97
  %spec.select.i = select i1 %.not.i, i8 %i.z, i8 %i.ab
  %i.ac = shl i8 %3, 6
  %i.ad = and i8 %i.ac, -128
  %.1.i = or i8 %spec.select.i, %i.ad             ; 3 uses
  %.not.i26 = icmp samesign ult i8 %3, 8
  br i1 %.not.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext i8 %.1.i to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.ae) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = icmp slt i8 %.1.i, 0
  br i1 %i.af, label %bb.h, label %escape_write_byte.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !207
  %i.ai = icmp eq ptr %i.ah, @pm_encodings
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %0, i64 520
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ak, @pm_encodings
  br i1 %.not12.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %0, i64 472
  %i.am = getelementptr i8, ptr %0, i64 352
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !166
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.ap = getelementptr i8, ptr %i.ak, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ao, i32 noundef 187, ptr noundef %i.aq) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.as = getelementptr i8, ptr %0, i64 520
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  store ptr %i.at, ptr %i.ag, align 8, !tbaa !207
  br label %escape_write_byte.exit

escape_write_byte.exit:                           ; preds = %bb.g, %bb.k
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i) #27
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %.not25 = icmp samesign ult i8 %3, 8
  %i.au = select i1 %.not25, ptr %1, ptr %2
  %i.av = getelementptr i8, ptr %0, i64 360       ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76
  tail call void @pm_buffer_append_bytes(ptr noundef %i.au, ptr noundef %i.aw, i64 noundef %.0) #27
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.0
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !76
end_hunk_1
begin_hunk_2_@pm_named_capture_escape:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.hv, %bb.ah ] ; 2 uses
  %.061 = phi ptr [ %4, %.lr.ph ], [ %i.hr, %bb.ah ] ; 9 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !67    ; 2 uses
  switch i8 %i.l, label %bb.ag [
    i8 120, label %bb.c
    i8 48, label %bb.j
    i8 49, label %bb.j
    i8 50, label %bb.j
    i8 51, label %bb.j
    i8 52, label %bb.j
    i8 53, label %bb.j
    i8 54, label %bb.j
    i8 55, label %bb.j
    i8 117, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.061, i64 2       ; 4 uses
  %i.n = icmp ult ptr %i.m, %i.a
  br i1 %i.n, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.m, align 1, !tbaa !67
  %i.p = tail call zeroext i1 @pm_char_is_hexadecimal_digit(i8 noundef zeroext %i.o) #27
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.m, align 1, !tbaa !67    ; 3 uses
  %i.r = icmp ult i8 %i.q, 58
  %i.s = add nsw i8 %i.q, -48
  %i.t = and i8 %i.q, 7
  %i.u = add nuw nsw i8 %i.t, 9
  %i.v = select i1 %i.r, i8 %i.s, i8 %i.u         ; 3 uses
  %i.w = getelementptr i8, ptr %.061, i64 3       ; 5 uses
  %i.x = icmp ult ptr %i.w, %i.a
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.w, align 1, !tbaa !67
  %i.z = tail call zeroext i1 @pm_char_is_hexadecimal_digit(i8 noundef zeroext %i.y) #27
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = shl i8 %i.v, 4
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !67   ; 3 uses
  %i.ac = icmp ult i8 %i.ab, 58
  %i.ad = add nsw i8 %i.ab, -48
  %i.ae = and i8 %i.ab, 7
  %i.af = add nuw nsw i8 %i.ae, 9
  %i.ag = select i1 %i.ac, i8 %i.ad, i8 %i.af
  %i.ah = or i8 %i.ag, %i.aa
  %i.ai = getelementptr i8, ptr %.061, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.015.i = phi ptr [ %i.ai, %bb.g ], [ %i.w, %bb.f ], [ %i.w, %bb.e ]
  %.0.i = phi i8 [ %i.ah, %bb.g ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %1, i8 noundef zeroext %.0.i) #27
  br label %pm_named_capture_escape_hex.exit

bb.i:                                             ; preds = %bb.d, %bb.c
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.238, i64 noundef 2) #27
  br label %pm_named_capture_escape_hex.exit

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.aj = add nsw i8 %i.l, -48                    ; 3 uses
  %i.ak = getelementptr i8, ptr %.061, i64 2      ; 5 uses
  %i.al = icmp ult ptr %i.ak, %i.a
  br i1 %i.al, label %bb.k, label %pm_named_capture_escape_octal.exit

bb.k:                                             ; preds = %bb.j
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !67
  %i.an = tail call zeroext i1 @pm_char_is_octal_digit(i8 noundef zeroext %i.am) #27
  br i1 %i.an, label %bb.l, label %pm_named_capture_escape_octal.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = shl nuw nsw i8 %i.aj, 3
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !67
  %i.aq = add i8 %i.ap, -48
  %i.ar = or i8 %i.aq, %i.ao                      ; 3 uses
  %i.as = getelementptr i8, ptr %.061, i64 3      ; 5 uses
  %i.at = icmp ult ptr %i.as, %i.a
  br i1 %i.at, label %bb.m, label %pm_named_capture_escape_octal.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.as, align 1, !tbaa !67
  %i.av = tail call zeroext i1 @pm_char_is_octal_digit(i8 noundef zeroext %i.au) #27
  br i1 %i.av, label %bb.n, label %pm_named_capture_escape_octal.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = shl i8 %i.ar, 3
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !67
  %i.ay = add i8 %i.ax, -48
  %i.az = or i8 %i.ay, %i.aw
  %i.ba = getelementptr i8, ptr %.061, i64 4
  br label %pm_named_capture_escape_octal.exit

pm_named_capture_escape_octal.exit:               ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.016.i = phi ptr [ %i.ba, %bb.n ], [ %i.as, %bb.m ], [ %i.as, %bb.l ], [ %i.ak, %bb.k ], [ %i.ak, %bb.j ]
  %.0.i41 = phi i8 [ %i.az, %bb.n ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ]
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %1, i8 noundef zeroext %.0.i41) #27
  br label %pm_named_capture_escape_hex.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr i8, ptr %.061, i64 2      ; 12 uses
  %.not.i = icmp ult ptr %i.bb, %i.a
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.239, i64 noundef 2) #27
  br label %pm_named_capture_escape_hex.exit

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !67
  %.not54.i = icmp eq i8 %i.bc, 123
  br i1 %.not54.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.f, %i.bd
  %i.bf = tail call i64 @llvm.smin.i64(i64 %i.be, i64 4)
  %i.bg = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #27 ; 7 uses
  %.not27.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not27.i.i, label %escape_unicode.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !67  ; 3 uses
  %i.bi = icmp ult i8 %i.bh, 58
  %i.bj = add nsw i8 %i.bh, -48
  %i.bk = and i8 %i.bh, 7
  %i.bl = add nuw nsw i8 %i.bk, 9
  %i.bm = select i1 %i.bi, i8 %i.bj, i8 %i.bl
  %i.bn = zext i8 %i.bm to i32                    ; 3 uses
  %exitcond.peel.not.i.i = icmp eq i64 %i.bg, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.bo = add i64 %i.bg, -1                       ; 3 uses
  %xtraiter = and i64 %i.bo, 1
  %i.bp = icmp eq i64 %i.bg, 2
  br i1 %i.bp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bo, -2
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.026.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.cw, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.02025.i.i.epil.init = phi i32 [ %i.bn, %.lr.ph.i.i.preheader ], [ %i.cv, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod146 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.bq = shl i32 %.02025.i.i.epil.init, 4
  %i.br = getelementptr i8, ptr %i.bb, i64 %.026.i.i.epil.init
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !67  ; 3 uses
  %i.bt = icmp ult i8 %i.bs, 58
  %i.bu = add nsw i8 %i.bs, -48
  %i.bv = and i8 %i.bs, 7
  %i.bw = add nuw nsw i8 %i.bv, 9
  %i.bx = select i1 %i.bt, i8 %i.bu, i8 %i.bw
  %i.by = zext i8 %i.bx to i32
  %i.bz = or i32 %i.bq, %i.by
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.020.lcssa.i.i = phi i32 [ %i.bn, %.lr.ph.preheader.i.i ], [ %i.cv, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ca = and i32 %.020.lcssa.i.i, -2048
  %or.cond.i.i = icmp eq i32 %i.ca, 55296
  br i1 %or.cond.i.i, label %bb.s, label %escape_unicode.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.026.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %i.cw, %.lr.ph.i.i ] ; 3 uses
  %.02025.i.i = phi i32 [ %i.bn, %.lr.ph.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.cb = getelementptr i8, ptr %i.bb, i64 %.026.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !67  ; 3 uses
  %i.cd = icmp ult i8 %i.cc, 58
  %i.ce = add nsw i8 %i.cc, -48
  %i.cf = and i8 %i.cc, 7
  %i.cg = add nuw nsw i8 %i.cf, 9
  %i.ch = select i1 %i.cd, i8 %i.ce, i8 %i.cg
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl i32 %.02025.i.i, 8
  %i.ck = shl nuw nsw i32 %i.ci, 4
  %i.cl = or i32 %i.cj, %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %.026.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !67  ; 3 uses
  %i.cp = icmp ult i8 %i.co, 58
  %i.cq = add nsw i8 %i.co, -48
  %i.cr = and i8 %i.co, 7
  %i.cs = add nuw nsw i8 %i.cr, 9
  %i.ct = select i1 %i.cp, i8 %i.cq, i8 %i.cs
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or i32 %i.cl, %i.cu                     ; 3 uses
  %i.cw = add nuw i64 %.026.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !277

bb.s:                                             ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %5, align 8, !tbaa !283
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !284
  %i.cz = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef 82) #27 ; 0 uses
  br label %escape_unicode.exit.i

bb.u:                                             ; preds = %bb.s
  %i.da = getelementptr i8, ptr %i.bb, i64 %i.bg
  %i.db = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef nonnull %i.bb, ptr noundef %i.da, i32 noundef 82) #27 ; 0 uses
  br label %escape_unicode.exit.i

escape_unicode.exit.i:                            ; preds = %bb.u, %bb.t, %._crit_edge.i.i, %bb.r
  %.021.i.i = phi i32 [ 65533, %bb.t ], [ 65533, %bb.u ], [ %.020.lcssa.i.i, %._crit_edge.i.i ], [ 0, %bb.r ]
  %i.dc = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef nonnull %1, i32 noundef %.021.i.i) #27
  br i1 %i.dc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %escape_unicode.exit.i
  %gepdiff.i = add i64 %i.bg, 2
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef nonnull %.061, i64 noundef %gepdiff.i) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %escape_unicode.exit.i
  %i.dd = getelementptr i8, ptr %i.bb, i64 %i.bg
  br label %pm_named_capture_escape_hex.exit

bb.x:                                             ; preds = %bb.q
  %i.de = getelementptr i8, ptr %.061, i64 3      ; 4 uses
  %i.df = icmp ult ptr %i.de, %i.a
  br i1 %i.df, label %.lr.ph.lr.ph.i, label %pm_named_capture_escape_hex.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.x
  br i1 %.not.i.i, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.lr.ph.i, %.lr.ph.us.i.backedge
  %.175.us.i = phi ptr [ %.175.us.i.be, %.lr.ph.us.i.backedge ], [ %i.de, %.lr.ph.lr.ph.i ] ; 13 uses
  %i.dg = load i8, ptr %.175.us.i, align 1, !tbaa !67
  switch i8 %i.dg, label %bb.y [
    i8 32, label %bb.ab
    i8 125, label %.split.us.i
  ]

bb.y:                                             ; preds = %.lr.ph.us.i
  %i.dh = ptrtoint ptr %.175.us.i to i64
  %i.di = sub i64 %i.f, %i.dh
  %i.dj = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef nonnull %.175.us.i, i64 noundef %i.di) #27 ; 6 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %pm_named_capture_escape_hex.exit, label %.lr.ph.preheader.i57.us.i

.lr.ph.preheader.i57.us.i:                        ; preds = %bb.y
  %i.dl = load i8, ptr %.175.us.i, align 1, !tbaa !67 ; 3 uses
  %i.dm = icmp ult i8 %i.dl, 58
  %i.dn = add nsw i8 %i.dl, -48
  %i.do = and i8 %i.dl, 7
  %i.dp = add nuw nsw i8 %i.do, 9
  %i.dq = select i1 %i.dm, i8 %i.dn, i8 %i.dp
  %i.dr = zext i8 %i.dq to i32                    ; 3 uses
  %exitcond.peel.not.i58.us.i = icmp eq i64 %i.dj, 1
  br i1 %exitcond.peel.not.i58.us.i, label %._crit_edge.i63.us.i, label %.lr.ph.i59.us.i.preheader

.lr.ph.i59.us.i.preheader:                        ; preds = %.lr.ph.preheader.i57.us.i
  %i.ds = add i64 %i.dj, -1                       ; 3 uses
  %xtraiter153 = and i64 %i.ds, 1
  %i.dt = icmp eq i64 %i.dj, 2
  br i1 %i.dt, label %.lr.ph.i59.us.i.epil.preheader, label %.lr.ph.i59.us.i.preheader.new

.lr.ph.i59.us.i.preheader.new:                    ; preds = %.lr.ph.i59.us.i.preheader
  %unroll_iter157 = and i64 %i.ds, -2
  br label %.lr.ph.i59.us.i

.lr.ph.i59.us.i:                                  ; preds = %.lr.ph.i59.us.i, %.lr.ph.i59.us.i.preheader.new
  %.026.i60.us.i = phi i64 [ 1, %.lr.ph.i59.us.i.preheader.new ], [ %i.ep, %.lr.ph.i59.us.i ] ; 3 uses
  %.02025.i61.us.i = phi i32 [ %i.dr, %.lr.ph.i59.us.i.preheader.new ], [ %i.eo, %.lr.ph.i59.us.i ]
  %niter158 = phi i64 [ 0, %.lr.ph.i59.us.i.preheader.new ], [ %niter158.next.1, %.lr.ph.i59.us.i ]
  %i.du = getelementptr i8, ptr %.175.us.i, i64 %.026.i60.us.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !67  ; 3 uses
  %i.dw = icmp ult i8 %i.dv, 58
  %i.dx = add nsw i8 %i.dv, -48
  %i.dy = and i8 %i.dv, 7
  %i.dz = add nuw nsw i8 %i.dy, 9
  %i.ea = select i1 %i.dw, i8 %i.dx, i8 %i.dz
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl i32 %.02025.i61.us.i, 8
  %i.ed = shl nuw nsw i32 %i.eb, 4
  %i.ee = or i32 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %.175.us.i, i64 %.026.i60.us.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !67  ; 3 uses
  %i.ei = icmp ult i8 %i.eh, 58
  %i.ej = add nsw i8 %i.eh, -48
  %i.ek = and i8 %i.eh, 7
  %i.el = add nuw nsw i8 %i.ek, 9
  %i.em = select i1 %i.ei, i8 %i.ej, i8 %i.el
  %i.en = zext i8 %i.em to i32
  %i.eo = or i32 %i.ee, %i.en                     ; 3 uses
  %i.ep = add nuw i64 %.026.i60.us.i, 2           ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.i63.us.i.loopexit.unr-lcssa, label %.lr.ph.i59.us.i, !llvm.loop !277

._crit_edge.i63.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i59.us.i
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge.i63.us.i, label %.lr.ph.i59.us.i.epil.preheader

.lr.ph.i59.us.i.epil.preheader:                   ; preds = %._crit_edge.i63.us.i.loopexit.unr-lcssa, %.lr.ph.i59.us.i.preheader
  %.026.i60.us.i.epil.init = phi i64 [ 1, %.lr.ph.i59.us.i.preheader ], [ %i.ep, %._crit_edge.i63.us.i.loopexit.unr-lcssa ]
  %.02025.i61.us.i.epil.init = phi i32 [ %i.dr, %.lr.ph.i59.us.i.preheader ], [ %i.eo, %._crit_edge.i63.us.i.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %i.ds to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.eq = shl i32 %.02025.i61.us.i.epil.init, 4
  %i.er = getelementptr i8, ptr %.175.us.i, i64 %.026.i60.us.i.epil.init
  %i.es = load i8, ptr %i.er, align 1, !tbaa !67  ; 3 uses
  %i.et = icmp ult i8 %i.es, 58
  %i.eu = add nsw i8 %i.es, -48
  %i.ev = and i8 %i.es, 7
  %i.ew = add nuw nsw i8 %i.ev, 9
  %i.ex = select i1 %i.et, i8 %i.eu, i8 %i.ew
  %i.ey = zext i8 %i.ex to i32
  %i.ez = or i32 %i.eq, %i.ey
  br label %._crit_edge.i63.us.i

._crit_edge.i63.us.i:                             ; preds = %.lr.ph.i59.us.i.epil.preheader, %._crit_edge.i63.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i57.us.i
  %.020.lcssa.i64.us.i = phi i32 [ %i.dr, %.lr.ph.preheader.i57.us.i ], [ %i.eo, %._crit_edge.i63.us.i.loopexit.unr-lcssa ], [ %i.ez, %.lr.ph.i59.us.i.epil.preheader ] ; 2 uses
  %i.fa = and i32 %.020.lcssa.i64.us.i, -2048
  %or.cond.i65.us.i = icmp eq i32 %i.fa, 55296
  br i1 %or.cond.i65.us.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i63.us.i
  %i.fb = getelementptr i8, ptr %.175.us.i, i64 %i.dj
  %i.fc = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef nonnull %.175.us.i, ptr noundef %i.fb, i32 noundef 82) #27 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i63.us.i
  %.021.i66.us.i = phi i32 [ %.020.lcssa.i64.us.i, %._crit_edge.i63.us.i ], [ 65533, %bb.z ]
  %i.fd = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef nonnull %1, i32 noundef %.021.i66.us.i) #27 ; 0 uses
  %i.fe = getelementptr i8, ptr %.175.us.i, i64 %i.dj ; 3 uses
  %i.ff = icmp ult ptr %i.fe, %i.a
  br i1 %i.ff, label %.lr.ph.us.i.backedge, label %pm_named_capture_escape_hex.exit

bb.ab:                                            ; preds = %.lr.ph.us.i
  %i.fg = getelementptr i8, ptr %.175.us.i, i64 1 ; 3 uses
  %i.fh = icmp ult ptr %i.fg, %i.a
  br i1 %i.fh, label %.lr.ph.us.i.backedge, label %pm_named_capture_escape_hex.exit

.lr.ph.us.i.backedge:                             ; preds = %bb.ab, %bb.aa
  %.175.us.i.be = phi ptr [ %i.fg, %bb.ab ], [ %i.fe, %bb.aa ]
  br label %.lr.ph.us.i, !llvm.loop !693

.lr.ph.i:                                         ; preds = %.lr.ph.lr.ph.i, %.lr.ph.i.backedge
  %.175.i = phi ptr [ %.175.i.be, %.lr.ph.i.backedge ], [ %i.de, %.lr.ph.lr.ph.i ] ; 11 uses
  %i.fi = load i8, ptr %.175.i, align 1, !tbaa !67
  switch i8 %i.fi, label %bb.ad [
    i8 32, label %bb.ac
    i8 125, label %.split.us.i
  ]

bb.ac:                                            ; preds = %.lr.ph.i
  %i.fj = getelementptr i8, ptr %.175.i, i64 1    ; 3 uses
  %i.fk = icmp ult ptr %i.fj, %i.a
  br i1 %i.fk, label %.lr.ph.i.backedge, label %pm_named_capture_escape_hex.exit

.lr.ph.i.backedge:                                ; preds = %bb.ac, %bb.af
  %.175.i.be = phi ptr [ %i.fj, %bb.ac ], [ %i.hk, %bb.af ]
  br label %.lr.ph.i, !llvm.loop !693

.split.us.i:                                      ; preds = %.lr.ph.i, %.lr.ph.us.i
  %.us-phi.i = phi ptr [ %.175.us.i, %.lr.ph.us.i ], [ %.175.i, %.lr.ph.i ]
  %i.fl = getelementptr i8, ptr %.us-phi.i, i64 1
  br label %pm_named_capture_escape_hex.exit

bb.ad:                                            ; preds = %.lr.ph.i
  %i.fm = ptrtoint ptr %.175.i to i64
  %i.fn = sub i64 %i.f, %i.fm
  %i.fo = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef nonnull %.175.i, i64 noundef %i.fn) #27 ; 5 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %pm_named_capture_escape_hex.exit, label %.lr.ph.preheader.i57.i

.lr.ph.preheader.i57.i:                           ; preds = %bb.ad
  %i.fq = load i8, ptr %.175.i, align 1, !tbaa !67 ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 58
  %i.fs = add nsw i8 %i.fq, -48
  %i.ft = and i8 %i.fq, 7
  %i.fu = add nuw nsw i8 %i.ft, 9
  %i.fv = select i1 %i.fr, i8 %i.fs, i8 %i.fu
  %i.fw = zext i8 %i.fv to i32                    ; 3 uses
  %exitcond.peel.not.i58.i = icmp eq i64 %i.fo, 1
  br i1 %exitcond.peel.not.i58.i, label %._crit_edge.i63.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %.lr.ph.preheader.i57.i
  %i.fx = add i64 %i.fo, -1                       ; 3 uses
  %xtraiter147 = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %i.fo, 2
  br i1 %i.fy, label %.lr.ph.i59.i.epil.preheader, label %.lr.ph.i59.i.preheader.new

.lr.ph.i59.i.preheader.new:                       ; preds = %.lr.ph.i59.i.preheader
  %unroll_iter151 = and i64 %i.fx, -2
  br label %.lr.ph.i59.i

._crit_edge.i63.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i59.i
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %._crit_edge.i63.i, label %.lr.ph.i59.i.epil.preheader

.lr.ph.i59.i.epil.preheader:                      ; preds = %._crit_edge.i63.i.loopexit.unr-lcssa, %.lr.ph.i59.i.preheader
  %.026.i60.i.epil.init = phi i64 [ 1, %.lr.ph.i59.i.preheader ], [ %i.hf, %._crit_edge.i63.i.loopexit.unr-lcssa ]
  %.02025.i61.i.epil.init = phi i32 [ %i.fw, %.lr.ph.i59.i.preheader ], [ %i.he, %._crit_edge.i63.i.loopexit.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.fz = shl i32 %.02025.i61.i.epil.init, 4
  %i.ga = getelementptr i8, ptr %.175.i, i64 %.026.i60.i.epil.init
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !67  ; 3 uses
  %i.gc = icmp ult i8 %i.gb, 58
  %i.gd = add nsw i8 %i.gb, -48
  %i.ge = and i8 %i.gb, 7
  %i.gf = add nuw nsw i8 %i.ge, 9
  %i.gg = select i1 %i.gc, i8 %i.gd, i8 %i.gf
  %i.gh = zext i8 %i.gg to i32
  %i.gi = or i32 %i.fz, %i.gh
  br label %._crit_edge.i63.i

._crit_edge.i63.i:                                ; preds = %.lr.ph.i59.i.epil.preheader, %._crit_edge.i63.i.loopexit.unr-lcssa, %.lr.ph.preheader.i57.i
  %.020.lcssa.i64.i = phi i32 [ %i.fw, %.lr.ph.preheader.i57.i ], [ %i.he, %._crit_edge.i63.i.loopexit.unr-lcssa ], [ %i.gi, %.lr.ph.i59.i.epil.preheader ] ; 2 uses
  %i.gj = and i32 %.020.lcssa.i64.i, -2048
  %or.cond.i65.i = icmp eq i32 %i.gj, 55296
  br i1 %or.cond.i65.i, label %bb.ae, label %bb.af

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i, %.lr.ph.i59.i.preheader.new
  %.026.i60.i = phi i64 [ 1, %.lr.ph.i59.i.preheader.new ], [ %i.hf, %.lr.ph.i59.i ] ; 3 uses
  %.02025.i61.i = phi i32 [ %i.fw, %.lr.ph.i59.i.preheader.new ], [ %i.he, %.lr.ph.i59.i ]
  %niter152 = phi i64 [ 0, %.lr.ph.i59.i.preheader.new ], [ %niter152.next.1, %.lr.ph.i59.i ]
  %i.gk = getelementptr i8, ptr %.175.i, i64 %.026.i60.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !67  ; 3 uses
  %i.gm = icmp ult i8 %i.gl, 58
  %i.gn = add nsw i8 %i.gl, -48
  %i.go = and i8 %i.gl, 7
  %i.gp = add nuw nsw i8 %i.go, 9
  %i.gq = select i1 %i.gm, i8 %i.gn, i8 %i.gp
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl i32 %.02025.i61.i, 8
  %i.gt = shl nuw nsw i32 %i.gr, 4
  %i.gu = or i32 %i.gs, %i.gt
  %i.gv = getelementptr i8, ptr %.175.i, i64 %.026.i60.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !67  ; 3 uses
  %i.gy = icmp ult i8 %i.gx, 58
  %i.gz = add nsw i8 %i.gx, -48
  %i.ha = and i8 %i.gx, 7
  %i.hb = add nuw nsw i8 %i.ha, 9
  %i.hc = select i1 %i.gy, i8 %i.gz, i8 %i.hb
  %i.hd = zext i8 %i.hc to i32
  %i.he = or i32 %i.gu, %i.hd                     ; 3 uses
  %i.hf = add nuw i64 %.026.i60.i, 2              ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %._crit_edge.i63.i.loopexit.unr-lcssa, label %.lr.ph.i59.i, !llvm.loop !277

bb.ae:                                            ; preds = %._crit_edge.i63.i
  %i.hg = load ptr, ptr %5, align 8, !tbaa !283
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !284
  %i.hi = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.hg, ptr noundef %i.hh, i32 noundef 82) #27 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i63.i
  %.021.i66.i = phi i32 [ 65533, %bb.ae ], [ %.020.lcssa.i64.i, %._crit_edge.i63.i ]
  %i.hj = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef nonnull %1, i32 noundef %.021.i66.i) #27 ; 0 uses
  %i.hk = getelementptr i8, ptr %.175.i, i64 %i.fo ; 3 uses
  %i.hl = icmp ult ptr %i.hk, %i.a
  br i1 %i.hl, label %.lr.ph.i.backedge, label %pm_named_capture_escape_hex.exit

bb.ag:                                            ; preds = %bb.b
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %1, i8 noundef zeroext 92) #27
  br label %pm_named_capture_escape_hex.exit

pm_named_capture_escape_hex.exit:                 ; preds = %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.ab, %.split.us.i, %bb.x, %bb.w, %bb.p, %bb.i, %bb.h, %bb.ag, %pm_named_capture_escape_octal.exit
  %.1 = phi ptr [ %i.k, %bb.ag ], [ %i.m, %bb.i ], [ %.016.i, %pm_named_capture_escape_octal.exit ], [ %.015.i, %bb.h ], [ %i.bb, %bb.p ], [ %i.dd, %bb.w ], [ %i.de, %bb.x ], [ %i.fl, %.split.us.i ], [ %i.fg, %bb.ab ], [ %.175.us.i, %bb.y ], [ %i.fe, %bb.aa ], [ %.175.i, %bb.ad ], [ %i.fj, %bb.ac ], [ %i.hk, %bb.af ] ; 4 uses
  %i.hm = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.hn = sub i64 %i.f, %i.hm                     ; 2 uses
  %i.ho = load i8, ptr %i.i, align 1, !tbaa !43, !range !45, !noundef !46
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.hr = tail call ptr @pm_memchr(ptr noundef %.1, i32 noundef 92, i64 noundef %i.hn, i1 noundef zeroext %i.hp, ptr noundef %i.hq) #27 ; 4 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %pm_named_capture_escape_hex.exit
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.ht, %i.hm
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef %.1, i64 noundef %i.hu) #27
  %i.hv = getelementptr i8, ptr %i.hr, i64 1      ; 2 uses
  %.not = icmp ult ptr %i.hv, %i.a
  br i1 %.not, label %bb.b, label %._crit_edge

bb.ai:                                            ; preds = %pm_named_capture_escape_hex.exit
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef %.1, i64 noundef %i.hn) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  ret void
}

declare void @pm_buffer_append_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @pm_constant_id_list_init_capacity(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @pm_constant_id_list_insert(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @pm_node_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_string_constant_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { memory(none) }
attributes #33 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS11pm_lex_mode", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"_Bool", !9, i64 0}
!19 = !{i64 0, i64 8, !14, i64 8, i64 8, !20, i64 16, i64 4, !7}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!23, !8, i64 40}
!23 = !{!"pm_options", !13, i64 0, !13, i64 8, !24, i64 16, !8, i64 40, !24, i64 48, !21, i64 72, !25, i64 80, !8, i64 88, !9, i64 92, !9, i64 93, !18, i64 94, !18, i64 95, !18, i64 96, !18, i64 97}
!24 = !{!"", !15, i64 0, !21, i64 8, !8, i64 16}
!25 = !{!"p1 _ZTS16pm_options_scope", !13, i64 0}
!26 = !{!27, !8, i64 664}
!27 = !{!"pm_parser", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !28, i64 32, !15, i64 304, !15, i64 312, !29, i64 320, !29, i64 344, !15, i64 368, !15, i64 376, !30, i64 384, !30, i64 408, !32, i64 432, !30, i64 448, !30, i64 472, !33, i64 496, !34, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !15, i64 536, !13, i64 544, !24, i64 552, !35, i64 576, !36, i64 600, !38, i64 632, !24, i64 640, !8, i64 664, !13, i64 672, !39, i64 680, !8, i64 688, !9, i64 692, !9, i64 693, !18, i64 694, !18, i64 695, !18, i64 696, !18, i64 697, !18, i64 698, !18, i64 699, !18, i64 700, !18, i64 701, !18, i64 702, !18, i64 703, !18, i64 704}
!28 = !{!"", !12, i64 0, !9, i64 8, !21, i64 264}
!29 = !{!"", !8, i64 0, !15, i64 8, !15, i64 16}
!30 = !{!"", !21, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTS12pm_list_node", !13, i64 0}
!32 = !{!"", !15, i64 0, !15, i64 8}
!33 = !{!"p1 _ZTS8pm_scope", !13, i64 0}
!34 = !{!"p1 _ZTS15pm_context_node", !13, i64 0}
!35 = !{!"", !13, i64 0, !13, i64 8, !8, i64 16, !8, i64 20}
!36 = !{!"", !15, i64 0, !21, i64 8, !21, i64 16, !37, i64 24}
!37 = !{!"p1 long", !13, i64 0}
!38 = !{!"short", !9, i64 0}
!39 = !{!"p1 _ZTS12pm_node_list", !13, i64 0}
!40 = !{!27, !13, i64 520}
!41 = !{!27, !13, i64 528}
!42 = !{ptr @parser_lex_magic_comment_encoding_value}
!43 = !{!27, !18, i64 699}
!44 = !{!23, !18, i64 94}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!27, !18, i64 698}
!48 = !{!23, !9, i64 93}
!49 = !{!27, !9, i64 693}
!50 = !{!23, !9, i64 92}
!51 = !{!27, !9, i64 692}
!52 = !{!23, !8, i64 88}
!53 = !{!27, !8, i64 688}
!54 = !{!23, !18, i64 96}
!55 = !{!27, !18, i64 695}
!56 = !{!23, !21, i64 72}
!57 = !{!27, !18, i64 694}
!58 = !{!27, !18, i64 704}
!59 = !{!27, !33, i64 496}
!60 = !{!61, !9, i64 49}
!61 = !{!"pm_scope", !33, i64 0, !62, i64 8, !63, i64 24, !9, i64 48, !9, i64 49, !18, i64 50}
!62 = !{!"pm_locals", !8, i64 0, !8, i64 4, !13, i64 8}
!63 = !{!"pm_node_list", !21, i64 0, !21, i64 8, !64, i64 16}
!64 = !{!"p2 _ZTS7pm_node", !65, i64 0}
!65 = !{!"any p2 pointer", !13, i64 0}
!66 = !{!33, !33, i64 0}
!67 = !{!9, !9, i64 0}
end_hunk_2
