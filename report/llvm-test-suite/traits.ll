inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_node_info:bb.a

.lr.ph.i28:                                       ; preds = %tr_total_non_safe_moves.exit27
  %i.by = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.l ; 3 uses
  %wide.trip.count.i29 = zext nneg i32 %i.bw to i64
  %.pre.i30 = load i32, ptr %i.by, align 16, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i28
  %i.bz = phi i32 [ %.pre.i30, %.lr.ph.i28 ], [ %i.cf, %bb.g ]
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next.i32, %bb.g ] ; 2 uses
  %.02425.i = phi i32 [ 0, %.lr.ph.i28 ], [ %i.cy, %bb.g ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = or i32 %i.cc, %i.bz                     ; 2 uses
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4  ; 5 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = or i32 %i.cd, %i.cf
  %i.ci = shl i32 %i.ch, 1
  %i.cj = shl i32 %i.cf, 2
  %i.ck = or i32 %i.cj, %i.cg
  %i.cl = or i32 %i.ck, %i.ci
  %i.cm = or i32 %i.cl, %i.cd
  %i.cn = or i32 %i.cm, %i.cf
  %i.co = xor i32 %i.cn, -1                       ; 2 uses
  %i.cp = and i32 %i.co, 65535
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = lshr i32 %i.co, 16
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = add i32 %i.cs, %.02425.i
  %i.cy = add i32 %i.cx, %i.cw                    ; 3 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i29
  br i1 %exitcond.not.i33, label %._crit_edge.i, label %bb.g, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.g
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.h, label %tr_non_safe_moves_a_little_touchy.exit

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @print_board(i32 noundef %1) #7
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %1, i32 noundef -1) ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

tr_non_safe_moves_a_little_touchy.exit:           ; preds = %tr_total_non_safe_moves.exit27, %._crit_edge.i
  %.024.lcssa29.i = phi i32 [ %i.cy, %._crit_edge.i ], [ 0, %tr_total_non_safe_moves.exit27 ]
  %i.db = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.4, i32 noundef %.024.lcssa29.i) #7 ; 0 uses
  %i.dd = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i35, label %tr_non_safe_moves_a_little_touchy.exit43

.lr.ph.i35:                                       ; preds = %tr_non_safe_moves_a_little_touchy.exit
  %i.df = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.ar ; 3 uses
  %wide.trip.count.i36 = zext nneg i32 %i.dd to i64
  %.pre.i37 = load i32, ptr %i.df, align 16, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i35
  %i.dg = phi i32 [ %.pre.i37, %.lr.ph.i35 ], [ %i.dm, %bb.i ]
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.i35 ], [ %indvars.iv.next.i40, %bb.i ] ; 2 uses
  %.02425.i39 = phi i32 [ 0, %.lr.ph.i35 ], [ %i.ef, %bb.i ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = or i32 %i.dj, %i.dg                     ; 2 uses
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i40
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 5 uses
  %i.dn = lshr i32 %i.dm, 1
  %i.do = or i32 %i.dk, %i.dm
  %i.dp = shl i32 %i.do, 1
  %i.dq = shl i32 %i.dm, 2
  %i.dr = or i32 %i.dq, %i.dn
  %i.ds = or i32 %i.dr, %i.dp
  %i.dt = or i32 %i.ds, %i.dk
  %i.du = or i32 %i.dt, %i.dm
  %i.dv = xor i32 %i.du, -1                       ; 2 uses
  %i.dw = and i32 %i.dv, 65535
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = lshr i32 %i.dv, 16
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.ee = add i32 %i.dz, %.02425.i39
  %i.ef = add i32 %i.ee, %i.ed                    ; 3 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i36
  br i1 %exitcond.not.i41, label %._crit_edge.i42, label %bb.i, !llvm.loop !13

._crit_edge.i42:                                  ; preds = %bb.i
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.j, label %tr_non_safe_moves_a_little_touchy.exit43

bb.j:                                             ; preds = %._crit_edge.i42
  tail call void @print_board(i32 noundef %i.aq) #7
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aq, i32 noundef -1) ; 0 uses
  tail call void @exit(i32 noundef 1) #8
  unreachable

tr_non_safe_moves_a_little_touchy.exit43:         ; preds = %tr_non_safe_moves_a_little_touchy.exit, %._crit_edge.i42
  %.024.lcssa29.i34 = phi i32 [ %i.ef, %._crit_edge.i42 ], [ 0, %tr_non_safe_moves_a_little_touchy.exit ]
  %i.ei = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.5, i32 noundef %.024.lcssa29.i34) #7 ; 0 uses
  %i.ek = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef nonnull @.str.4, i32 noundef 1) #7 ; 0 uses
  %i.em = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.5, i32 noundef 1) #7 ; 0 uses
  %i.eo = load i32, ptr @g_board_size, align 4, !tbaa !4 ; 4 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.preheader.i, label %tr_total_empty_squares.exit

.lr.ph.preheader.i:                               ; preds = %tr_non_safe_moves_a_little_touchy.exit43
  %wide.trip.count.i45 = zext nneg i32 %i.eo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i45, 1
  %i.eq = icmp eq i32 %i.eo, 1
  br i1 %i.eq, label %.lr.ph.i46.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i45, 2147483646
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46, %.lr.ph.preheader.i.new
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i48.1, %.lr.ph.i46 ] ; 2 uses
  %.089.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.fr, %.lr.ph.i46 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i46 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i47
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = xor i32 %i.et, -1                       ; 2 uses
  %i.ev = and i32 %i.eu, 65535
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = lshr i32 %i.eu, 16
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = add i32 %i.ey, %.089.i
  %i.fe = add i32 %i.fd, %i.fc
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i47, 2 ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.next.i48.1
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !4
  %i.fh = xor i32 %i.fg, -1                       ; 2 uses
  %i.fi = and i32 %i.fh, 65535
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = lshr i32 %i.fh, 16
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = add i32 %i.fl, %i.fe
  %i.fr = add i32 %i.fq, %i.fp                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %tr_total_empty_squares.exit.loopexit.unr-lcssa, label %.lr.ph.i46, !llvm.loop !14

tr_total_empty_squares.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i46
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %tr_total_empty_squares.exit, label %.lr.ph.i46.epil.preheader

.lr.ph.i46.epil.preheader:                        ; preds = %tr_total_empty_squares.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i47.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i48.1, %tr_total_empty_squares.exit.loopexit.unr-lcssa ]
  %.089.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.fr, %tr_total_empty_squares.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i32 %i.eo to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i47.epil.init
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = xor i32 %i.fu, -1                       ; 2 uses
  %i.fw = and i32 %i.fv, 65535
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = lshr i32 %i.fv, 16
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = add i32 %i.fz, %.089.i.epil.init
  %i.gf = add i32 %i.ge, %i.gd
  br label %tr_total_empty_squares.exit

tr_total_empty_squares.exit:                      ; preds = %.lr.ph.i46.epil.preheader, %tr_total_empty_squares.exit.loopexit.unr-lcssa, %tr_non_safe_moves_a_little_touchy.exit43
  %.08.lcssa.i = phi i32 [ 0, %tr_non_safe_moves_a_little_touchy.exit43 ], [ %i.fr, %tr_total_empty_squares.exit.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph.i46.epil.preheader ]
  %i.gg = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.gh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.5, i32 noundef %.08.lcssa.i) #7 ; 0 uses
  %i.gi = load i32, ptr %i.m, align 4, !tbaa !4   ; 3 uses
  %.not13.i = icmp slt i32 %i.gi, 0
  br i1 %.not13.i, label %tr_border_length_col.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %tr_total_empty_squares.exit
  %i.gj = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.l ; 4 uses
  %i.gk = add nuw nsw i32 %i.gi, 1                ; 2 uses
  %wide.trip.count.i51 = zext nneg i32 %i.gk to i64 ; 2 uses
  %.pre.i52 = load i32, ptr %i.gj, align 16, !tbaa !4 ; 2 uses
  %xtraiter105 = and i64 %wide.trip.count.i51, 1
  %i.gl = icmp eq i32 %i.gi, 0
  br i1 %i.gl, label %.epil.preheader, label %.lr.ph.i50.new

.lr.ph.i50.new:                                   ; preds = %.lr.ph.i50
  %unroll_iter109 = and i64 %wide.trip.count.i51, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i50.new
  %i.gm = phi i32 [ %.pre.i52, %.lr.ph.i50.new ], [ %i.hc, %bb.k ]
  %indvars.iv.i53 = phi i64 [ 0, %.lr.ph.i50.new ], [ %indvars.iv.next.i54.1, %bb.k ] ; 2 uses
  %.01214.i = phi i32 [ 0, %.lr.ph.i50.new ], [ %i.hn, %bb.k ]
  %niter110 = phi i64 [ 0, %.lr.ph.i50.new ], [ %niter110.next.1, %bb.k ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i53
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4  ; 2 uses
  %i.gq = xor i32 %i.gp, %i.gm                    ; 2 uses
  %i.gr = and i32 %i.gq, 65535
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = lshr i32 %i.gq, 16
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = add i32 %i.gu, %.01214.i
  %i.ha = add i32 %i.gz, %i.gy
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i53, 2 ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.next.i54.1
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !4  ; 3 uses
  %i.hd = xor i32 %i.hc, %i.gp                    ; 2 uses
  %i.he = and i32 %i.hd, 65535
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.hi = lshr i32 %i.hd, 16
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = add i32 %i.hh, %i.ha
  %i.hn = add i32 %i.hm, %i.hl                    ; 3 uses
  %niter110.next.1 = add nuw i64 %niter110, 2     ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %tr_border_length_col.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !15

tr_border_length_col.exit.loopexit.unr-lcssa:     ; preds = %bb.k
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %tr_border_length_col.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %tr_border_length_col.exit.loopexit.unr-lcssa, %.lr.ph.i50
  %.epil.init = phi i32 [ %.pre.i52, %.lr.ph.i50 ], [ %i.hc, %tr_border_length_col.exit.loopexit.unr-lcssa ]
  %indvars.iv.i53.epil.init = phi i64 [ 0, %.lr.ph.i50 ], [ %indvars.iv.next.i54.1, %tr_border_length_col.exit.loopexit.unr-lcssa ]
  %.01214.i.epil.init = phi i32 [ 0, %.lr.ph.i50 ], [ %i.hn, %tr_border_length_col.exit.loopexit.unr-lcssa ]
  %lcmp.mod108 = trunc i32 %i.gk to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i53.epil.init
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !4
  %i.hr = xor i32 %i.hq, %.epil.init              ; 2 uses
  %i.hs = and i32 %i.hr, 65535
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4
  %i.hw = lshr i32 %i.hr, 16
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  %i.ia = add i32 %i.hv, %.01214.i.epil.init
  %i.ib = add i32 %i.ia, %i.hz
  br label %tr_border_length_col.exit

tr_border_length_col.exit:                        ; preds = %.epil.preheader, %tr_border_length_col.exit.loopexit.unr-lcssa, %tr_total_empty_squares.exit
  %.012.lcssa.i = phi i32 [ 0, %tr_total_empty_squares.exit ], [ %i.hn, %tr_border_length_col.exit.loopexit.unr-lcssa ], [ %i.ib, %.epil.preheader ]
  %i.ic = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.id = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.4, i32 noundef %.012.lcssa.i) #7 ; 0 uses
  %i.ie = load i32, ptr %i.m, align 4, !tbaa !4   ; 3 uses
  %.not14.i = icmp slt i32 %i.ie, 0
  br i1 %.not14.i, label %tr_border_length_row.exit, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %tr_border_length_col.exit
  %i.if = getelementptr inbounds [128 x i8], ptr @g_board, i64 %i.l ; 3 uses
  %i.ig = add nuw nsw i32 %i.ie, 1                ; 2 uses
  %wide.trip.count.i58 = zext nneg i32 %i.ig to i64 ; 2 uses
  %xtraiter112 = and i64 %wide.trip.count.i58, 1
  %i.ih = icmp eq i32 %i.ie, 0
  br i1 %i.ih, label %.epil.preheader111, label %.lr.ph.i57.new

.lr.ph.i57.new:                                   ; preds = %.lr.ph.i57
  %unroll_iter116 = and i64 %wide.trip.count.i58, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i57.new
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57.new ], [ %indvars.iv.next.i60.1, %bb.l ] ; 2 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.i57.new ], [ %i.jk, %bb.l ]
  %niter117 = phi i64 [ 0, %.lr.ph.i57.new ], [ %niter117.next.1, %bb.l ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i59
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4  ; 2 uses
  %i.il = lshr i32 %i.ik, 1
  %.masked.i = and i32 %i.ik, 2147483647
  %i.im = xor i32 %i.il, %.masked.i               ; 2 uses
  %i.in = and i32 %i.im, 65535
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = lshr i32 %i.im, 16
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = add i32 %i.iq, %.01315.i
  %i.iw = add i32 %i.iv, %i.iu
  %indvars.iv.next.i60.1 = add nuw nsw i64 %indvars.iv.i59, 2 ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i60.1
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !4  ; 2 uses
  %i.iz = lshr i32 %i.iy, 1
  %.masked.i.1 = and i32 %i.iy, 2147483647
  %i.ja = xor i32 %i.iz, %.masked.i.1             ; 2 uses
  %i.jb = and i32 %i.ja, 65535
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = lshr i32 %i.ja, 16
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = add i32 %i.je, %i.iw
  %i.jk = add i32 %i.jj, %i.ji                    ; 3 uses
  %niter117.next.1 = add nuw i64 %niter117, 2     ; 2 uses
  %niter117.ncmp.1 = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1, label %tr_border_length_row.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !16

tr_border_length_row.exit.loopexit.unr-lcssa:     ; preds = %bb.l
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %tr_border_length_row.exit, label %.epil.preheader111

.epil.preheader111:                               ; preds = %tr_border_length_row.exit.loopexit.unr-lcssa, %.lr.ph.i57
  %indvars.iv.i59.epil.init = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i60.1, %tr_border_length_row.exit.loopexit.unr-lcssa ]
  %.01315.i.epil.init = phi i32 [ 0, %.lr.ph.i57 ], [ %i.jk, %tr_border_length_row.exit.loopexit.unr-lcssa ]
  %lcmp.mod115 = trunc i32 %i.ig to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i59.epil.init
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4  ; 2 uses
  %i.jo = lshr i32 %i.jn, 1
  %.masked.i.epil = and i32 %i.jn, 2147483647
  %i.jp = xor i32 %i.jo, %.masked.i.epil          ; 2 uses
  %i.jq = and i32 %i.jp, 65535
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4
  %i.ju = lshr i32 %i.jp, 16
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = add i32 %i.jt, %.01315.i.epil.init
  %i.jz = add i32 %i.jy, %i.jx
  br label %tr_border_length_row.exit

tr_border_length_row.exit:                        ; preds = %.epil.preheader111, %tr_border_length_row.exit.loopexit.unr-lcssa, %tr_border_length_col.exit
  %.013.lcssa.i = phi i32 [ 0, %tr_border_length_col.exit ], [ %i.jk, %tr_border_length_row.exit.loopexit.unr-lcssa ], [ %i.jz, %.epil.preheader111 ]
  %i.ka = load ptr, ptr @trait_file, align 8, !tbaa !8
  %i.kb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.4, i32 noundef %.013.lcssa.i) #7 ; 0 uses
  %i.kc = load ptr, ptr @trait_file, align 8, !tbaa !8
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kc) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare ptr @u64bit_to_string(i64 noundef) local_unnamed_addr #2

declare void @print_board(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
end_hunk_0
