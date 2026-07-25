inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_named_capture_escape:bb.a
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
    i8 32, label %6
    i8 125, label %.split.us.i
  ]

6:                                                ; preds = %.lr.ph.us.i
  %7 = getelementptr i8, ptr %.175.us.i, i64 1    ; 3 uses
  %8 = icmp ult ptr %7, %i.a
  br i1 %8, label %.lr.ph.us.i.backedge, label %pm_named_capture_escape_hex.exit

.lr.ph.us.i.backedge:                             ; preds = %6, %bb.aa
  %.175.us.i.be = phi ptr [ %7, %6 ], [ %i.fe, %bb.aa ]
  br label %.lr.ph.us.i, !llvm.loop !693

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
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
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

.lr.ph.i:                                         ; preds = %.lr.ph.lr.ph.i, %.lr.ph.i.backedge
  %.175.i = phi ptr [ %.175.i.be, %.lr.ph.i.backedge ], [ %i.de, %.lr.ph.lr.ph.i ] ; 11 uses
  %i.fg = load i8, ptr %.175.i, align 1, !tbaa !67
  switch i8 %i.fg, label %bb.ac [
    i8 32, label %bb.ab
    i8 125, label %.split.us.i
  ]

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fh = getelementptr i8, ptr %.175.i, i64 1    ; 3 uses
  %i.fi = icmp ult ptr %i.fh, %i.a
  br i1 %i.fi, label %.lr.ph.i.backedge, label %pm_named_capture_escape_hex.exit

.lr.ph.i.backedge:                                ; preds = %bb.ab, %bb.ae
  %.175.i.be = phi ptr [ %i.fh, %bb.ab ], [ %i.hi, %bb.ae ]
  br label %.lr.ph.i, !llvm.loop !693

.split.us.i:                                      ; preds = %.lr.ph.i, %.lr.ph.us.i
  %.us-phi.i = phi ptr [ %.175.us.i, %.lr.ph.us.i ], [ %.175.i, %.lr.ph.i ]
  %i.fj = getelementptr i8, ptr %.us-phi.i, i64 1
  br label %pm_named_capture_escape_hex.exit

bb.ac:                                            ; preds = %.lr.ph.i
  %i.fk = ptrtoint ptr %.175.i to i64
  %i.fl = sub i64 %i.f, %i.fk
  %i.fm = tail call i64 @pm_strspn_hexadecimal_digit(ptr noundef nonnull %.175.i, i64 noundef %i.fl) #27 ; 5 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %pm_named_capture_escape_hex.exit, label %.lr.ph.preheader.i57.i

.lr.ph.preheader.i57.i:                           ; preds = %bb.ac
  %i.fo = load i8, ptr %.175.i, align 1, !tbaa !67 ; 3 uses
  %i.fp = icmp ult i8 %i.fo, 58
  %i.fq = add nsw i8 %i.fo, -48
  %i.fr = and i8 %i.fo, 7
  %i.fs = add nuw nsw i8 %i.fr, 9
  %i.ft = select i1 %i.fp, i8 %i.fq, i8 %i.fs
  %i.fu = zext i8 %i.ft to i32                    ; 3 uses
  %exitcond.peel.not.i58.i = icmp eq i64 %i.fm, 1
  br i1 %exitcond.peel.not.i58.i, label %._crit_edge.i63.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %.lr.ph.preheader.i57.i
  %i.fv = add i64 %i.fm, -1                       ; 3 uses
  %xtraiter147 = and i64 %i.fv, 1
  %i.fw = icmp eq i64 %i.fm, 2
  br i1 %i.fw, label %.lr.ph.i59.i.epil.preheader, label %.lr.ph.i59.i.preheader.new

.lr.ph.i59.i.preheader.new:                       ; preds = %.lr.ph.i59.i.preheader
  %unroll_iter151 = and i64 %i.fv, -2
  br label %.lr.ph.i59.i

._crit_edge.i63.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i59.i
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %._crit_edge.i63.i, label %.lr.ph.i59.i.epil.preheader

.lr.ph.i59.i.epil.preheader:                      ; preds = %._crit_edge.i63.i.loopexit.unr-lcssa, %.lr.ph.i59.i.preheader
  %.026.i60.i.epil.init = phi i64 [ 1, %.lr.ph.i59.i.preheader ], [ %i.hd, %._crit_edge.i63.i.loopexit.unr-lcssa ]
  %.02025.i61.i.epil.init = phi i32 [ %i.fu, %.lr.ph.i59.i.preheader ], [ %i.hc, %._crit_edge.i63.i.loopexit.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %i.fv to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.fx = shl i32 %.02025.i61.i.epil.init, 4
  %i.fy = getelementptr i8, ptr %.175.i, i64 %.026.i60.i.epil.init
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !67  ; 3 uses
  %i.ga = icmp ult i8 %i.fz, 58
  %i.gb = add nsw i8 %i.fz, -48
  %i.gc = and i8 %i.fz, 7
  %i.gd = add nuw nsw i8 %i.gc, 9
  %i.ge = select i1 %i.ga, i8 %i.gb, i8 %i.gd
  %i.gf = zext i8 %i.ge to i32
  %i.gg = or i32 %i.fx, %i.gf
  br label %._crit_edge.i63.i

._crit_edge.i63.i:                                ; preds = %.lr.ph.i59.i.epil.preheader, %._crit_edge.i63.i.loopexit.unr-lcssa, %.lr.ph.preheader.i57.i
  %.020.lcssa.i64.i = phi i32 [ %i.fu, %.lr.ph.preheader.i57.i ], [ %i.hc, %._crit_edge.i63.i.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.i59.i.epil.preheader ] ; 2 uses
  %i.gh = and i32 %.020.lcssa.i64.i, -2048
  %or.cond.i65.i = icmp eq i32 %i.gh, 55296
  br i1 %or.cond.i65.i, label %bb.ad, label %bb.ae

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i, %.lr.ph.i59.i.preheader.new
  %.026.i60.i = phi i64 [ 1, %.lr.ph.i59.i.preheader.new ], [ %i.hd, %.lr.ph.i59.i ] ; 3 uses
  %.02025.i61.i = phi i32 [ %i.fu, %.lr.ph.i59.i.preheader.new ], [ %i.hc, %.lr.ph.i59.i ]
  %niter152 = phi i64 [ 0, %.lr.ph.i59.i.preheader.new ], [ %niter152.next.1, %.lr.ph.i59.i ]
  %i.gi = getelementptr i8, ptr %.175.i, i64 %.026.i60.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !67  ; 3 uses
  %i.gk = icmp ult i8 %i.gj, 58
  %i.gl = add nsw i8 %i.gj, -48
  %i.gm = and i8 %i.gj, 7
  %i.gn = add nuw nsw i8 %i.gm, 9
  %i.go = select i1 %i.gk, i8 %i.gl, i8 %i.gn
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl i32 %.02025.i61.i, 8
  %i.gr = shl nuw nsw i32 %i.gp, 4
  %i.gs = or i32 %i.gq, %i.gr
  %i.gt = getelementptr i8, ptr %.175.i, i64 %.026.i60.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !67  ; 3 uses
  %i.gw = icmp ult i8 %i.gv, 58
  %i.gx = add nsw i8 %i.gv, -48
  %i.gy = and i8 %i.gv, 7
  %i.gz = add nuw nsw i8 %i.gy, 9
  %i.ha = select i1 %i.gw, i8 %i.gx, i8 %i.gz
  %i.hb = zext i8 %i.ha to i32
  %i.hc = or i32 %i.gs, %i.hb                     ; 3 uses
  %i.hd = add nuw i64 %.026.i60.i, 2              ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %._crit_edge.i63.i.loopexit.unr-lcssa, label %.lr.ph.i59.i, !llvm.loop !277

bb.ad:                                            ; preds = %._crit_edge.i63.i
  %i.he = load ptr, ptr %5, align 8, !tbaa !283
  %i.hf = load ptr, ptr %i.g, align 8, !tbaa !284
  %i.hg = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.h, ptr noundef %i.he, ptr noundef %i.hf, i32 noundef 82) #27 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i63.i
  %.021.i66.i = phi i32 [ 65533, %bb.ad ], [ %.020.lcssa.i64.i, %._crit_edge.i63.i ]
  %i.hh = tail call zeroext i1 @pm_buffer_append_unicode_codepoint(ptr noundef nonnull %1, i32 noundef %.021.i66.i) #27 ; 0 uses
  %i.hi = getelementptr i8, ptr %.175.i, i64 %i.fm ; 3 uses
  %i.hj = icmp ult ptr %i.hi, %i.a
  br i1 %i.hj, label %.lr.ph.i.backedge, label %pm_named_capture_escape_hex.exit

bb.af:                                            ; preds = %bb.b
  tail call void @pm_buffer_append_byte(ptr noundef nonnull %1, i8 noundef zeroext 92) #27
  br label %pm_named_capture_escape_hex.exit

pm_named_capture_escape_hex.exit:                 ; preds = %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %6, %.split.us.i, %bb.x, %bb.w, %bb.p, %bb.i, %bb.h, %bb.af, %pm_named_capture_escape_octal.exit
  %.1 = phi ptr [ %i.k, %bb.af ], [ %i.m, %bb.i ], [ %.016.i, %pm_named_capture_escape_octal.exit ], [ %.015.i, %bb.h ], [ %i.bb, %bb.p ], [ %i.dd, %bb.w ], [ %i.de, %bb.x ], [ %i.fj, %.split.us.i ], [ %7, %6 ], [ %.175.us.i, %bb.y ], [ %i.fe, %bb.aa ], [ %.175.i, %bb.ac ], [ %i.fh, %bb.ab ], [ %i.hi, %bb.ae ] ; 4 uses
  %i.hk = ptrtoint ptr %.1 to i64                 ; 2 uses
  %i.hl = sub i64 %i.f, %i.hk                     ; 2 uses
  %i.hm = load i8, ptr %i.i, align 1, !tbaa !43, !range !45, !noundef !46
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.hp = tail call ptr @pm_memchr(ptr noundef %.1, i32 noundef 92, i64 noundef %i.hl, i1 noundef zeroext %i.hn, ptr noundef %i.ho) #27 ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %pm_named_capture_escape_hex.exit
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hr, %i.hk
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef %.1, i64 noundef %i.hs) #27
  %i.ht = getelementptr i8, ptr %i.hp, i64 1      ; 2 uses
  %.not = icmp ult ptr %i.ht, %i.a
  br i1 %.not, label %bb.b, label %._crit_edge

bb.ah:                                            ; preds = %pm_named_capture_escape_hex.exit
  tail call void @pm_buffer_append_string(ptr noundef nonnull %1, ptr noundef %.1, i64 noundef %i.hl) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
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
end_hunk_0
