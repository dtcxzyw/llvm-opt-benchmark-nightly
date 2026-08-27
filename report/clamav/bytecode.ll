Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode?download=true
inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@cli_bytecode_load:bb.a
  %i.ao = add nsw i32 %i.al, -89                  ; 4 uses
  %i.ap = icmp ugt i32 %i.ao, %i.ai
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp eq i8 %.fr4218, 96
  br i1 %i.aq, label %.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.k
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = add nsw i64 %i.ar, -7                   ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 8
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter = and i64 %i.as, -2
  br label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.au, align 8, !tbaa !133
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.preheader.i.new
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next255.i.1, %bb.l ] ; 3 uses
  %indvars.iv.i = phi i64 [ 7, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.03545.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %i.bk, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter.next.1, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !123 ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = and i64 %i.ax, 240
  %.not.i.i = icmp eq i64 %i.ay, 96
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.thread.i.i, !prof !134

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.epil.preheader
  %.lcssa3957.a = phi i8 [ %i.bn, %.lr.ph.i.i.epil.preheader ], [ %i.aw, %.lr.ph.i.i ], [ %i.bc, %.lr.ph.i.i.1 ]
  %i.az = sext i8 %.lcssa3957.a to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.az) #24
  br label %bb.m

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !123 ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = and i64 %i.bd, 240
  %.not.i.i.1 = icmp eq i64 %i.be, 96
  br i1 %.not.i.i.1, label %bb.l, label %.thread.i.i, !prof !134

bb.l:                                             ; preds = %.lr.ph.i.i.1
  %indvars.iv.next255.i = or disjoint i64 %indvars.iv254.i, 4
  %i.bf = and i64 %i.ax, 15
  %i.bg = shl i64 %i.bf, %indvars.iv254.i
  %i.bh = or i64 %i.bg, %.03545.i.i
  %i.bi = and i64 %i.bd, 15
  %i.bj = shl i64 %i.bi, %indvars.iv.next255.i
  %i.bk = or i64 %i.bj, %i.bh                     ; 3 uses
  %indvars.iv.next255.i.1 = add nuw nsw i64 %indvars.iv254.i, 8 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i

bb.m:                                             ; preds = %.thread.i.i, %bb.j, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bl, align 8, !tbaa !133
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.271) #24
  br label %bb.cf

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.unr-lcssa, %.lr.ph.i.preheader.i
  %indvars.iv254.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next255.i.1, %.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 7, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.03545.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.bk, %.unr-lcssa ]
  %lcmp.mod3961 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod3961)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !123 ; 2 uses
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = and i64 %i.bo, 240
  %.not.i.i.epil = icmp eq i64 %i.bp, 96
  br i1 %.not.i.i.epil, label %.epilog-lcssa, label %.thread.i.i, !prof !134

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.epil.preheader
  %i.bq = and i64 %i.bo, 15
  %i.br = shl i64 %i.bq, %indvars.iv254.i.epil.init
  %i.bs = or i64 %i.br, %.03545.i.i.epil.init
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.lcssa3959 = phi i64 [ %i.bk, %.unr-lcssa ], [ %i.bs, %.epilog-lcssa ]
  %i.bt = trunc i64 %.lcssa3959 to i32            ; 3 uses
  store i32 %i.ao, ptr %i.p, align 4, !tbaa !117
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !133
  %i.bv = and i32 %i.bt, -2
  %switch.i = icmp eq i32 %i.bv, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.2.i315.i = phi i32 [ 0, %.thread.i ], [ %i.bt, %bb.n ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.272, i32 noundef %.2.i315.i, i32 noundef 7) #24
  br label %bb.cc

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !123 ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add nsw i32 %i.by, -96                  ; 3 uses
  %i.ca = icmp ugt i32 %i.bz, 16
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.by) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit105.i

bb.r:                                             ; preds = %bb.p
  %i.cb = add nsw i32 %i.al, -88                  ; 2 uses
  %i.cc = add nuw nsw i32 %i.bz, %i.cb            ; 4 uses
  %i.cd = icmp ugt i32 %i.cc, %i.ai
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit105.i

bb.t:                                             ; preds = %bb.r
  %i.ce = icmp eq i8 %i.bx, 96
  br i1 %i.ce, label %bb.u, label %.preheader.i93.i

.preheader.i93.i:                                 ; preds = %bb.t
  %.not345.i = icmp eq i32 %i.bz, 0
  br i1 %.not345.i, label %._crit_edge.i94.i, label %.lr.ph.i97.preheader.i

.lr.ph.i97.preheader.i:                           ; preds = %.preheader.i93.i
  %i.cf = zext i32 %i.cb to i64                   ; 3 uses
  %i.cg = zext i32 %i.cc to i64
  %i.ch = sub nsw i64 %i.cg, %i.cf
  %i.ci = freeze i64 %i.ch                        ; 4 uses
  %xtraiter3962 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %.lr.ph.i97.i.epil.preheader, label %.lr.ph.i97.preheader.i.new

.lr.ph.i97.preheader.i.new:                       ; preds = %.lr.ph.i97.preheader.i
  %unroll_iter3966 = and i64 %i.ci, -2
  br label %.lr.ph.i97.i

bb.u:                                             ; preds = %bb.t
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit105.i

.lr.ph.i97.i:                                     ; preds = %bb.v, %.lr.ph.i97.preheader.i.new
  %indvars.iv259.i = phi i64 [ %i.cf, %.lr.ph.i97.preheader.i.new ], [ %indvars.iv.next260.i.1, %bb.v ] ; 3 uses
  %.03346.i99.i = phi i32 [ 0, %.lr.ph.i97.preheader.i.new ], [ %i.dd, %bb.v ] ; 3 uses
  %.03545.i100.i = phi i64 [ 0, %.lr.ph.i97.preheader.i.new ], [ %i.dc, %bb.v ]
  %niter3967 = phi i64 [ 0, %.lr.ph.i97.preheader.i.new ], [ %niter3967.next.1, %bb.v ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !123 ; 2 uses
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = and i64 %i.cm, 240
  %.not.i101.i = icmp eq i64 %i.cn, 96
  br i1 %.not.i101.i, label %.lr.ph.i97.i.1, label %.thread.i102.i, !prof !134

.thread.i102.i:                                   ; preds = %.lr.ph.i97.i, %.lr.ph.i97.i.1, %.lr.ph.i97.i.epil.preheader
  %.lcssa3954 = phi i8 [ %i.df, %.lr.ph.i97.i.epil.preheader ], [ %i.cl, %.lr.ph.i97.i ], [ %i.cr, %.lr.ph.i97.i.1 ]
  %i.co = sext i8 %.lcssa3954 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.co) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit105.i

.lr.ph.i97.i.1:                                   ; preds = %.lr.ph.i97.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !123 ; 2 uses
  %i.cs = zext i8 %i.cr to i64                    ; 2 uses
  %i.ct = and i64 %i.cs, 240
  %.not.i101.i.1 = icmp eq i64 %i.ct, 96
  br i1 %.not.i101.i.1, label %bb.v, label %.thread.i102.i, !prof !134

bb.v:                                             ; preds = %.lr.ph.i97.i.1
  %i.cu = or disjoint i32 %.03346.i99.i, 4
  %i.cv = and i64 %i.cm, 15
  %i.cw = zext nneg i32 %.03346.i99.i to i64
  %i.cx = shl i64 %i.cv, %i.cw
  %i.cy = or i64 %i.cx, %.03545.i100.i
  %i.cz = and i64 %i.cs, 15
  %i.da = zext nneg i32 %i.cu to i64
  %i.db = shl i64 %i.cz, %i.da
  %i.dc = or i64 %i.db, %i.cy                     ; 3 uses
  %i.dd = add nuw nsw i32 %.03346.i99.i, 8        ; 2 uses
  %indvars.iv.next260.i.1 = add nuw nsw i64 %indvars.iv259.i, 2 ; 2 uses
  %niter3967.next.1 = add i64 %niter3967, 2       ; 2 uses
  %niter3967.ncmp.1 = icmp eq i64 %niter3967.next.1, %unroll_iter3966
  br i1 %niter3967.ncmp.1, label %._crit_edge.i94.i.loopexit.unr-lcssa, label %.lr.ph.i97.i

._crit_edge.i94.i.loopexit.unr-lcssa:             ; preds = %bb.v
  %lcmp.mod3963.not = icmp eq i64 %xtraiter3962, 0
  br i1 %lcmp.mod3963.not, label %._crit_edge.i94.i, label %.lr.ph.i97.i.epil.preheader

.lr.ph.i97.i.epil.preheader:                      ; preds = %._crit_edge.i94.i.loopexit.unr-lcssa, %.lr.ph.i97.preheader.i
  %indvars.iv259.i.epil.init = phi i64 [ %i.cf, %.lr.ph.i97.preheader.i ], [ %indvars.iv.next260.i.1, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %.03346.i99.i.epil.init = phi i32 [ 0, %.lr.ph.i97.preheader.i ], [ %i.dd, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %.03545.i100.i.epil.init = phi i64 [ 0, %.lr.ph.i97.preheader.i ], [ %i.dc, %._crit_edge.i94.i.loopexit.unr-lcssa ]
  %lcmp.mod3965 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod3965)
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv259.i.epil.init
  %i.df = load i8, ptr %i.de, align 1, !tbaa !123 ; 2 uses
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %i.dh = and i64 %i.dg, 240
  %.not.i101.i.epil = icmp eq i64 %i.dh, 96
  br i1 %.not.i101.i.epil, label %._crit_edge.i94.i.loopexit.epilog-lcssa, label %.thread.i102.i, !prof !134

._crit_edge.i94.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i97.i.epil.preheader
  %i.di = and i64 %i.dg, 15
  %i.dj = zext nneg i32 %.03346.i99.i.epil.init to i64
  %i.dk = shl i64 %i.di, %i.dj
  %i.dl = or i64 %i.dk, %.03545.i100.i.epil.init
  br label %._crit_edge.i94.i

._crit_edge.i94.i:                                ; preds = %._crit_edge.i94.i.loopexit.epilog-lcssa, %._crit_edge.i94.i.loopexit.unr-lcssa, %.preheader.i93.i
  %.035.lcssa.i95.i = phi i64 [ 0, %.preheader.i93.i ], [ %i.dc, %._crit_edge.i94.i.loopexit.unr-lcssa ], [ %i.dl, %._crit_edge.i94.i.loopexit.epilog-lcssa ]
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit105.i

readNumber.exit105.i:                             ; preds = %._crit_edge.i94.i, %.thread.i102.i, %bb.u, %bb.s, %bb.q
  %.2.i96.i = phi i64 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %.thread.i102.i ], [ %.035.lcssa.i95.i, %._crit_edge.i94.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.2.i96.i, ptr %i.dm, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  store i32 0, ptr %i.n, align 4, !tbaa !117
  %i.dn = call fastcc ptr @readData(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.p, i32 noundef %i.ai, ptr noundef nonnull %i.o, ptr noundef %i.n) ; 5 uses
  %i.do = load i8, ptr %i.o, align 1, !tbaa !132, !range !136, !noundef !137
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i32, ptr %i.n, align 4             ; 2 uses
  %i.dr = icmp ne i32 %i.dq, 0
  %or.cond.i.i = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %readString.exit.i

bb.w:                                             ; preds = %readNumber.exit105.i
  %i.ds = add i32 %i.dq, -1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !123
  %.not.i106.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i106.i, label %readString.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.du, align 1, !tbaa !123
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.dn) #24
  call void @free(ptr noundef nonnull %i.dn) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readString.exit.i

readString.exit.i:                                ; preds = %bb.x, %bb.w, %readNumber.exit105.i
  %.0.i.i = phi ptr [ null, %bb.x ], [ %i.dn, %bb.w ], [ %i.dn, %readNumber.exit105.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.dw, align 8, !tbaa !138
  %i.dx = load i32, ptr %i.p, align 4, !tbaa !117 ; 5 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !123
  %.fr = freeze i8 %i.ea                          ; 3 uses
  %i.eb = zext i8 %.fr to i32                     ; 2 uses
  %i.ec = add nsw i32 %i.eb, -96                  ; 4 uses
  %i.ed = icmp ugt i32 %i.ec, 16
  br i1 %i.ed, label %bb.y, label %bb.z

bb.y:                                             ; preds = %readString.exit.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.eb) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit119.i

bb.z:                                             ; preds = %readString.exit.i
  %i.ee = add i32 %i.dx, 1                        ; 3 uses
  %i.ef = add i32 %i.ec, %i.ee                    ; 6 uses
  %i.eg = icmp ugt i32 %i.ef, %i.ai
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit119.i

bb.ab:                                            ; preds = %bb.z
  %i.eh = icmp eq i8 %.fr, 96
  br i1 %i.eh, label %bb.ac, label %.preheader.i107.i

.preheader.i107.i:                                ; preds = %bb.ab
  %i.ei = icmp ult i32 %i.ee, %i.ef
  br i1 %i.ei, label %.lr.ph.i111.preheader.i, label %._crit_edge.i108.i

.lr.ph.i111.preheader.i:                          ; preds = %.preheader.i107.i
  %i.ej = zext i32 %i.ee to i64                   ; 2 uses
  %i.ek = zext nneg i32 %i.ec to i64              ; 2 uses
  %xtraiter3968 = and i64 %i.ek, 1
  %i.el = icmp eq i32 %i.ec, 1
  br i1 %i.el, label %.lr.ph.i111.i.epil.preheader, label %.lr.ph.i111.preheader.i.new

.lr.ph.i111.preheader.i.new:                      ; preds = %.lr.ph.i111.preheader.i
  %unroll_iter3972 = and i64 %i.ek, 30
  br label %.lr.ph.i111.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ef, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit119.i

.lr.ph.i111.i:                                    ; preds = %bb.ad, %.lr.ph.i111.preheader.i.new
  %indvars.iv262.i = phi i64 [ %i.ej, %.lr.ph.i111.preheader.i.new ], [ %indvars.iv.next263.i.1, %bb.ad ] ; 3 uses
  %.03346.i113.i = phi i32 [ 0, %.lr.ph.i111.preheader.i.new ], [ %i.ff, %bb.ad ] ; 3 uses
  %.03545.i114.i = phi i64 [ 0, %.lr.ph.i111.preheader.i.new ], [ %i.fe, %bb.ad ]
  %niter3973 = phi i64 [ 0, %.lr.ph.i111.preheader.i.new ], [ %niter3973.next.1, %bb.ad ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv262.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !123 ; 2 uses
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  %i.ep = and i64 %i.eo, 240
  %.not.i115.i = icmp eq i64 %i.ep, 96
  br i1 %.not.i115.i, label %.lr.ph.i111.i.1, label %.thread.i116.i, !prof !134

.thread.i116.i:                                   ; preds = %.lr.ph.i111.i, %.lr.ph.i111.i.1, %.lr.ph.i111.i.epil.preheader
  %.lcssa3951 = phi i8 [ %i.fh, %.lr.ph.i111.i.epil.preheader ], [ %i.en, %.lr.ph.i111.i ], [ %i.et, %.lr.ph.i111.i.1 ]
  %i.eq = sext i8 %.lcssa3951 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.eq) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit119.i

.lr.ph.i111.i.1:                                  ; preds = %.lr.ph.i111.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv262.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !123 ; 2 uses
  %i.eu = zext i8 %i.et to i64                    ; 2 uses
  %i.ev = and i64 %i.eu, 240
  %.not.i115.i.1 = icmp eq i64 %i.ev, 96
  br i1 %.not.i115.i.1, label %bb.ad, label %.thread.i116.i, !prof !134

bb.ad:                                            ; preds = %.lr.ph.i111.i.1
  %i.ew = or disjoint i32 %.03346.i113.i, 4
  %i.ex = and i64 %i.eo, 15
  %i.ey = zext nneg i32 %.03346.i113.i to i64
  %i.ez = shl i64 %i.ex, %i.ey
  %i.fa = or i64 %i.ez, %.03545.i114.i
  %i.fb = and i64 %i.eu, 15
  %i.fc = zext nneg i32 %i.ew to i64
  %i.fd = shl i64 %i.fb, %i.fc
  %i.fe = or i64 %i.fd, %i.fa                     ; 3 uses
  %i.ff = add nuw nsw i32 %.03346.i113.i, 8       ; 2 uses
  %indvars.iv.next263.i.1 = add nuw nsw i64 %indvars.iv262.i, 2 ; 2 uses
  %niter3973.next.1 = add i64 %niter3973, 2       ; 2 uses
  %niter3973.ncmp.1 = icmp eq i64 %niter3973.next.1, %unroll_iter3972
  br i1 %niter3973.ncmp.1, label %._crit_edge.i108.loopexit.i.unr-lcssa, label %.lr.ph.i111.i

._crit_edge.i108.loopexit.i.unr-lcssa:            ; preds = %bb.ad
  %lcmp.mod3969.not = icmp eq i64 %xtraiter3968, 0
  br i1 %lcmp.mod3969.not, label %._crit_edge.i108.loopexit.i, label %.lr.ph.i111.i.epil.preheader

.lr.ph.i111.i.epil.preheader:                     ; preds = %._crit_edge.i108.loopexit.i.unr-lcssa, %.lr.ph.i111.preheader.i
  %indvars.iv262.i.epil.init = phi i64 [ %i.ej, %.lr.ph.i111.preheader.i ], [ %indvars.iv.next263.i.1, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %.03346.i113.i.epil.init = phi i32 [ 0, %.lr.ph.i111.preheader.i ], [ %i.ff, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %.03545.i114.i.epil.init = phi i64 [ 0, %.lr.ph.i111.preheader.i ], [ %i.fe, %._crit_edge.i108.loopexit.i.unr-lcssa ]
  %lcmp.mod3971 = trunc i8 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod3971)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv262.i.epil.init
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !123 ; 2 uses
  %i.fi = zext i8 %i.fh to i64                    ; 2 uses
  %i.fj = and i64 %i.fi, 240
  %.not.i115.i.epil = icmp eq i64 %i.fj, 96
  br i1 %.not.i115.i.epil, label %._crit_edge.i108.loopexit.i.epilog-lcssa, label %.thread.i116.i, !prof !134

._crit_edge.i108.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i111.i.epil.preheader
  %i.fk = and i64 %i.fi, 15
  %i.fl = zext nneg i32 %.03346.i113.i.epil.init to i64
  %i.fm = shl i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.03545.i114.i.epil.init
  br label %._crit_edge.i108.loopexit.i

._crit_edge.i108.loopexit.i:                      ; preds = %._crit_edge.i108.loopexit.i.unr-lcssa, %._crit_edge.i108.loopexit.i.epilog-lcssa
  %.lcssa3953 = phi i64 [ %i.fe, %._crit_edge.i108.loopexit.i.unr-lcssa ], [ %i.fn, %._crit_edge.i108.loopexit.i.epilog-lcssa ]
  %i.fo = trunc i64 %.lcssa3953 to i32
  br label %._crit_edge.i108.i

._crit_edge.i108.i:                               ; preds = %._crit_edge.i108.loopexit.i, %.preheader.i107.i
  %.035.lcssa.i109.i = phi i32 [ 0, %.preheader.i107.i ], [ %i.fo, %._crit_edge.i108.loopexit.i ]
  store i32 %i.ef, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit119.i

readNumber.exit119.i:                             ; preds = %._crit_edge.i108.i, %.thread.i116.i, %bb.ac, %bb.aa, %bb.y
  %i.fp = phi i32 [ %i.dx, %bb.y ], [ %i.dx, %bb.aa ], [ %i.ef, %bb.ac ], [ %i.dx, %.thread.i116.i ], [ %i.ef, %._crit_edge.i108.i ] ; 5 uses
  %.2.i110.i = phi i32 [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %.thread.i116.i ], [ %.035.lcssa.i109.i, %._crit_edge.i108.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.2.i110.i, ptr %i.fq, align 8, !tbaa !139
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !123
  %.fr4222 = freeze i8 %i.ft                      ; 3 uses
  %i.fu = zext i8 %.fr4222 to i32                 ; 2 uses
  %i.fv = add nsw i32 %i.fu, -96                  ; 4 uses
  %i.fw = icmp ugt i32 %i.fv, 16
  br i1 %i.fw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %readNumber.exit119.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.fu) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit132.i

bb.af:                                            ; preds = %readNumber.exit119.i
  %i.fx = add i32 %i.fp, 1                        ; 3 uses
  %i.fy = add i32 %i.fv, %i.fx                    ; 6 uses
  %i.fz = icmp ugt i32 %i.fy, %i.ai
  br i1 %i.fz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit132.i

bb.ah:                                            ; preds = %bb.af
  %i.ga = icmp eq i8 %.fr4222, 96
  br i1 %i.ga, label %bb.ai, label %.preheader.i120.i

.preheader.i120.i:                                ; preds = %bb.ah
  %i.gb = icmp ult i32 %i.fx, %i.fy
  br i1 %i.gb, label %.lr.ph.i124.preheader.i, label %._crit_edge.i121.i

.lr.ph.i124.preheader.i:                          ; preds = %.preheader.i120.i
  %i.gc = zext i32 %i.fx to i64                   ; 2 uses
  %i.gd = zext nneg i32 %i.fv to i64              ; 2 uses
  %xtraiter3974 = and i64 %i.gd, 1
  %i.ge = icmp eq i32 %i.fv, 1
  br i1 %i.ge, label %.lr.ph.i124.i.epil.preheader, label %.lr.ph.i124.preheader.i.new

.lr.ph.i124.preheader.i.new:                      ; preds = %.lr.ph.i124.preheader.i
  %unroll_iter3978 = and i64 %i.gd, 30
  br label %.lr.ph.i124.i

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.fy, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit132.i

.lr.ph.i124.i:                                    ; preds = %bb.aj, %.lr.ph.i124.preheader.i.new
  %indvars.iv265.i = phi i64 [ %i.gc, %.lr.ph.i124.preheader.i.new ], [ %indvars.iv.next266.i.1, %bb.aj ] ; 3 uses
  %.03346.i126.i = phi i32 [ 0, %.lr.ph.i124.preheader.i.new ], [ %i.gy, %bb.aj ] ; 3 uses
  %.03545.i127.i = phi i64 [ 0, %.lr.ph.i124.preheader.i.new ], [ %i.gx, %bb.aj ]
  %niter3979 = phi i64 [ 0, %.lr.ph.i124.preheader.i.new ], [ %niter3979.next.1, %bb.aj ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv265.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !123 ; 2 uses
  %i.gh = zext i8 %i.gg to i64                    ; 2 uses
  %i.gi = and i64 %i.gh, 240
  %.not.i128.i = icmp eq i64 %i.gi, 96
  br i1 %.not.i128.i, label %.lr.ph.i124.i.1, label %.thread.i129.i, !prof !134

.thread.i129.i:                                   ; preds = %.lr.ph.i124.i, %.lr.ph.i124.i.1, %.lr.ph.i124.i.epil.preheader
  %.lcssa3948 = phi i8 [ %i.ha, %.lr.ph.i124.i.epil.preheader ], [ %i.gg, %.lr.ph.i124.i ], [ %i.gm, %.lr.ph.i124.i.1 ]
  %i.gj = sext i8 %.lcssa3948 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.gj) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit132.i

.lr.ph.i124.i.1:                                  ; preds = %.lr.ph.i124.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv265.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !123 ; 2 uses
  %i.gn = zext i8 %i.gm to i64                    ; 2 uses
  %i.go = and i64 %i.gn, 240
  %.not.i128.i.1 = icmp eq i64 %i.go, 96
  br i1 %.not.i128.i.1, label %bb.aj, label %.thread.i129.i, !prof !134

bb.aj:                                            ; preds = %.lr.ph.i124.i.1
  %i.gp = or disjoint i32 %.03346.i126.i, 4
  %i.gq = and i64 %i.gh, 15
  %i.gr = zext nneg i32 %.03346.i126.i to i64
  %i.gs = shl i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %.03545.i127.i
  %i.gu = and i64 %i.gn, 15
  %i.gv = zext nneg i32 %i.gp to i64
  %i.gw = shl i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %i.gt                     ; 3 uses
  %i.gy = add nuw nsw i32 %.03346.i126.i, 8       ; 2 uses
  %indvars.iv.next266.i.1 = add nuw nsw i64 %indvars.iv265.i, 2 ; 2 uses
  %niter3979.next.1 = add i64 %niter3979, 2       ; 2 uses
  %niter3979.ncmp.1 = icmp eq i64 %niter3979.next.1, %unroll_iter3978
  br i1 %niter3979.ncmp.1, label %._crit_edge.i121.loopexit.i.unr-lcssa, label %.lr.ph.i124.i

._crit_edge.i121.loopexit.i.unr-lcssa:            ; preds = %bb.aj
  %lcmp.mod3975.not = icmp eq i64 %xtraiter3974, 0
  br i1 %lcmp.mod3975.not, label %._crit_edge.i121.loopexit.i, label %.lr.ph.i124.i.epil.preheader

.lr.ph.i124.i.epil.preheader:                     ; preds = %._crit_edge.i121.loopexit.i.unr-lcssa, %.lr.ph.i124.preheader.i
  %indvars.iv265.i.epil.init = phi i64 [ %i.gc, %.lr.ph.i124.preheader.i ], [ %indvars.iv.next266.i.1, %._crit_edge.i121.loopexit.i.unr-lcssa ]
  %.03346.i126.i.epil.init = phi i32 [ 0, %.lr.ph.i124.preheader.i ], [ %i.gy, %._crit_edge.i121.loopexit.i.unr-lcssa ]
  %.03545.i127.i.epil.init = phi i64 [ 0, %.lr.ph.i124.preheader.i ], [ %i.gx, %._crit_edge.i121.loopexit.i.unr-lcssa ]
  %lcmp.mod3977 = trunc i8 %.fr4222 to i1
  call void @llvm.assume(i1 %lcmp.mod3977)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv265.i.epil.init
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !123 ; 2 uses
  %i.hb = zext i8 %i.ha to i64                    ; 2 uses
  %i.hc = and i64 %i.hb, 240
  %.not.i128.i.epil = icmp eq i64 %i.hc, 96
  br i1 %.not.i128.i.epil, label %._crit_edge.i121.loopexit.i.epilog-lcssa, label %.thread.i129.i, !prof !134

._crit_edge.i121.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i124.i.epil.preheader
  %i.hd = and i64 %i.hb, 15
  %i.he = zext nneg i32 %.03346.i126.i.epil.init to i64
  %i.hf = shl i64 %i.hd, %i.he
  %i.hg = or i64 %i.hf, %.03545.i127.i.epil.init
  br label %._crit_edge.i121.loopexit.i

._crit_edge.i121.loopexit.i:                      ; preds = %._crit_edge.i121.loopexit.i.unr-lcssa, %._crit_edge.i121.loopexit.i.epilog-lcssa
  %.lcssa3950 = phi i64 [ %i.gx, %._crit_edge.i121.loopexit.i.unr-lcssa ], [ %i.hg, %._crit_edge.i121.loopexit.i.epilog-lcssa ]
  %i.hh = trunc i64 %.lcssa3950 to i32
  br label %._crit_edge.i121.i

._crit_edge.i121.i:                               ; preds = %._crit_edge.i121.loopexit.i, %.preheader.i120.i
  %.035.lcssa.i122.i = phi i32 [ 0, %.preheader.i120.i ], [ %i.hh, %._crit_edge.i121.loopexit.i ]
  store i32 %i.fy, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit132.i

readNumber.exit132.i:                             ; preds = %._crit_edge.i121.i, %.thread.i129.i, %bb.ai, %bb.ag, %bb.ae
  %i.hi = phi i32 [ %i.fp, %bb.ae ], [ %i.fp, %bb.ag ], [ %i.fy, %bb.ai ], [ %i.fp, %.thread.i129.i ], [ %i.fy, %._crit_edge.i121.i ] ; 5 uses
  %.2.i123.i = phi i32 [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %.thread.i129.i ], [ %.035.lcssa.i122.i, %._crit_edge.i121.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.2.i123.i, ptr %i.hj, align 4, !tbaa !140
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !123
  %.fr4225 = freeze i8 %i.hm                      ; 3 uses
  %i.hn = zext i8 %.fr4225 to i32                 ; 2 uses
  %i.ho = add nsw i32 %i.hn, -96                  ; 4 uses
  %i.hp = icmp ugt i32 %i.ho, 16
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %readNumber.exit132.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.hn) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit145.i

bb.al:                                            ; preds = %readNumber.exit132.i
  %i.hq = add i32 %i.hi, 1                        ; 3 uses
  %i.hr = add i32 %i.ho, %i.hq                    ; 6 uses
  %i.hs = icmp ugt i32 %i.hr, %i.ai
  br i1 %i.hs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit145.i

bb.an:                                            ; preds = %bb.al
  %i.ht = icmp eq i8 %.fr4225, 96
  br i1 %i.ht, label %bb.ao, label %.preheader.i133.i

.preheader.i133.i:                                ; preds = %bb.an
  %i.hu = icmp ult i32 %i.hq, %i.hr
  br i1 %i.hu, label %.lr.ph.i137.preheader.i, label %._crit_edge.i134.i

.lr.ph.i137.preheader.i:                          ; preds = %.preheader.i133.i
  %i.hv = zext i32 %i.hq to i64                   ; 2 uses
  %i.hw = zext nneg i32 %i.ho to i64              ; 2 uses
  %xtraiter3980 = and i64 %i.hw, 1
  %i.hx = icmp eq i32 %i.ho, 1
  br i1 %i.hx, label %.lr.ph.i137.i.epil.preheader, label %.lr.ph.i137.preheader.i.new

.lr.ph.i137.preheader.i.new:                      ; preds = %.lr.ph.i137.preheader.i
  %unroll_iter3984 = and i64 %i.hw, 30
  br label %.lr.ph.i137.i

bb.ao:                                            ; preds = %bb.an
  store i32 %i.hr, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit145.i

.lr.ph.i137.i:                                    ; preds = %bb.ap, %.lr.ph.i137.preheader.i.new
  %indvars.iv268.i = phi i64 [ %i.hv, %.lr.ph.i137.preheader.i.new ], [ %indvars.iv.next269.i.1, %bb.ap ] ; 3 uses
  %.03346.i139.i = phi i32 [ 0, %.lr.ph.i137.preheader.i.new ], [ %i.ir, %bb.ap ] ; 3 uses
  %.03545.i140.i = phi i64 [ 0, %.lr.ph.i137.preheader.i.new ], [ %i.iq, %bb.ap ]
  %niter3985 = phi i64 [ 0, %.lr.ph.i137.preheader.i.new ], [ %niter3985.next.1, %bb.ap ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv268.i
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !123 ; 2 uses
  %i.ia = zext i8 %i.hz to i64                    ; 2 uses
  %i.ib = and i64 %i.ia, 240
  %.not.i141.i = icmp eq i64 %i.ib, 96
  br i1 %.not.i141.i, label %.lr.ph.i137.i.1, label %.thread.i142.i, !prof !134

.thread.i142.i:                                   ; preds = %.lr.ph.i137.i, %.lr.ph.i137.i.1, %.lr.ph.i137.i.epil.preheader
  %.lcssa3945 = phi i8 [ %i.it, %.lr.ph.i137.i.epil.preheader ], [ %i.hz, %.lr.ph.i137.i ], [ %i.if, %.lr.ph.i137.i.1 ]
  %i.ic = sext i8 %.lcssa3945 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ic) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit145.i

.lr.ph.i137.i.1:                                  ; preds = %.lr.ph.i137.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv268.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !123 ; 2 uses
  %i.ig = zext i8 %i.if to i64                    ; 2 uses
  %i.ih = and i64 %i.ig, 240
  %.not.i141.i.1 = icmp eq i64 %i.ih, 96
  br i1 %.not.i141.i.1, label %bb.ap, label %.thread.i142.i, !prof !134

bb.ap:                                            ; preds = %.lr.ph.i137.i.1
  %i.ii = or disjoint i32 %.03346.i139.i, 4
  %i.ij = and i64 %i.ia, 15
  %i.ik = zext nneg i32 %.03346.i139.i to i64
  %i.il = shl i64 %i.ij, %i.ik
  %i.im = or i64 %i.il, %.03545.i140.i
  %i.in = and i64 %i.ig, 15
  %i.io = zext nneg i32 %i.ii to i64
  %i.ip = shl i64 %i.in, %i.io
  %i.iq = or i64 %i.ip, %i.im                     ; 3 uses
  %i.ir = add nuw nsw i32 %.03346.i139.i, 8       ; 2 uses
  %indvars.iv.next269.i.1 = add nuw nsw i64 %indvars.iv268.i, 2 ; 2 uses
  %niter3985.next.1 = add i64 %niter3985, 2       ; 2 uses
  %niter3985.ncmp.1 = icmp eq i64 %niter3985.next.1, %unroll_iter3984
  br i1 %niter3985.ncmp.1, label %._crit_edge.i134.loopexit.i.unr-lcssa, label %.lr.ph.i137.i

._crit_edge.i134.loopexit.i.unr-lcssa:            ; preds = %bb.ap
  %lcmp.mod3981.not = icmp eq i64 %xtraiter3980, 0
  br i1 %lcmp.mod3981.not, label %._crit_edge.i134.loopexit.i, label %.lr.ph.i137.i.epil.preheader

.lr.ph.i137.i.epil.preheader:                     ; preds = %._crit_edge.i134.loopexit.i.unr-lcssa, %.lr.ph.i137.preheader.i
  %indvars.iv268.i.epil.init = phi i64 [ %i.hv, %.lr.ph.i137.preheader.i ], [ %indvars.iv.next269.i.1, %._crit_edge.i134.loopexit.i.unr-lcssa ]
  %.03346.i139.i.epil.init = phi i32 [ 0, %.lr.ph.i137.preheader.i ], [ %i.ir, %._crit_edge.i134.loopexit.i.unr-lcssa ]
  %.03545.i140.i.epil.init = phi i64 [ 0, %.lr.ph.i137.preheader.i ], [ %i.iq, %._crit_edge.i134.loopexit.i.unr-lcssa ]
  %lcmp.mod3983 = trunc i8 %.fr4225 to i1
  call void @llvm.assume(i1 %lcmp.mod3983)
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv268.i.epil.init
  %i.it = load i8, ptr %i.is, align 1, !tbaa !123 ; 2 uses
  %i.iu = zext i8 %i.it to i64                    ; 2 uses
  %i.iv = and i64 %i.iu, 240
  %.not.i141.i.epil = icmp eq i64 %i.iv, 96
  br i1 %.not.i141.i.epil, label %._crit_edge.i134.loopexit.i.epilog-lcssa, label %.thread.i142.i, !prof !134

._crit_edge.i134.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i137.i.epil.preheader
  %i.iw = and i64 %i.iu, 15
  %i.ix = zext nneg i32 %.03346.i139.i.epil.init to i64
  %i.iy = shl i64 %i.iw, %i.ix
  %i.iz = or i64 %i.iy, %.03545.i140.i.epil.init
  br label %._crit_edge.i134.loopexit.i

._crit_edge.i134.loopexit.i:                      ; preds = %._crit_edge.i134.loopexit.i.unr-lcssa, %._crit_edge.i134.loopexit.i.epilog-lcssa
  %.lcssa3947 = phi i64 [ %i.iq, %._crit_edge.i134.loopexit.i.unr-lcssa ], [ %i.iz, %._crit_edge.i134.loopexit.i.epilog-lcssa ]
  %i.ja = trunc i64 %.lcssa3947 to i32
  br label %._crit_edge.i134.i

._crit_edge.i134.i:                               ; preds = %._crit_edge.i134.loopexit.i, %.preheader.i133.i
  %.035.lcssa.i135.i = phi i32 [ 0, %.preheader.i133.i ], [ %i.ja, %._crit_edge.i134.loopexit.i ]
  store i32 %i.hr, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit145.i

readNumber.exit145.i:                             ; preds = %._crit_edge.i134.i, %.thread.i142.i, %bb.ao, %bb.am, %bb.ak
  %i.jb = phi i32 [ %i.hi, %bb.ak ], [ %i.hi, %bb.am ], [ %i.hr, %bb.ao ], [ %i.hi, %.thread.i142.i ], [ %i.hr, %._crit_edge.i134.i ] ; 5 uses
  %.2.i136.i = phi i32 [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %.thread.i142.i ], [ %.035.lcssa.i135.i, %._crit_edge.i134.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %.2.i136.i, ptr %i.jc, align 4, !tbaa !141
  %i.jd = zext i32 %i.jb to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !123
  %.fr4228 = freeze i8 %i.jf                      ; 3 uses
  %i.jg = zext i8 %.fr4228 to i32                 ; 2 uses
  %i.jh = add nsw i32 %i.jg, -96                  ; 4 uses
  %i.ji = icmp ugt i32 %i.jh, 16
  br i1 %i.ji, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %readNumber.exit145.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.jg) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit158.i

bb.ar:                                            ; preds = %readNumber.exit145.i
  %i.jj = add i32 %i.jb, 1                        ; 3 uses
  %i.jk = add i32 %i.jh, %i.jj                    ; 6 uses
  %i.jl = icmp ugt i32 %i.jk, %i.ai
  br i1 %i.jl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit158.i

bb.at:                                            ; preds = %bb.ar
  %i.jm = icmp eq i8 %.fr4228, 96
  br i1 %i.jm, label %bb.au, label %.preheader.i146.i

.preheader.i146.i:                                ; preds = %bb.at
  %i.jn = icmp ult i32 %i.jj, %i.jk
  br i1 %i.jn, label %.lr.ph.i150.preheader.i, label %._crit_edge.i147.i

.lr.ph.i150.preheader.i:                          ; preds = %.preheader.i146.i
  %i.jo = zext i32 %i.jj to i64                   ; 2 uses
  %i.jp = zext nneg i32 %i.jh to i64              ; 2 uses
  %xtraiter3986 = and i64 %i.jp, 1
  %i.jq = icmp eq i32 %i.jh, 1
  br i1 %i.jq, label %.lr.ph.i150.i.epil.preheader, label %.lr.ph.i150.preheader.i.new

.lr.ph.i150.preheader.i.new:                      ; preds = %.lr.ph.i150.preheader.i
  %unroll_iter3990 = and i64 %i.jp, 30
  br label %.lr.ph.i150.i

bb.au:                                            ; preds = %bb.at
  store i32 %i.jk, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit158.i

.lr.ph.i150.i:                                    ; preds = %bb.av, %.lr.ph.i150.preheader.i.new
  %indvars.iv271.i = phi i64 [ %i.jo, %.lr.ph.i150.preheader.i.new ], [ %indvars.iv.next272.i.1, %bb.av ] ; 3 uses
  %.03346.i152.i = phi i32 [ 0, %.lr.ph.i150.preheader.i.new ], [ %i.kk, %bb.av ] ; 3 uses
  %.03545.i153.i = phi i64 [ 0, %.lr.ph.i150.preheader.i.new ], [ %i.kj, %bb.av ]
  %niter3991 = phi i64 [ 0, %.lr.ph.i150.preheader.i.new ], [ %niter3991.next.1, %bb.av ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv271.i
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !123 ; 2 uses
  %i.jt = zext i8 %i.js to i64                    ; 2 uses
  %i.ju = and i64 %i.jt, 240
  %.not.i154.i = icmp eq i64 %i.ju, 96
  br i1 %.not.i154.i, label %.lr.ph.i150.i.1, label %.thread.i155.i, !prof !134

.thread.i155.i:                                   ; preds = %.lr.ph.i150.i, %.lr.ph.i150.i.1, %.lr.ph.i150.i.epil.preheader
  %.lcssa3942 = phi i8 [ %i.km, %.lr.ph.i150.i.epil.preheader ], [ %i.js, %.lr.ph.i150.i ], [ %i.jy, %.lr.ph.i150.i.1 ]
  %i.jv = sext i8 %.lcssa3942 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.jv) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit158.i

.lr.ph.i150.i.1:                                  ; preds = %.lr.ph.i150.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv271.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !123 ; 2 uses
  %i.jz = zext i8 %i.jy to i64                    ; 2 uses
  %i.ka = and i64 %i.jz, 240
  %.not.i154.i.1 = icmp eq i64 %i.ka, 96
  br i1 %.not.i154.i.1, label %bb.av, label %.thread.i155.i, !prof !134

bb.av:                                            ; preds = %.lr.ph.i150.i.1
  %i.kb = or disjoint i32 %.03346.i152.i, 4
  %i.kc = and i64 %i.jt, 15
  %i.kd = zext nneg i32 %.03346.i152.i to i64
  %i.ke = shl i64 %i.kc, %i.kd
  %i.kf = or i64 %i.ke, %.03545.i153.i
  %i.kg = and i64 %i.jz, 15
  %i.kh = zext nneg i32 %i.kb to i64
  %i.ki = shl i64 %i.kg, %i.kh
  %i.kj = or i64 %i.ki, %i.kf                     ; 3 uses
  %i.kk = add nuw nsw i32 %.03346.i152.i, 8       ; 2 uses
  %indvars.iv.next272.i.1 = add nuw nsw i64 %indvars.iv271.i, 2 ; 2 uses
  %niter3991.next.1 = add i64 %niter3991, 2       ; 2 uses
  %niter3991.ncmp.1 = icmp eq i64 %niter3991.next.1, %unroll_iter3990
  br i1 %niter3991.ncmp.1, label %._crit_edge.i147.loopexit.i.unr-lcssa, label %.lr.ph.i150.i

._crit_edge.i147.loopexit.i.unr-lcssa:            ; preds = %bb.av
  %lcmp.mod3987.not = icmp eq i64 %xtraiter3986, 0
  br i1 %lcmp.mod3987.not, label %._crit_edge.i147.loopexit.i, label %.lr.ph.i150.i.epil.preheader

.lr.ph.i150.i.epil.preheader:                     ; preds = %._crit_edge.i147.loopexit.i.unr-lcssa, %.lr.ph.i150.preheader.i
  %indvars.iv271.i.epil.init = phi i64 [ %i.jo, %.lr.ph.i150.preheader.i ], [ %indvars.iv.next272.i.1, %._crit_edge.i147.loopexit.i.unr-lcssa ]
  %.03346.i152.i.epil.init = phi i32 [ 0, %.lr.ph.i150.preheader.i ], [ %i.kk, %._crit_edge.i147.loopexit.i.unr-lcssa ]
  %.03545.i153.i.epil.init = phi i64 [ 0, %.lr.ph.i150.preheader.i ], [ %i.kj, %._crit_edge.i147.loopexit.i.unr-lcssa ]
  %lcmp.mod3989 = trunc i8 %.fr4228 to i1
  call void @llvm.assume(i1 %lcmp.mod3989)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv271.i.epil.init
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !123 ; 2 uses
  %i.kn = zext i8 %i.km to i64                    ; 2 uses
  %i.ko = and i64 %i.kn, 240
  %.not.i154.i.epil = icmp eq i64 %i.ko, 96
  br i1 %.not.i154.i.epil, label %._crit_edge.i147.loopexit.i.epilog-lcssa, label %.thread.i155.i, !prof !134

._crit_edge.i147.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i150.i.epil.preheader
  %i.kp = and i64 %i.kn, 15
  %i.kq = zext nneg i32 %.03346.i152.i.epil.init to i64
  %i.kr = shl i64 %i.kp, %i.kq
  %i.ks = or i64 %i.kr, %.03545.i153.i.epil.init
  br label %._crit_edge.i147.loopexit.i

._crit_edge.i147.loopexit.i:                      ; preds = %._crit_edge.i147.loopexit.i.unr-lcssa, %._crit_edge.i147.loopexit.i.epilog-lcssa
  %.lcssa3944 = phi i64 [ %i.kj, %._crit_edge.i147.loopexit.i.unr-lcssa ], [ %i.ks, %._crit_edge.i147.loopexit.i.epilog-lcssa ]
  %i.kt = trunc i64 %.lcssa3944 to i32
  br label %._crit_edge.i147.i

._crit_edge.i147.i:                               ; preds = %._crit_edge.i147.loopexit.i, %.preheader.i146.i
  %.035.lcssa.i148.i = phi i32 [ 0, %.preheader.i146.i ], [ %i.kt, %._crit_edge.i147.loopexit.i ]
  store i32 %i.jk, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit158.i

readNumber.exit158.i:                             ; preds = %._crit_edge.i147.i, %.thread.i155.i, %bb.au, %bb.as, %bb.aq
  %i.ku = phi i32 [ %i.jb, %bb.aq ], [ %i.jb, %bb.as ], [ %i.jk, %bb.au ], [ %i.jb, %.thread.i155.i ], [ %i.jk, %._crit_edge.i147.i ] ; 2 uses
  %.2.i149.i = phi i32 [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %.thread.i155.i ], [ %.035.lcssa.i148.i, %._crit_edge.i147.i ]
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %.2.i149.i, ptr %i.kv, align 8, !tbaa !142
  %i.kw = call i32 @cl_retflevel() #24            ; 3 uses
  %i.kx = load i32, ptr %i.jc, align 4, !tbaa !141 ; 3 uses
  %.not85.i = icmp ne i32 %i.kx, 0
  %i.ky = icmp ugt i32 %i.kx, %i.kw
  %or.cond91.i = select i1 %.not85.i, i1 %i.ky, i1 false
  %.pre.i = load i32, ptr %i.kv, align 8, !tbaa !142 ; 3 uses
  br i1 %or.cond91.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %readNumber.exit158.i
  %.not86.i = icmp ne i32 %.pre.i, 0
  %i.kz = icmp ult i32 %.pre.i, %i.kw
  %or.cond92.i = select i1 %.not86.i, i1 %i.kz, i1 false
  br i1 %or.cond92.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %readNumber.exit158.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.273, i32 noundef %i.kx, i32 noundef %.pre.i, i32 noundef %i.kw) #24
  br label %bb.cc

bb.ay:                                            ; preds = %bb.aw
  %i.la = zext i32 %i.ku to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !123
  %.fr4231 = freeze i8 %i.lc                      ; 3 uses
  %i.ld = zext i8 %.fr4231 to i32                 ; 2 uses
  %i.le = add nsw i32 %i.ld, -96                  ; 4 uses
  %i.lf = icmp ugt i32 %i.le, 16
  br i1 %i.lf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.ld) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit171.i

bb.ba:                                            ; preds = %bb.ay
  %i.lg = add i32 %i.ku, 1                        ; 3 uses
  %i.lh = add i32 %i.le, %i.lg                    ; 4 uses
  %i.li = icmp ugt i32 %i.lh, %i.ai
  br i1 %i.li, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit171.i

bb.bc:                                            ; preds = %bb.ba
  %i.lj = icmp eq i8 %.fr4231, 96
  br i1 %i.lj, label %bb.bd, label %.preheader.i159.i

.preheader.i159.i:                                ; preds = %bb.bc
  %i.lk = icmp ult i32 %i.lg, %i.lh
  br i1 %i.lk, label %.lr.ph.i163.preheader.i, label %._crit_edge.i160.i

.lr.ph.i163.preheader.i:                          ; preds = %.preheader.i159.i
  %i.ll = zext i32 %i.lg to i64                   ; 2 uses
  %i.lm = zext nneg i32 %i.le to i64              ; 2 uses
  %xtraiter3992 = and i64 %i.lm, 1
  %i.ln = icmp eq i32 %i.le, 1
  br i1 %i.ln, label %.lr.ph.i163.i.epil.preheader, label %.lr.ph.i163.preheader.i.new

.lr.ph.i163.preheader.i.new:                      ; preds = %.lr.ph.i163.preheader.i
  %unroll_iter3996 = and i64 %i.lm, 30
  br label %.lr.ph.i163.i

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.lh, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit171.i

.lr.ph.i163.i:                                    ; preds = %bb.be, %.lr.ph.i163.preheader.i.new
  %indvars.iv274.i = phi i64 [ %i.ll, %.lr.ph.i163.preheader.i.new ], [ %indvars.iv.next275.i.1, %bb.be ] ; 3 uses
  %.03346.i165.i = phi i32 [ 0, %.lr.ph.i163.preheader.i.new ], [ %i.mh, %bb.be ] ; 3 uses
  %.03545.i166.i = phi i64 [ 0, %.lr.ph.i163.preheader.i.new ], [ %i.mg, %bb.be ]
  %niter3997 = phi i64 [ 0, %.lr.ph.i163.preheader.i.new ], [ %niter3997.next.1, %bb.be ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv274.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !123 ; 2 uses
  %i.lq = zext i8 %i.lp to i64                    ; 2 uses
  %i.lr = and i64 %i.lq, 240
  %.not.i167.i = icmp eq i64 %i.lr, 96
  br i1 %.not.i167.i, label %.lr.ph.i163.i.1, label %.thread.i168.i, !prof !134

.thread.i168.i:                                   ; preds = %.lr.ph.i163.i, %.lr.ph.i163.i.1, %.lr.ph.i163.i.epil.preheader
  %.lcssa3939 = phi i8 [ %i.mj, %.lr.ph.i163.i.epil.preheader ], [ %i.lp, %.lr.ph.i163.i ], [ %i.lv, %.lr.ph.i163.i.1 ]
  %i.ls = sext i8 %.lcssa3939 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ls) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit171.i

.lr.ph.i163.i.1:                                  ; preds = %.lr.ph.i163.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv274.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !123 ; 2 uses
  %i.lw = zext i8 %i.lv to i64                    ; 2 uses
  %i.lx = and i64 %i.lw, 240
  %.not.i167.i.1 = icmp eq i64 %i.lx, 96
  br i1 %.not.i167.i.1, label %bb.be, label %.thread.i168.i, !prof !134

bb.be:                                            ; preds = %.lr.ph.i163.i.1
  %i.ly = or disjoint i32 %.03346.i165.i, 4
  %i.lz = and i64 %i.lq, 15
  %i.ma = zext nneg i32 %.03346.i165.i to i64
  %i.mb = shl i64 %i.lz, %i.ma
  %i.mc = or i64 %i.mb, %.03545.i166.i
  %i.md = and i64 %i.lw, 15
  %i.me = zext nneg i32 %i.ly to i64
  %i.mf = shl i64 %i.md, %i.me
  %i.mg = or i64 %i.mf, %i.mc                     ; 3 uses
  %i.mh = add nuw nsw i32 %.03346.i165.i, 8       ; 2 uses
  %indvars.iv.next275.i.1 = add nuw nsw i64 %indvars.iv274.i, 2 ; 2 uses
  %niter3997.next.1 = add i64 %niter3997, 2       ; 2 uses
  %niter3997.ncmp.1 = icmp eq i64 %niter3997.next.1, %unroll_iter3996
  br i1 %niter3997.ncmp.1, label %._crit_edge.i160.loopexit.i.unr-lcssa, label %.lr.ph.i163.i

._crit_edge.i160.loopexit.i.unr-lcssa:            ; preds = %bb.be
  %lcmp.mod3993.not = icmp eq i64 %xtraiter3992, 0
  br i1 %lcmp.mod3993.not, label %._crit_edge.i160.loopexit.i, label %.lr.ph.i163.i.epil.preheader

.lr.ph.i163.i.epil.preheader:                     ; preds = %._crit_edge.i160.loopexit.i.unr-lcssa, %.lr.ph.i163.preheader.i
  %indvars.iv274.i.epil.init = phi i64 [ %i.ll, %.lr.ph.i163.preheader.i ], [ %indvars.iv.next275.i.1, %._crit_edge.i160.loopexit.i.unr-lcssa ]
  %.03346.i165.i.epil.init = phi i32 [ 0, %.lr.ph.i163.preheader.i ], [ %i.mh, %._crit_edge.i160.loopexit.i.unr-lcssa ]
  %.03545.i166.i.epil.init = phi i64 [ 0, %.lr.ph.i163.preheader.i ], [ %i.mg, %._crit_edge.i160.loopexit.i.unr-lcssa ]
  %lcmp.mod3995 = trunc i8 %.fr4231 to i1
  call void @llvm.assume(i1 %lcmp.mod3995)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv274.i.epil.init
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !123 ; 2 uses
  %i.mk = zext i8 %i.mj to i64                    ; 2 uses
  %i.ml = and i64 %i.mk, 240
  %.not.i167.i.epil = icmp eq i64 %i.ml, 96
  br i1 %.not.i167.i.epil, label %._crit_edge.i160.loopexit.i.epilog-lcssa, label %.thread.i168.i, !prof !134

._crit_edge.i160.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i163.i.epil.preheader
  %i.mm = and i64 %i.mk, 15
  %i.mn = zext nneg i32 %.03346.i165.i.epil.init to i64
  %i.mo = shl i64 %i.mm, %i.mn
  %i.mp = or i64 %i.mo, %.03545.i166.i.epil.init
  br label %._crit_edge.i160.loopexit.i

._crit_edge.i160.loopexit.i:                      ; preds = %._crit_edge.i160.loopexit.i.unr-lcssa, %._crit_edge.i160.loopexit.i.epilog-lcssa
  %.lcssa3941 = phi i64 [ %i.mg, %._crit_edge.i160.loopexit.i.unr-lcssa ], [ %i.mp, %._crit_edge.i160.loopexit.i.epilog-lcssa ]
  %i.mq = trunc i64 %.lcssa3941 to i32
  br label %._crit_edge.i160.i

._crit_edge.i160.i:                               ; preds = %._crit_edge.i160.loopexit.i, %.preheader.i159.i
  %.035.lcssa.i161.i = phi i32 [ 0, %.preheader.i159.i ], [ %i.mq, %._crit_edge.i160.loopexit.i ]
  store i32 %i.lh, ptr %i.p, align 4, !tbaa !117
  br label %readNumber.exit171.i

readNumber.exit171.i:                             ; preds = %._crit_edge.i160.i, %.thread.i168.i, %bb.bd, %bb.bb, %bb.az
  %.2.i162.i = phi i32 [ 0, %bb.az ], [ 0, %bb.bb ], [ 0, %bb.bd ], [ 0, %.thread.i168.i ], [ %.035.lcssa.i161.i, %._crit_edge.i160.i ]
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.2.i162.i, ptr %i.mr, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  store i32 0, ptr %i.m, align 4, !tbaa !117
  %i.ms = call fastcc ptr @readData(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.p, i32 noundef %i.ai, ptr noundef nonnull %i.o, ptr noundef %i.m) ; 5 uses
  %i.mt = load i8, ptr %i.o, align 1, !tbaa !132, !range !136, !noundef !137 ; 2 uses
  %i.mu = trunc nuw i8 %i.mt to i1
  %i.mv = load i32, ptr %i.m, align 4             ; 2 uses
  %i.mw = icmp ne i32 %i.mv, 0
  %or.cond.i172.i = select i1 %i.mu, i1 %i.mw, i1 false
  br i1 %or.cond.i172.i, label %bb.bf, label %readString.exit175.i

bb.bf:                                            ; preds = %readNumber.exit171.i
  %i.mx = add i32 %i.mv, -1
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !123
  %.not.i174.i = icmp eq i8 %i.na, 0
  br i1 %.not.i174.i, label %readString.exit175.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.mz, align 1, !tbaa !123
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.ms) #24
  call void @free(ptr noundef nonnull %i.ms) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readString.exit175.i

readString.exit175.i:                             ; preds = %bb.bg, %bb.bf, %readNumber.exit171.i
  %i.nb = phi i8 [ 0, %bb.bg ], [ 1, %bb.bf ], [ %i.mt, %readNumber.exit171.i ] ; 2 uses
  %.0.i173.i = phi ptr [ null, %bb.bg ], [ %i.ms, %bb.bf ], [ %i.ms, %readNumber.exit171.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  store ptr %.0.i173.i, ptr %0, align 8, !tbaa !144
  %i.nc = load i32, ptr %i.p, align 4, !tbaa !117 ; 5 uses
  %i.nd = zext i32 %i.nc to i64                   ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !123 ; 2 uses
  %i.ng = zext i8 %i.nf to i32                    ; 2 uses
  %i.nh = add nsw i32 %i.ng, -96                  ; 2 uses
  %i.ni = icmp ugt i32 %i.nh, 16
  br i1 %i.ni, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %readString.exit175.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.ng) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit188.i

bb.bi:                                            ; preds = %readString.exit175.i
  %i.nj = add i32 %i.nc, 1                        ; 3 uses
  %i.nk = add i32 %i.nh, %i.nj                    ; 6 uses
  %i.nl = icmp ugt i32 %i.nk, %i.ai
  br i1 %i.nl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit188.i

bb.bk:                                            ; preds = %bb.bi
  %i.nm = icmp ne i8 %i.nf, 96
  %i.nn = icmp ult i32 %i.nj, %i.nk
  %or.cond343.i = and i1 %i.nm, %i.nn
  br i1 %or.cond343.i, label %.lr.ph.i180.preheader.i, label %.readNumber.exit188.i_crit_edge

.readNumber.exit188.i_crit_edge:                  ; preds = %bb.bk
  %.pre1895 = zext i32 %i.nk to i64
  br label %readNumber.exit188.i

.lr.ph.i180.preheader.i:                          ; preds = %bb.bk
  %i.no = zext i32 %i.nj to i64                   ; 3 uses
  %i.np = zext i32 %i.nk to i64                   ; 2 uses
  %i.nq = sub nsw i64 %i.np, %i.no
  %i.nr = freeze i64 %i.nq                        ; 4 uses
  %xtraiter3998 = and i64 %i.nr, 1
  %i.ns = icmp eq i64 %i.nr, 1
  br i1 %i.ns, label %.lr.ph.i180.i.epil.preheader, label %.lr.ph.i180.preheader.i.new

.lr.ph.i180.preheader.i.new:                      ; preds = %.lr.ph.i180.preheader.i
  %unroll_iter4002 = and i64 %i.nr, -2
  br label %.lr.ph.i180.i

.lr.ph.i180.i:                                    ; preds = %bb.bl, %.lr.ph.i180.preheader.i.new
  %indvars.iv277.i = phi i64 [ %i.no, %.lr.ph.i180.preheader.i.new ], [ %indvars.iv.next278.i.1, %bb.bl ] ; 3 uses
  %.03346.i182.i = phi i32 [ 0, %.lr.ph.i180.preheader.i.new ], [ %i.om, %bb.bl ] ; 3 uses
  %.03545.i183.i = phi i64 [ 0, %.lr.ph.i180.preheader.i.new ], [ %i.ol, %bb.bl ]
  %niter4003 = phi i64 [ 0, %.lr.ph.i180.preheader.i.new ], [ %niter4003.next.1, %bb.bl ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv277.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !123 ; 2 uses
  %i.nv = zext i8 %i.nu to i64                    ; 2 uses
  %i.nw = and i64 %i.nv, 240
  %.not.i184.i = icmp eq i64 %i.nw, 96
  br i1 %.not.i184.i, label %.lr.ph.i180.i.1, label %.thread.i185.i, !prof !134

.thread.i185.i:                                   ; preds = %.lr.ph.i180.i, %.lr.ph.i180.i.1, %.lr.ph.i180.i.epil.preheader
  %.lcssa3936 = phi i8 [ %i.oo, %.lr.ph.i180.i.epil.preheader ], [ %i.nu, %.lr.ph.i180.i ], [ %i.oa, %.lr.ph.i180.i.1 ]
  %i.nx = sext i8 %.lcssa3936 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.nx) #24
  store i8 0, ptr %i.o, align 1, !tbaa !132
  br label %readNumber.exit188.i

.lr.ph.i180.i.1:                                  ; preds = %.lr.ph.i180.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv277.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !123 ; 2 uses
  %i.ob = zext i8 %i.oa to i64                    ; 2 uses
  %i.oc = and i64 %i.ob, 240
  %.not.i184.i.1 = icmp eq i64 %i.oc, 96
  br i1 %.not.i184.i.1, label %bb.bl, label %.thread.i185.i, !prof !134

bb.bl:                                            ; preds = %.lr.ph.i180.i.1
  %i.od = or disjoint i32 %.03346.i182.i, 4
  %i.oe = and i64 %i.nv, 15
  %i.of = zext nneg i32 %.03346.i182.i to i64
  %i.og = shl i64 %i.oe, %i.of
  %i.oh = or i64 %i.og, %.03545.i183.i
  %i.oi = and i64 %i.ob, 15
  %i.oj = zext nneg i32 %i.od to i64
  %i.ok = shl i64 %i.oi, %i.oj
  %i.ol = or i64 %i.ok, %i.oh                     ; 3 uses
  %i.om = add nuw nsw i32 %.03346.i182.i, 8       ; 2 uses
  %indvars.iv.next278.i.1 = add nuw nsw i64 %indvars.iv277.i, 2 ; 2 uses
  %niter4003.next.1 = add i64 %niter4003, 2       ; 2 uses
  %niter4003.ncmp.1 = icmp eq i64 %niter4003.next.1, %unroll_iter4002
  br i1 %niter4003.ncmp.1, label %._crit_edge.i177.loopexit.i.unr-lcssa, label %.lr.ph.i180.i

._crit_edge.i177.loopexit.i.unr-lcssa:            ; preds = %bb.bl
  %lcmp.mod3999.not = icmp eq i64 %xtraiter3998, 0
  br i1 %lcmp.mod3999.not, label %._crit_edge.i177.loopexit.i, label %.lr.ph.i180.i.epil.preheader

.lr.ph.i180.i.epil.preheader:                     ; preds = %._crit_edge.i177.loopexit.i.unr-lcssa, %.lr.ph.i180.preheader.i
  %indvars.iv277.i.epil.init = phi i64 [ %i.no, %.lr.ph.i180.preheader.i ], [ %indvars.iv.next278.i.1, %._crit_edge.i177.loopexit.i.unr-lcssa ]
  %.03346.i182.i.epil.init = phi i32 [ 0, %.lr.ph.i180.preheader.i ], [ %i.om, %._crit_edge.i177.loopexit.i.unr-lcssa ]
  %.03545.i183.i.epil.init = phi i64 [ 0, %.lr.ph.i180.preheader.i ], [ %i.ol, %._crit_edge.i177.loopexit.i.unr-lcssa ]
  %lcmp.mod4001 = trunc i64 %i.nr to i1
  call void @llvm.assume(i1 %lcmp.mod4001)
  %i.on = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv277.i.epil.init
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !123 ; 2 uses
  %i.op = zext i8 %i.oo to i64                    ; 2 uses
  %i.oq = and i64 %i.op, 240
  %.not.i184.i.epil = icmp eq i64 %i.oq, 96
  br i1 %.not.i184.i.epil, label %._crit_edge.i177.loopexit.i.epilog-lcssa, label %.thread.i185.i, !prof !134

._crit_edge.i177.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i180.i.epil.preheader
  %i.or = and i64 %i.op, 15
  %i.os = zext nneg i32 %.03346.i182.i.epil.init to i64
  %i.ot = shl i64 %i.or, %i.os
  %i.ou = or i64 %i.ot, %.03545.i183.i.epil.init
  br label %._crit_edge.i177.loopexit.i

._crit_edge.i177.loopexit.i:                      ; preds = %._crit_edge.i177.loopexit.i.unr-lcssa, %._crit_edge.i177.loopexit.i.epilog-lcssa
  %.lcssa3938 = phi i64 [ %i.ol, %._crit_edge.i177.loopexit.i.unr-lcssa ], [ %i.ou, %._crit_edge.i177.loopexit.i.epilog-lcssa ]
  %i.ov = trunc i64 %.lcssa3938 to i32
  br label %readNumber.exit188.i

readNumber.exit188.i:                             ; preds = %.readNumber.exit188.i_crit_edge, %._crit_edge.i177.loopexit.i, %.thread.i185.i, %bb.bj, %bb.bh
  %.pre-phi1896 = phi i64 [ %.pre1895, %.readNumber.exit188.i_crit_edge ], [ %i.np, %._crit_edge.i177.loopexit.i ], [ %i.nd, %.thread.i185.i ], [ %i.nd, %bb.bj ], [ %i.nd, %bb.bh ]
  %i.ow = phi i8 [ %i.nb, %.readNumber.exit188.i_crit_edge ], [ %i.nb, %._crit_edge.i177.loopexit.i ], [ 0, %.thread.i185.i ], [ 0, %bb.bj ], [ 0, %bb.bh ]
  %i.ox = phi i32 [ %i.nk, %.readNumber.exit188.i_crit_edge ], [ %i.nk, %._crit_edge.i177.loopexit.i ], [ %i.nc, %.thread.i185.i ], [ %i.nc, %bb.bj ], [ %i.nc, %bb.bh ] ; 2 uses
  %.2.i179.i = phi i32 [ 0, %.readNumber.exit188.i_crit_edge ], [ %i.ov, %._crit_edge.i177.loopexit.i ], [ 0, %.thread.i185.i ], [ 0, %bb.bj ], [ 0, %bb.bh ]
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %.2.i179.i, ptr %i.oy, align 8, !tbaa !145
  %i.oz = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre-phi1896
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !123
  %.fr4234 = freeze i8 %i.pa                      ; 3 uses
  %i.pb = zext i8 %.fr4234 to i32                 ; 2 uses
  %i.pc = add nsw i32 %i.pb, -96                  ; 4 uses
  %i.pd = icmp ugt i32 %i.pc, 16
  br i1 %i.pd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %readNumber.exit188.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.pb) #24
  br label %readNumber.exit201.thread.i

bb.bn:                                            ; preds = %readNumber.exit188.i
  %i.pe = add i32 %i.ox, 1                        ; 3 uses
  %i.pf = add i32 %i.pc, %i.pe                    ; 4 uses
  %i.pg = icmp ugt i32 %i.pf, %i.ai
  br i1 %i.pg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit201.thread.i

bb.bp:                                            ; preds = %bb.bn
  %i.ph = icmp ne i8 %.fr4234, 96
  %i.pi = icmp ult i32 %i.pe, %i.pf
  %or.cond344.i = and i1 %i.ph, %i.pi
  br i1 %or.cond344.i, label %.lr.ph.i193.preheader.i, label %readNumber.exit201.i

.lr.ph.i193.preheader.i:                          ; preds = %bb.bp
  %i.pj = zext i32 %i.pe to i64                   ; 2 uses
  %i.pk = zext nneg i32 %i.pc to i64              ; 2 uses
  %xtraiter4004 = and i64 %i.pk, 1
  %i.pl = icmp eq i32 %i.pc, 1
  br i1 %i.pl, label %.lr.ph.i193.i.epil.preheader, label %.lr.ph.i193.preheader.i.new

.lr.ph.i193.preheader.i.new:                      ; preds = %.lr.ph.i193.preheader.i
  %unroll_iter4008 = and i64 %i.pk, 30
  br label %.lr.ph.i193.i

.lr.ph.i193.i:                                    ; preds = %bb.bq, %.lr.ph.i193.preheader.i.new
  %indvars.iv280.i = phi i64 [ %i.pj, %.lr.ph.i193.preheader.i.new ], [ %indvars.iv.next281.i.1, %bb.bq ] ; 3 uses
  %.03346.i195.i = phi i32 [ 0, %.lr.ph.i193.preheader.i.new ], [ %i.qf, %bb.bq ] ; 3 uses
  %.03545.i196.i = phi i64 [ 0, %.lr.ph.i193.preheader.i.new ], [ %i.qe, %bb.bq ]
  %niter4009 = phi i64 [ 0, %.lr.ph.i193.preheader.i.new ], [ %niter4009.next.1, %bb.bq ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv280.i
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !123 ; 2 uses
  %i.po = zext i8 %i.pn to i64                    ; 2 uses
  %i.pp = and i64 %i.po, 240
  %.not.i197.i = icmp eq i64 %i.pp, 96
  br i1 %.not.i197.i, label %.lr.ph.i193.i.1, label %.thread.i198.i, !prof !134

.thread.i198.i:                                   ; preds = %.lr.ph.i193.i, %.lr.ph.i193.i.1, %.lr.ph.i193.i.epil.preheader
  %.lcssa3933 = phi i8 [ %i.qh, %.lr.ph.i193.i.epil.preheader ], [ %i.pn, %.lr.ph.i193.i ], [ %i.pt, %.lr.ph.i193.i.1 ]
  %i.pq = sext i8 %.lcssa3933 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.pq) #24
  br label %readNumber.exit201.thread.i

.lr.ph.i193.i.1:                                  ; preds = %.lr.ph.i193.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv280.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !123 ; 2 uses
  %i.pu = zext i8 %i.pt to i64                    ; 2 uses
  %i.pv = and i64 %i.pu, 240
  %.not.i197.i.1 = icmp eq i64 %i.pv, 96
  br i1 %.not.i197.i.1, label %bb.bq, label %.thread.i198.i, !prof !134

bb.bq:                                            ; preds = %.lr.ph.i193.i.1
  %i.pw = or disjoint i32 %.03346.i195.i, 4
  %i.px = and i64 %i.po, 15
  %i.py = zext nneg i32 %.03346.i195.i to i64
  %i.pz = shl i64 %i.px, %i.py
  %i.qa = or i64 %i.pz, %.03545.i196.i
  %i.qb = and i64 %i.pu, 15
  %i.qc = zext nneg i32 %i.pw to i64
  %i.qd = shl i64 %i.qb, %i.qc
  %i.qe = or i64 %i.qd, %i.qa                     ; 3 uses
  %i.qf = add nuw nsw i32 %.03346.i195.i, 8       ; 2 uses
  %indvars.iv.next281.i.1 = add nuw nsw i64 %indvars.iv280.i, 2 ; 2 uses
  %niter4009.next.1 = add i64 %niter4009, 2       ; 2 uses
  %niter4009.ncmp.1 = icmp eq i64 %niter4009.next.1, %unroll_iter4008
  br i1 %niter4009.ncmp.1, label %._crit_edge.i190.loopexit.i.unr-lcssa, label %.lr.ph.i193.i

._crit_edge.i190.loopexit.i.unr-lcssa:            ; preds = %bb.bq
  %lcmp.mod4005.not = icmp eq i64 %xtraiter4004, 0
  br i1 %lcmp.mod4005.not, label %._crit_edge.i190.loopexit.i, label %.lr.ph.i193.i.epil.preheader

.lr.ph.i193.i.epil.preheader:                     ; preds = %._crit_edge.i190.loopexit.i.unr-lcssa, %.lr.ph.i193.preheader.i
  %indvars.iv280.i.epil.init = phi i64 [ %i.pj, %.lr.ph.i193.preheader.i ], [ %indvars.iv.next281.i.1, %._crit_edge.i190.loopexit.i.unr-lcssa ]
  %.03346.i195.i.epil.init = phi i32 [ 0, %.lr.ph.i193.preheader.i ], [ %i.qf, %._crit_edge.i190.loopexit.i.unr-lcssa ]
  %.03545.i196.i.epil.init = phi i64 [ 0, %.lr.ph.i193.preheader.i ], [ %i.qe, %._crit_edge.i190.loopexit.i.unr-lcssa ]
  %lcmp.mod4007 = trunc i8 %.fr4234 to i1
  call void @llvm.assume(i1 %lcmp.mod4007)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv280.i.epil.init
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !123 ; 2 uses
  %i.qi = zext i8 %i.qh to i64                    ; 2 uses
  %i.qj = and i64 %i.qi, 240
  %.not.i197.i.epil = icmp eq i64 %i.qj, 96
  br i1 %.not.i197.i.epil, label %._crit_edge.i190.loopexit.i.epilog-lcssa, label %.thread.i198.i, !prof !134

._crit_edge.i190.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i193.i.epil.preheader
  %i.qk = and i64 %i.qi, 15
  %i.ql = zext nneg i32 %.03346.i195.i.epil.init to i64
  %i.qm = shl i64 %i.qk, %i.ql
  %i.qn = or i64 %i.qm, %.03545.i196.i.epil.init
  br label %._crit_edge.i190.loopexit.i

._crit_edge.i190.loopexit.i:                      ; preds = %._crit_edge.i190.loopexit.i.unr-lcssa, %._crit_edge.i190.loopexit.i.epilog-lcssa
  %.lcssa3935 = phi i64 [ %i.qe, %._crit_edge.i190.loopexit.i.unr-lcssa ], [ %i.qn, %._crit_edge.i190.loopexit.i.epilog-lcssa ]
  %i.qo = trunc i64 %.lcssa3935 to i32
  br label %readNumber.exit201.i

readNumber.exit201.thread.i:                      ; preds = %.thread.i198.i, %bb.bo, %bb.bm
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.qp, align 4, !tbaa !98
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.qq, align 8, !tbaa !146
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.qr, align 8, !tbaa !147
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.qs, align 8, !tbaa !148
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.qt, align 8, !tbaa !149
  br label %bb.br

readNumber.exit201.i:                             ; preds = %._crit_edge.i190.loopexit.i, %bb.bp
  %.2.i192.i = phi i32 [ 0, %bb.bp ], [ %i.qo, %._crit_edge.i190.loopexit.i ]
  store i32 %i.pf, ptr %i.p, align 4, !tbaa !117
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %.2.i192.i, ptr %i.qu, align 4, !tbaa !98
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.qv, align 8, !tbaa !146
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.qw, align 8, !tbaa !147
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.qx, align 8, !tbaa !148
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.qy, align 8, !tbaa !149
  %i.qz = trunc nuw i8 %i.ow to i1
  br i1 %i.qz, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %readNumber.exit201.i, %readNumber.exit201.thread.i
  %i.ra = phi i32 [ %i.ox, %readNumber.exit201.thread.i ], [ %i.pf, %readNumber.exit201.i ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.274, i32 noundef %i.ra) #24
  br label %bb.cf

bb.bs:                                            ; preds = %readNumber.exit201.i
  %i.rb = call fastcc i64 @readNumber(ptr noundef nonnull %i.r, ptr noundef %i.p, i32 noundef %i.ai, ptr noundef %i.o) ; 3 uses
  %i.rc = call fastcc i32 @readFixedNumber(ptr noundef nonnull %i.r, ptr noundef %i.p, i32 noundef %i.ai, ptr noundef %i.o, i32 noundef 2) ; 2 uses
  %i.rd = load i8, ptr %i.o, align 1, !tbaa !132, !range !136, !noundef !137
  %i.re = trunc nuw i8 %i.rd to i1
  %.not.i = xor i1 %i.re, true
  %i.rf = icmp ne i64 %i.rb, 6045318608123141168
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.rf
  %i.rg = icmp ne i32 %i.rc, 42
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.rg
  br i1 %or.cond3.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.rh = lshr i64 %i.rb, 32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.275, i64 noundef %i.rh, i64 noundef %i.rb, i32 noundef %i.rc) #24
  br label %bb.cf

bb.bu:                                            ; preds = %bb.bs
  %i.ri = load i32, ptr %i.p, align 4, !tbaa !117 ; 2 uses
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !123 ; 2 uses
  %.not87.i = icmp eq i8 %i.rl, 58
  br i1 %.not87.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rm = zext i8 %i.rl to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.276, i32 noundef %i.rm) #24
  br label %bb.cf

bb.bw:                                            ; preds = %bb.bu
  %i.rn = add i32 %i.ri, 1
  %i.ro = zext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ro ; 2 uses
  %i.rq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.rp, ptr noundef nonnull %i.q, i32 noundef 10) #24
  %i.rr = trunc i64 %i.rq to i32
  %i.rs = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !123
  %.not88.i = icmp eq i8 %i.rt, 0
  br i1 %.not88.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.277, ptr noundef nonnull %i.rp) #24
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %i.ru = load i32, ptr %i.qu, align 4, !tbaa !98 ; 2 uses
  %i.rv = zext i32 %i.ru to i64
  %i.rw = call noalias ptr @calloc(i64 noundef %i.rv, i64 noundef 72) #23 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !105
  %.not89.i = icmp eq ptr %i.rw, null
  br i1 %.not89.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.278, i32 noundef %i.ru) #24
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  %i.ry = load i32, ptr %i.oy, align 8, !tbaa !145 ; 2 uses
  %i.rz = zext i32 %i.ry to i64
  %i.sa = call noalias ptr @calloc(i64 noundef %i.rz, i64 noundef 32) #23 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.sa, ptr %i.sb, align 8, !tbaa !114
  %.not90.i = icmp eq ptr %i.sa, null
  br i1 %.not90.i, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.279, i32 noundef %i.ry) #24
  br label %bb.cf

bb.cc:                                            ; preds = %bb.o, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  %i.sc = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 58) #26 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.sd, align 8, !tbaa !146
  %.not123 = icmp eq ptr %i.sc, null
  br i1 %.not123, label %.thread310, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.sf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.se, ptr noundef null, i32 noundef 10) #24, !inline_history !150
  %i.sg = trunc i64 %i.sf to i32
  %spec.select355 = call i32 @llvm.umax.i32(i32 %i.sg, i32 4096)
  br label %.thread310

.thread310:                                       ; preds = %bb.cd, %bb.cc
  %.1306 = phi i32 [ 4096, %bb.cc ], [ %spec.select355, %bb.cd ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %.1306) #24
  br label %bb.cg

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  br label %bb.cg

bb.cf:                                            ; preds = %bb.br, %bb.bz, %bb.cb, %bb.m, %bb.bx, %bb.bv, %bb.bt, %bb.f
  %.0.i.ph.ph = phi i32 [ 4, %bb.f ], [ 4, %bb.bt ], [ 4, %bb.bv ], [ 4, %bb.bx ], [ 4, %bb.m ], [ 20, %bb.cb ], [ 20, %bb.bz ], [ 4, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef 0) #24
  br label %bb.qb

bb.cg:                                            ; preds = %bb.ce, %.thread310
  %i.sh = phi i1 [ false, %.thread310 ], [ true, %bb.ce ]
  %.2307315 = phi i32 [ %.1306, %.thread310 ], [ %i.rr, %bb.ce ] ; 13 uses
  %i.si = zext i32 %.2307315 to i64
  %i.sj = call noalias ptr @malloc(i64 noundef %i.si) #25 ; 191 uses
  %.not125 = icmp eq ptr %i.sj, null
  br i1 %.not125, label %bb.ch, label %.preheader

.preheader:                                       ; preds = %bb.cg
  %i.sk = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not12611021116.not = icmp eq ptr %i.sk, null
  br i1 %.not12611021116.not, label %.critedge, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.29, i32 noundef %.2307315) #24
  br label %bb.qb

bb.ci:                                            ; preds = %.preheader
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 1 ; 5 uses
  %i.sm = load i32, ptr @cli_apicall_maxglobal, align 4 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.so = load i32, ptr @cli_apicall_maxapi, align 4 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
end_hunk_0
begin_hunk_1_@cli_bytecode_load:bb.a
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  store i32 1, ptr %i.vi, align 8, !tbaa !120
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  store i32 1, ptr %i.vj, align 8, !tbaa !121
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uy, i64 72
  store ptr getelementptr inbounds nuw (i8, ptr @containedTy, i64 4), ptr %i.vk, align 8, !tbaa !122
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uy, i64 88
  store i32 8, ptr %i.vl, align 8, !tbaa !115
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uy, i64 84
  store i32 8, ptr %i.vm, align 4, !tbaa !119
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uy, i64 96
  store i32 1, ptr %i.vn, align 8, !tbaa !120
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uy, i64 112
  store i32 1, ptr %i.vo, align 8, !tbaa !121
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uy, i64 104
  store ptr getelementptr inbounds nuw (i8, ptr @containedTy, i64 6), ptr %i.vp, align 8, !tbaa !122
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uy, i64 120
  store i32 8, ptr %i.vq, align 8, !tbaa !115
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uy, i64 116
  store i32 8, ptr %i.vr, align 4, !tbaa !119
  %i.vs = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.vt = add i32 %i.vs, -6
  %i.vu = icmp ult i32 %i.vt, -5
  br i1 %i.vu, label %.lr.ph.i, label %parseLSig.exit.jt1

.preheader.i:                                     ; preds = %bb.ec
  %.pre186.i = add i32 %i.abl, -6
  %i.vv = icmp ult i32 %.pre186.i, -5
  br i1 %i.vv, label %.lr.ph151.i, label %parseLSig.exit.jt1

.lr.ph.i:                                         ; preds = %bb.cu, %bb.ec
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.ec ], [ 4, %bb.cu ] ; 7 uses
  %i.vw = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.vx = getelementptr inbounds nuw [32 x i8], ptr %i.vw, i64 %indvars.iv180.i ; 20 uses
  %i.vy = load i32, ptr %i.k, align 4, !tbaa !117 ; 4 uses
  %i.vz = add i32 %i.vy, 1                        ; 4 uses
  %i.wa = icmp ugt i32 %i.vz, %i.ti
  br i1 %i.wa, label %bb.cv, label %.preheader.i85.i

.preheader.i85.i:                                 ; preds = %.lr.ph.i
  %.not113.i = icmp eq i32 %i.vy, -1
  br i1 %.not113.i, label %.thread.i152, label %.lr.ph.preheader.i89.i

.lr.ph.preheader.i89.i:                           ; preds = %.preheader.i85.i
  %i.wb = zext i32 %i.vy to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !123
  %i.we = zext i8 %i.wd to i32                    ; 3 uses
  %i.wf = and i32 %i.we, 240
  %.not.i94.i = icmp eq i32 %i.wf, 96
  br i1 %.not.i94.i, label %bb.cy, label %bb.cw, !prof !134

bb.cv:                                            ; preds = %.lr.ph.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph.preheader.i89.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.we) #24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.291) #24
  br label %bb.eh

bb.cy:                                            ; preds = %.lr.ph.preheader.i89.i
  %i.wg = and i32 %i.we, 15                       ; 4 uses
  store i32 %i.vz, ptr %i.k, align 4, !tbaa !117
  %trunc.i = trunc nuw nsw i32 %i.wg to i8
  switch i8 %trunc.i, label %.thread.i152 [
    i8 1, label %bb.cz
    i8 2, label %bb.dd
    i8 3, label %bb.dd
    i8 4, label %bb.df
    i8 5, label %bb.dm
  ]

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.vx, align 8, !tbaa !120
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store i32 8, ptr %i.wh, align 8, !tbaa !115
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 8, ptr %i.wi, align 4, !tbaa !119
  call fastcc void @parseType(ptr noundef nonnull %0, ptr noundef nonnull %i.vx, ptr noundef nonnull readonly %i.sj, ptr noundef %i.k, i32 noundef %i.ti, ptr noundef %i.l)
  %i.wj = load i8, ptr %i.l, align 1, !tbaa !132, !range !136, !noundef !137
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wl = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.wl) #24
  br label %bb.eh

bb.db:                                            ; preds = %bb.cz
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !121
  %.not84.i = icmp eq i32 %i.wn, 0
  br i1 %.not84.i, label %bb.dc, label %bb.ec

bb.dc:                                            ; preds = %bb.db
  %i.wo = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.293, i32 noundef %i.wo) #24
  br label %bb.eh

bb.dd:                                            ; preds = %bb.cy, %bb.cy
  %i.wp = icmp eq i32 %i.wg, 2
  %i.wq = select i1 %i.wp, i32 3, i32 2
  store i32 %i.wq, ptr %i.vx, align 8, !tbaa !120
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 0, ptr %i.ws, align 4, !tbaa !119
  store i32 8, ptr %i.wr, align 8, !tbaa !115
  call fastcc void @parseType(ptr noundef nonnull %0, ptr noundef nonnull %i.vx, ptr noundef nonnull readonly %i.sj, ptr noundef %i.k, i32 noundef %i.ti, ptr noundef %i.l)
  %i.wt = load i8, ptr %i.l, align 1, !tbaa !132, !range !136, !noundef !137
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.ec, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wv = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.wv) #24
  br label %bb.eh

bb.df:                                            ; preds = %bb.cy
  store i32 4, ptr %i.vx, align 8, !tbaa !120
  %i.ww = zext i32 %i.vz to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !123
  %.fr4237 = freeze i8 %i.wy                      ; 3 uses
  %i.wz = zext i8 %.fr4237 to i32                 ; 2 uses
  %i.xa = add nsw i32 %i.wz, -96                  ; 4 uses
  %i.xb = icmp ugt i32 %i.xa, 16
  br i1 %i.xb, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.wz) #24
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.xc = add i32 %i.vy, 2                        ; 3 uses
  %i.xd = add i32 %i.xa, %i.xc                    ; 4 uses
  %i.xe = icmp ugt i32 %i.xd, %i.ti
  br i1 %i.xe, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  %i.xf = icmp ne i8 %.fr4237, 96
  %i.xg = icmp ult i32 %i.xc, %i.xd
  %or.cond.i146 = and i1 %i.xf, %i.xg
  br i1 %or.cond.i146, label %.lr.ph.i102.preheader.i, label %readNumber.exit.i

.lr.ph.i102.preheader.i:                          ; preds = %bb.dj
  %i.xh = zext i32 %i.xc to i64                   ; 2 uses
  %i.xi = zext nneg i32 %i.xa to i64              ; 2 uses
  %xtraiter4010 = and i64 %i.xi, 1
  %i.xj = icmp eq i32 %i.xa, 1
  br i1 %i.xj, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.i102.preheader.i.new

.lr.ph.i102.preheader.i.new:                      ; preds = %.lr.ph.i102.preheader.i
  %unroll_iter4014 = and i64 %i.xi, 30
  br label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %bb.dk, %.lr.ph.i102.preheader.i.new
  %indvars.iv.i147 = phi i64 [ %i.xh, %.lr.ph.i102.preheader.i.new ], [ %indvars.iv.next.i150.1, %bb.dk ] ; 3 uses
  %.03346.i.i = phi i32 [ 0, %.lr.ph.i102.preheader.i.new ], [ %i.yd, %bb.dk ] ; 3 uses
  %.03545.i.i148 = phi i64 [ 0, %.lr.ph.i102.preheader.i.new ], [ %i.yc, %bb.dk ]
  %niter4015 = phi i64 [ 0, %.lr.ph.i102.preheader.i.new ], [ %niter4015.next.1, %bb.dk ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !123 ; 2 uses
  %i.xm = zext i8 %i.xl to i64                    ; 2 uses
  %i.xn = and i64 %i.xm, 240
  %.not.i103.i = icmp eq i64 %i.xn, 96
  br i1 %.not.i103.i, label %.lr.ph.i102.i.1, label %.thread.i.i149, !prof !134

.thread.i.i149:                                   ; preds = %.lr.ph.i102.i.epil.preheader, %.lr.ph.i102.i, %.lr.ph.i102.i.1
  %.lcssa3881 = phi i8 [ %i.xr, %.lr.ph.i102.i.1 ], [ %i.xl, %.lr.ph.i102.i ], [ %i.yf, %.lr.ph.i102.i.epil.preheader ]
  %i.xo = sext i8 %.lcssa3881 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.xo) #24
  br label %bb.dl

.lr.ph.i102.i.1:                                  ; preds = %.lr.ph.i102.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !123 ; 2 uses
  %i.xs = zext i8 %i.xr to i64                    ; 2 uses
  %i.xt = and i64 %i.xs, 240
  %.not.i103.i.1 = icmp eq i64 %i.xt, 96
  br i1 %.not.i103.i.1, label %bb.dk, label %.thread.i.i149, !prof !134

bb.dk:                                            ; preds = %.lr.ph.i102.i.1
  %i.xu = or disjoint i32 %.03346.i.i, 4
  %i.xv = and i64 %i.xm, 15
  %i.xw = zext nneg i32 %.03346.i.i to i64
  %i.xx = shl i64 %i.xv, %i.xw
  %i.xy = or i64 %i.xx, %.03545.i.i148
  %i.xz = and i64 %i.xs, 15
  %i.ya = zext nneg i32 %i.xu to i64
  %i.yb = shl i64 %i.xz, %i.ya
  %i.yc = or i64 %i.yb, %i.xy                     ; 3 uses
  %i.yd = add nuw nsw i32 %.03346.i.i, 8          ; 2 uses
  %indvars.iv.next.i150.1 = add nuw nsw i64 %indvars.iv.i147, 2 ; 2 uses
  %niter4015.next.1 = add i64 %niter4015, 2       ; 2 uses
  %niter4015.ncmp.1 = icmp eq i64 %niter4015.next.1, %unroll_iter4014
  br i1 %niter4015.ncmp.1, label %._crit_edge.i100.loopexit.i.unr-lcssa, label %.lr.ph.i102.i

._crit_edge.i100.loopexit.i.unr-lcssa:            ; preds = %bb.dk
  %lcmp.mod4011.not = icmp eq i64 %xtraiter4010, 0
  br i1 %lcmp.mod4011.not, label %._crit_edge.i100.loopexit.i, label %.lr.ph.i102.i.epil.preheader

.lr.ph.i102.i.epil.preheader:                     ; preds = %._crit_edge.i100.loopexit.i.unr-lcssa, %.lr.ph.i102.preheader.i
  %indvars.iv.i147.epil.init = phi i64 [ %i.xh, %.lr.ph.i102.preheader.i ], [ %indvars.iv.next.i150.1, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %.03346.i.i.epil.init = phi i32 [ 0, %.lr.ph.i102.preheader.i ], [ %i.yd, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %.03545.i.i148.epil.init = phi i64 [ 0, %.lr.ph.i102.preheader.i ], [ %i.yc, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %lcmp.mod4013 = trunc i8 %.fr4237 to i1
  call void @llvm.assume(i1 %lcmp.mod4013)
  %i.ye = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147.epil.init
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !123 ; 2 uses
  %i.yg = zext i8 %i.yf to i64                    ; 2 uses
  %i.yh = and i64 %i.yg, 240
  %.not.i103.i.epil = icmp eq i64 %i.yh, 96
  br i1 %.not.i103.i.epil, label %._crit_edge.i100.loopexit.i.epilog-lcssa, label %.thread.i.i149, !prof !134

._crit_edge.i100.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i102.i.epil.preheader
  %i.yi = and i64 %i.yg, 15
  %i.yj = zext nneg i32 %.03346.i.i.epil.init to i64
  %i.yk = shl i64 %i.yi, %i.yj
  %i.yl = or i64 %i.yk, %.03545.i.i148.epil.init
  br label %._crit_edge.i100.loopexit.i

._crit_edge.i100.loopexit.i:                      ; preds = %._crit_edge.i100.loopexit.i.unr-lcssa, %._crit_edge.i100.loopexit.i.epilog-lcssa
  %.lcssa3883 = phi i64 [ %i.yc, %._crit_edge.i100.loopexit.i.unr-lcssa ], [ %i.yl, %._crit_edge.i100.loopexit.i.epilog-lcssa ]
  %i.ym = trunc i64 %.lcssa3883 to i32
  br label %readNumber.exit.i

readNumber.exit.i:                                ; preds = %._crit_edge.i100.loopexit.i, %bb.dj
  %.2.i101.i = phi i32 [ 0, %bb.dj ], [ %i.ym, %._crit_edge.i100.loopexit.i ]
  store i32 %i.xd, ptr %i.k, align 4, !tbaa !117
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 %.2.i101.i, ptr %i.yn, align 8, !tbaa !121
  br label %bb.dm

bb.dl:                                            ; preds = %.thread.i.i149, %bb.di, %bb.dg
  %i.yo = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 0, ptr %i.yo, align 8, !tbaa !121
  %i.yp = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.yp) #24
  br label %bb.eh

bb.dm:                                            ; preds = %readNumber.exit.i, %bb.cy
  %i.yq = phi i32 [ %i.xd, %readNumber.exit.i ], [ %i.vz, %bb.cy ] ; 2 uses
  %i.yr = icmp eq i32 %i.wg, 5                    ; 2 uses
  br i1 %i.yr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 1, ptr %i.vx, align 8, !tbaa !120
  %i.ys = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 1, ptr %i.ys, align 8, !tbaa !121
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.yt = call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #25 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 4 uses
  store ptr %i.yt, ptr %i.yu, align 8, !tbaa !122
  %.not83.i = icmp eq ptr %i.yt, null
  br i1 %.not83.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.294) #24
  br label %bb.eh

bb.dq:                                            ; preds = %bb.do
  %i.yv = zext i32 %i.yq to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !123
  %.fr4240 = freeze i8 %i.yx                      ; 3 uses
  %i.yy = zext i8 %.fr4240 to i32                 ; 2 uses
  %i.yz = add nsw i32 %i.yy, -96                  ; 4 uses
  %i.za = icmp ugt i32 %i.yz, 16
  br i1 %i.za, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.yy) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.zb = add i32 %i.yq, 1                        ; 3 uses
  %i.zc = add i32 %i.yz, %i.zb                    ; 4 uses
  %i.zd = icmp ugt i32 %i.zc, %i.ti
  br i1 %i.zd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

bb.du:                                            ; preds = %bb.ds
  %i.ze = icmp eq i8 %.fr4240, 96
  br i1 %i.ze, label %bb.dv, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.du
  %i.zf = icmp ult i32 %i.zb, %i.zc
  br i1 %i.zf, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.preheader.i.i.i
  %i.zg = zext i32 %i.zb to i64                   ; 2 uses
  %i.zh = zext nneg i32 %i.yz to i64              ; 2 uses
  %xtraiter4020 = and i64 %i.zh, 1
  %i.zi = icmp eq i32 %i.yz, 1
  br i1 %i.zi, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.new

.lr.ph.i.preheader.i.i.new:                       ; preds = %.lr.ph.i.preheader.i.i
  %unroll_iter4024 = and i64 %i.zh, 30
  br label %.lr.ph.i.i.i

bb.dv:                                            ; preds = %bb.du
  store i32 %i.zc, ptr %i.k, align 4, !tbaa !117
  br label %readNumber.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dw, %.lr.ph.i.preheader.i.i.new
  %indvars.iv.i106.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %indvars.iv.next1911.1, %bb.dw ] ; 3 uses
  %indvars.iv.i106.i = phi i64 [ %i.zg, %.lr.ph.i.preheader.i.i.new ], [ %indvars.iv.next.i107.i.1, %bb.dw ] ; 3 uses
  %.03545.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %i.zy, %bb.dw ]
  %niter4025 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %niter4025.next.1, %bb.dw ]
  %i.zj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !123 ; 2 uses
  %i.zl = zext i8 %i.zk to i64                    ; 2 uses
  %i.zm = and i64 %i.zl, 240
  %.not.i.i.i = icmp eq i64 %i.zm, 96
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.1, label %.thread.i.i.i, !prof !134

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.epil.preheader
  %.lcssa3884 = phi i8 [ %i.aaa, %.lr.ph.i.i.i.epil.preheader ], [ %i.zk, %.lr.ph.i.i.i ], [ %i.zq, %.lr.ph.i.i.i.1 ]
  %i.zn = sext i8 %.lcssa3884 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.zn) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !123 ; 2 uses
  %i.zr = zext i8 %i.zq to i64                    ; 2 uses
  %i.zs = and i64 %i.zr, 240
  %.not.i.i.i.1 = icmp eq i64 %i.zs, 96
  br i1 %.not.i.i.i.1, label %bb.dw, label %.thread.i.i.i, !prof !134

bb.dw:                                            ; preds = %.lr.ph.i.i.i.1
  %indvars.iv.next1911 = or disjoint i64 %indvars.iv.i106.i.a, 4
  %i.zt = and i64 %i.zl, 15
  %i.zu = shl i64 %i.zt, %indvars.iv.i106.i.a
  %i.zv = or i64 %i.zu, %.03545.i.i.i
  %i.zw = and i64 %i.zr, 15
  %i.zx = shl i64 %i.zw, %indvars.iv.next1911
  %i.zy = or i64 %i.zx, %i.zv                     ; 3 uses
  %indvars.iv.next1911.1 = add nuw nsw i64 %indvars.iv.i106.i.a, 8 ; 2 uses
  %indvars.iv.next.i107.i.1 = add nuw nsw i64 %indvars.iv.i106.i, 2 ; 2 uses
  %niter4025.next.1 = add i64 %niter4025, 2       ; 2 uses
  %niter4025.ncmp.1 = icmp eq i64 %niter4025.next.1, %unroll_iter4024
  br i1 %niter4025.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.dw
  %lcmp.mod4021.not = icmp eq i64 %xtraiter4020, 0
  br i1 %lcmp.mod4021.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i
  %indvars.iv.i106.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next1911.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i106.i.epil.init = phi i64 [ %i.zg, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next.i107.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.03545.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.zy, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4023 = trunc i8 %.fr4240 to i1
  call void @llvm.assume(i1 %lcmp.mod4023)
  %i.zz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i.epil.init
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !123 ; 2 uses
  %i.aab = zext i8 %i.aaa to i64                  ; 2 uses
  %i.aac = and i64 %i.aab, 240
  %.not.i.i.i.epil = icmp eq i64 %i.aac, 96
  br i1 %.not.i.i.i.epil, label %._crit_edge.i.i.i.loopexit.epilog-lcssa, label %.thread.i.i.i, !prof !134

._crit_edge.i.i.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.aad = and i64 %i.aab, 15
  %i.aae = shl i64 %i.aad, %indvars.iv.i106.i.epil.init.a
  %i.aaf = or i64 %i.aae, %.03545.i.i.i.epil.init
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i
  %.035.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.zy, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.aaf, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  store i32 %i.zc, ptr %i.k, align 4, !tbaa !117
  br label %readNumber.exit.i.i

readNumber.exit.i.i:                              ; preds = %._crit_edge.i.i.i, %.thread.i.i.i, %bb.dv, %bb.dt, %bb.dr
  %i.aag = phi i1 [ false, %bb.dr ], [ false, %bb.dt ], [ true, %bb.dv ], [ false, %.thread.i.i.i ], [ true, %._crit_edge.i.i.i ]
  %.2.i.i.i = phi i64 [ 0, %bb.dr ], [ 0, %bb.dt ], [ 0, %bb.dv ], [ 0, %.thread.i.i.i ], [ %.035.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aah = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.aai = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.aaj = zext i16 %i.aai to i32
  %i.aak = add i32 %i.aah, %i.aaj
  %i.aal = zext i32 %i.aak to i64
  %.not.i105.i = icmp ult i64 %.2.i.i.i, %i.aal
  br i1 %.not.i105.i, label %readTypeID.exit.i, label %readTypeID.exit.thread.i

readTypeID.exit.thread.i:                         ; preds = %readNumber.exit.i.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i) #24
  %i.aam = load ptr, ptr %i.yu, align 8, !tbaa !122
  store i16 -1, ptr %i.aam, align 2, !tbaa !113
  br label %.loopexit208.i

readTypeID.exit.i:                                ; preds = %readNumber.exit.i.i
  %i.aan = trunc i64 %.2.i.i.i to i16             ; 2 uses
  %i.aao = load ptr, ptr %i.yu, align 8, !tbaa !122
  store i16 %i.aan, ptr %i.aao, align 2, !tbaa !113
  br i1 %i.aag, label %bb.dx, label %.loopexit208.i

.loopexit208.i:                                   ; preds = %readTypeID.exit.i, %readTypeID.exit.thread.i
  %i.aap = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.aap) #24
  br label %bb.eh

bb.dx:                                            ; preds = %readTypeID.exit.i
  br i1 %i.yr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store i32 8, ptr %i.aaq, align 8, !tbaa !115
  %i.aar = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 8, ptr %i.aar, align 4, !tbaa !119
  br label %bb.ec

bb.dz:                                            ; preds = %bb.dx
  %i.aas = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !121
  %i.aau = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.aan)
  %i.aav = mul i32 %i.aau, %i.aat
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 %i.aav, ptr %i.aaw, align 4, !tbaa !119
  %i.aax = load ptr, ptr %i.yu, align 8, !tbaa !122
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !113
  %i.aaz = and i16 %i.aay, 32767                  ; 3 uses
  %i.aba = icmp samesign ult i16 %i.aaz, 65
  br i1 %i.aba, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.abb = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.aaz)
  %i.abc = call i32 @llvm.umax.i32(i32 %i.abb, i32 1)
  br label %typealign.exit.i

bb.eb:                                            ; preds = %bb.dz
  %i.abd = zext nneg i16 %i.aaz to i64
  %i.abe = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.abf = add nuw nsw i64 %i.abd, 4294967231
  %i.abg = and i64 %i.abf, 4294967295
  %i.abh = getelementptr inbounds nuw [32 x i8], ptr %i.abe, i64 %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !115
  br label %typealign.exit.i

typealign.exit.i:                                 ; preds = %bb.eb, %bb.ea
  %.0.i108.i = phi i32 [ %i.abc, %bb.ea ], [ %i.abj, %bb.eb ]
  %i.abk = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store i32 %.0.i108.i, ptr %i.abk, align 8, !tbaa !115
  br label %bb.ec

.thread.i152:                                     ; preds = %bb.cy, %.preheader.i85.i
  %.025.lcssa.i87205.i = phi i32 [ 0, %.preheader.i85.i ], [ %i.wg, %bb.cy ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.295, i32 noundef %.025.lcssa.i87205.i) #24
  br label %bb.eh

bb.ec:                                            ; preds = %typealign.exit.i, %bb.dy, %bb.dd, %bb.db
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %i.abl = load i32, ptr %i.sr, align 8, !tbaa !145 ; 3 uses
  %i.abm = add i32 %i.abl, -1
  %i.abn = zext i32 %i.abm to i64
  %i.abo = icmp samesign ult i64 %indvars.iv.next181.i, %i.abn
  br i1 %i.abo, label %.lr.ph.i, label %.preheader.i

.lr.ph151.i:                                      ; preds = %.preheader.i, %bb.eg
  %i.abp = phi i32 [ %i.acq, %bb.eg ], [ %i.abl, %.preheader.i ]
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %bb.eg ], [ 4, %.preheader.i ] ; 2 uses
  %i.abq = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.abr = getelementptr inbounds nuw [32 x i8], ptr %i.abq, i64 %indvars.iv183.i ; 5 uses
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !120
  %i.abt = icmp eq i32 %i.abs, 4
  br i1 %i.abt, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %.lr.ph151.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !121
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 8 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !122
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !113
  %i.abz = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.aby)
  %i.aca = mul i32 %i.abz, %i.abv
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abr, i64 20
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !119
  %i.acc = load ptr, ptr %i.abw, align 8, !tbaa !122
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !113
  %i.ace = and i16 %i.acd, 32767                  ; 3 uses
  %i.acf = icmp samesign ult i16 %i.ace, 65
  br i1 %i.acf, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.acg = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.ace)
  %i.ach = call i32 @llvm.umax.i32(i32 %i.acg, i32 1)
  br label %typealign.exit110.i

bb.ef:                                            ; preds = %bb.ed
  %i.aci = zext nneg i16 %i.ace to i64
  %i.acj = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.ack = add nuw nsw i64 %i.aci, 4294967231
  %i.acl = and i64 %i.ack, 4294967295
  %i.acm = getelementptr inbounds nuw [32 x i8], ptr %i.acj, i64 %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = load i32, ptr %i.acn, align 8, !tbaa !115
  br label %typealign.exit110.i

typealign.exit110.i:                              ; preds = %bb.ef, %bb.ee
  %.0.i109.i = phi i32 [ %i.ach, %bb.ee ], [ %i.aco, %bb.ef ]
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  store i32 %.0.i109.i, ptr %i.acp, align 8, !tbaa !115
  %.pre.i145 = load i32, ptr %i.sr, align 8, !tbaa !145
  br label %bb.eg

bb.eg:                                            ; preds = %typealign.exit110.i, %.lr.ph151.i
  %i.acq = phi i32 [ %.pre.i145, %typealign.exit110.i ], [ %i.abp, %.lr.ph151.i ] ; 2 uses
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %i.acr = add i32 %i.acq, -1
  %i.acs = zext i32 %i.acr to i64
  %i.act = icmp samesign ult i64 %indvars.iv.next184.i, %i.acs
  br i1 %i.act, label %.lr.ph151.i, label %parseLSig.exit.jt1

bb.eh:                                            ; preds = %bb.cq, %.loopexit364, %.thread.i152, %bb.dl, %bb.dp, %.loopexit208.i, %bb.de, %bb.da, %bb.dc, %bb.cx
  %.2.i.ph = phi i32 [ 4, %bb.cx ], [ 4, %bb.dc ], [ 4, %bb.da ], [ 4, %bb.de ], [ 4, %.loopexit208.i ], [ 4, %bb.dp ], [ 4, %bb.dl ], [ 4, %.thread.i152 ], [ 22, %.loopexit364 ], [ 4, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef 2) #24
  call void @free(ptr noundef %i.sj) #24
  br label %bb.qb

bb.ei:                                            ; preds = %bb.cl
  %i.acu = zext i8 %i.ty to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.298, i32 noundef %i.acu) #24
  br label %bb.fw

bb.ej:                                            ; preds = %bb.cl
  %i.acv = load i8, ptr %i.sl, align 1, !tbaa !123
  %.fr4243 = freeze i8 %i.acv                     ; 4 uses
  %i.acw = zext i8 %.fr4243 to i32                ; 3 uses
  %i.acx = add i8 %.fr4243, -113
  %i.acy = icmp ult i8 %i.acx, -17
  br i1 %i.acy, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.acw) #24
  br label %bb.fw

bb.el:                                            ; preds = %bb.ej
  %i.acz = add nsw i32 %i.acw, -94                ; 3 uses
  %i.ada = icmp ugt i32 %i.acz, %i.tx
  br i1 %i.ada, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.fw

bb.en:                                            ; preds = %bb.el
  %i.adb = icmp eq i8 %.fr4243, 96
  %.pre = zext i32 %i.acz to i64                  ; 3 uses
  br i1 %i.adb, label %readNumber.exit.thread145.i, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %bb.en
  %xtraiter4026 = and i64 %.pre, 1
  %i.adc = icmp eq i32 %i.acz, 3
  br i1 %i.adc, label %.lr.ph.i.i156.epil.preheader, label %.lr.ph.i.i156.preheader.new

.lr.ph.i.i156.preheader.new:                      ; preds = %.lr.ph.i.i156.preheader
  %i.add = and i64 %.pre, 4294967294
  %i.ade = add nsw i64 %i.add, -4
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %bb.eo, %.lr.ph.i.i156.preheader.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %indvars.iv.next119.i.1, %bb.eo ] ; 3 uses
  %indvars.iv.i157 = phi i64 [ 2, %.lr.ph.i.i156.preheader.new ], [ %indvars.iv.next.i161.1, %bb.eo ] ; 3 uses
  %.03545.i.i158 = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %i.adu, %bb.eo ]
  %niter4031 = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %niter4031.next.1, %bb.eo ] ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !123 ; 2 uses
  %i.adh = zext i8 %i.adg to i64                  ; 2 uses
  %i.adi = and i64 %i.adh, 240
  %.not.i.i159 = icmp eq i64 %i.adi, 96
  br i1 %.not.i.i159, label %.lr.ph.i.i156.1, label %.thread.i.i160, !prof !134

.thread.i.i160:                                   ; preds = %.lr.ph.i.i156, %.lr.ph.i.i156.1, %.lr.ph.i.i156.epil.preheader
  %.lcssa3878 = phi i8 [ %i.adw, %.lr.ph.i.i156.epil.preheader ], [ %i.adg, %.lr.ph.i.i156 ], [ %i.adm, %.lr.ph.i.i156.1 ]
  %i.adj = sext i8 %.lcssa3878 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.adj) #24
  br label %bb.fw

.lr.ph.i.i156.1:                                  ; preds = %.lr.ph.i.i156
  %i.adk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 1
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !123 ; 2 uses
  %i.adn = zext i8 %i.adm to i64                  ; 2 uses
  %i.ado = and i64 %i.adn, 240
  %.not.i.i159.1 = icmp eq i64 %i.ado, 96
  br i1 %.not.i.i159.1, label %bb.eo, label %.thread.i.i160, !prof !134

bb.eo:                                            ; preds = %.lr.ph.i.i156.1
  %indvars.iv.next119.i = or disjoint i64 %indvars.iv118.i, 4
  %i.adp = and i64 %i.adh, 15
  %i.adq = shl i64 %i.adp, %indvars.iv118.i
  %i.adr = or i64 %i.adq, %.03545.i.i158
  %i.ads = and i64 %i.adn, 15
  %i.adt = shl i64 %i.ads, %indvars.iv.next119.i
  %i.adu = or i64 %i.adt, %i.adr                  ; 3 uses
  %indvars.iv.next119.i.1 = add nuw nsw i64 %indvars.iv118.i, 8 ; 2 uses
  %indvars.iv.next.i161.1 = add nuw nsw i64 %indvars.iv.i157, 2 ; 2 uses
  %niter4031.next.1 = add i64 %niter4031, 2
  %niter4031.ncmp.1 = icmp eq i64 %niter4031, %i.ade
  br i1 %niter4031.ncmp.1, label %readNumber.exit.i163.unr-lcssa, label %.lr.ph.i.i156

readNumber.exit.i163.unr-lcssa:                   ; preds = %bb.eo
  %lcmp.mod4027.not = icmp eq i64 %xtraiter4026, 0
  br i1 %lcmp.mod4027.not, label %readNumber.exit.i163, label %.lr.ph.i.i156.epil.preheader

.lr.ph.i.i156.epil.preheader:                     ; preds = %readNumber.exit.i163.unr-lcssa, %.lr.ph.i.i156.preheader
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph.i.i156.preheader ], [ %indvars.iv.next119.i.1, %readNumber.exit.i163.unr-lcssa ]
  %indvars.iv.i157.epil.init = phi i64 [ 2, %.lr.ph.i.i156.preheader ], [ %indvars.iv.next.i161.1, %readNumber.exit.i163.unr-lcssa ]
  %.03545.i.i158.epil.init = phi i64 [ 0, %.lr.ph.i.i156.preheader ], [ %i.adu, %readNumber.exit.i163.unr-lcssa ]
  %lcmp.mod4029 = trunc i8 %.fr4243 to i1
  call void @llvm.assume(i1 %lcmp.mod4029)
  %i.adv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157.epil.init
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !123 ; 2 uses
  %i.adx = zext i8 %i.adw to i64                  ; 2 uses
  %i.ady = and i64 %i.adx, 240
  %.not.i.i159.epil = icmp eq i64 %i.ady, 96
  br i1 %.not.i.i159.epil, label %readNumber.exit.i163.epilog-lcssa, label %.thread.i.i160, !prof !134

readNumber.exit.i163.epilog-lcssa:                ; preds = %.lr.ph.i.i156.epil.preheader
  %i.adz = and i64 %i.adx, 15
  %i.aea = shl i64 %i.adz, %indvars.iv118.i.epil.init
  %i.aeb = or i64 %i.aea, %.03545.i.i158.epil.init
  br label %readNumber.exit.i163

readNumber.exit.i163:                             ; preds = %readNumber.exit.i163.unr-lcssa, %readNumber.exit.i163.epilog-lcssa
  %.lcssa3880.a = phi i64 [ %i.adu, %readNumber.exit.i163.unr-lcssa ], [ %i.aeb, %readNumber.exit.i163.epilog-lcssa ]
  %i.aec = trunc i64 %.lcssa3880.a to i32         ; 3 uses
  %i.aed = icmp ult i32 %i.so, %i.aec
  br i1 %i.aed, label %bb.fv, label %readNumber.exit.thread145.i

readNumber.exit.thread145.i:                      ; preds = %bb.en, %readNumber.exit.i163
  %.2.i147.i = phi i32 [ %i.aec, %readNumber.exit.i163 ], [ 0, %bb.en ] ; 5 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.pre
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !123
  %i.aeg = zext i8 %i.aef to i32                  ; 2 uses
  %i.aeh = add nsw i32 %i.aeg, -96                ; 3 uses
  %i.aei = icmp ugt i32 %i.aeh, 16
  br i1 %i.aei, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %readNumber.exit.thread145.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.aeg) #24
  br label %bb.fw

bb.eq:                                            ; preds = %readNumber.exit.thread145.i
  %i.aej = add nsw i32 %i.acw, -93                ; 2 uses
  %i.aek = add nuw nsw i32 %i.aeh, %i.aej         ; 4 uses
  %i.ael = icmp ugt i32 %i.aek, %i.tx
  br i1 %i.ael, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.fw

bb.es:                                            ; preds = %bb.eq
  %.not188.i = icmp eq i32 %i.aeh, 0
  br i1 %.not188.i, label %.sink.split.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %bb.es
  %i.aem = zext i32 %i.aej to i64                 ; 3 uses
  %i.aen = zext i32 %i.aek to i64
  %i.aeo = sub nsw i64 %i.aen, %i.aem
  %i.aep = freeze i64 %i.aeo                      ; 4 uses
  %xtraiter4032 = and i64 %i.aep, 1
  %i.aeq = icmp eq i64 %i.aep, 1
  br i1 %i.aeq, label %.lr.ph.i69.i.epil.preheader, label %.lr.ph.i69.preheader.i.new

.lr.ph.i69.preheader.i.new:                       ; preds = %.lr.ph.i69.preheader.i
  %unroll_iter4036 = and i64 %i.aep, -2
  br label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.et, %.lr.ph.i69.preheader.i.new
  %indvars.iv123.i = phi i64 [ %i.aem, %.lr.ph.i69.preheader.i.new ], [ %indvars.iv.next124.i.1, %bb.et ] ; 3 uses
  %.03346.i71.i = phi i32 [ 0, %.lr.ph.i69.preheader.i.new ], [ %i.afk, %bb.et ] ; 3 uses
  %.03545.i72.i = phi i64 [ 0, %.lr.ph.i69.preheader.i.new ], [ %i.afj, %bb.et ]
  %niter4037 = phi i64 [ 0, %.lr.ph.i69.preheader.i.new ], [ %niter4037.next.1, %bb.et ]
  %i.aer = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv123.i
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !123 ; 2 uses
  %i.aet = zext i8 %i.aes to i64                  ; 2 uses
  %i.aeu = and i64 %i.aet, 240
  %.not.i73.i = icmp eq i64 %i.aeu, 96
  br i1 %.not.i73.i, label %.lr.ph.i69.i.1, label %.thread.i74.i, !prof !134

.thread.i74.i:                                    ; preds = %.lr.ph.i69.i, %.lr.ph.i69.i.1, %.lr.ph.i69.i.epil.preheader
  %.lcssa3875 = phi i8 [ %i.afm, %.lr.ph.i69.i.epil.preheader ], [ %i.aes, %.lr.ph.i69.i ], [ %i.aey, %.lr.ph.i69.i.1 ]
  %i.aev = sext i8 %.lcssa3875 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aev) #24
  br label %bb.fw

.lr.ph.i69.i.1:                                   ; preds = %.lr.ph.i69.i
  %i.aew = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv123.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !123 ; 2 uses
  %i.aez = zext i8 %i.aey to i64                  ; 2 uses
  %i.afa = and i64 %i.aez, 240
  %.not.i73.i.1 = icmp eq i64 %i.afa, 96
  br i1 %.not.i73.i.1, label %bb.et, label %.thread.i74.i, !prof !134

bb.et:                                            ; preds = %.lr.ph.i69.i.1
  %i.afb = or disjoint i32 %.03346.i71.i, 4
  %i.afc = and i64 %i.aet, 15
  %i.afd = zext nneg i32 %.03346.i71.i to i64
  %i.afe = shl i64 %i.afc, %i.afd
  %i.aff = or i64 %i.afe, %.03545.i72.i
  %i.afg = and i64 %i.aez, 15
  %i.afh = zext nneg i32 %i.afb to i64
  %i.afi = shl i64 %i.afg, %i.afh
  %i.afj = or i64 %i.afi, %i.aff                  ; 3 uses
  %i.afk = add nuw nsw i32 %.03346.i71.i, 8       ; 2 uses
  %indvars.iv.next124.i.1 = add nuw nsw i64 %indvars.iv123.i, 2 ; 2 uses
  %niter4037.next.1 = add i64 %niter4037, 2       ; 2 uses
  %niter4037.ncmp.1 = icmp eq i64 %niter4037.next.1, %unroll_iter4036
  br i1 %niter4037.ncmp.1, label %readNumber.exit77.i.unr-lcssa, label %.lr.ph.i69.i

readNumber.exit77.i.unr-lcssa:                    ; preds = %bb.et
  %lcmp.mod4033.not = icmp eq i64 %xtraiter4032, 0
  br i1 %lcmp.mod4033.not, label %readNumber.exit77.i, label %.lr.ph.i69.i.epil.preheader

.lr.ph.i69.i.epil.preheader:                      ; preds = %readNumber.exit77.i.unr-lcssa, %.lr.ph.i69.preheader.i
  %indvars.iv123.i.epil.init = phi i64 [ %i.aem, %.lr.ph.i69.preheader.i ], [ %indvars.iv.next124.i.1, %readNumber.exit77.i.unr-lcssa ]
  %.03346.i71.i.epil.init = phi i32 [ 0, %.lr.ph.i69.preheader.i ], [ %i.afk, %readNumber.exit77.i.unr-lcssa ]
  %.03545.i72.i.epil.init = phi i64 [ 0, %.lr.ph.i69.preheader.i ], [ %i.afj, %readNumber.exit77.i.unr-lcssa ]
  %lcmp.mod4035 = trunc i64 %i.aep to i1
  call void @llvm.assume(i1 %lcmp.mod4035)
  %i.afl = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv123.i.epil.init
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !123 ; 2 uses
  %i.afn = zext i8 %i.afm to i64                  ; 2 uses
  %i.afo = and i64 %i.afn, 240
  %.not.i73.i.epil = icmp eq i64 %i.afo, 96
  br i1 %.not.i73.i.epil, label %readNumber.exit77.i.epilog-lcssa, label %.thread.i74.i, !prof !134

readNumber.exit77.i.epilog-lcssa:                 ; preds = %.lr.ph.i69.i.epil.preheader
  %i.afp = and i64 %i.afn, 15
  %i.afq = zext nneg i32 %.03346.i71.i.epil.init to i64
  %i.afr = shl i64 %i.afp, %i.afq
  %i.afs = or i64 %i.afr, %.03545.i72.i.epil.init
  br label %readNumber.exit77.i

readNumber.exit77.i:                              ; preds = %readNumber.exit77.i.unr-lcssa, %readNumber.exit77.i.epilog-lcssa
  %.lcssa3877.a = phi i64 [ %i.afj, %readNumber.exit77.i.unr-lcssa ], [ %i.afs, %readNumber.exit77.i.epilog-lcssa ]
  %i.aft = trunc i64 %.lcssa3877.a to i32         ; 3 uses
  store i32 %i.aek, ptr %i.i, align 4, !tbaa !117
  %i.afu = icmp ult i32 %.2.i147.i, %i.aft
  br i1 %i.afu, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %readNumber.exit77.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.300, i32 noundef %i.aft, i32 noundef %.2.i147.i) #24
  br label %bb.fw

.sink.split.i:                                    ; preds = %bb.es
  store i32 %i.aek, ptr %i.i, align 4, !tbaa !117
  br label %bb.ev

bb.ev:                                            ; preds = %.sink.split.i, %readNumber.exit77.i
  %.2.i68151.i = phi i32 [ %i.aft, %readNumber.exit77.i ], [ 0, %.sink.split.i ] ; 3 uses
  %i.afv = call ptr @cli_bitset_init() #24        ; 2 uses
  store ptr %i.afv, ptr %i.sy, align 8, !tbaa !147
  %.not62.i = icmp eq ptr %i.afv, null
  br i1 %.not62.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.301) #24
  br label %bb.fw

bb.ex:                                            ; preds = %bb.ev
  %i.afw = call noalias ptr @calloc(i64 noundef %i.ta, i64 noundef 32) #23 ; 4 uses
  %.not63.i = icmp eq ptr %i.afw, null
  br i1 %.not63.i, label %bb.ey, label %.preheader.i164

.preheader.i164:                                  ; preds = %bb.ex
  %.not106.i = icmp eq i32 %.2.i68151.i, 0
  br i1 %.not106.i, label %parseLSig.exit.jt2, label %.lr.ph.i165

bb.ey:                                            ; preds = %bb.ex
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.302) #24
  br label %bb.fw

.lr.ph.i165:                                      ; preds = %.preheader.i164, %bb.fu
  %.051105.i = phi i32 [ %i.akf, %bb.fu ], [ 0, %.preheader.i164 ]
  %i.afx = load i32, ptr %i.i, align 4, !tbaa !117 ; 5 uses
  %i.afy = zext i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !123
  %.fr4246 = freeze i8 %i.aga                     ; 3 uses
  %i.agb = zext i8 %.fr4246 to i32                ; 2 uses
  %i.agc = add nsw i32 %i.agb, -96                ; 4 uses
  %i.agd = icmp ugt i32 %i.agc, 16
  br i1 %i.agd, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.lr.ph.i165
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.agb) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit90.i

bb.fa:                                            ; preds = %.lr.ph.i165
  %i.age = add i32 %i.afx, 1                      ; 3 uses
  %i.agf = add i32 %i.agc, %i.age                 ; 6 uses
  %i.agg = icmp ugt i32 %i.agf, %i.tx
  br i1 %i.agg, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit90.i

bb.fc:                                            ; preds = %bb.fa
  %i.agh = icmp eq i8 %.fr4246, 96
  br i1 %i.agh, label %bb.fd, label %.preheader.i78.i

.preheader.i78.i:                                 ; preds = %bb.fc
  %i.agi = icmp ult i32 %i.age, %i.agf
  br i1 %i.agi, label %.lr.ph.i82.preheader.i, label %._crit_edge.i79.i

.lr.ph.i82.preheader.i:                           ; preds = %.preheader.i78.i
  %i.agj = zext i32 %i.age to i64                 ; 2 uses
  %i.agk = zext nneg i32 %i.agc to i64            ; 2 uses
  %xtraiter4038 = and i64 %i.agk, 1
  %i.agl = icmp eq i32 %i.agc, 1
  br i1 %i.agl, label %.lr.ph.i82.i.epil.preheader, label %.lr.ph.i82.preheader.i.new

.lr.ph.i82.preheader.i.new:                       ; preds = %.lr.ph.i82.preheader.i
  %unroll_iter4042 = and i64 %i.agk, 30
  br label %.lr.ph.i82.i

bb.fd:                                            ; preds = %bb.fc
  store i32 %i.agf, ptr %i.i, align 4, !tbaa !117
  br label %readNumber.exit90.i

.lr.ph.i82.i:                                     ; preds = %bb.fe, %.lr.ph.i82.preheader.i.new
  %indvars.iv126.i = phi i64 [ %i.agj, %.lr.ph.i82.preheader.i.new ], [ %indvars.iv.next127.i.1, %bb.fe ] ; 3 uses
  %.03346.i84.i = phi i32 [ 0, %.lr.ph.i82.preheader.i.new ], [ %i.ahf, %bb.fe ] ; 3 uses
  %.03545.i85.i = phi i64 [ 0, %.lr.ph.i82.preheader.i.new ], [ %i.ahe, %bb.fe ]
  %niter4043 = phi i64 [ 0, %.lr.ph.i82.preheader.i.new ], [ %niter4043.next.1, %bb.fe ]
  %i.agm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv126.i
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !123 ; 2 uses
  %i.ago = zext i8 %i.agn to i64                  ; 2 uses
  %i.agp = and i64 %i.ago, 240
  %.not.i86.i = icmp eq i64 %i.agp, 96
  br i1 %.not.i86.i, label %.lr.ph.i82.i.1, label %.thread.i87.i, !prof !134

.thread.i87.i:                                    ; preds = %.lr.ph.i82.i, %.lr.ph.i82.i.1, %.lr.ph.i82.i.epil.preheader
  %.lcssa3855 = phi i8 [ %i.ahh, %.lr.ph.i82.i.epil.preheader ], [ %i.agn, %.lr.ph.i82.i ], [ %i.agt, %.lr.ph.i82.i.1 ]
  %i.agq = sext i8 %.lcssa3855 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.agq) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit90.i

.lr.ph.i82.i.1:                                   ; preds = %.lr.ph.i82.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv126.i
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 1
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !123 ; 2 uses
  %i.agu = zext i8 %i.agt to i64                  ; 2 uses
  %i.agv = and i64 %i.agu, 240
  %.not.i86.i.1 = icmp eq i64 %i.agv, 96
  br i1 %.not.i86.i.1, label %bb.fe, label %.thread.i87.i, !prof !134

bb.fe:                                            ; preds = %.lr.ph.i82.i.1
  %i.agw = or disjoint i32 %.03346.i84.i, 4
  %i.agx = and i64 %i.ago, 15
  %i.agy = zext nneg i32 %.03346.i84.i to i64
  %i.agz = shl i64 %i.agx, %i.agy
  %i.aha = or i64 %i.agz, %.03545.i85.i
  %i.ahb = and i64 %i.agu, 15
  %i.ahc = zext nneg i32 %i.agw to i64
  %i.ahd = shl i64 %i.ahb, %i.ahc
  %i.ahe = or i64 %i.ahd, %i.aha                  ; 3 uses
  %i.ahf = add nuw nsw i32 %.03346.i84.i, 8       ; 2 uses
  %indvars.iv.next127.i.1 = add nuw nsw i64 %indvars.iv126.i, 2 ; 2 uses
  %niter4043.next.1 = add i64 %niter4043, 2       ; 2 uses
  %niter4043.ncmp.1 = icmp eq i64 %niter4043.next.1, %unroll_iter4042
  br i1 %niter4043.ncmp.1, label %._crit_edge.i79.loopexit.i.unr-lcssa, label %.lr.ph.i82.i

._crit_edge.i79.loopexit.i.unr-lcssa:             ; preds = %bb.fe
  %lcmp.mod4039.not = icmp eq i64 %xtraiter4038, 0
  br i1 %lcmp.mod4039.not, label %._crit_edge.i79.loopexit.i, label %.lr.ph.i82.i.epil.preheader

.lr.ph.i82.i.epil.preheader:                      ; preds = %._crit_edge.i79.loopexit.i.unr-lcssa, %.lr.ph.i82.preheader.i
  %indvars.iv126.i.epil.init = phi i64 [ %i.agj, %.lr.ph.i82.preheader.i ], [ %indvars.iv.next127.i.1, %._crit_edge.i79.loopexit.i.unr-lcssa ]
  %.03346.i84.i.epil.init = phi i32 [ 0, %.lr.ph.i82.preheader.i ], [ %i.ahf, %._crit_edge.i79.loopexit.i.unr-lcssa ]
  %.03545.i85.i.epil.init = phi i64 [ 0, %.lr.ph.i82.preheader.i ], [ %i.ahe, %._crit_edge.i79.loopexit.i.unr-lcssa ]
  %lcmp.mod4041 = trunc i8 %.fr4246 to i1
  call void @llvm.assume(i1 %lcmp.mod4041)
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv126.i.epil.init
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !123 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i64                  ; 2 uses
  %i.ahj = and i64 %i.ahi, 240
  %.not.i86.i.epil = icmp eq i64 %i.ahj, 96
  br i1 %.not.i86.i.epil, label %._crit_edge.i79.loopexit.i.epilog-lcssa, label %.thread.i87.i, !prof !134

._crit_edge.i79.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i82.i.epil.preheader
  %i.ahk = and i64 %i.ahi, 15
  %i.ahl = zext nneg i32 %.03346.i84.i.epil.init to i64
  %i.ahm = shl i64 %i.ahk, %i.ahl
  %i.ahn = or i64 %i.ahm, %.03545.i85.i.epil.init
  br label %._crit_edge.i79.loopexit.i

._crit_edge.i79.loopexit.i:                       ; preds = %._crit_edge.i79.loopexit.i.unr-lcssa, %._crit_edge.i79.loopexit.i.epilog-lcssa
  %.lcssa3857 = phi i64 [ %i.ahe, %._crit_edge.i79.loopexit.i.unr-lcssa ], [ %i.ahn, %._crit_edge.i79.loopexit.i.epilog-lcssa ]
  %i.aho = trunc i64 %.lcssa3857 to i32
  br label %._crit_edge.i79.i

._crit_edge.i79.i:                                ; preds = %._crit_edge.i79.loopexit.i, %.preheader.i78.i
  %.035.lcssa.i80.i = phi i32 [ 0, %.preheader.i78.i ], [ %i.aho, %._crit_edge.i79.loopexit.i ]
  store i32 %i.agf, ptr %i.i, align 4, !tbaa !117
  br label %readNumber.exit90.i

readNumber.exit90.i:                              ; preds = %._crit_edge.i79.i, %.thread.i87.i, %bb.fd, %bb.fb, %bb.ez
  %i.ahp = phi i32 [ %i.afx, %bb.ez ], [ %i.afx, %bb.fb ], [ %i.agf, %bb.fd ], [ %i.afx, %.thread.i87.i ], [ %i.agf, %._crit_edge.i79.i ] ; 2 uses
  %.2.i81.i = phi i32 [ 0, %bb.ez ], [ 0, %bb.fb ], [ 0, %bb.fd ], [ 0, %.thread.i87.i ], [ %.035.lcssa.i80.i, %._crit_edge.i79.i ] ; 3 uses
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !123
  %.fr4249 = freeze i8 %i.ahs                     ; 3 uses
  %i.aht = zext i8 %.fr4249 to i32                ; 2 uses
  %i.ahu = add nsw i32 %i.aht, -96                ; 4 uses
  %i.ahv = icmp ugt i32 %i.ahu, 16
  br i1 %i.ahv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %readNumber.exit90.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.aht) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit.i.i169

bb.fg:                                            ; preds = %readNumber.exit90.i
  %i.ahw = add i32 %i.ahp, 1                      ; 3 uses
  %i.ahx = add i32 %i.ahu, %i.ahw                 ; 4 uses
  %i.ahy = icmp ugt i32 %i.ahx, %i.tx
  br i1 %i.ahy, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit.i.i169

bb.fi:                                            ; preds = %bb.fg
  %i.ahz = icmp eq i8 %.fr4249, 96
  br i1 %i.ahz, label %bb.fj, label %.preheader.i.i.i166

.preheader.i.i.i166:                              ; preds = %bb.fi
  %i.aia = icmp ult i32 %i.ahw, %i.ahx
  br i1 %i.aia, label %.lr.ph.i.preheader.i.i177, label %._crit_edge.i.i.i167

.lr.ph.i.preheader.i.i177:                        ; preds = %.preheader.i.i.i166
  %i.aib = zext i32 %i.ahw to i64                 ; 2 uses
  %i.aic = zext nneg i32 %i.ahu to i64            ; 2 uses
  %xtraiter4044 = and i64 %i.aic, 1
  %i.aid = icmp eq i32 %i.ahu, 1
  br i1 %i.aid, label %.lr.ph.i.i.i178.epil.preheader, label %.lr.ph.i.preheader.i.i177.new

.lr.ph.i.preheader.i.i177.new:                    ; preds = %.lr.ph.i.preheader.i.i177
  %unroll_iter4048 = and i64 %i.aic, 30
  br label %.lr.ph.i.i.i178

bb.fj:                                            ; preds = %bb.fi
  store i32 %i.ahx, ptr %i.i, align 4, !tbaa !117
  br label %readNumber.exit.i.i169

.lr.ph.i.i.i178:                                  ; preds = %bb.fk, %.lr.ph.i.preheader.i.i177.new
  %indvars.iv.i.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i177.new ], [ %indvars.iv.next1908.1, %bb.fk ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.aib, %.lr.ph.i.preheader.i.i177.new ], [ %indvars.iv.next.i.i.1, %bb.fk ] ; 3 uses
  %.03545.i.i.i180 = phi i64 [ 0, %.lr.ph.i.preheader.i.i177.new ], [ %i.ait, %bb.fk ]
  %niter4049 = phi i64 [ 0, %.lr.ph.i.preheader.i.i177.new ], [ %niter4049.next.1, %bb.fk ]
  %i.aie = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !123 ; 2 uses
  %i.aig = zext i8 %i.aif to i64                  ; 2 uses
  %i.aih = and i64 %i.aig, 240
  %.not.i.i.i181 = icmp eq i64 %i.aih, 96
  br i1 %.not.i.i.i181, label %.lr.ph.i.i.i178.1, label %.thread.i.i.i182, !prof !134

.thread.i.i.i182:                                 ; preds = %.lr.ph.i.i.i178, %.lr.ph.i.i.i178.1, %.lr.ph.i.i.i178.epil.preheader
  %.lcssa3858 = phi i8 [ %i.aiv, %.lr.ph.i.i.i178.epil.preheader ], [ %i.aif, %.lr.ph.i.i.i178 ], [ %i.ail, %.lr.ph.i.i.i178.1 ]
  %i.aii = sext i8 %.lcssa3858 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aii) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readNumber.exit.i.i169

.lr.ph.i.i.i178.1:                                ; preds = %.lr.ph.i.i.i178
  %i.aij = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 1
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !123 ; 2 uses
  %i.aim = zext i8 %i.ail to i64                  ; 2 uses
  %i.ain = and i64 %i.aim, 240
  %.not.i.i.i181.1 = icmp eq i64 %i.ain, 96
  br i1 %.not.i.i.i181.1, label %bb.fk, label %.thread.i.i.i182, !prof !134

bb.fk:                                            ; preds = %.lr.ph.i.i.i178.1
  %indvars.iv.next1908 = or disjoint i64 %indvars.iv.i.i.a, 4
  %i.aio = and i64 %i.aig, 15
  %i.aip = shl i64 %i.aio, %indvars.iv.i.i.a
  %i.aiq = or i64 %i.aip, %.03545.i.i.i180
  %i.air = and i64 %i.aim, 15
  %i.ais = shl i64 %i.air, %indvars.iv.next1908
  %i.ait = or i64 %i.ais, %i.aiq                  ; 3 uses
  %indvars.iv.next1908.1 = add nuw nsw i64 %indvars.iv.i.i.a, 8 ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter4049.next.1 = add i64 %niter4049, 2       ; 2 uses
  %niter4049.ncmp.1 = icmp eq i64 %niter4049.next.1, %unroll_iter4048
  br i1 %niter4049.ncmp.1, label %._crit_edge.i.i.i167.loopexit.unr-lcssa, label %.lr.ph.i.i.i178

._crit_edge.i.i.i167.loopexit.unr-lcssa:          ; preds = %bb.fk
  %lcmp.mod4045.not = icmp eq i64 %xtraiter4044, 0
  br i1 %lcmp.mod4045.not, label %._crit_edge.i.i.i167, label %.lr.ph.i.i.i178.epil.preheader

.lr.ph.i.i.i178.epil.preheader:                   ; preds = %._crit_edge.i.i.i167.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i177
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i177 ], [ %indvars.iv.next1908.1, %._crit_edge.i.i.i167.loopexit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ %i.aib, %.lr.ph.i.preheader.i.i177 ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.i167.loopexit.unr-lcssa ]
  %.03545.i.i.i180.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i177 ], [ %i.ait, %._crit_edge.i.i.i167.loopexit.unr-lcssa ]
  %lcmp.mod4047 = trunc i8 %.fr4249 to i1
  call void @llvm.assume(i1 %lcmp.mod4047)
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i.epil.init
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !123 ; 2 uses
  %i.aiw = zext i8 %i.aiv to i64                  ; 2 uses
  %i.aix = and i64 %i.aiw, 240
  %.not.i.i.i181.epil = icmp eq i64 %i.aix, 96
  br i1 %.not.i.i.i181.epil, label %._crit_edge.i.i.i167.loopexit.epilog-lcssa, label %.thread.i.i.i182, !prof !134

._crit_edge.i.i.i167.loopexit.epilog-lcssa:       ; preds = %.lr.ph.i.i.i178.epil.preheader
  %i.aiy = and i64 %i.aiw, 15
  %i.aiz = shl i64 %i.aiy, %indvars.iv.i.i.epil.init.a
  %i.aja = or i64 %i.aiz, %.03545.i.i.i180.epil.init
  br label %._crit_edge.i.i.i167

._crit_edge.i.i.i167:                             ; preds = %._crit_edge.i.i.i167.loopexit.epilog-lcssa, %._crit_edge.i.i.i167.loopexit.unr-lcssa, %.preheader.i.i.i166
  %.035.lcssa.i.i.i168 = phi i64 [ 0, %.preheader.i.i.i166 ], [ %i.ait, %._crit_edge.i.i.i167.loopexit.unr-lcssa ], [ %i.aja, %._crit_edge.i.i.i167.loopexit.epilog-lcssa ]
  store i32 %i.ahx, ptr %i.i, align 4, !tbaa !117
  br label %readNumber.exit.i.i169

readNumber.exit.i.i169:                           ; preds = %._crit_edge.i.i.i167, %.thread.i.i.i182, %bb.fj, %bb.fh, %bb.ff
  %.2.i.i.i170 = phi i64 [ 0, %bb.ff ], [ 0, %bb.fh ], [ 0, %bb.fj ], [ 0, %.thread.i.i.i182 ], [ %.035.lcssa.i.i.i168, %._crit_edge.i.i.i167 ] ; 3 uses
  %i.ajb = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.ajc = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = add i32 %i.ajb, %i.ajd
  %i.ajf = zext i32 %i.aje to i64
  %.not.i91.i = icmp ult i64 %.2.i.i.i170, %i.ajf
  br i1 %.not.i91.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %readNumber.exit.i.i169
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i170) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readTypeID.exit.i171

bb.fm:                                            ; preds = %readNumber.exit.i.i169
  %i.ajg = trunc i64 %.2.i.i.i170 to i16
  br label %readTypeID.exit.i171

readTypeID.exit.i171:                             ; preds = %bb.fm, %bb.fl
  %.0.i.i172 = phi i16 [ -1, %bb.fl ], [ %i.ajg, %bb.fm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 0, ptr %i.h, align 4, !tbaa !117
  %i.ajh = call fastcc ptr @readData(ptr noundef nonnull readonly %i.sj, ptr noundef nonnull %i.i, i32 noundef %i.tx, ptr noundef nonnull %i.j, ptr noundef %i.h) ; 5 uses
  %i.aji = load i8, ptr %i.j, align 1, !tbaa !132, !range !136, !noundef !137 ; 2 uses
  %i.ajj = trunc nuw i8 %i.aji to i1
  %i.ajk = load i32, ptr %i.h, align 4            ; 2 uses
  %i.ajl = icmp ne i32 %i.ajk, 0
  %or.cond.i.i173 = select i1 %i.ajj, i1 %i.ajl, i1 false
  br i1 %or.cond.i.i173, label %bb.fn, label %readString.exit.i174

bb.fn:                                            ; preds = %readTypeID.exit.i171
  %i.ajm = add i32 %i.ajk, -1
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.ajn ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !123
  %.not.i93.i = icmp eq i8 %i.ajp, 0
  br i1 %.not.i93.i, label %readString.exit.i174, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  store i8 0, ptr %i.ajo, align 1, !tbaa !123
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.ajh) #24
  call void @free(ptr noundef nonnull %i.ajh) #24
  store i8 0, ptr %i.j, align 1, !tbaa !132
  br label %readString.exit.i174

readString.exit.i174:                             ; preds = %bb.fo, %bb.fn, %readTypeID.exit.i171
  %i.ajq = phi i8 [ 0, %bb.fo ], [ 1, %bb.fn ], [ %i.aji, %readTypeID.exit.i171 ]
  %.0.i92.i = phi ptr [ null, %bb.fo ], [ %i.ajh, %bb.fn ], [ %i.ajh, %readTypeID.exit.i171 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.ajr = icmp ugt i32 %.2.i81.i, %.2.i147.i
  br i1 %i.ajr, label %.thread.i176, label %bb.fp

.thread.i176:                                     ; preds = %readString.exit.i174
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.303, i32 noundef %.2.i81.i, i32 noundef %.2.i147.i) #24
  br label %.thread155.i

bb.fp:                                            ; preds = %readString.exit.i174
  %i.ajs = add i32 %.2.i81.i, -1                  ; 4 uses
  %i.ajt = trunc nuw i8 %i.ajq to i1              ; 2 uses
  %i.aju = icmp ne ptr %.0.i92.i, null
  %or.cond.i175 = and i1 %i.aju, %i.ajt
  br i1 %or.cond.i175, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.ajv = zext i32 %i.ajs to i64                 ; 2 uses
  %i.ajw = getelementptr inbounds nuw [16 x i8], ptr @cli_apicalls, i64 %i.ajv
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !155 ; 2 uses
  %i.ajy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajx, ptr noundef nonnull dereferenceable(1) %.0.i92.i) #26
  %.not64.i = icmp eq i32 %i.ajy, 0
  br i1 %.not64.i, label %.thread156.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.304, i32 noundef %i.ajs, ptr noundef nonnull %.0.i92.i, ptr noundef nonnull %i.ajx) #24
  br label %.thread155.i

bb.fs:                                            ; preds = %bb.fp
  br i1 %i.ajt, label %..thread156.i_crit_edge, label %.thread155.i

..thread156.i_crit_edge:                          ; preds = %bb.fs
  %.pre1891 = zext i32 %i.ajs to i64
  br label %.thread156.i

.thread156.i:                                     ; preds = %..thread156.i_crit_edge, %bb.fq
  %.pre-phi1892 = phi i64 [ %.pre1891, %..thread156.i_crit_edge ], [ %i.ajv, %bb.fq ] ; 2 uses
  %i.ajz = getelementptr inbounds nuw [16 x i8], ptr @cli_apicalls, i64 %.pre-phi1892
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akb = load i16, ptr %i.aka, align 8, !tbaa !157
  %i.akc = call fastcc zeroext i1 @types_equal(ptr noundef nonnull %0, ptr noundef %i.afw, i16 noundef zeroext %.0.i.i172, i16 noundef zeroext %i.akb)
  br i1 %i.akc, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %.thread156.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.305, i32 noundef %i.ajs) #24
  br label %.thread155.i

.thread155.i:                                     ; preds = %bb.fs, %bb.ft, %bb.fr, %.thread.i176
  call void @free(ptr noundef %.0.i92.i) #24
  call void @free(ptr noundef %i.afw) #24
  br label %bb.fw

bb.fu:                                            ; preds = %.thread156.i
  call void @free(ptr noundef %.0.i92.i) #24
  %i.akd = load ptr, ptr %i.sy, align 8, !tbaa !147
  %i.ake = call i32 @cli_bitset_set(ptr noundef %i.akd, i64 noundef %.pre-phi1892) #24 ; 0 uses
  %i.akf = add nuw i32 %.051105.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.akf, %.2.i68151.i
  br i1 %exitcond.not.i, label %parseLSig.exit.jt2, label %.lr.ph.i165

bb.fv:                                            ; preds = %readNumber.exit.i163
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.299, i32 noundef %i.aec, i32 noundef %i.so) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %.backedge365

.backedge365:                                     ; preds = %bb.fv, %bb.hf
  store i32 0, ptr %i.sn, align 8, !tbaa !146
  %i.akg = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not126.not = icmp eq ptr %i.akg, null
  br i1 %.not126.not, label %.critedge, label %.lr.ph.jt7

bb.fw:                                            ; preds = %bb.ei, %bb.eu, %.thread155.i, %bb.ey, %bb.ew, %.thread.i.i160, %bb.ek, %bb.em, %bb.ep, %bb.er, %.thread.i74.i
  %.2.i154.ph = phi i32 [ 4, %.thread.i74.i ], [ 4, %bb.er ], [ 4, %bb.ep ], [ 4, %bb.em ], [ 4, %bb.ek ], [ 4, %.thread.i.i160 ], [ 20, %bb.ew ], [ 20, %bb.ey ], [ 4, %.thread155.i ], [ 4, %bb.eu ], [ 4, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef 3) #24
  call void @free(ptr noundef nonnull %i.sj) #24
  br label %bb.qb

bb.fx:                                            ; preds = %bb.ck
  %i.akh = zext i8 %i.tu to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.310, i32 noundef %i.akh) #24
  br label %._crit_edge.i200.thread

bb.fy:                                            ; preds = %bb.ck
  %i.aki = load i8, ptr %i.sl, align 1, !tbaa !123
  %.fr4251 = freeze i8 %i.aki                     ; 6 uses
  %i.akj = zext i8 %.fr4251 to i32                ; 2 uses
  %i.akk = add i8 %.fr4251, -113
  %i.akl = icmp ult i8 %i.akk, -17
  br i1 %i.akl, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.akj) #24
  br label %readNumber.exit.thread.sink.split.i

bb.ga:                                            ; preds = %bb.fy
  %i.akm = add nsw i32 %i.akj, -94                ; 3 uses
  %i.akn = icmp ugt i32 %i.akm, %i.tt
  br i1 %i.akn, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.thread.sink.split.i

bb.gc:                                            ; preds = %bb.ga
  %i.ako = icmp eq i8 %.fr4251, 96
  br i1 %i.ako, label %readNumber.exit.thread.i, label %.lr.ph.i.preheader.i186

.lr.ph.i.preheader.i186:                          ; preds = %bb.gc
  %i.akp = zext i8 %.fr4251 to i64                ; 2 uses
  %xtraiter4050 = and i64 %i.akp, 1
  %i.akq = icmp eq i8 %.fr4251, 97
  br i1 %i.akq, label %.lr.ph.i.i187.epil.preheader, label %.lr.ph.i.preheader.i186.new

.lr.ph.i.preheader.i186.new:                      ; preds = %.lr.ph.i.preheader.i186
  %i.akr = and i64 %i.akp, 254
  %i.aks = add nsw i64 %i.akr, -98
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %bb.gd, %.lr.ph.i.preheader.i186.new
  %indvars.iv136.i = phi i64 [ 0, %.lr.ph.i.preheader.i186.new ], [ %indvars.iv.next137.i.1, %bb.gd ] ; 3 uses
  %indvars.iv.i188 = phi i64 [ 2, %.lr.ph.i.preheader.i186.new ], [ %indvars.iv.next.i210.1, %bb.gd ] ; 3 uses
  %.03545.i.i189 = phi i64 [ 0, %.lr.ph.i.preheader.i186.new ], [ %i.ali, %bb.gd ]
  %niter4055 = phi i64 [ 0, %.lr.ph.i.preheader.i186.new ], [ %niter4055.next.1, %bb.gd ] ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i188
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !123 ; 2 uses
  %i.akv = zext i8 %i.aku to i64                  ; 2 uses
  %i.akw = and i64 %i.akv, 240
  %.not.i.i190 = icmp eq i64 %i.akw, 96
  br i1 %.not.i.i190, label %.lr.ph.i.i187.1, label %.thread.i.i191, !prof !134

.thread.i.i191:                                   ; preds = %.lr.ph.i.i187, %.lr.ph.i.i187.1, %.lr.ph.i.i187.epil.preheader
  %.lcssa3852 = phi i8 [ %i.alk, %.lr.ph.i.i187.epil.preheader ], [ %i.aku, %.lr.ph.i.i187 ], [ %i.ala, %.lr.ph.i.i187.1 ]
  %i.akx = sext i8 %.lcssa3852 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.akx) #24
  br label %readNumber.exit.thread.sink.split.i

.lr.ph.i.i187.1:                                  ; preds = %.lr.ph.i.i187
  %i.aky = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i188
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 1
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !123 ; 2 uses
  %i.alb = zext i8 %i.ala to i64                  ; 2 uses
  %i.alc = and i64 %i.alb, 240
  %.not.i.i190.1 = icmp eq i64 %i.alc, 96
  br i1 %.not.i.i190.1, label %bb.gd, label %.thread.i.i191, !prof !134

bb.gd:                                            ; preds = %.lr.ph.i.i187.1
  %indvars.iv.next137.i = or disjoint i64 %indvars.iv136.i, 4
  %i.ald = and i64 %i.akv, 15
  %i.ale = shl i64 %i.ald, %indvars.iv136.i
  %i.alf = or i64 %i.ale, %.03545.i.i189
  %i.alg = and i64 %i.alb, 15
  %i.alh = shl i64 %i.alg, %indvars.iv.next137.i
  %i.ali = or i64 %i.alh, %i.alf                  ; 3 uses
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i, 8 ; 2 uses
  %indvars.iv.next.i210.1 = add nuw nsw i64 %indvars.iv.i188, 2 ; 2 uses
  %niter4055.next.1 = add i64 %niter4055, 2
  %niter4055.ncmp.1 = icmp eq i64 %niter4055, %i.aks
  br i1 %niter4055.ncmp.1, label %readNumber.exit.i212.unr-lcssa, label %.lr.ph.i.i187

readNumber.exit.i212.unr-lcssa:                   ; preds = %bb.gd
  %lcmp.mod4051.not = icmp eq i64 %xtraiter4050, 0
  br i1 %lcmp.mod4051.not, label %readNumber.exit.i212, label %.lr.ph.i.i187.epil.preheader

.lr.ph.i.i187.epil.preheader:                     ; preds = %readNumber.exit.i212.unr-lcssa, %.lr.ph.i.preheader.i186
  %indvars.iv136.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i186 ], [ %indvars.iv.next137.i.1, %readNumber.exit.i212.unr-lcssa ]
  %indvars.iv.i188.epil.init = phi i64 [ 2, %.lr.ph.i.preheader.i186 ], [ %indvars.iv.next.i210.1, %readNumber.exit.i212.unr-lcssa ]
  %.03545.i.i189.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i186 ], [ %i.ali, %readNumber.exit.i212.unr-lcssa ]
  %lcmp.mod4053 = trunc i8 %.fr4251 to i1
  call void @llvm.assume(i1 %lcmp.mod4053)
  %i.alj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i188.epil.init
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !123 ; 2 uses
  %i.all = zext i8 %i.alk to i64                  ; 2 uses
  %i.alm = and i64 %i.all, 240
  %.not.i.i190.epil = icmp eq i64 %i.alm, 96
  br i1 %.not.i.i190.epil, label %readNumber.exit.i212.epilog-lcssa, label %.thread.i.i191, !prof !134

readNumber.exit.i212.epilog-lcssa:                ; preds = %.lr.ph.i.i187.epil.preheader
  %i.aln = and i64 %i.all, 15
  %i.alo = shl i64 %i.aln, %indvars.iv136.i.epil.init
  %i.alp = or i64 %i.alo, %.03545.i.i189.epil.init
  br label %readNumber.exit.i212

readNumber.exit.i212:                             ; preds = %readNumber.exit.i212.unr-lcssa, %readNumber.exit.i212.epilog-lcssa
  %.lcssa3854 = phi i64 [ %i.ali, %readNumber.exit.i212.unr-lcssa ], [ %i.alp, %readNumber.exit.i212.epilog-lcssa ]
  %i.alq = trunc i64 %.lcssa3854 to i32           ; 2 uses
  %i.alr = icmp ult i32 %i.sm, %i.alq
  br i1 %i.alr, label %bb.hf, label %readNumber.exit.thread.i

readNumber.exit.thread.sink.split.i:              ; preds = %.thread.i.i191, %bb.gb, %bb.fz
  store i8 0, ptr %i.g, align 1, !tbaa !132
  br label %readNumber.exit.thread.i

readNumber.exit.thread.i:                         ; preds = %readNumber.exit.i212, %bb.gc, %readNumber.exit.thread.sink.split.i
  %.294168.i = phi i32 [ 1, %readNumber.exit.thread.sink.split.i ], [ %i.akm, %bb.gc ], [ %i.akm, %readNumber.exit.i212 ] ; 3 uses
  %i.als = phi i1 [ false, %readNumber.exit.thread.sink.split.i ], [ true, %bb.gc ], [ true, %readNumber.exit.i212 ] ; 3 uses
  %i.alt = zext i32 %.294168.i to i64
  %i.alu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.alt
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !123
  %.fr4254 = freeze i8 %i.alv                     ; 3 uses
  %i.alw = zext i8 %.fr4254 to i32                ; 2 uses
  %i.alx = add nsw i32 %i.alw, -96                ; 4 uses
  %i.aly = icmp ugt i32 %i.alx, 16
  br i1 %i.aly, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %readNumber.exit.thread.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.alw) #24
  br label %readNumber.exit66.sink.split.i

bb.gf:                                            ; preds = %readNumber.exit.thread.i
  %i.alz = add nsw i32 %.294168.i, 1              ; 3 uses
  %i.ama = add nsw i32 %i.alx, %i.alz             ; 5 uses
  %i.amb = icmp ugt i32 %i.ama, %i.tt
  br i1 %i.amb, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit66.sink.split.i

bb.gh:                                            ; preds = %bb.gf
  %i.amc = icmp ne i8 %.fr4254, 96
  %i.amd = icmp ult i32 %i.alz, %i.ama
  %or.cond.i192 = and i1 %i.amc, %i.amd
  br i1 %or.cond.i192, label %.lr.ph.i58.preheader.i, label %readNumber.exit66.i

.lr.ph.i58.preheader.i:                           ; preds = %bb.gh
  %i.ame = zext i32 %i.alz to i64                 ; 2 uses
  %i.amf = zext nneg i32 %i.alx to i64            ; 2 uses
  %xtraiter4056 = and i64 %i.amf, 1
  %i.amg = icmp eq i32 %i.alx, 1
  br i1 %i.amg, label %.lr.ph.i58.i.epil.preheader, label %.lr.ph.i58.preheader.i.new

.lr.ph.i58.preheader.i.new:                       ; preds = %.lr.ph.i58.preheader.i
  %unroll_iter4060 = and i64 %i.amf, 30
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %bb.gi, %.lr.ph.i58.preheader.i.new
  %indvars.iv141.i = phi i64 [ %i.ame, %.lr.ph.i58.preheader.i.new ], [ %indvars.iv.next142.i.1, %bb.gi ] ; 3 uses
  %.03346.i60.i = phi i32 [ 0, %.lr.ph.i58.preheader.i.new ], [ %i.ana, %bb.gi ] ; 3 uses
  %.03545.i61.i = phi i64 [ 0, %.lr.ph.i58.preheader.i.new ], [ %i.amz, %bb.gi ]
  %niter4061 = phi i64 [ 0, %.lr.ph.i58.preheader.i.new ], [ %niter4061.next.1, %bb.gi ]
  %i.amh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv141.i
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !123 ; 2 uses
  %i.amj = zext i8 %i.ami to i64                  ; 2 uses
  %i.amk = and i64 %i.amj, 240
  %.not.i62.i = icmp eq i64 %i.amk, 96
  br i1 %.not.i62.i, label %.lr.ph.i58.i.1, label %.thread.i63.i, !prof !134

.thread.i63.i:                                    ; preds = %.lr.ph.i58.i, %.lr.ph.i58.i.1, %.lr.ph.i58.i.epil.preheader
  %.lcssa3849 = phi i8 [ %i.anc, %.lr.ph.i58.i.epil.preheader ], [ %i.ami, %.lr.ph.i58.i ], [ %i.amo, %.lr.ph.i58.i.1 ]
  %i.aml = sext i8 %.lcssa3849 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aml) #24
  br label %readNumber.exit66.sink.split.i

.lr.ph.i58.i.1:                                   ; preds = %.lr.ph.i58.i
  %i.amm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv141.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !123 ; 2 uses
  %i.amp = zext i8 %i.amo to i64                  ; 2 uses
  %i.amq = and i64 %i.amp, 240
  %.not.i62.i.1 = icmp eq i64 %i.amq, 96
  br i1 %.not.i62.i.1, label %bb.gi, label %.thread.i63.i, !prof !134

bb.gi:                                            ; preds = %.lr.ph.i58.i.1
  %i.amr = or disjoint i32 %.03346.i60.i, 4
  %i.ams = and i64 %i.amj, 15
  %i.amt = zext nneg i32 %.03346.i60.i to i64
  %i.amu = shl i64 %i.ams, %i.amt
  %i.amv = or i64 %i.amu, %.03545.i61.i
  %i.amw = and i64 %i.amp, 15
  %i.amx = zext nneg i32 %i.amr to i64
  %i.amy = shl i64 %i.amw, %i.amx
  %i.amz = or i64 %i.amy, %i.amv                  ; 3 uses
  %i.ana = add nuw nsw i32 %.03346.i60.i, 8       ; 2 uses
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2 ; 2 uses
  %niter4061.next.1 = add i64 %niter4061, 2       ; 2 uses
  %niter4061.ncmp.1 = icmp eq i64 %niter4061.next.1, %unroll_iter4060
  br i1 %niter4061.ncmp.1, label %readNumber.exit66.i.loopexit.unr-lcssa, label %.lr.ph.i58.i

readNumber.exit66.sink.split.i:                   ; preds = %.thread.i63.i, %bb.gg, %bb.ge
  store i8 0, ptr %i.g, align 1, !tbaa !132
  br label %readNumber.exit66.i

readNumber.exit66.i.loopexit.unr-lcssa:           ; preds = %bb.gi
  %lcmp.mod4057.not = icmp eq i64 %xtraiter4056, 0
  br i1 %lcmp.mod4057.not, label %readNumber.exit66.i, label %.lr.ph.i58.i.epil.preheader

.lr.ph.i58.i.epil.preheader:                      ; preds = %readNumber.exit66.i.loopexit.unr-lcssa, %.lr.ph.i58.preheader.i
  %indvars.iv141.i.epil.init = phi i64 [ %i.ame, %.lr.ph.i58.preheader.i ], [ %indvars.iv.next142.i.1, %readNumber.exit66.i.loopexit.unr-lcssa ]
  %.03346.i60.i.epil.init = phi i32 [ 0, %.lr.ph.i58.preheader.i ], [ %i.ana, %readNumber.exit66.i.loopexit.unr-lcssa ]
  %.03545.i61.i.epil.init = phi i64 [ 0, %.lr.ph.i58.preheader.i ], [ %i.amz, %readNumber.exit66.i.loopexit.unr-lcssa ]
  %lcmp.mod4059 = trunc i8 %.fr4254 to i1
  call void @llvm.assume(i1 %lcmp.mod4059)
  %i.anb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv141.i.epil.init
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !123 ; 2 uses
  %i.and = zext i8 %i.anc to i64                  ; 2 uses
  %i.ane = and i64 %i.and, 240
  %.not.i62.i.epil = icmp eq i64 %i.ane, 96
  br i1 %.not.i62.i.epil, label %readNumber.exit66.i.loopexit.epilog-lcssa, label %.thread.i63.i, !prof !134

readNumber.exit66.i.loopexit.epilog-lcssa:        ; preds = %.lr.ph.i58.i.epil.preheader
  %i.anf = and i64 %i.and, 15
  %i.ang = zext nneg i32 %.03346.i60.i.epil.init to i64
  %i.anh = shl i64 %i.anf, %i.ang
  %i.ani = or i64 %i.anh, %.03545.i61.i.epil.init
  br label %readNumber.exit66.i

readNumber.exit66.i:                              ; preds = %readNumber.exit66.i.loopexit.epilog-lcssa, %readNumber.exit66.i.loopexit.unr-lcssa, %readNumber.exit66.sink.split.i, %bb.gh
  %i.anj = phi i1 [ false, %readNumber.exit66.sink.split.i ], [ %i.als, %bb.gh ], [ %i.als, %readNumber.exit66.i.loopexit.unr-lcssa ], [ %i.als, %readNumber.exit66.i.loopexit.epilog-lcssa ]
  %.3.i = phi i32 [ %.294168.i, %readNumber.exit66.sink.split.i ], [ %i.ama, %bb.gh ], [ %i.ama, %readNumber.exit66.i.loopexit.unr-lcssa ], [ %i.ama, %readNumber.exit66.i.loopexit.epilog-lcssa ] ; 2 uses
  %.2.i57.i = phi i64 [ 0, %readNumber.exit66.sink.split.i ], [ 0, %bb.gh ], [ %i.amz, %readNumber.exit66.i.loopexit.unr-lcssa ], [ %i.ani, %readNumber.exit66.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.ank = trunc i64 %.2.i57.i to i32             ; 3 uses
  %i.anl = and i64 %.2.i57.i, 4294967295          ; 6 uses
  %i.anm = call noalias ptr @calloc(i64 noundef %i.anl, i64 noundef 8) #23 ; 2 uses
  store ptr %i.anm, ptr %i.sv, align 8, !tbaa !158
  %.not50.i = icmp eq ptr %i.anm, null
  br i1 %.not50.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %readNumber.exit66.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.312, i32 noundef %i.ank) #24
  br label %._crit_edge.i200.thread

bb.gk:                                            ; preds = %readNumber.exit66.i
  %i.ann = call noalias ptr @calloc(i64 noundef %i.anl, i64 noundef 2) #23 ; 2 uses
  store ptr %i.ann, ptr %i.sw, align 8, !tbaa !159
  %.not51.i = icmp eq ptr %i.ann, null
  br i1 %.not51.i, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.313, i32 noundef %i.ank) #24
  br label %._crit_edge.i200.thread

bb.gm:                                            ; preds = %bb.gk
  store i64 %i.anl, ptr %i.sx, align 8, !tbaa !160
  br i1 %i.anj, label %.preheader.i193, label %._crit_edge.i200.thread

.preheader.i193:                                  ; preds = %bb.gm
  %.not120.i = icmp eq i32 %i.ank, 0
  br i1 %.not120.i, label %._crit_edge.thread.i, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.preheader.i193, %.lr.ph.i194.backedge
  %indvars.iv144.i = phi i64 [ %indvars.iv144.i.be, %.lr.ph.i194.backedge ], [ 0, %.preheader.i193 ] ; 6 uses
  %.0118.i = phi i32 [ %.0118.i.be, %.lr.ph.i194.backedge ], [ %.3.i, %.preheader.i193 ] ; 3 uses
  %i.ano = zext i32 %.0118.i to i64
  %i.anp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.ano
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !123
  %.fr4257 = freeze i8 %i.anq                     ; 3 uses
  %i.anr = zext i8 %.fr4257 to i32                ; 2 uses
  %i.ans = add nsw i32 %i.anr, -96                ; 4 uses
  %i.ant = icmp ugt i32 %i.ans, 16
  br i1 %i.ant, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %.lr.ph.i194
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.anr) #24
  br label %readNumber.exit.i.sink.split.i

bb.go:                                            ; preds = %.lr.ph.i194
  %i.anu = add i32 %.0118.i, 1                    ; 3 uses
  %i.anv = add i32 %i.ans, %i.anu                 ; 5 uses
  %i.anw = icmp ugt i32 %i.anv, %i.tt
  br i1 %i.anw, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.i.sink.split.i

bb.gq:                                            ; preds = %bb.go
  %i.anx = icmp ne i8 %.fr4257, 96
  %i.any = icmp ult i32 %i.anu, %i.anv
  %or.cond100.i = and i1 %i.anx, %i.any
  br i1 %or.cond100.i, label %.lr.ph.i.preheader.i.i201, label %readNumber.exit.i.i195

.lr.ph.i.preheader.i.i201:                        ; preds = %bb.gq
  %i.anz = zext i32 %i.anu to i64                 ; 2 uses
  %i.aoa = zext nneg i32 %i.ans to i64            ; 2 uses
  %xtraiter4062 = and i64 %i.aoa, 1
  %i.aob = icmp eq i32 %i.ans, 1
  br i1 %i.aob, label %.lr.ph.i.i.i202.epil.preheader, label %.lr.ph.i.preheader.i.i201.new

.lr.ph.i.preheader.i.i201.new:                    ; preds = %.lr.ph.i.preheader.i.i201
  %unroll_iter4066 = and i64 %i.aoa, 30
  br label %.lr.ph.i.i.i202

.lr.ph.i.i.i202:                                  ; preds = %bb.gr, %.lr.ph.i.preheader.i.i201.new
  %indvars.iv.i.i203.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i201.new ], [ %indvars.iv.next1902.1, %bb.gr ] ; 3 uses
  %indvars.iv.i.i203 = phi i64 [ %i.anz, %.lr.ph.i.preheader.i.i201.new ], [ %indvars.iv.next.i.i208.1, %bb.gr ] ; 3 uses
  %.03545.i.i.i205 = phi i64 [ 0, %.lr.ph.i.preheader.i.i201.new ], [ %i.aor, %bb.gr ]
  %niter4067 = phi i64 [ 0, %.lr.ph.i.preheader.i.i201.new ], [ %niter4067.next.1, %bb.gr ]
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i203
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !123 ; 2 uses
  %i.aoe = zext i8 %i.aod to i64                  ; 2 uses
  %i.aof = and i64 %i.aoe, 240
  %.not.i.i.i206 = icmp eq i64 %i.aof, 96
  br i1 %.not.i.i.i206, label %.lr.ph.i.i.i202.1, label %.thread.i.i.i207, !prof !134

.thread.i.i.i207:                                 ; preds = %.lr.ph.i.i.i202, %.lr.ph.i.i.i202.1, %.lr.ph.i.i.i202.epil.preheader
  %.lcssa3820 = phi i8 [ %i.aot, %.lr.ph.i.i.i202.epil.preheader ], [ %i.aod, %.lr.ph.i.i.i202 ], [ %i.aoj, %.lr.ph.i.i.i202.1 ]
  %i.aog = sext i8 %.lcssa3820 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aog) #24
  br label %readNumber.exit.i.sink.split.i

.lr.ph.i.i.i202.1:                                ; preds = %.lr.ph.i.i.i202
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i203
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !123 ; 2 uses
  %i.aok = zext i8 %i.aoj to i64                  ; 2 uses
  %i.aol = and i64 %i.aok, 240
  %.not.i.i.i206.1 = icmp eq i64 %i.aol, 96
  br i1 %.not.i.i.i206.1, label %bb.gr, label %.thread.i.i.i207, !prof !134

bb.gr:                                            ; preds = %.lr.ph.i.i.i202.1
  %indvars.iv.next1902 = or disjoint i64 %indvars.iv.i.i203.a, 4
  %i.aom = and i64 %i.aoe, 15
  %i.aon = shl i64 %i.aom, %indvars.iv.i.i203.a
  %i.aoo = or i64 %i.aon, %.03545.i.i.i205
  %i.aop = and i64 %i.aok, 15
  %i.aoq = shl i64 %i.aop, %indvars.iv.next1902
  %i.aor = or i64 %i.aoq, %i.aoo                  ; 3 uses
  %indvars.iv.next1902.1 = add nuw nsw i64 %indvars.iv.i.i203.a, 8 ; 2 uses
  %indvars.iv.next.i.i208.1 = add nuw nsw i64 %indvars.iv.i.i203, 2 ; 2 uses
  %niter4067.next.1 = add i64 %niter4067, 2       ; 2 uses
  %niter4067.ncmp.1 = icmp eq i64 %niter4067.next.1, %unroll_iter4066
  br i1 %niter4067.ncmp.1, label %readNumber.exit.i.i195.loopexit.unr-lcssa, label %.lr.ph.i.i.i202

readNumber.exit.i.sink.split.i:                   ; preds = %.thread.i.i.i207, %bb.gp, %bb.gn
  store i8 0, ptr %i.g, align 1, !tbaa !132
  br label %readNumber.exit.i.i195

readNumber.exit.i.i195.loopexit.unr-lcssa:        ; preds = %bb.gr
  %lcmp.mod4063.not = icmp eq i64 %xtraiter4062, 0
  br i1 %lcmp.mod4063.not, label %readNumber.exit.i.i195, label %.lr.ph.i.i.i202.epil.preheader

.lr.ph.i.i.i202.epil.preheader:                   ; preds = %readNumber.exit.i.i195.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i201
  %indvars.iv.i.i203.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i201 ], [ %indvars.iv.next1902.1, %readNumber.exit.i.i195.loopexit.unr-lcssa ]
  %indvars.iv.i.i203.epil.init = phi i64 [ %i.anz, %.lr.ph.i.preheader.i.i201 ], [ %indvars.iv.next.i.i208.1, %readNumber.exit.i.i195.loopexit.unr-lcssa ]
  %.03545.i.i.i205.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i201 ], [ %i.aor, %readNumber.exit.i.i195.loopexit.unr-lcssa ]
  %lcmp.mod4065 = trunc i8 %.fr4257 to i1
  call void @llvm.assume(i1 %lcmp.mod4065)
  %i.aos = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i.i203.epil.init
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !123 ; 2 uses
  %i.aou = zext i8 %i.aot to i64                  ; 2 uses
  %i.aov = and i64 %i.aou, 240
  %.not.i.i.i206.epil = icmp eq i64 %i.aov, 96
  br i1 %.not.i.i.i206.epil, label %readNumber.exit.i.i195.loopexit.epilog-lcssa, label %.thread.i.i.i207, !prof !134

readNumber.exit.i.i195.loopexit.epilog-lcssa:     ; preds = %.lr.ph.i.i.i202.epil.preheader
  %i.aow = and i64 %i.aou, 15
  %i.aox = shl i64 %i.aow, %indvars.iv.i.i203.epil.init.a
  %i.aoy = or i64 %i.aox, %.03545.i.i.i205.epil.init
  br label %readNumber.exit.i.i195

readNumber.exit.i.i195:                           ; preds = %readNumber.exit.i.i195.loopexit.epilog-lcssa, %readNumber.exit.i.i195.loopexit.unr-lcssa, %readNumber.exit.i.sink.split.i, %bb.gq
  %.4.i = phi i32 [ %.0118.i, %readNumber.exit.i.sink.split.i ], [ %i.anv, %bb.gq ], [ %i.anv, %readNumber.exit.i.i195.loopexit.unr-lcssa ], [ %i.anv, %readNumber.exit.i.i195.loopexit.epilog-lcssa ] ; 6 uses
  %.2.i.i.i196 = phi i64 [ 0, %readNumber.exit.i.sink.split.i ], [ 0, %bb.gq ], [ %i.aor, %readNumber.exit.i.i195.loopexit.unr-lcssa ], [ %i.aoy, %readNumber.exit.i.i195.loopexit.epilog-lcssa ] ; 3 uses
  %i.aoz = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.apa = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.apb = zext i16 %i.apa to i32
  %i.apc = add i32 %i.aoz, %i.apb
  %i.apd = zext i32 %i.apc to i64
  %.not.i67.i = icmp ult i64 %.2.i.i.i196, %i.apd
  br i1 %.not.i67.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %readNumber.exit.i.i195
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i196) #24
  store i8 0, ptr %i.g, align 1, !tbaa !132
  br label %readTypeID.exit.i197

bb.gt:                                            ; preds = %readNumber.exit.i.i195
  %i.ape = trunc i64 %.2.i.i.i196 to i16
  br label %readTypeID.exit.i197

readTypeID.exit.i197:                             ; preds = %bb.gt, %bb.gs
  %.0.i.i198 = phi i16 [ -1, %bb.gs ], [ %i.ape, %bb.gt ] ; 2 uses
  %i.apf = load ptr, ptr %i.sw, align 8, !tbaa !159
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.apf, i64 %indvars.iv144.i
  store i16 %.0.i.i198, ptr %i.apg, align 2, !tbaa !113
  %i.aph = call fastcc zeroext i16 @type_components(ptr noundef nonnull %0, i16 noundef zeroext %.0.i.i198, ptr noundef %i.g) ; 3 uses
  %i.api = zext i16 %i.aph to i32                 ; 4 uses
  %i.apj = load i8, ptr %i.g, align 1, !tbaa !132, !range !136, !noundef !137
  %i.apk = trunc nuw i8 %i.apj to i1
  br i1 %i.apk, label %bb.gu, label %._crit_edge.i200.thread

bb.gu:                                            ; preds = %readTypeID.exit.i197
  %i.apl = zext i16 %i.aph to i64                 ; 2 uses
  %i.apm = shl nuw nsw i64 %i.apl, 3
  %i.apn = call noalias ptr @malloc(i64 noundef %i.apm) #25 ; 3 uses
  %i.apo = load ptr, ptr %i.sv, align 8, !tbaa !158
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %indvars.iv144.i ; 2 uses
  store ptr %i.apn, ptr %i.app, align 8, !tbaa !161
  %.not53.i = icmp eq ptr %i.apn, null
  br i1 %.not53.i, label %._crit_edge.i200.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.apq = zext i32 %.4.i to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.apq ; 2 uses
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !123 ; 2 uses
  switch i8 %i.aps, label %.lr.ph1110.preheader [
    i8 64, label %bb.gw
    i8 96, label %.critedge.i.i
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.apt = add i32 %.4.i, 1
  %i.apu = zext i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.apu
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !123
  %i.apx = icmp eq i8 %i.apw, 96
  br i1 %i.apx, label %.thread, label %.lr.ph1110.preheader

.lr.ph1110.preheader:                             ; preds = %bb.gv, %bb.gw
  %exitcond.not.i70.i3162 = icmp eq i16 %i.aph, 0
  br i1 %exitcond.not.i70.i3162, label %.thread329, label %.lr.ph

.lr.ph1110:                                       ; preds = %readNumber.exit.i74.i
  %exitcond.not.i70.i = icmp eq i64 %indvars.iv.next50.i.i, %i.apl
  br i1 %exitcond.not.i70.i, label %.thread329, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1110.preheader, %.lr.ph1110
  %.6.i11083164 = phi i32 [ %i.aqf, %.lr.ph1110 ], [ %.4.i, %.lr.ph1110.preheader ] ; 2 uses
  %indvars.iv49.i.i11093163 = phi i64 [ %indvars.iv.next50.i.i, %.lr.ph1110 ], [ 0, %.lr.ph1110.preheader ] ; 3 uses
  %i.apy = phi ptr [ %i.arn, %.lr.ph1110 ], [ %i.apr, %.lr.ph1110.preheader ]
  %i.apz = phi i8 [ %i.aro, %.lr.ph1110 ], [ %i.aps, %.lr.ph1110.preheader ]
  %i.aqa = or i8 %i.apz, 32                       ; 3 uses
  store i8 %i.aqa, ptr %i.apy, align 1, !tbaa !123
  %i.aqb = zext i8 %i.aqa to i32                  ; 2 uses
  %i.aqc = add nsw i32 %i.aqb, -96                ; 2 uses
  %i.aqd = icmp ugt i32 %i.aqc, 16
  br i1 %i.aqd, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.lr.ph
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.aqb) #24
  br label %.critedge.thread.i.loopexit.i

bb.gy:                                            ; preds = %.lr.ph
  %i.aqe = add i32 %.6.i11083164, 1               ; 3 uses
  %i.aqf = add i32 %i.aqc, %i.aqe                 ; 7 uses
  %i.aqg = icmp ugt i32 %i.aqf, %i.tt
  br i1 %i.aqg, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.critedge.thread.i.loopexit.i

bb.ha:                                            ; preds = %bb.gy
  %i.aqh = icmp ne i8 %i.aqa, 96
  %i.aqi = icmp ult i32 %i.aqe, %i.aqf
  %or.cond101.i = and i1 %i.aqh, %i.aqi
  br i1 %or.cond101.i, label %.lr.ph.i.preheader.i76.i, label %.readNumber.exit.i74.i_crit_edge

.readNumber.exit.i74.i_crit_edge:                 ; preds = %bb.ha
  %.pre1893 = zext i32 %i.aqf to i64
  br label %readNumber.exit.i74.i

.lr.ph.i.preheader.i76.i:                         ; preds = %bb.ha
  %i.aqj = zext i32 %i.aqe to i64                 ; 3 uses
  %i.aqk = zext i32 %i.aqf to i64                 ; 3 uses
  %i.aql = sub nsw i64 %i.aqk, %i.aqj
  %i.aqm = freeze i64 %i.aql                      ; 4 uses
  %xtraiter4068 = and i64 %i.aqm, 1
  %i.aqn = icmp eq i64 %i.aqm, 1
  br i1 %i.aqn, label %.lr.ph.i.i77.i.epil.preheader, label %.lr.ph.i.preheader.i76.i.new

.lr.ph.i.preheader.i76.i.new:                     ; preds = %.lr.ph.i.preheader.i76.i
  %unroll_iter4072 = and i64 %i.aqm, -2
  br label %.lr.ph.i.i77.i

.lr.ph.i.i77.i:                                   ; preds = %bb.hb, %.lr.ph.i.preheader.i76.i.new
  %indvars.iv.i78.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i76.i.new ], [ %indvars.iv.next1905.1, %bb.hb ] ; 3 uses
  %indvars.iv.i78.i = phi i64 [ %i.aqj, %.lr.ph.i.preheader.i76.i.new ], [ %indvars.iv.next.i83.i.1, %bb.hb ] ; 3 uses
  %.03545.i.i80.i = phi i64 [ 0, %.lr.ph.i.preheader.i76.i.new ], [ %i.ard, %bb.hb ]
  %niter4073 = phi i64 [ 0, %.lr.ph.i.preheader.i76.i.new ], [ %niter4073.next.1, %bb.hb ]
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i78.i
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !123 ; 2 uses
  %i.aqq = zext i8 %i.aqp to i64                  ; 2 uses
  %i.aqr = and i64 %i.aqq, 240
  %.not.i.i81.i = icmp eq i64 %i.aqr, 96
  br i1 %.not.i.i81.i, label %.lr.ph.i.i77.i.1, label %.thread.i.i82.i, !prof !134

.thread.i.i82.i:                                  ; preds = %.lr.ph.i.i77.i.epil.preheader, %.lr.ph.i.i77.i, %.lr.ph.i.i77.i.1
  %.lcssa3823 = phi i8 [ %i.aqv, %.lr.ph.i.i77.i.1 ], [ %i.aqp, %.lr.ph.i.i77.i ], [ %i.arf, %.lr.ph.i.i77.i.epil.preheader ]
  %i.aqs = sext i8 %.lcssa3823 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aqs) #24
  br label %.critedge.thread.i.loopexit.i

.lr.ph.i.i77.i.1:                                 ; preds = %.lr.ph.i.i77.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i78.i
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 1
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !123 ; 2 uses
  %i.aqw = zext i8 %i.aqv to i64                  ; 2 uses
  %i.aqx = and i64 %i.aqw, 240
  %.not.i.i81.i.1 = icmp eq i64 %i.aqx, 96
  br i1 %.not.i.i81.i.1, label %bb.hb, label %.thread.i.i82.i, !prof !134

bb.hb:                                            ; preds = %.lr.ph.i.i77.i.1
  %indvars.iv.next1905 = or disjoint i64 %indvars.iv.i78.i.a, 4
  %i.aqy = and i64 %i.aqq, 15
  %i.aqz = shl i64 %i.aqy, %indvars.iv.i78.i.a
  %i.ara = or i64 %i.aqz, %.03545.i.i80.i
  %i.arb = and i64 %i.aqw, 15
  %i.arc = shl i64 %i.arb, %indvars.iv.next1905
  %i.ard = or i64 %i.arc, %i.ara                  ; 3 uses
  %indvars.iv.next1905.1 = add nuw nsw i64 %indvars.iv.i78.i.a, 8 ; 2 uses
  %indvars.iv.next.i83.i.1 = add nuw nsw i64 %indvars.iv.i78.i, 2 ; 2 uses
  %niter4073.next.1 = add i64 %niter4073, 2       ; 2 uses
  %niter4073.ncmp.1 = icmp eq i64 %niter4073.next.1, %unroll_iter4072
  br i1 %niter4073.ncmp.1, label %readNumber.exit.i74.i.loopexit.unr-lcssa, label %.lr.ph.i.i77.i

readNumber.exit.i74.i.loopexit.unr-lcssa:         ; preds = %bb.hb
  %lcmp.mod4069.not = icmp eq i64 %xtraiter4068, 0
  br i1 %lcmp.mod4069.not, label %readNumber.exit.i74.i, label %.lr.ph.i.i77.i.epil.preheader

.lr.ph.i.i77.i.epil.preheader:                    ; preds = %readNumber.exit.i74.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i76.i
  %indvars.iv.i78.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i76.i ], [ %indvars.iv.next1905.1, %readNumber.exit.i74.i.loopexit.unr-lcssa ]
  %indvars.iv.i78.i.epil.init = phi i64 [ %i.aqj, %.lr.ph.i.preheader.i76.i ], [ %indvars.iv.next.i83.i.1, %readNumber.exit.i74.i.loopexit.unr-lcssa ]
  %.03545.i.i80.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i76.i ], [ %i.ard, %readNumber.exit.i74.i.loopexit.unr-lcssa ]
  %lcmp.mod4071 = trunc i64 %i.aqm to i1
  call void @llvm.assume(i1 %lcmp.mod4071)
  %i.are = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i78.i.epil.init
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !123 ; 2 uses
  %i.arg = zext i8 %i.arf to i64                  ; 2 uses
  %i.arh = and i64 %i.arg, 240
  %.not.i.i81.i.epil = icmp eq i64 %i.arh, 96
  br i1 %.not.i.i81.i.epil, label %readNumber.exit.i74.i.loopexit.epilog-lcssa, label %.thread.i.i82.i, !prof !134

readNumber.exit.i74.i.loopexit.epilog-lcssa:      ; preds = %.lr.ph.i.i77.i.epil.preheader
  %i.ari = and i64 %i.arg, 15
  %i.arj = shl i64 %i.ari, %indvars.iv.i78.i.epil.init.a
  %i.ark = or i64 %i.arj, %.03545.i.i80.i.epil.init
  br label %readNumber.exit.i74.i

readNumber.exit.i74.i:                            ; preds = %readNumber.exit.i74.i.loopexit.epilog-lcssa, %readNumber.exit.i74.i.loopexit.unr-lcssa, %.readNumber.exit.i74.i_crit_edge
  %.pre-phi1894 = phi i64 [ %.pre1893, %.readNumber.exit.i74.i_crit_edge ], [ %i.aqk, %readNumber.exit.i74.i.loopexit.unr-lcssa ], [ %i.aqk, %readNumber.exit.i74.i.loopexit.epilog-lcssa ]
  %.2.i.i75.i = phi i64 [ 0, %.readNumber.exit.i74.i_crit_edge ], [ %i.ard, %readNumber.exit.i74.i.loopexit.unr-lcssa ], [ %i.ark, %readNumber.exit.i74.i.loopexit.epilog-lcssa ]
  %i.arl = load ptr, ptr %i.app, align 8, !tbaa !161
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i11093163, 1 ; 3 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.arl, i64 %indvars.iv49.i.i11093163
  store i64 %.2.i.i75.i, ptr %i.arm, align 8, !tbaa !124
  %i.arn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.pre-phi1894 ; 2 uses
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !123 ; 2 uses
  %.not.i69.i = icmp eq i8 %i.aro, 96
  br i1 %.not.i69.i, label %.critedge.i.i.loopexit, label %.lr.ph1110

.critedge.i.i.loopexit:                           ; preds = %readNumber.exit.i74.i
  %i.arp = trunc nuw nsw i64 %indvars.iv.next50.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.gv, %.critedge.i.i.loopexit
  %.6.i.lcssa = phi i32 [ %.4.i, %bb.gv ], [ %i.aqf, %.critedge.i.i.loopexit ] ; 2 uses
  %indvars.iv49.i.i.lcssa = phi i32 [ 0, %bb.gv ], [ %i.arp, %.critedge.i.i.loopexit ] ; 2 uses
  %.not33.i.i = icmp eq i32 %indvars.iv49.i.i.lcssa, %i.api
  br i1 %.not33.i.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.critedge.i.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.317, i32 noundef %indvars.iv49.i.i.lcssa, i32 noundef range(i32 0, 65536) %i.api) #24
  store i8 0, ptr %i.g, align 1, !tbaa !132
  br label %bb.hd

.critedge.thread.i.loopexit.i:                    ; preds = %.thread.i.i82.i, %bb.gz, %bb.gx
  store i8 0, ptr %i.g, align 1, !tbaa !132
  %i.arq = load ptr, ptr %i.sv, align 8, !tbaa !158
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %indvars.iv144.i
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !161
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %indvars.iv49.i.i11093163
  store i64 0, ptr %i.art, align 8, !tbaa !124
  br label %bb.hd

bb.hd:                                            ; preds = %.critedge.i.i, %bb.hc, %.critedge.thread.i.loopexit.i
  %.6.i688 = phi i32 [ %.6.i.lcssa, %.critedge.i.i ], [ %.6.i.lcssa, %bb.hc ], [ %.6.i11083164, %.critedge.thread.i.loopexit.i ]
  %i.aru = phi i1 [ true, %.critedge.i.i ], [ false, %bb.hc ], [ false, %.critedge.thread.i.loopexit.i ]
  %i.arv = add i32 %.6.i688, 1                    ; 2 uses
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond.not.i199 = icmp eq i64 %indvars.iv.next145.i, %i.anl
  br i1 %exitcond.not.i199, label %._crit_edge.i200, label %.lr.ph.i194.backedge

.thread:                                          ; preds = %bb.gw
  %i.arw = shl nuw nsw i32 %i.api, 3
  %i.arx = zext nneg i32 %i.arw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apn, i8 0, i64 %i.arx, i1 false)
  %i.ary = add i32 %.4.i, 2                       ; 2 uses
  %indvars.iv.next145.i2109 = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond.not.i1992110 = icmp eq i64 %indvars.iv.next145.i2109, %i.anl
  br i1 %exitcond.not.i1992110, label %._crit_edge.thread.i, label %.lr.ph.i194.backedge

.lr.ph.i194.backedge:                             ; preds = %.thread, %bb.hd, %.thread329
  %indvars.iv144.i.be = phi i64 [ %indvars.iv.next145.i2109, %.thread ], [ %indvars.iv.next145.i, %bb.hd ], [ %indvars.iv.next145.i331, %.thread329 ]
  %.0118.i.be = phi i32 [ %i.ary, %.thread ], [ %i.arv, %bb.hd ], [ %.6.i1108.lcssa, %.thread329 ]
  br label %.lr.ph.i194

.thread329:                                       ; preds = %.lr.ph1110, %.lr.ph1110.preheader
  %.6.i1108.lcssa = phi i32 [ %.4.i, %.lr.ph1110.preheader ], [ %i.aqf, %.lr.ph1110 ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.316, i32 noundef range(i32 0, 65536) %i.api) #24
  store i8 0, ptr %i.g, align 1, !tbaa !132
  %indvars.iv.next145.i331 = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond.not.i199332 = icmp eq i64 %indvars.iv.next145.i331, %i.anl
  br i1 %exitcond.not.i199332, label %._crit_edge.i200.thread, label %.lr.ph.i194.backedge

._crit_edge.i200:                                 ; preds = %bb.hd
  br i1 %i.aru, label %._crit_edge.thread.i, label %._crit_edge.i200.thread

._crit_edge.thread.i:                             ; preds = %.thread, %._crit_edge.i200, %.preheader.i193
  %.0.lcssa174.i = phi i32 [ %i.arv, %._crit_edge.i200 ], [ %.3.i, %.preheader.i193 ], [ %i.ary, %.thread ] ; 2 uses
  %.not52.i = icmp eq i32 %.0.lcssa174.i, %i.tt
  br i1 %.not52.i, label %parseGlobals.exit, label %bb.he

bb.he:                                            ; preds = %._crit_edge.thread.i
  %i.arz = sub i32 %i.tt, %.0.lcssa174.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.314, i32 noundef %i.arz) #24
  br label %._crit_edge.i200.thread

parseGlobals.exit:                                ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %i.asa = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt4.not3165 = icmp eq ptr %i.asa, null
  br i1 %.not1261102.jt4.not3165, label %.critedge, label %.lr.ph3166

bb.hf:                                            ; preds = %readNumber.exit.i212
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.311, i32 noundef %i.alq, i32 noundef %i.sm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.backedge365

._crit_edge.i200.thread:                          ; preds = %.thread329, %readTypeID.exit.i197, %bb.gu, %._crit_edge.i200, %bb.gm, %bb.fx, %bb.he, %bb.gj, %bb.gl
  %.2.i185.ph = phi i32 [ 4, %bb.fx ], [ 4, %._crit_edge.i200 ], [ 4, %bb.he ], [ 20, %bb.gl ], [ 20, %bb.gj ], [ 4, %bb.gm ], [ 4, %.thread329 ], [ 4, %readTypeID.exit.i197 ], [ 20, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef 4) #24
  call void @free(ptr noundef %i.sj) #24
  br label %bb.qb

bb.hg:                                            ; preds = %.lr.ph3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.asb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sj) #26
  %i.asc = trunc i64 %i.asb to i32                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i8 1, ptr %i.f, align 1, !tbaa !132
  %i.asd = load i8, ptr %i.sl, align 1, !tbaa !123
  %.fr4259 = freeze i8 %i.asd                     ; 6 uses
  %i.ase = zext i8 %.fr4259 to i32                ; 2 uses
  %i.asf = add i8 %.fr4259, -113
  %i.asg = icmp ult i8 %i.asf, -17
  br i1 %i.asg, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.ase) #24
  br label %bb.hm

bb.hi:                                            ; preds = %bb.hg
  %i.ash = add nsw i32 %i.ase, -94                ; 2 uses
  %i.asi = icmp ugt i32 %i.ash, %i.asc
  br i1 %i.asi, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hi
  %i.asj = icmp eq i8 %.fr4259, 96
  br i1 %i.asj, label %readNumber.exit.i224, label %.lr.ph.i.preheader.i216

.lr.ph.i.preheader.i216:                          ; preds = %bb.hk
  %i.ask = zext i8 %.fr4259 to i64                ; 2 uses
  %xtraiter4078 = and i64 %i.ask, 1
  %i.asl = icmp eq i8 %.fr4259, 97
  br i1 %i.asl, label %.lr.ph.i.i217.epil.preheader, label %.lr.ph.i.preheader.i216.new

.lr.ph.i.preheader.i216.new:                      ; preds = %.lr.ph.i.preheader.i216
  %i.asm = and i64 %i.ask, 254
  %i.asn = add nsw i64 %i.asm, -98
  br label %.lr.ph.i.i217

.lr.ph.i.i217:                                    ; preds = %bb.hl, %.lr.ph.i.preheader.i216.new
  %indvars.iv149.i = phi i64 [ 0, %.lr.ph.i.preheader.i216.new ], [ %indvars.iv.next150.i.1, %bb.hl ] ; 3 uses
  %indvars.iv.i218 = phi i64 [ 2, %.lr.ph.i.preheader.i216.new ], [ %indvars.iv.next.i222.1, %bb.hl ] ; 3 uses
  %.03545.i.i219 = phi i64 [ 0, %.lr.ph.i.preheader.i216.new ], [ %i.atd, %bb.hl ]
  %niter4083 = phi i64 [ 0, %.lr.ph.i.preheader.i216.new ], [ %niter4083.next.1, %bb.hl ] ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i218
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !123 ; 2 uses
  %i.asq = zext i8 %i.asp to i64                  ; 2 uses
  %i.asr = and i64 %i.asq, 240
  %.not.i.i220 = icmp eq i64 %i.asr, 96
  br i1 %.not.i.i220, label %.lr.ph.i.i217.1, label %.thread.i.i221, !prof !134

.thread.i.i221:                                   ; preds = %.lr.ph.i.i217.epil.preheader, %.lr.ph.i.i217, %.lr.ph.i.i217.1
  %.lcssa3684 = phi i8 [ %i.asv, %.lr.ph.i.i217.1 ], [ %i.asp, %.lr.ph.i.i217 ], [ %i.atf, %.lr.ph.i.i217.epil.preheader ]
  %i.ass = sext i8 %.lcssa3684 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ass) #24
  br label %bb.hm

.lr.ph.i.i217.1:                                  ; preds = %.lr.ph.i.i217
  %i.ast = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i218
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 1
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !123 ; 2 uses
  %i.asw = zext i8 %i.asv to i64                  ; 2 uses
  %i.asx = and i64 %i.asw, 240
  %.not.i.i220.1 = icmp eq i64 %i.asx, 96
  br i1 %.not.i.i220.1, label %bb.hl, label %.thread.i.i221, !prof !134

bb.hl:                                            ; preds = %.lr.ph.i.i217.1
  %indvars.iv.next150.i = or disjoint i64 %indvars.iv149.i, 4
  %i.asy = and i64 %i.asq, 15
  %i.asz = shl i64 %i.asy, %indvars.iv149.i
  %i.ata = or i64 %i.asz, %.03545.i.i219
  %i.atb = and i64 %i.asw, 15
  %i.atc = shl i64 %i.atb, %indvars.iv.next150.i
  %i.atd = or i64 %i.atc, %i.ata                  ; 3 uses
  %indvars.iv.next150.i.1 = add nuw nsw i64 %indvars.iv149.i, 8 ; 2 uses
  %indvars.iv.next.i222.1 = add nuw nsw i64 %indvars.iv.i218, 2 ; 2 uses
  %niter4083.next.1 = add i64 %niter4083, 2
  %niter4083.ncmp.1 = icmp eq i64 %niter4083, %i.asn
  br i1 %niter4083.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i217

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.hl
  %lcmp.mod4079.not = icmp eq i64 %xtraiter4078, 0
  br i1 %lcmp.mod4079.not, label %._crit_edge.i.i, label %.lr.ph.i.i217.epil.preheader

.lr.ph.i.i217.epil.preheader:                     ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.preheader.i216
  %indvars.iv149.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i216 ], [ %indvars.iv.next150.i.1, %._crit_edge.i.i.unr-lcssa ]
  %indvars.iv.i218.epil.init = phi i64 [ 2, %.lr.ph.i.preheader.i216 ], [ %indvars.iv.next.i222.1, %._crit_edge.i.i.unr-lcssa ]
  %.03545.i.i219.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i216 ], [ %i.atd, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod4081 = trunc i8 %.fr4259 to i1
  call void @llvm.assume(i1 %lcmp.mod4081)
  %i.ate = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i218.epil.init
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !123 ; 2 uses
  %i.atg = zext i8 %i.atf to i64                  ; 2 uses
  %i.ath = and i64 %i.atg, 240
  %.not.i.i220.epil = icmp eq i64 %i.ath, 96
  br i1 %.not.i.i220.epil, label %._crit_edge.i.i.epilog-lcssa, label %.thread.i.i221, !prof !134

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph.i.i217.epil.preheader
  %i.ati = and i64 %i.atg, 15
  %i.atj = shl i64 %i.ati, %indvars.iv149.i.epil.init
  %i.atk = or i64 %i.atj, %.03545.i.i219.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %._crit_edge.i.i.epilog-lcssa
  %.lcssa3686 = phi i64 [ %i.atd, %._crit_edge.i.i.unr-lcssa ], [ %i.atk, %._crit_edge.i.i.epilog-lcssa ]
  %i.atl = trunc i64 %.lcssa3686 to i32
  br label %readNumber.exit.i224

bb.hm:                                            ; preds = %.thread.i.i221, %bb.hj, %bb.hh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.318) #24
  br label %.loopexit

readNumber.exit.i224:                             ; preds = %._crit_edge.i.i, %bb.hk
  %.2.i.i = phi i32 [ %i.atl, %._crit_edge.i.i ], [ 0, %bb.hk ] ; 3 uses
  %i.atm = load i32, ptr %i.st, align 8, !tbaa !149 ; 2 uses
  %i.atn = add i32 %i.atm, %.2.i.i                ; 2 uses
  store i32 %i.atn, ptr %i.st, align 8, !tbaa !149
  %i.ato = load ptr, ptr %i.su, align 8, !tbaa !148
  %i.atp = zext i32 %i.atn to i64
  %i.atq = shl nuw nsw i64 %i.atp, 4
  %i.atr = call ptr @cli_safer_realloc(ptr noundef %i.ato, i64 noundef %i.atq) #24 ; 2 uses
  store ptr %i.atr, ptr %i.su, align 8, !tbaa !148
  %.not55.i = icmp eq ptr %i.atr, null
  br i1 %.not55.i, label %.loopexit, label %.preheader112.i

.preheader112.i:                                  ; preds = %readNumber.exit.i224
  %.not132.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not132.i, label %parseMD.exit, label %.lr.ph130.preheader.i

.lr.ph130.preheader.i:                            ; preds = %.preheader112.i
  %wide.trip.count172.i = zext i32 %.2.i.i to i64
  br label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %._crit_edge.i230, %.lr.ph130.preheader.i
  %i.ats = phi i32 [ %i.ash, %.lr.ph130.preheader.i ], [ %i.bbj, %._crit_edge.i230 ] ; 2 uses
  %indvars.iv169.i = phi i64 [ 0, %.lr.ph130.preheader.i ], [ %indvars.iv.next170.i, %._crit_edge.i230 ] ; 2 uses
  %i.att = zext i32 %i.ats to i64
  %i.atu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !123
  %.fr4262 = freeze i8 %i.atv                     ; 3 uses
  %i.atw = zext i8 %.fr4262 to i32                ; 2 uses
  %i.atx = add nsw i32 %i.atw, -96                ; 4 uses
  %i.aty = icmp ugt i32 %i.atx, 16
  br i1 %i.aty, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %.lr.ph130.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.atw) #24
  br label %bb.hs

bb.ho:                                            ; preds = %.lr.ph130.i
  %i.atz = add i32 %i.ats, 1                      ; 3 uses
  %i.aua = add i32 %i.atx, %i.atz                 ; 5 uses
  %i.aub = icmp ugt i32 %i.aua, %i.asc
  br i1 %i.aub, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.hs

bb.hq:                                            ; preds = %bb.ho
  %i.auc = icmp ne i8 %.fr4262, 96
  %i.aud = icmp ult i32 %i.atz, %i.aua
  %or.cond.i225 = and i1 %i.auc, %i.aud
  br i1 %or.cond.i225, label %.lr.ph.i62.preheader.i, label %._crit_edge.i59.i

.lr.ph.i62.preheader.i:                           ; preds = %bb.hq
  %i.aue = zext i32 %i.atz to i64                 ; 2 uses
  %i.auf = zext nneg i32 %i.atx to i64            ; 2 uses
  %xtraiter4087 = and i64 %i.auf, 1
  %i.aug = icmp eq i32 %i.atx, 1
  br i1 %i.aug, label %.lr.ph.i62.i.epil.preheader, label %.lr.ph.i62.preheader.i.new

.lr.ph.i62.preheader.i.new:                       ; preds = %.lr.ph.i62.preheader.i
  %unroll_iter4091 = and i64 %i.auf, 30
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %bb.hr, %.lr.ph.i62.preheader.i.new
  %indvars.iv154.i = phi i64 [ %i.aue, %.lr.ph.i62.preheader.i.new ], [ %indvars.iv.next155.i.1, %bb.hr ] ; 3 uses
  %.03346.i64.i = phi i32 [ 0, %.lr.ph.i62.preheader.i.new ], [ %i.ava, %bb.hr ] ; 3 uses
  %.03545.i65.i = phi i64 [ 0, %.lr.ph.i62.preheader.i.new ], [ %i.auz, %bb.hr ]
  %niter4092 = phi i64 [ 0, %.lr.ph.i62.preheader.i.new ], [ %niter4092.next.1, %bb.hr ]
  %i.auh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv154.i
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !123 ; 2 uses
  %i.auj = zext i8 %i.aui to i64                  ; 2 uses
  %i.auk = and i64 %i.auj, 240
  %.not.i66.i = icmp eq i64 %i.auk, 96
  br i1 %.not.i66.i, label %.lr.ph.i62.i.1, label %.thread.i67.i, !prof !134

.thread.i67.i:                                    ; preds = %.lr.ph.i62.i.epil.preheader, %.lr.ph.i62.i, %.lr.ph.i62.i.1
  %.lcssa3687 = phi i8 [ %i.auo, %.lr.ph.i62.i.1 ], [ %i.aui, %.lr.ph.i62.i ], [ %i.avc, %.lr.ph.i62.i.epil.preheader ]
  %i.aul = sext i8 %.lcssa3687 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aul) #24
  br label %bb.hs

.lr.ph.i62.i.1:                                   ; preds = %.lr.ph.i62.i
  %i.aum = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv154.i
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 1
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !123 ; 2 uses
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = and i64 %i.aup, 240
  %.not.i66.i.1 = icmp eq i64 %i.auq, 96
  br i1 %.not.i66.i.1, label %bb.hr, label %.thread.i67.i, !prof !134

bb.hr:                                            ; preds = %.lr.ph.i62.i.1
  %i.aur = or disjoint i32 %.03346.i64.i, 4
  %i.aus = and i64 %i.auj, 15
  %i.aut = zext nneg i32 %.03346.i64.i to i64
  %i.auu = shl i64 %i.aus, %i.aut
  %i.auv = or i64 %i.auu, %.03545.i65.i
  %i.auw = and i64 %i.aup, 15
  %i.aux = zext nneg i32 %i.aur to i64
  %i.auy = shl i64 %i.auw, %i.aux
  %i.auz = or i64 %i.auy, %i.auv                  ; 3 uses
  %i.ava = add nuw nsw i32 %.03346.i64.i, 8       ; 2 uses
  %indvars.iv.next155.i.1 = add nuw nsw i64 %indvars.iv154.i, 2 ; 2 uses
  %niter4092.next.1 = add i64 %niter4092, 2       ; 2 uses
  %niter4092.ncmp.1 = icmp eq i64 %niter4092.next.1, %unroll_iter4091
  br i1 %niter4092.ncmp.1, label %._crit_edge.i59.i.loopexit.unr-lcssa, label %.lr.ph.i62.i

bb.hs:                                            ; preds = %.thread.i67.i, %bb.hp, %bb.hn
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.319) #24
  br label %.loopexit

._crit_edge.i59.i.loopexit.unr-lcssa:             ; preds = %bb.hr
  %lcmp.mod4088.not = icmp eq i64 %xtraiter4087, 0
  br i1 %lcmp.mod4088.not, label %._crit_edge.i59.i, label %.lr.ph.i62.i.epil.preheader

.lr.ph.i62.i.epil.preheader:                      ; preds = %._crit_edge.i59.i.loopexit.unr-lcssa, %.lr.ph.i62.preheader.i
  %indvars.iv154.i.epil.init = phi i64 [ %i.aue, %.lr.ph.i62.preheader.i ], [ %indvars.iv.next155.i.1, %._crit_edge.i59.i.loopexit.unr-lcssa ]
  %.03346.i64.i.epil.init = phi i32 [ 0, %.lr.ph.i62.preheader.i ], [ %i.ava, %._crit_edge.i59.i.loopexit.unr-lcssa ]
  %.03545.i65.i.epil.init = phi i64 [ 0, %.lr.ph.i62.preheader.i ], [ %i.auz, %._crit_edge.i59.i.loopexit.unr-lcssa ]
  %lcmp.mod4090 = trunc i8 %.fr4262 to i1
  call void @llvm.assume(i1 %lcmp.mod4090)
  %i.avb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv154.i.epil.init
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !123 ; 2 uses
  %i.avd = zext i8 %i.avc to i64                  ; 2 uses
  %i.ave = and i64 %i.avd, 240
  %.not.i66.i.epil = icmp eq i64 %i.ave, 96
  br i1 %.not.i66.i.epil, label %._crit_edge.i59.i.loopexit.epilog-lcssa, label %.thread.i67.i, !prof !134

._crit_edge.i59.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i62.i.epil.preheader
  %i.avf = and i64 %i.avd, 15
  %i.avg = zext nneg i32 %.03346.i64.i.epil.init to i64
  %i.avh = shl i64 %i.avf, %i.avg
  %i.avi = or i64 %i.avh, %.03545.i65.i.epil.init
  br label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %._crit_edge.i59.i.loopexit.epilog-lcssa, %._crit_edge.i59.i.loopexit.unr-lcssa, %bb.hq
  %.2.i61.i = phi i64 [ 0, %bb.hq ], [ %i.auz, %._crit_edge.i59.i.loopexit.unr-lcssa ], [ %i.avi, %._crit_edge.i59.i.loopexit.epilog-lcssa ] ; 2 uses
  store i32 %i.aua, ptr %i.e, align 4, !tbaa !117
  %i.avj = trunc i64 %.2.i61.i to i32             ; 2 uses
  %i.avk = load ptr, ptr %i.su, align 8, !tbaa !148
  %i.avl = trunc nuw i64 %indvars.iv169.i to i32
  %i.avm = add i32 %i.atm, %i.avl
  %i.avn = zext i32 %i.avm to i64
  %i.avo = getelementptr inbounds nuw [16 x i8], ptr %i.avk, i64 %i.avn ; 2 uses
  store i32 %i.avj, ptr %i.avo, align 8, !tbaa !162
  %i.avp = and i64 %.2.i61.i, 4294967295          ; 2 uses
  %i.avq = call noalias ptr @calloc(i64 noundef %i.avp, i64 noundef 24) #23 ; 6 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  store ptr %i.avq, ptr %i.avr, align 8, !tbaa !165
  %.not56.i = icmp eq ptr %i.avq, null
  br i1 %.not56.i, label %.loopexit, label %.preheader.i226

.preheader.i226:                                  ; preds = %._crit_edge.i59.i
  %.not133.i = icmp eq i32 %i.avj, 0
  br i1 %.not133.i, label %._crit_edge.i230, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.preheader.i226, %bb.il
  %i.avs = phi i32 [ %i.bbi, %bb.il ], [ %i.aua, %.preheader.i226 ] ; 2 uses
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i, %bb.il ], [ 0, %.preheader.i226 ] ; 5 uses
  %i.avt = zext i32 %i.avs to i64
  %i.avu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !123 ; 3 uses
  %i.avw = icmp eq i8 %i.avv, 124
  br i1 %i.avw, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %.lr.ph.i228
  %i.avx = getelementptr inbounds nuw [24 x i8], ptr %i.avq, i64 %indvars.iv166.i ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 4
  %i.avz = call fastcc ptr @readData(ptr noundef nonnull readonly %i.sj, ptr noundef %i.e, i32 noundef %i.asc, ptr noundef %i.f, ptr noundef %i.avy)
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avx, i64 8
  store ptr %i.avz, ptr %i.awa, align 8, !tbaa !166
  %i.awb = load i8, ptr %i.f, align 1, !tbaa !132, !range !136, !noundef !137
  %i.awc = trunc nuw i8 %i.awb to i1
  %.pre.i232 = load i32, ptr %i.e, align 4, !tbaa !117
  br i1 %i.awc, label %bb.il, label %.loopexit

bb.hu:                                            ; preds = %.lr.ph.i228
  %i.awd = zext i8 %i.avv to i32                  ; 2 uses
  %i.awe = add nsw i32 %i.awd, -96                ; 2 uses
  %i.awf = icmp ugt i32 %i.awe, 16
  br i1 %i.awf, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.awd) #24
  br label %readNumber.exit83.thread.i

bb.hw:                                            ; preds = %bb.hu
  %i.awg = add i32 %i.avs, 1                      ; 3 uses
  %i.awh = add i32 %i.awe, %i.awg                 ; 6 uses
  %i.awi = icmp ugt i32 %i.awh, %i.asc
  br i1 %i.awi, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit83.thread.i

bb.hy:                                            ; preds = %bb.hw
  %i.awj = icmp ne i8 %i.avv, 96
  %i.awk = icmp ult i32 %i.awg, %i.awh
  %or.cond2387 = and i1 %i.awj, %i.awk
  br i1 %or.cond2387, label %.lr.ph.i75.preheader.i, label %.thread208.i.sink.split

.lr.ph.i75.preheader.i:                           ; preds = %bb.hy
  %i.awl = zext i32 %i.awg to i64                 ; 3 uses
  %i.awm = zext i32 %i.awh to i64                 ; 2 uses
  %i.awn = sub nsw i64 %i.awm, %i.awl
  %i.awo = freeze i64 %i.awn                      ; 4 uses
  %xtraiter4096 = and i64 %i.awo, 1
  %i.awp = icmp eq i64 %i.awo, 1
  br i1 %i.awp, label %.lr.ph.i75.i.epil.preheader, label %.lr.ph.i75.preheader.i.new

.lr.ph.i75.preheader.i.new:                       ; preds = %.lr.ph.i75.preheader.i
  %unroll_iter4100 = and i64 %i.awo, -2
  br label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %bb.hz, %.lr.ph.i75.preheader.i.new
  %indvars.iv157.i = phi i64 [ %i.awl, %.lr.ph.i75.preheader.i.new ], [ %indvars.iv.next158.i.1, %bb.hz ] ; 3 uses
  %.03346.i77.i = phi i32 [ 0, %.lr.ph.i75.preheader.i.new ], [ %i.axj, %bb.hz ] ; 3 uses
  %.03545.i78.i = phi i64 [ 0, %.lr.ph.i75.preheader.i.new ], [ %i.axi, %bb.hz ]
  %niter4101 = phi i64 [ 0, %.lr.ph.i75.preheader.i.new ], [ %niter4101.next.1, %bb.hz ]
  %i.awq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv157.i
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !123 ; 2 uses
  %i.aws = zext i8 %i.awr to i64                  ; 2 uses
  %i.awt = and i64 %i.aws, 240
  %.not.i79.i = icmp eq i64 %i.awt, 96
  br i1 %.not.i79.i, label %.lr.ph.i75.i.1, label %.thread.i80.i, !prof !134

.thread.i80.i:                                    ; preds = %.lr.ph.i75.i.epil.preheader, %.lr.ph.i75.i, %.lr.ph.i75.i.1
  %.lcssa3690 = phi i8 [ %i.awx, %.lr.ph.i75.i.1 ], [ %i.awr, %.lr.ph.i75.i ], [ %i.axn, %.lr.ph.i75.i.epil.preheader ]
  %i.awu = sext i8 %.lcssa3690 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.awu) #24
  br label %readNumber.exit83.thread.i

.lr.ph.i75.i.1:                                   ; preds = %.lr.ph.i75.i
  %i.awv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv157.i
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 1
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !123 ; 2 uses
  %i.awy = zext i8 %i.awx to i64                  ; 2 uses
  %i.awz = and i64 %i.awy, 240
  %.not.i79.i.1 = icmp eq i64 %i.awz, 96
  br i1 %.not.i79.i.1, label %bb.hz, label %.thread.i80.i, !prof !134

bb.hz:                                            ; preds = %.lr.ph.i75.i.1
  %i.axa = or disjoint i32 %.03346.i77.i, 4
  %i.axb = and i64 %i.aws, 15
  %i.axc = zext nneg i32 %.03346.i77.i to i64
  %i.axd = shl i64 %i.axb, %i.axc
  %i.axe = or i64 %i.axd, %.03545.i78.i
  %i.axf = and i64 %i.awy, 15
  %i.axg = zext nneg i32 %i.axa to i64
  %i.axh = shl i64 %i.axf, %i.axg
  %i.axi = or i64 %i.axh, %i.axe                  ; 3 uses
  %i.axj = add nuw nsw i32 %.03346.i77.i, 8       ; 2 uses
  %indvars.iv.next158.i.1 = add nuw nsw i64 %indvars.iv157.i, 2 ; 2 uses
  %niter4101.next.1 = add i64 %niter4101, 2       ; 2 uses
  %niter4101.ncmp.1 = icmp eq i64 %niter4101.next.1, %unroll_iter4100
  br i1 %niter4101.ncmp.1, label %readNumber.exit83.i.unr-lcssa, label %.lr.ph.i75.i

readNumber.exit83.thread.i:                       ; preds = %.thread.i80.i, %bb.hx, %bb.hv
  %i.axk = getelementptr inbounds nuw [24 x i8], ptr %i.avq, i64 %indvars.iv166.i
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 4
  store i32 0, ptr %i.axl, align 4, !tbaa !168
  br label %.loopexit

readNumber.exit83.i.unr-lcssa:                    ; preds = %bb.hz
  %lcmp.mod4097.not = icmp eq i64 %xtraiter4096, 0
  br i1 %lcmp.mod4097.not, label %readNumber.exit83.i, label %.lr.ph.i75.i.epil.preheader

.lr.ph.i75.i.epil.preheader:                      ; preds = %readNumber.exit83.i.unr-lcssa, %.lr.ph.i75.preheader.i
  %indvars.iv157.i.epil.init = phi i64 [ %i.awl, %.lr.ph.i75.preheader.i ], [ %indvars.iv.next158.i.1, %readNumber.exit83.i.unr-lcssa ]
  %.03346.i77.i.epil.init = phi i32 [ 0, %.lr.ph.i75.preheader.i ], [ %i.axj, %readNumber.exit83.i.unr-lcssa ]
  %.03545.i78.i.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader.i ], [ %i.axi, %readNumber.exit83.i.unr-lcssa ]
  %lcmp.mod4099 = trunc i64 %i.awo to i1
  call void @llvm.assume(i1 %lcmp.mod4099)
  %i.axm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv157.i.epil.init
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !123 ; 2 uses
  %i.axo = zext i8 %i.axn to i64                  ; 2 uses
  %i.axp = and i64 %i.axo, 240
  %.not.i79.i.epil = icmp eq i64 %i.axp, 96
  br i1 %.not.i79.i.epil, label %readNumber.exit83.i.epilog-lcssa, label %.thread.i80.i, !prof !134

readNumber.exit83.i.epilog-lcssa:                 ; preds = %.lr.ph.i75.i.epil.preheader
  %i.axq = and i64 %i.axo, 15
  %i.axr = zext nneg i32 %.03346.i77.i.epil.init to i64
  %i.axs = shl i64 %i.axq, %i.axr
  %i.axt = or i64 %i.axs, %.03545.i78.i.epil.init
  br label %readNumber.exit83.i

readNumber.exit83.i:                              ; preds = %readNumber.exit83.i.unr-lcssa, %readNumber.exit83.i.epilog-lcssa
  %.lcssa3692 = phi i64 [ %i.axi, %readNumber.exit83.i.unr-lcssa ], [ %i.axt, %readNumber.exit83.i.epilog-lcssa ]
  %i.axu = trunc i64 %.lcssa3692 to i32           ; 2 uses
  %i.axv = getelementptr inbounds nuw [24 x i8], ptr %i.avq, i64 %indvars.iv166.i ; 4 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  store i32 %i.axu, ptr %i.axw, align 4, !tbaa !168
  %.not57.i = icmp eq i32 %i.axu, 0
  br i1 %.not57.i, label %.thread208.i, label %bb.ia

bb.ia:                                            ; preds = %readNumber.exit83.i
  %i.axx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.awm
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !123
  %.fr4265 = freeze i8 %i.axy                     ; 3 uses
  %i.axz = zext i8 %.fr4265 to i32                ; 2 uses
  %i.aya = add nsw i32 %i.axz, -96                ; 4 uses
  %i.ayb = icmp ugt i32 %i.aya, 16
  br i1 %i.ayb, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.axz) #24
  br label %.thread343

bb.ic:                                            ; preds = %bb.ia
  %i.ayc = add i32 %i.awh, 1                      ; 3 uses
  %i.ayd = add i32 %i.aya, %i.ayc                 ; 4 uses
  %i.aye = icmp ugt i32 %i.ayd, %i.asc
  br i1 %i.aye, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.thread343

bb.ie:                                            ; preds = %bb.ic
  %i.ayf = icmp ne i8 %.fr4265, 96
  %i.ayg = icmp ult i32 %i.ayc, %i.ayd
  %or.cond356 = and i1 %i.ayf, %i.ayg
  br i1 %or.cond356, label %.lr.ph.i88.preheader.i, label %._crit_edge.i85.i

.lr.ph.i88.preheader.i:                           ; preds = %bb.ie
  %i.ayh = zext i32 %i.ayc to i64                 ; 2 uses
  %i.ayi = zext nneg i32 %i.aya to i64            ; 2 uses
  %xtraiter4107 = and i64 %i.ayi, 1
  %i.ayj = icmp eq i32 %i.aya, 1
  br i1 %i.ayj, label %.lr.ph.i88.i.epil.preheader, label %.lr.ph.i88.preheader.i.new

.lr.ph.i88.preheader.i.new:                       ; preds = %.lr.ph.i88.preheader.i
  %unroll_iter4111 = and i64 %i.ayi, 30
  br label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %bb.if, %.lr.ph.i88.preheader.i.new
  %indvars.iv160.i = phi i64 [ %i.ayh, %.lr.ph.i88.preheader.i.new ], [ %indvars.iv.next161.i.1, %bb.if ] ; 3 uses
  %.03346.i90.i = phi i32 [ 0, %.lr.ph.i88.preheader.i.new ], [ %i.azd, %bb.if ] ; 3 uses
  %.03545.i91.i = phi i64 [ 0, %.lr.ph.i88.preheader.i.new ], [ %i.azc, %bb.if ]
  %niter4112 = phi i64 [ 0, %.lr.ph.i88.preheader.i.new ], [ %niter4112.next.1, %bb.if ]
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv160.i
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !123 ; 2 uses
  %i.aym = zext i8 %i.ayl to i64                  ; 2 uses
  %i.ayn = and i64 %i.aym, 240
  %.not.i92.i = icmp eq i64 %i.ayn, 96
  br i1 %.not.i92.i, label %.lr.ph.i88.i.1, label %.thread.i93.i, !prof !134

.thread.i93.i:                                    ; preds = %.lr.ph.i88.i.epil.preheader, %.lr.ph.i88.i, %.lr.ph.i88.i.1
  %.lcssa3693 = phi i8 [ %i.ayr, %.lr.ph.i88.i.1 ], [ %i.ayl, %.lr.ph.i88.i ], [ %i.bba, %.lr.ph.i88.i.epil.preheader ]
  %i.ayo = sext i8 %.lcssa3693 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ayo) #24
  br label %.thread343

.lr.ph.i88.i.1:                                   ; preds = %.lr.ph.i88.i
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv160.i
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 1
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !123 ; 2 uses
  %i.ays = zext i8 %i.ayr to i64                  ; 2 uses
  %i.ayt = and i64 %i.ays, 240
  %.not.i92.i.1 = icmp eq i64 %i.ayt, 96
  br i1 %.not.i92.i.1, label %bb.if, label %.thread.i93.i, !prof !134

bb.if:                                            ; preds = %.lr.ph.i88.i.1
  %i.ayu = or disjoint i32 %.03346.i90.i, 4
  %i.ayv = and i64 %i.aym, 15
  %i.ayw = zext nneg i32 %.03346.i90.i to i64
  %i.ayx = shl i64 %i.ayv, %i.ayw
  %i.ayy = or i64 %i.ayx, %.03545.i91.i
  %i.ayz = and i64 %i.ays, 15
  %i.aza = zext nneg i32 %i.ayu to i64
  %i.azb = shl i64 %i.ayz, %i.aza
  %i.azc = or i64 %i.azb, %i.ayy                  ; 3 uses
  %i.azd = add nuw nsw i32 %.03346.i90.i, 8       ; 2 uses
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %niter4112.next.1 = add i64 %niter4112, 2       ; 2 uses
  %niter4112.ncmp.1 = icmp eq i64 %niter4112.next.1, %unroll_iter4111
  br i1 %niter4112.ncmp.1, label %._crit_edge.i85.i.loopexit.unr-lcssa, label %.lr.ph.i88.i

.thread208.i.sink.split:                          ; preds = %bb.hy
  %i.aze = getelementptr inbounds nuw [24 x i8], ptr %i.avq, i64 %indvars.iv166.i ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 4
  store i32 0, ptr %i.azf, align 4, !tbaa !168
  br label %.thread208.i

.thread208.i:                                     ; preds = %.thread208.i.sink.split, %readNumber.exit83.i
  %i.azg = phi ptr [ %i.axv, %readNumber.exit83.i ], [ %i.aze, %.thread208.i.sink.split ] ; 2 uses
  %i.azh = zext i32 %i.awh to i64
  %i.azi = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !123
  %.fr4268 = freeze i8 %i.azj                     ; 3 uses
  %i.azk = zext i8 %.fr4268 to i32                ; 2 uses
  %i.azl = add nsw i32 %i.azk, -96                ; 4 uses
  %i.azm = icmp ugt i32 %i.azl, 16
  br i1 %i.azm, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %.thread208.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.azk) #24
  br label %readNumber.exit109.i.thread

bb.ih:                                            ; preds = %.thread208.i
  %i.azn = add i32 %i.awh, 1                      ; 3 uses
  %i.azo = add i32 %i.azl, %i.azn                 ; 4 uses
  %i.azp = icmp ugt i32 %i.azo, %i.asc
  br i1 %i.azp, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit109.i.thread

bb.ij:                                            ; preds = %bb.ih
  %i.azq = icmp ne i8 %.fr4268, 96
  %i.azr = icmp ult i32 %i.azn, %i.azo
  %or.cond357 = and i1 %i.azq, %i.azr
  br i1 %or.cond357, label %.lr.ph.i101.preheader.i, label %readNumber.exit109.i

.lr.ph.i101.preheader.i:                          ; preds = %bb.ij
  %i.azs = zext i32 %i.azn to i64                 ; 2 uses
  %i.azt = zext nneg i32 %i.azl to i64            ; 2 uses
  %xtraiter4117 = and i64 %i.azt, 1
  %i.azu = icmp eq i32 %i.azl, 1
  br i1 %i.azu, label %.lr.ph.i101.i.epil.preheader, label %.lr.ph.i101.preheader.i.new

.lr.ph.i101.preheader.i.new:                      ; preds = %.lr.ph.i101.preheader.i
  %unroll_iter4121 = and i64 %i.azt, 30
  br label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %bb.ik, %.lr.ph.i101.preheader.i.new
  %indvars.iv163.i = phi i64 [ %i.azs, %.lr.ph.i101.preheader.i.new ], [ %indvars.iv.next164.i.1, %bb.ik ] ; 3 uses
  %.03346.i103.i = phi i32 [ 0, %.lr.ph.i101.preheader.i.new ], [ %i.bao, %bb.ik ] ; 3 uses
  %.03545.i104.i = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %i.ban, %bb.ik ]
  %niter4122 = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %niter4122.next.1, %bb.ik ]
  %i.azv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !123 ; 2 uses
  %i.azx = zext i8 %i.azw to i64                  ; 2 uses
  %i.azy = and i64 %i.azx, 240
  %.not.i105.i231 = icmp eq i64 %i.azy, 96
  br i1 %.not.i105.i231, label %.lr.ph.i101.i.1, label %.thread.i106.i, !prof !134

.thread.i106.i:                                   ; preds = %.lr.ph.i101.i.epil.preheader, %.lr.ph.i101.i, %.lr.ph.i101.i.1
  %.lcssa3696 = phi i8 [ %i.bac, %.lr.ph.i101.i.1 ], [ %i.azw, %.lr.ph.i101.i ], [ %i.baq, %.lr.ph.i101.i.epil.preheader ]
  %i.azz = sext i8 %.lcssa3696 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.azz) #24
  br label %readNumber.exit109.i.thread

.lr.ph.i101.i.1:                                  ; preds = %.lr.ph.i101.i
  %i.baa = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 1
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !123 ; 2 uses
  %i.bad = zext i8 %i.bac to i64                  ; 2 uses
  %i.bae = and i64 %i.bad, 240
  %.not.i105.i231.1 = icmp eq i64 %i.bae, 96
  br i1 %.not.i105.i231.1, label %bb.ik, label %.thread.i106.i, !prof !134

bb.ik:                                            ; preds = %.lr.ph.i101.i.1
  %i.baf = or disjoint i32 %.03346.i103.i, 4
  %i.bag = and i64 %i.azx, 15
  %i.bah = zext nneg i32 %.03346.i103.i to i64
  %i.bai = shl i64 %i.bag, %i.bah
  %i.baj = or i64 %i.bai, %.03545.i104.i
  %i.bak = and i64 %i.bad, 15
  %i.bal = zext nneg i32 %i.baf to i64
  %i.bam = shl i64 %i.bak, %i.bal
  %i.ban = or i64 %i.bam, %i.baj                  ; 3 uses
  %i.bao = add nuw nsw i32 %.03346.i103.i, 8      ; 2 uses
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %niter4122.next.1 = add i64 %niter4122, 2       ; 2 uses
  %niter4122.ncmp.1 = icmp eq i64 %niter4122.next.1, %unroll_iter4121
  br i1 %niter4122.ncmp.1, label %._crit_edge.i98.loopexit.i.unr-lcssa, label %.lr.ph.i101.i

._crit_edge.i98.loopexit.i.unr-lcssa:             ; preds = %bb.ik
  %lcmp.mod4118.not = icmp eq i64 %xtraiter4117, 0
  br i1 %lcmp.mod4118.not, label %._crit_edge.i98.loopexit.i, label %.lr.ph.i101.i.epil.preheader

.lr.ph.i101.i.epil.preheader:                     ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %.lr.ph.i101.preheader.i
  %indvars.iv163.i.epil.init = phi i64 [ %i.azs, %.lr.ph.i101.preheader.i ], [ %indvars.iv.next164.i.1, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %.03346.i103.i.epil.init = phi i32 [ 0, %.lr.ph.i101.preheader.i ], [ %i.bao, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %.03545.i104.i.epil.init = phi i64 [ 0, %.lr.ph.i101.preheader.i ], [ %i.ban, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %lcmp.mod4120 = trunc i8 %.fr4268 to i1
  call void @llvm.assume(i1 %lcmp.mod4120)
  %i.bap = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i.epil.init
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !123 ; 2 uses
  %i.bar = zext i8 %i.baq to i64                  ; 2 uses
  %i.bas = and i64 %i.bar, 240
  %.not.i105.i231.epil = icmp eq i64 %i.bas, 96
  br i1 %.not.i105.i231.epil, label %._crit_edge.i98.loopexit.i.epilog-lcssa, label %.thread.i106.i, !prof !134

._crit_edge.i98.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i101.i.epil.preheader
  %i.bat = and i64 %i.bar, 15
  %i.bau = zext nneg i32 %.03346.i103.i.epil.init to i64
  %i.bav = shl i64 %i.bat, %i.bau
  %i.baw = or i64 %i.bav, %.03545.i104.i.epil.init
  br label %._crit_edge.i98.loopexit.i

._crit_edge.i98.loopexit.i:                       ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %._crit_edge.i98.loopexit.i.epilog-lcssa
  %.lcssa3698 = phi i64 [ %i.ban, %._crit_edge.i98.loopexit.i.unr-lcssa ], [ %i.baw, %._crit_edge.i98.loopexit.i.epilog-lcssa ]
  %i.bax = trunc i64 %.lcssa3698 to i32
  br label %readNumber.exit109.i

readNumber.exit109.i.thread:                      ; preds = %bb.ig, %bb.ii, %.thread.i106.i
  store i32 0, ptr %i.azg, align 8, !tbaa !169
  br label %.loopexit

readNumber.exit109.i:                             ; preds = %._crit_edge.i98.loopexit.i, %bb.ij
  %.2.i100.i = phi i32 [ 0, %bb.ij ], [ %i.bax, %._crit_edge.i98.loopexit.i ]
  store i32 %i.azo, ptr %i.e, align 4, !tbaa !117
  store i32 %.2.i100.i, ptr %i.azg, align 8, !tbaa !169
  br label %bb.il

.thread343:                                       ; preds = %bb.ib, %bb.id, %.thread.i93.i
  %i.bay = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  store i64 0, ptr %i.bay, align 8, !tbaa !170
  br label %.loopexit

._crit_edge.i85.i.loopexit.unr-lcssa:             ; preds = %bb.if
  %lcmp.mod4108.not = icmp eq i64 %xtraiter4107, 0
  br i1 %lcmp.mod4108.not, label %._crit_edge.i85.i, label %.lr.ph.i88.i.epil.preheader

.lr.ph.i88.i.epil.preheader:                      ; preds = %._crit_edge.i85.i.loopexit.unr-lcssa, %.lr.ph.i88.preheader.i
  %indvars.iv160.i.epil.init = phi i64 [ %i.ayh, %.lr.ph.i88.preheader.i ], [ %indvars.iv.next161.i.1, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %.03346.i90.i.epil.init = phi i32 [ 0, %.lr.ph.i88.preheader.i ], [ %i.azd, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %.03545.i91.i.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader.i ], [ %i.azc, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %lcmp.mod4110 = trunc i8 %.fr4265 to i1
  call void @llvm.assume(i1 %lcmp.mod4110)
  %i.baz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv160.i.epil.init
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !123 ; 2 uses
  %i.bbb = zext i8 %i.bba to i64                  ; 2 uses
  %i.bbc = and i64 %i.bbb, 240
  %.not.i92.i.epil = icmp eq i64 %i.bbc, 96
  br i1 %.not.i92.i.epil, label %._crit_edge.i85.i.loopexit.epilog-lcssa, label %.thread.i93.i, !prof !134

._crit_edge.i85.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i88.i.epil.preheader
  %i.bbd = and i64 %i.bbb, 15
  %i.bbe = zext nneg i32 %.03346.i90.i.epil.init to i64
  %i.bbf = shl i64 %i.bbd, %i.bbe
  %i.bbg = or i64 %i.bbf, %.03545.i91.i.epil.init
  br label %._crit_edge.i85.i

._crit_edge.i85.i:                                ; preds = %._crit_edge.i85.i.loopexit.epilog-lcssa, %._crit_edge.i85.i.loopexit.unr-lcssa, %bb.ie
  %.2.i87.i = phi i64 [ 0, %bb.ie ], [ %i.azc, %._crit_edge.i85.i.loopexit.unr-lcssa ], [ %i.bbg, %._crit_edge.i85.i.loopexit.epilog-lcssa ]
  store i32 %i.ayd, ptr %i.e, align 4, !tbaa !117
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  store i64 %.2.i87.i, ptr %i.bbh, align 8, !tbaa !170
  br label %bb.il

bb.il:                                            ; preds = %readNumber.exit109.i, %._crit_edge.i85.i, %bb.ht
  %i.bbi = phi i32 [ %.pre.i232, %bb.ht ], [ %i.ayd, %._crit_edge.i85.i ], [ %i.azo, %readNumber.exit109.i ] ; 2 uses
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %indvars.iv.next167.i, %i.avp
  br i1 %exitcond.not.i229, label %._crit_edge.i230, label %.lr.ph.i228

._crit_edge.i230:                                 ; preds = %bb.il, %.preheader.i226
  %i.bbj = phi i32 [ %i.aua, %.preheader.i226 ], [ %i.bbi, %bb.il ]
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count172.i
  br i1 %exitcond173.not.i, label %parseMD.exit, label %.lr.ph130.i

parseMD.exit:                                     ; preds = %._crit_edge.i230, %.preheader112.i
  %i.bbk = load i32, ptr %i.st, align 8, !tbaa !149
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.320, i32 noundef %i.bbk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.bbl = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt4.not = icmp eq ptr %i.bbl, null
  br i1 %.not1261102.jt4.not, label %.critedge, label %.lr.ph3166

.loopexit:                                        ; preds = %readNumber.exit.i224, %._crit_edge.i59.i, %bb.ht, %readNumber.exit109.i.thread, %bb.hm, %bb.hs, %readNumber.exit83.thread.i, %.thread343
  %.2.i215.ph = phi i32 [ 4, %readNumber.exit109.i.thread ], [ 4, %bb.hm ], [ 4, %.thread343 ], [ 4, %readNumber.exit83.thread.i ], [ 4, %bb.hs ], [ 20, %._crit_edge.i59.i ], [ 4, %bb.ht ], [ 20, %readNumber.exit.i224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef %i.tp) #24
  call void @free(ptr noundef nonnull %i.sj) #24
  br label %bb.qb

.lr.ph3168:                                       ; preds = %.lr.ph3166, %thread-pre-split
  %i.bbm = phi i8 [ %.pr, %thread-pre-split ], [ %i.tq, %.lr.ph3166 ] ; 2 uses
  %.0103.ph111821023167 = phi i32 [ %i.cil, %thread-pre-split ], [ 0, %.lr.ph3166 ] ; 6 uses
  %i.bbn = phi i32 [ %i.tl, %thread-pre-split ], [ %i.tp, %.lr.ph3166 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bbo = load i32, ptr %i.sq, align 4, !tbaa !98 ; 2 uses
  %.not.i233 = icmp ult i32 %.0103.ph111821023167, %i.bbo
  br i1 %.not.i233, label %bb.in, label %bb.im

bb.im:                                            ; preds = %.lr.ph3168
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.321, i32 noundef %.0103.ph111821023167, i32 noundef %i.bbo) #24
  br label %bb.kc

bb.in:                                            ; preds = %.lr.ph3168
  %i.bbp = load ptr, ptr %i.sp, align 8, !tbaa !105
  %i.bbq = zext i32 %.0103.ph111821023167 to i64
  %i.bbr = getelementptr inbounds nuw [72 x i8], ptr %i.bbp, i64 %i.bbq ; 16 uses
  %i.bbs = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sj) #26
  %i.bbt = trunc i64 %i.bbs to i32                ; 7 uses
  %.not65.i = icmp eq i8 %i.bbm, 65
  br i1 %.not65.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bbu = zext i8 %i.bbm to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.322, i32 noundef %i.bbu) #24
  br label %bb.kc

bb.ip:                                            ; preds = %bb.in
  %i.bbv = icmp ult i32 %i.bbt, 2
  br i1 %i.bbv, label %bb.iq, label %.lr.ph.i.preheader.i234

.lr.ph.i.preheader.i234:                          ; preds = %bb.ip
  %i.bbw = load i8, ptr %i.sl, align 1, !tbaa !123 ; 2 uses
  %i.bbx = zext i8 %i.bbw to i32                  ; 2 uses
  %i.bby = and i32 %i.bbx, 240
  %.not.i.i235 = icmp eq i32 %i.bby, 96
  br i1 %.not.i.i235, label %._crit_edge.i.i263, label %bb.ir, !prof !134

bb.iq:                                            ; preds = %bb.ip
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %i.c, align 1, !tbaa !132
  br label %readFixedNumber.exit.i236

bb.ir:                                            ; preds = %.lr.ph.i.preheader.i234
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bbx) #24
  store i8 0, ptr %i.c, align 1, !tbaa !132
  br label %readFixedNumber.exit.i236

._crit_edge.i.i263:                               ; preds = %.lr.ph.i.preheader.i234
  %i.bbz = and i8 %i.bbw, 15
  store i32 2, ptr %i.d, align 4, !tbaa !117
  br label %readFixedNumber.exit.i236

readFixedNumber.exit.i236:                        ; preds = %._crit_edge.i.i263, %bb.ir, %bb.iq
  %i.bca = phi i1 [ false, %bb.iq ], [ false, %bb.ir ], [ true, %._crit_edge.i.i263 ] ; 3 uses
  %i.bcb = phi i32 [ 1, %bb.iq ], [ 1, %bb.ir ], [ 2, %._crit_edge.i.i263 ] ; 5 uses
  %.2.i.i237 = phi i8 [ 0, %bb.iq ], [ 0, %bb.ir ], [ %i.bbz, %._crit_edge.i.i263 ]
  store i8 %.2.i.i237, ptr %i.bbr, align 8, !tbaa !108
  %i.bcc = zext nneg i32 %i.bcb to i64            ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bcc
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !123
  %i.bcf = zext i8 %i.bce to i32                  ; 2 uses
  %i.bcg = add nsw i32 %i.bcf, -96                ; 3 uses
  %i.bch = icmp ugt i32 %i.bcg, 16
  br i1 %i.bch, label %bb.is, label %bb.it

bb.is:                                            ; preds = %readFixedNumber.exit.i236
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bcf) #24
  br label %readNumber.exit.i.i244

bb.it:                                            ; preds = %readFixedNumber.exit.i236
  %i.bci = add nuw nsw i32 %i.bcb, 1              ; 2 uses
  %i.bcj = add nuw nsw i32 %i.bcg, %i.bci         ; 5 uses
  %i.bck = icmp ugt i32 %i.bcj, %i.bbt
  br i1 %i.bck, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.i.i244

bb.iv:                                            ; preds = %bb.it
  %.not175.i = icmp eq i32 %i.bcg, 0
  br i1 %.not175.i, label %readNumber.exit.i.i244, label %.lr.ph.i.preheader.i.i238

.lr.ph.i.preheader.i.i238:                        ; preds = %bb.iv
  %i.bcl = zext nneg i32 %i.bci to i64            ; 2 uses
  %i.bcm = zext nneg i32 %i.bcj to i64
  %i.bcn = xor i64 %i.bcc, -1
  %i.bco = add nsw i64 %i.bcn, %i.bcm
  %i.bcp = freeze i64 %i.bco                      ; 4 uses
  %xtraiter4127 = and i64 %i.bcp, 1
  %i.bcq = icmp eq i64 %i.bcp, 1
  br i1 %i.bcq, label %.lr.ph.i.i.i239.epil.preheader, label %.lr.ph.i.preheader.i.i238.new

.lr.ph.i.preheader.i.i238.new:                    ; preds = %.lr.ph.i.preheader.i.i238
  %unroll_iter4131 = and i64 %i.bcp, -2
  br label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %bb.iw, %.lr.ph.i.preheader.i.i238.new
  %indvars.iv.i74.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %indvars.iv.next1899.1, %bb.iw ] ; 3 uses
  %indvars.iv.i74.i = phi i64 [ %i.bcl, %.lr.ph.i.preheader.i.i238.new ], [ %indvars.iv.next.i75.i.1, %bb.iw ] ; 3 uses
  %.03545.i.i.i241 = phi i64 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %i.bdg, %bb.iw ]
  %niter4132 = phi i64 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %niter4132.next.1, %bb.iw ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !123 ; 2 uses
  %i.bct = zext i8 %i.bcs to i64                  ; 2 uses
  %i.bcu = and i64 %i.bct, 240
  %.not.i.i.i242 = icmp eq i64 %i.bcu, 96
  br i1 %.not.i.i.i242, label %.lr.ph.i.i.i239.1, label %.thread.i.i.i243, !prof !134

.thread.i.i.i243:                                 ; preds = %.lr.ph.i.i.i239, %.lr.ph.i.i.i239.1, %.lr.ph.i.i.i239.epil.preheader
  %.lcssa = phi i8 [ %i.bdi, %.lr.ph.i.i.i239.epil.preheader ], [ %i.bcs, %.lr.ph.i.i.i239 ], [ %i.bcy, %.lr.ph.i.i.i239.1 ]
  %i.bcv = sext i8 %.lcssa to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bcv) #24
  br label %readNumber.exit.i.i244

.lr.ph.i.i.i239.1:                                ; preds = %.lr.ph.i.i.i239
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 1
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !123 ; 2 uses
  %i.bcz = zext i8 %i.bcy to i64                  ; 2 uses
  %i.bda = and i64 %i.bcz, 240
  %.not.i.i.i242.1 = icmp eq i64 %i.bda, 96
  br i1 %.not.i.i.i242.1, label %bb.iw, label %.thread.i.i.i243, !prof !134

bb.iw:                                            ; preds = %.lr.ph.i.i.i239.1
  %indvars.iv.next1899 = or disjoint i64 %indvars.iv.i74.i.a, 4
  %i.bdb = and i64 %i.bct, 15
  %i.bdc = shl i64 %i.bdb, %indvars.iv.i74.i.a
  %i.bdd = or i64 %i.bdc, %.03545.i.i.i241
  %i.bde = and i64 %i.bcz, 15
  %i.bdf = shl i64 %i.bde, %indvars.iv.next1899
  %i.bdg = or i64 %i.bdf, %i.bdd                  ; 3 uses
  %indvars.iv.next1899.1 = add nuw nsw i64 %indvars.iv.i74.i.a, 8 ; 2 uses
  %indvars.iv.next.i75.i.1 = add nuw nsw i64 %indvars.iv.i74.i, 2 ; 2 uses
  %niter4132.next.1 = add i64 %niter4132, 2       ; 2 uses
  %niter4132.ncmp.1 = icmp eq i64 %niter4132.next.1, %unroll_iter4131
  br i1 %niter4132.ncmp.1, label %readNumber.exit.i.i244.loopexit.unr-lcssa, label %.lr.ph.i.i.i239

readNumber.exit.i.i244.loopexit.unr-lcssa:        ; preds = %bb.iw
  %lcmp.mod4128.not = icmp eq i64 %xtraiter4127, 0
  br i1 %lcmp.mod4128.not, label %readNumber.exit.i.i244, label %.lr.ph.i.i.i239.epil.preheader

.lr.ph.i.i.i239.epil.preheader:                   ; preds = %readNumber.exit.i.i244.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i238
  %indvars.iv.i74.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i238 ], [ %indvars.iv.next1899.1, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %indvars.iv.i74.i.epil.init = phi i64 [ %i.bcl, %.lr.ph.i.preheader.i.i238 ], [ %indvars.iv.next.i75.i.1, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %.03545.i.i.i241.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i238 ], [ %i.bdg, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %lcmp.mod4130 = trunc i64 %i.bcp to i1
  call void @llvm.assume(i1 %lcmp.mod4130)
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i.epil.init
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !123 ; 2 uses
  %i.bdj = zext i8 %i.bdi to i64                  ; 2 uses
  %i.bdk = and i64 %i.bdj, 240
  %.not.i.i.i242.epil = icmp eq i64 %i.bdk, 96
  br i1 %.not.i.i.i242.epil, label %readNumber.exit.i.i244.loopexit.epilog-lcssa, label %.thread.i.i.i243, !prof !134

readNumber.exit.i.i244.loopexit.epilog-lcssa:     ; preds = %.lr.ph.i.i.i239.epil.preheader
  %i.bdl = and i64 %i.bdj, 15
  %i.bdm = shl i64 %i.bdl, %indvars.iv.i74.i.epil.init.a
  %i.bdn = or i64 %i.bdm, %.03545.i.i.i241.epil.init
  br label %readNumber.exit.i.i244

readNumber.exit.i.i244:                           ; preds = %readNumber.exit.i.i244.loopexit.epilog-lcssa, %readNumber.exit.i.i244.loopexit.unr-lcssa, %.thread.i.i.i243, %bb.iv, %bb.iu, %bb.is
  %i.bdo = phi i1 [ false, %bb.is ], [ false, %bb.iu ], [ %i.bca, %bb.iv ], [ false, %.thread.i.i.i243 ], [ %i.bca, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bca, %readNumber.exit.i.i244.loopexit.epilog-lcssa ]
  %i.bdp = phi i32 [ %i.bcb, %bb.is ], [ %i.bcb, %bb.iu ], [ %i.bcj, %bb.iv ], [ %i.bcb, %.thread.i.i.i243 ], [ %i.bcj, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bcj, %readNumber.exit.i.i244.loopexit.epilog-lcssa ] ; 3 uses
  %.2.i.i.i245 = phi i64 [ 0, %bb.is ], [ 0, %bb.iu ], [ 0, %bb.iv ], [ 0, %.thread.i.i.i243 ], [ %i.bdg, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bdn, %readNumber.exit.i.i244.loopexit.epilog-lcssa ] ; 3 uses
  %i.bdq = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.bdr = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.bds = zext i16 %i.bdr to i32
  %i.bdt = add i32 %i.bdq, %i.bds
  %i.bdu = zext i32 %i.bdt to i64
  %.not.i73.i246 = icmp ult i64 %.2.i.i.i245, %i.bdu
  br i1 %.not.i73.i246, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %readNumber.exit.i.i244
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i245) #24
  br label %readTypeID.exit.i247

bb.iy:                                            ; preds = %readNumber.exit.i.i244
  %i.bdv = trunc i64 %.2.i.i.i245 to i16
  br label %readTypeID.exit.i247

readTypeID.exit.i247:                             ; preds = %bb.iy, %bb.ix
  %i.bdw = phi i1 [ false, %bb.ix ], [ %i.bdo, %bb.iy ] ; 2 uses
  %.0.i.i248 = phi i16 [ -1, %bb.ix ], [ %i.bdv, %bb.iy ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bbr, i64 22
  store i16 %.0.i.i248, ptr %i.bdx, align 2, !tbaa !171
  %i.bdy = zext nneg i32 %i.bdp to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !123 ; 2 uses
  %.not66.i = icmp eq i8 %i.bea, 76
  br i1 %.not66.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %readTypeID.exit.i247
  %i.beb = zext i8 %i.bea to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.323, i32 noundef %i.beb) #24
  br label %bb.kc

bb.ja:                                            ; preds = %readTypeID.exit.i247
  %i.bec = sext i32 %i.bdp to i64
  %i.bed = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bec
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 1
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !123 ; 2 uses
  %i.beg = zext i8 %i.bef to i32                  ; 2 uses
  %i.beh = add nsw i32 %i.beg, -96                ; 3 uses
  %i.bei = icmp ugt i32 %i.beh, 16
  br i1 %i.bei, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.beg) #24
  br label %readNumber.exit.thread.i253

bb.jc:                                            ; preds = %bb.ja
  %i.bej = add nuw nsw i32 %i.bdp, 2              ; 2 uses
  %i.bek = add nuw nsw i32 %i.beh, %i.bej         ; 4 uses
  %i.bel = icmp ugt i32 %i.bek, %i.bbt
  br i1 %i.bel, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.thread.i253

bb.je:                                            ; preds = %bb.jc
  %i.bem = icmp eq i8 %i.bef, 96
  br i1 %i.bem, label %.split.i, label %.preheader.i76.i

.preheader.i76.i:                                 ; preds = %bb.je
  %.not176.i = icmp eq i32 %i.beh, 0
  br i1 %.not176.i, label %readNumber.exit.i255, label %.lr.ph.i79.preheader.i

.lr.ph.i79.preheader.i:                           ; preds = %.preheader.i76.i
  %i.ben = zext i32 %i.bej to i64                 ; 3 uses
  %i.beo = zext i32 %i.bek to i64
  %i.bep = sub nsw i64 %i.beo, %i.ben
  %i.beq = freeze i64 %i.bep                      ; 4 uses
  %xtraiter4133 = and i64 %i.beq, 1
  %i.ber = icmp eq i64 %i.beq, 1
  br i1 %i.ber, label %.lr.ph.i79.i.epil.preheader, label %.lr.ph.i79.preheader.i.new

.lr.ph.i79.preheader.i.new:                       ; preds = %.lr.ph.i79.preheader.i
  %unroll_iter4137 = and i64 %i.beq, -2
  br label %.lr.ph.i79.i

.split.i:                                         ; preds = %bb.je
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bbr, i64 2 ; 2 uses
  store i16 0, ptr %i.bes, align 2, !tbaa !172
  br i1 %i.bdw, label %bb.jg, label %.loopexit361

.lr.ph.i79.i:                                     ; preds = %bb.jf, %.lr.ph.i79.preheader.i.new
  %indvars.iv.i249 = phi i64 [ %i.ben, %.lr.ph.i79.preheader.i.new ], [ %indvars.iv.next.i254.1, %bb.jf ] ; 3 uses
  %.03346.i.i250 = phi i32 [ 0, %.lr.ph.i79.preheader.i.new ], [ %i.bfm, %bb.jf ] ; 3 uses
  %.03545.i.i251 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %i.bfl, %bb.jf ]
  %niter4138 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %niter4138.next.1, %bb.jf ]
  %i.bet = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !123 ; 2 uses
  %i.bev = zext i8 %i.beu to i64                  ; 2 uses
  %i.bew = and i64 %i.bev, 240
  %.not.i80.i = icmp eq i64 %i.bew, 96
  br i1 %.not.i80.i, label %.lr.ph.i79.i.1, label %.thread.i.i252, !prof !134

.thread.i.i252:                                   ; preds = %.lr.ph.i79.i.epil.preheader, %.lr.ph.i79.i, %.lr.ph.i79.i.1
  %.lcssa3174 = phi i8 [ %i.bfa, %.lr.ph.i79.i.1 ], [ %i.beu, %.lr.ph.i79.i ], [ %i.bfp, %.lr.ph.i79.i.epil.preheader ]
  %i.bex = sext i8 %.lcssa3174 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bex) #24
  br label %readNumber.exit.thread.i253

.lr.ph.i79.i.1:                                   ; preds = %.lr.ph.i79.i
  %i.bey = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 1
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !123 ; 2 uses
  %i.bfb = zext i8 %i.bfa to i64                  ; 2 uses
  %i.bfc = and i64 %i.bfb, 240
  %.not.i80.i.1 = icmp eq i64 %i.bfc, 96
  br i1 %.not.i80.i.1, label %bb.jf, label %.thread.i.i252, !prof !134

bb.jf:                                            ; preds = %.lr.ph.i79.i.1
  %i.bfd = or disjoint i32 %.03346.i.i250, 4
  %i.bfe = and i64 %i.bev, 15
  %i.bff = zext nneg i32 %.03346.i.i250 to i64
  %i.bfg = shl i64 %i.bfe, %i.bff
  %i.bfh = or i64 %i.bfg, %.03545.i.i251
  %i.bfi = and i64 %i.bfb, 15
  %i.bfj = zext nneg i32 %i.bfd to i64
  %i.bfk = shl i64 %i.bfi, %i.bfj
  %i.bfl = or i64 %i.bfk, %i.bfh                  ; 3 uses
  %i.bfm = add nuw nsw i32 %.03346.i.i250, 8      ; 2 uses
  %indvars.iv.next.i254.1 = add nuw nsw i64 %indvars.iv.i249, 2 ; 2 uses
  %niter4138.next.1 = add i64 %niter4138, 2       ; 2 uses
  %niter4138.ncmp.1 = icmp eq i64 %niter4138.next.1, %unroll_iter4137
  br i1 %niter4138.ncmp.1, label %readNumber.exit.i255.loopexit.unr-lcssa, label %.lr.ph.i79.i

readNumber.exit.thread.i253:                      ; preds = %.thread.i.i252, %bb.jd, %bb.jb
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bbr, i64 2
  store i16 0, ptr %i.bfn, align 2, !tbaa !172
  br label %.loopexit361

readNumber.exit.i255.loopexit.unr-lcssa:          ; preds = %bb.jf
  %lcmp.mod4134.not = icmp eq i64 %xtraiter4133, 0
  br i1 %lcmp.mod4134.not, label %readNumber.exit.i255, label %.lr.ph.i79.i.epil.preheader

.lr.ph.i79.i.epil.preheader:                      ; preds = %readNumber.exit.i255.loopexit.unr-lcssa, %.lr.ph.i79.preheader.i
  %indvars.iv.i249.epil.init = phi i64 [ %i.ben, %.lr.ph.i79.preheader.i ], [ %indvars.iv.next.i254.1, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %.03346.i.i250.epil.init = phi i32 [ 0, %.lr.ph.i79.preheader.i ], [ %i.bfm, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %.03545.i.i251.epil.init = phi i64 [ 0, %.lr.ph.i79.preheader.i ], [ %i.bfl, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %lcmp.mod4136 = trunc i64 %i.beq to i1
  call void @llvm.assume(i1 %lcmp.mod4136)
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249.epil.init
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !123 ; 2 uses
  %i.bfq = zext i8 %i.bfp to i64                  ; 2 uses
  %i.bfr = and i64 %i.bfq, 240
  %.not.i80.i.epil = icmp eq i64 %i.bfr, 96
  br i1 %.not.i80.i.epil, label %readNumber.exit.i255.loopexit.epilog-lcssa, label %.thread.i.i252, !prof !134

readNumber.exit.i255.loopexit.epilog-lcssa:       ; preds = %.lr.ph.i79.i.epil.preheader
  %i.bfs = and i64 %i.bfq, 15
  %i.bft = zext nneg i32 %.03346.i.i250.epil.init to i64
  %i.bfu = shl i64 %i.bfs, %i.bft
  %i.bfv = or i64 %i.bfu, %.03545.i.i251.epil.init
  br label %readNumber.exit.i255

readNumber.exit.i255:                             ; preds = %readNumber.exit.i255.loopexit.epilog-lcssa, %readNumber.exit.i255.loopexit.unr-lcssa, %.preheader.i76.i
  %.035.lcssa.i.i = phi i64 [ 0, %.preheader.i76.i ], [ %i.bfl, %readNumber.exit.i255.loopexit.unr-lcssa ], [ %i.bfv, %readNumber.exit.i255.loopexit.epilog-lcssa ] ; 2 uses
  %i.bfw = trunc i64 %.035.lcssa.i.i to i16
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bbr, i64 2 ; 2 uses
  store i16 %i.bfw, ptr %i.bfx, align 2, !tbaa !172
  br i1 %i.bdw, label %bb.jg, label %.loopexit361

.loopexit361:                                     ; preds = %readNumber.exit.i255, %.split.i, %readNumber.exit.thread.i253
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.324) #24
  br label %bb.kc

bb.jg:                                            ; preds = %readNumber.exit.i255, %.split.i
  %i.bfy = phi ptr [ %i.bes, %.split.i ], [ %i.bfx, %readNumber.exit.i255 ]
  %.2.i78181.i = phi i64 [ 0, %.split.i ], [ %.035.lcssa.i.i, %readNumber.exit.i255 ]
  %i.bfz = load i8, ptr %i.bbr, align 8, !tbaa !108
  %i.bga = zext i8 %i.bfz to i32
  %i.bgb = trunc i64 %.2.i78181.i to i32
  %i.bgc = and i32 %i.bgb, 65535
  %i.bgd = add nuw nsw i32 %i.bgc, %i.bga         ; 2 uses
  %.not67.i = icmp eq i32 %i.bgd, 0
  br i1 %.not67.i, label %._crit_edge.thread.i261, label %bb.jh

._crit_edge.thread.i261:                          ; preds = %bb.jg
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24
  store ptr null, ptr %i.bge, align 8, !tbaa !112
  store i8 1, ptr %i.c, align 1
  br label %bb.js

bb.jh:                                            ; preds = %bb.jg
  %i.bgf = zext nneg i32 %i.bgd to i64            ; 2 uses
  %i.bgg = call noalias ptr @calloc(i64 noundef %i.bgf, i64 noundef 2) #23 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24 ; 2 uses
  store ptr %i.bgg, ptr %i.bgh, align 8, !tbaa !112
  %.not68.i = icmp eq ptr %i.bgg, null
  br i1 %.not68.i, label %bb.ji, label %.lr.ph.i256

bb.ji:                                            ; preds = %bb.jh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.325) #24
  br label %bb.kc

.lr.ph.i256:                                      ; preds = %bb.jh, %readFixedNumber.exit108.thread.i
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i, %readFixedNumber.exit108.thread.i ], [ 0, %bb.jh ] ; 2 uses
  %i.bgi = phi i32 [ %i.biq, %readFixedNumber.exit108.thread.i ], [ %i.bek, %bb.jh ] ; 5 uses
  %i.bgj = phi i8 [ %i.bip, %readFixedNumber.exit108.thread.i ], [ 1, %bb.jh ] ; 2 uses
  %i.bgk = zext i32 %i.bgi to i64
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bgk
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !123
  %.fr4271 = freeze i8 %i.bgm                     ; 3 uses
  %i.bgn = zext i8 %.fr4271 to i32                ; 2 uses
  %i.bgo = add nsw i32 %i.bgn, -96                ; 4 uses
  %i.bgp = icmp ugt i32 %i.bgo, 16
  br i1 %i.bgp, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.lr.ph.i256
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bgn) #24
  br label %readNumber.exit94.i

bb.jk:                                            ; preds = %.lr.ph.i256
  %i.bgq = add i32 %i.bgi, 1                      ; 3 uses
  %i.bgr = add i32 %i.bgo, %i.bgq                 ; 4 uses
  %i.bgs = icmp ugt i32 %i.bgr, %i.bbt
  br i1 %i.bgs, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit94.i

bb.jm:                                            ; preds = %bb.jk
  %i.bgt = icmp ne i8 %.fr4271, 96
  %i.bgu = icmp ult i32 %i.bgq, %i.bgr
  %or.cond.i258 = and i1 %i.bgt, %i.bgu
  br i1 %or.cond.i258, label %.lr.ph.i86.preheader.i, label %readNumber.exit94.i

.lr.ph.i86.preheader.i:                           ; preds = %bb.jm
  %i.bgv = zext i32 %i.bgq to i64                 ; 2 uses
  %i.bgw = zext nneg i32 %i.bgo to i64            ; 2 uses
  %xtraiter4143 = and i64 %i.bgw, 1
  %i.bgx = icmp eq i32 %i.bgo, 1
  br i1 %i.bgx, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.i86.preheader.i.new

.lr.ph.i86.preheader.i.new:                       ; preds = %.lr.ph.i86.preheader.i
  %unroll_iter4147 = and i64 %i.bgw, 30
  br label %.lr.ph.i86.i

.lr.ph.i86.i:                                     ; preds = %bb.jn, %.lr.ph.i86.preheader.i.new
  %indvars.iv152.i = phi i64 [ %i.bgv, %.lr.ph.i86.preheader.i.new ], [ %indvars.iv.next153.i.1, %bb.jn ] ; 3 uses
  %.03346.i88.i = phi i32 [ 0, %.lr.ph.i86.preheader.i.new ], [ %i.bhr, %bb.jn ] ; 3 uses
  %.03545.i89.i = phi i64 [ 0, %.lr.ph.i86.preheader.i.new ], [ %i.bhq, %bb.jn ]
  %niter4148 = phi i64 [ 0, %.lr.ph.i86.preheader.i.new ], [ %niter4148.next.1, %bb.jn ]
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv152.i
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !123 ; 2 uses
  %i.bha = zext i8 %i.bgz to i64                  ; 2 uses
  %i.bhb = and i64 %i.bha, 240
  %.not.i90.i = icmp eq i64 %i.bhb, 96
  br i1 %.not.i90.i, label %.lr.ph.i86.i.1, label %.thread.i91.i, !prof !134

.thread.i91.i:                                    ; preds = %.lr.ph.i86.i, %.lr.ph.i86.i.1, %.lr.ph.i86.i.epil.preheader
  %.lcssa3177 = phi i8 [ %i.bht, %.lr.ph.i86.i.epil.preheader ], [ %i.bgz, %.lr.ph.i86.i ], [ %i.bhf, %.lr.ph.i86.i.1 ]
  %i.bhc = sext i8 %.lcssa3177 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bhc) #24
  br label %readNumber.exit94.i

.lr.ph.i86.i.1:                                   ; preds = %.lr.ph.i86.i
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv152.i
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 1
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !123 ; 2 uses
  %i.bhg = zext i8 %i.bhf to i64                  ; 2 uses
  %i.bhh = and i64 %i.bhg, 240
  %.not.i90.i.1 = icmp eq i64 %i.bhh, 96
  br i1 %.not.i90.i.1, label %bb.jn, label %.thread.i91.i, !prof !134

bb.jn:                                            ; preds = %.lr.ph.i86.i.1
  %i.bhi = or disjoint i32 %.03346.i88.i, 4
  %i.bhj = and i64 %i.bha, 15
  %i.bhk = zext nneg i32 %.03346.i88.i to i64
  %i.bhl = shl i64 %i.bhj, %i.bhk
  %i.bhm = or i64 %i.bhl, %.03545.i89.i
  %i.bhn = and i64 %i.bhg, 15
  %i.bho = zext nneg i32 %i.bhi to i64
  %i.bhp = shl i64 %i.bhn, %i.bho
  %i.bhq = or i64 %i.bhp, %i.bhm                  ; 3 uses
  %i.bhr = add nuw nsw i32 %.03346.i88.i, 8       ; 2 uses
  %indvars.iv.next153.i.1 = add nuw nsw i64 %indvars.iv152.i, 2 ; 2 uses
  %niter4148.next.1 = add i64 %niter4148, 2       ; 2 uses
  %niter4148.ncmp.1 = icmp eq i64 %niter4148.next.1, %unroll_iter4147
  br i1 %niter4148.ncmp.1, label %._crit_edge.i83.loopexit.i.unr-lcssa, label %.lr.ph.i86.i

._crit_edge.i83.loopexit.i.unr-lcssa:             ; preds = %bb.jn
  %lcmp.mod4144.not = icmp eq i64 %xtraiter4143, 0
  br i1 %lcmp.mod4144.not, label %._crit_edge.i83.loopexit.i, label %.lr.ph.i86.i.epil.preheader

.lr.ph.i86.i.epil.preheader:                      ; preds = %._crit_edge.i83.loopexit.i.unr-lcssa, %.lr.ph.i86.preheader.i
  %indvars.iv152.i.epil.init = phi i64 [ %i.bgv, %.lr.ph.i86.preheader.i ], [ %indvars.iv.next153.i.1, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %.03346.i88.i.epil.init = phi i32 [ 0, %.lr.ph.i86.preheader.i ], [ %i.bhr, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %.03545.i89.i.epil.init = phi i64 [ 0, %.lr.ph.i86.preheader.i ], [ %i.bhq, %._crit_edge.i83.loopexit.i.unr-lcssa ]
  %lcmp.mod4146 = trunc i8 %.fr4271 to i1
  call void @llvm.assume(i1 %lcmp.mod4146)
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv152.i.epil.init
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !123 ; 2 uses
  %i.bhu = zext i8 %i.bht to i64                  ; 2 uses
  %i.bhv = and i64 %i.bhu, 240
  %.not.i90.i.epil = icmp eq i64 %i.bhv, 96
  br i1 %.not.i90.i.epil, label %._crit_edge.i83.loopexit.i.epilog-lcssa, label %.thread.i91.i, !prof !134

._crit_edge.i83.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i86.i.epil.preheader
  %i.bhw = and i64 %i.bhu, 15
  %i.bhx = zext nneg i32 %.03346.i88.i.epil.init to i64
  %i.bhy = shl i64 %i.bhw, %i.bhx
  %i.bhz = or i64 %i.bhy, %.03545.i89.i.epil.init
  br label %._crit_edge.i83.loopexit.i

._crit_edge.i83.loopexit.i:                       ; preds = %._crit_edge.i83.loopexit.i.unr-lcssa, %._crit_edge.i83.loopexit.i.epilog-lcssa
  %.lcssa3179 = phi i64 [ %i.bhq, %._crit_edge.i83.loopexit.i.unr-lcssa ], [ %i.bhz, %._crit_edge.i83.loopexit.i.epilog-lcssa ]
  %i.bia = trunc i64 %.lcssa3179 to i16
  br label %readNumber.exit94.i

readNumber.exit94.i:                              ; preds = %._crit_edge.i83.loopexit.i, %.thread.i91.i, %bb.jm, %bb.jl, %bb.jj
  %i.bib = phi i8 [ 0, %bb.jj ], [ 0, %bb.jl ], [ %i.bgj, %bb.jm ], [ 0, %.thread.i91.i ], [ %i.bgj, %._crit_edge.i83.loopexit.i ] ; 3 uses
  %i.bic = phi i32 [ %i.bgi, %bb.jj ], [ %i.bgi, %bb.jl ], [ %i.bgr, %bb.jm ], [ %i.bgi, %.thread.i91.i ], [ %i.bgr, %._crit_edge.i83.loopexit.i ] ; 5 uses
  %i.bid = phi i16 [ 0, %bb.jj ], [ 0, %bb.jl ], [ 0, %bb.jm ], [ 0, %.thread.i91.i ], [ %i.bia, %._crit_edge.i83.loopexit.i ] ; 2 uses
  %i.bie = load ptr, ptr %i.bgh, align 8, !tbaa !112
  %i.bif = getelementptr inbounds nuw [2 x i8], ptr %i.bie, i64 %indvars.iv155.i ; 2 uses
  store i16 %i.bid, ptr %i.bif, align 2, !tbaa !113
  %i.big = add i32 %i.bic, 1                      ; 3 uses
  %i.bih = icmp ugt i32 %i.big, %i.bbt
  br i1 %i.bih, label %bb.jo, label %.preheader.i95.i

.preheader.i95.i:                                 ; preds = %readNumber.exit94.i
  %.not114.i = icmp eq i32 %i.bic, -1
  br i1 %.not114.i, label %readFixedNumber.exit108.thread.i, label %.lr.ph.preheader.i99.i

.lr.ph.preheader.i99.i:                           ; preds = %.preheader.i95.i
  %i.bii = zext i32 %i.bic to i64
  %i.bij = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bii
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !123
  %i.bil = zext i8 %i.bik to i32                  ; 3 uses
  %i.bim = and i32 %i.bil, 240
  %.not.i104.i = icmp eq i32 %i.bim, 96
  br i1 %.not.i104.i, label %readFixedNumber.exit108.i, label %bb.jp, !prof !134

bb.jo:                                            ; preds = %readNumber.exit94.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %readFixedNumber.exit108.thread.i

bb.jp:                                            ; preds = %.lr.ph.preheader.i99.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bil) #24
  br label %readFixedNumber.exit108.thread.i

readFixedNumber.exit108.i:                        ; preds = %.lr.ph.preheader.i99.i
  %i.bin = and i32 %i.bil, 15
  %.not72.i = icmp eq i32 %i.bin, 0
  br i1 %.not72.i, label %readFixedNumber.exit108.thread.i, label %bb.jq

bb.jq:                                            ; preds = %readFixedNumber.exit108.i
  %i.bio = or i16 %i.bid, -32768
  store i16 %i.bio, ptr %i.bif, align 2, !tbaa !113
  br label %readFixedNumber.exit108.thread.i

readFixedNumber.exit108.thread.i:                 ; preds = %bb.jq, %readFixedNumber.exit108.i, %bb.jp, %bb.jo, %.preheader.i95.i
  %i.bip = phi i8 [ 0, %bb.jp ], [ 0, %bb.jo ], [ %i.bib, %bb.jq ], [ %i.bib, %readFixedNumber.exit108.i ], [ %i.bib, %.preheader.i95.i ] ; 3 uses
  %i.biq = phi i32 [ %i.bic, %bb.jp ], [ %i.bic, %bb.jo ], [ %i.big, %bb.jq ], [ %i.big, %readFixedNumber.exit108.i ], [ 0, %.preheader.i95.i ] ; 2 uses
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next156.i, %i.bgf
  br i1 %exitcond.not.i259, label %._crit_edge.i260, label %.lr.ph.i256

._crit_edge.i260:                                 ; preds = %readFixedNumber.exit108.thread.i
  store i8 %i.bip, ptr %i.c, align 1
  %i.bir = trunc nuw i8 %i.bip to i1
  br i1 %i.bir, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %._crit_edge.i260
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.326) #24
  br label %bb.kc

bb.js:                                            ; preds = %._crit_edge.i260, %._crit_edge.thread.i261
  %i.bis = phi i32 [ %i.bek, %._crit_edge.thread.i261 ], [ %i.biq, %._crit_edge.i260 ] ; 2 uses
  %i.bit = zext i32 %i.bis to i64
  %i.biu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bit
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !123 ; 2 uses
  %.not69.i = icmp eq i8 %i.biv, 70
  br i1 %.not69.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.biw = zext i8 %i.biv to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.327, i32 noundef %i.biw) #24
  br label %bb.kc

bb.ju:                                            ; preds = %bb.js
  %i.bix = add i32 %i.bis, 1
  store i32 %i.bix, ptr %i.d, align 4, !tbaa !117
  %i.biy = call fastcc i64 @readNumber(ptr noundef nonnull readonly %i.sj, ptr noundef %i.d, i32 noundef %i.bbt, ptr noundef %i.c) ; 2 uses
  %i.biz = trunc i64 %i.biy to i32
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bbr, i64 4
  store i32 %i.biz, ptr %i.bja, align 4, !tbaa !173
  %i.bjb = load i8, ptr %i.c, align 1, !tbaa !132, !range !136, !noundef !137
  %i.bjc = trunc nuw i8 %i.bjb to i1
  br i1 %i.bjc, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.328) #24
  br label %bb.kc

bb.jw:                                            ; preds = %bb.ju
  %i.bjd = load i8, ptr %i.bbr, align 8, !tbaa !108
  %i.bje = zext i8 %i.bjd to i32
  %i.bjf = load i16, ptr %i.bfy, align 2, !tbaa !172
  %i.bjg = zext i16 %i.bjf to i32
  %i.bjh = add nuw nsw i32 %i.bjg, %i.bje
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  store i32 %i.bjh, ptr %i.bji, align 8, !tbaa !174
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  store i32 0, ptr %i.bjj, align 8, !tbaa !175
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bbr, i64 12
  store i32 0, ptr %i.bjk, align 4, !tbaa !176
  %i.bjl = and i64 %i.biy, 4294967295
  %i.bjm = call noalias ptr @calloc(i64 noundef %i.bjl, i64 noundef 40) #23 ; 2 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bbr, i64 48
  store ptr %i.bjm, ptr %i.bjn, align 8, !tbaa !177
  %.not70.i = icmp eq ptr %i.bjm, null
  br i1 %.not70.i, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.329) #24
  br label %bb.kc

bb.jy:                                            ; preds = %bb.jw
  %i.bjo = call fastcc i64 @readNumber(ptr noundef nonnull readonly %i.sj, ptr noundef %i.d, i32 noundef %i.bbt, ptr noundef %i.c) ; 2 uses
  %i.bjp = trunc i64 %i.bjo to i16
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bbr, i64 20
  store i16 %i.bjp, ptr %i.bjq, align 4, !tbaa !151
  %i.bjr = load i8, ptr %i.c, align 1, !tbaa !132, !range !136, !noundef !137
  %i.bjs = trunc nuw i8 %i.bjr to i1
  br i1 %i.bjs, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.330) #24
  br label %bb.kc

bb.ka:                                            ; preds = %bb.jy
  %i.bjt = and i64 %i.bjo, 65535
  %i.bju = call noalias ptr @calloc(i64 noundef %i.bjt, i64 noundef 16) #23 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bbr, i64 40
  store ptr %i.bju, ptr %i.bjv, align 8, !tbaa !178
  %.not71.i = icmp eq ptr %i.bju, null
  br i1 %.not71.i, label %bb.kb, label %parseFunctionHeader.exit

bb.kb:                                            ; preds = %bb.ka
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.331) #24
  br label %bb.kc

parseFunctionHeader.exit:                         ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.bjw = zext i32 %.0103.ph111821023167 to i64  ; 2 uses
  br label %parseLSig.exit.jt6

bb.kc:                                            ; preds = %bb.im, %bb.io, %bb.iz, %bb.jt, %.loopexit361, %bb.kb, %bb.jz, %bb.jx, %bb.jv, %bb.jr, %bb.ji
  %.058.i.ph = phi i32 [ 20, %bb.ji ], [ 4, %bb.jr ], [ 4, %bb.jv ], [ 20, %bb.jx ], [ 4, %bb.jz ], [ 20, %bb.kb ], [ 4, %.loopexit361 ], [ 4, %bb.jt ], [ 4, %bb.iz ], [ 4, %bb.io ], [ 4, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef %i.bbn) #24
  call void @free(ptr noundef nonnull %i.sj) #24
  br label %bb.qb

bb.kd:                                            ; preds = %bb.cm
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.332) #24
  br label %.loopexit360

bb.ke:                                            ; preds = %bb.cm
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !178
  %i.bjz = zext nneg i32 %.1102.jt6 to i64
  %i.bka = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bjz ; 6 uses
  %i.bkb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sj) #26
  %i.bkc = trunc i64 %i.bkb to i32                ; 36 uses
  %i.bkd = load i8, ptr %i.sj, align 1, !tbaa !123 ; 2 uses
  %.not329.i = icmp eq i8 %i.bkd, 66
  br i1 %.not329.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bke = zext i8 %i.bkd to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.333, i32 noundef %i.bke) #24
  br label %.loopexit360

bb.kg:                                            ; preds = %bb.ke
  store i32 1, ptr %i.b, align 4, !tbaa !117
  store i32 0, ptr %i.bka, align 8, !tbaa !179
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !177
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.ud, i64 32 ; 4 uses
  %i.bki = load i32, ptr %i.bkh, align 8, !tbaa !175
  %i.bkj = zext i32 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [40 x i8], ptr %i.bkg, i64 %i.bkj
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bka, i64 8 ; 2 uses
  store ptr %i.bkk, ptr %i.bkl, align 8, !tbaa !181
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.ud, i64 2 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.ud, i64 24 ; 3 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.ud, i64 4 ; 2 uses
  br label %bb.kh

bb.kh:                                            ; preds = %bb.oo, %bb.kg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.38.i, i8 0, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.88.i, i8 0, i64 5, i1 false)
  %i.bkp = load i32, ptr %i.b, align 4, !tbaa !117 ; 6 uses
  %i.bkq = zext i32 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bkq
  %i.bks = load i8, ptr %i.bkr, align 1, !tbaa !123
  %.fr4274 = freeze i8 %i.bks                     ; 4 uses
  %.not718.i = icmp eq i8 %.fr4274, 84            ; 2 uses
  br i1 %.not718.i, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bkt = add i32 %i.bkp, 1
  br label %readNumber.exit358.i

bb.kj:                                            ; preds = %bb.kh
  %i.bku = zext i8 %.fr4274 to i32                ; 2 uses
  %i.bkv = add nsw i32 %i.bku, -96                ; 4 uses
  %i.bkw = icmp ugt i32 %i.bkv, 16
  br i1 %i.bkw, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bku) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit.i269

bb.kl:                                            ; preds = %bb.kj
  %i.bkx = add i32 %i.bkp, 1                      ; 3 uses
  %i.bky = add i32 %i.bkv, %i.bkx                 ; 6 uses
  %i.bkz = icmp ugt i32 %i.bky, %i.bkc
  br i1 %i.bkz, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit.i269

bb.kn:                                            ; preds = %bb.kl
  %i.bla = icmp eq i8 %.fr4274, 96
  br i1 %i.bla, label %bb.ko, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.kn
  %i.blb = icmp ult i32 %i.bkx, %i.bky
  br i1 %i.blb, label %.lr.ph.i.preheader.i288, label %._crit_edge.i.i267

.lr.ph.i.preheader.i288:                          ; preds = %.preheader.i.i
  %i.blc = zext i32 %i.bkx to i64                 ; 2 uses
  %i.bld = zext nneg i32 %i.bkv to i64            ; 2 uses
  %xtraiter4149 = and i64 %i.bld, 1
  %i.ble = icmp eq i32 %i.bkv, 1
  br i1 %i.ble, label %.lr.ph.i.i289.epil.preheader, label %.lr.ph.i.preheader.i288.new

.lr.ph.i.preheader.i288.new:                      ; preds = %.lr.ph.i.preheader.i288
  %unroll_iter4153 = and i64 %i.bld, 30
  br label %.lr.ph.i.i289

bb.ko:                                            ; preds = %bb.kn
  store i32 %i.bky, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit.i269

.lr.ph.i.i289:                                    ; preds = %bb.kp, %.lr.ph.i.preheader.i288.new
  %indvars.iv.i290 = phi i64 [ %i.blc, %.lr.ph.i.preheader.i288.new ], [ %indvars.iv.next.i295.1, %bb.kp ] ; 3 uses
  %.03346.i.i291 = phi i32 [ 0, %.lr.ph.i.preheader.i288.new ], [ %i.bly, %bb.kp ] ; 3 uses
  %.03545.i.i292 = phi i64 [ 0, %.lr.ph.i.preheader.i288.new ], [ %i.blx, %bb.kp ]
  %niter4154 = phi i64 [ 0, %.lr.ph.i.preheader.i288.new ], [ %niter4154.next.1, %bb.kp ]
  %i.blf = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i290
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !123 ; 2 uses
  %i.blh = zext i8 %i.blg to i64                  ; 2 uses
  %i.bli = and i64 %i.blh, 240
  %.not.i.i293 = icmp eq i64 %i.bli, 96
  br i1 %.not.i.i293, label %.lr.ph.i.i289.1, label %.thread.i.i294, !prof !134

.thread.i.i294:                                   ; preds = %.lr.ph.i.i289, %.lr.ph.i.i289.1, %.lr.ph.i.i289.epil.preheader
  %.lcssa3182 = phi i8 [ %i.bma, %.lr.ph.i.i289.epil.preheader ], [ %i.blg, %.lr.ph.i.i289 ], [ %i.blm, %.lr.ph.i.i289.1 ]
  %i.blj = sext i8 %.lcssa3182 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.blj) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit.i269

.lr.ph.i.i289.1:                                  ; preds = %.lr.ph.i.i289
  %i.blk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i290
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 1
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !123 ; 2 uses
  %i.bln = zext i8 %i.blm to i64                  ; 2 uses
  %i.blo = and i64 %i.bln, 240
  %.not.i.i293.1 = icmp eq i64 %i.blo, 96
  br i1 %.not.i.i293.1, label %bb.kp, label %.thread.i.i294, !prof !134

bb.kp:                                            ; preds = %.lr.ph.i.i289.1
  %i.blp = or disjoint i32 %.03346.i.i291, 4
  %i.blq = and i64 %i.blh, 15
  %i.blr = zext nneg i32 %.03346.i.i291 to i64
  %i.bls = shl i64 %i.blq, %i.blr
  %i.blt = or i64 %i.bls, %.03545.i.i292
  %i.blu = and i64 %i.bln, 15
  %i.blv = zext nneg i32 %i.blp to i64
  %i.blw = shl i64 %i.blu, %i.blv
  %i.blx = or i64 %i.blw, %i.blt                  ; 3 uses
  %i.bly = add nuw nsw i32 %.03346.i.i291, 8      ; 2 uses
  %indvars.iv.next.i295.1 = add nuw nsw i64 %indvars.iv.i290, 2 ; 2 uses
  %niter4154.next.1 = add i64 %niter4154, 2       ; 2 uses
  %niter4154.ncmp.1 = icmp eq i64 %niter4154.next.1, %unroll_iter4153
  br i1 %niter4154.ncmp.1, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i289

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %bb.kp
  %lcmp.mod4150.not = icmp eq i64 %xtraiter4149, 0
  br i1 %lcmp.mod4150.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i289.epil.preheader

.lr.ph.i.i289.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.preheader.i288
  %indvars.iv.i290.epil.init = phi i64 [ %i.blc, %.lr.ph.i.preheader.i288 ], [ %indvars.iv.next.i295.1, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.03346.i.i291.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i288 ], [ %i.bly, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.03545.i.i292.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i288 ], [ %i.blx, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod4152 = trunc i8 %.fr4274 to i1
  call void @llvm.assume(i1 %lcmp.mod4152)
  %i.blz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i290.epil.init
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !123 ; 2 uses
  %i.bmb = zext i8 %i.bma to i64                  ; 2 uses
  %i.bmc = and i64 %i.bmb, 240
  %.not.i.i293.epil = icmp eq i64 %i.bmc, 96
  br i1 %.not.i.i293.epil, label %._crit_edge.i.loopexit.i.epilog-lcssa, label %.thread.i.i294, !prof !134

._crit_edge.i.loopexit.i.epilog-lcssa:            ; preds = %.lr.ph.i.i289.epil.preheader
  %i.bmd = and i64 %i.bmb, 15
  %i.bme = zext nneg i32 %.03346.i.i291.epil.init to i64
  %i.bmf = shl i64 %i.bmd, %i.bme
  %i.bmg = or i64 %i.bmf, %.03545.i.i292.epil.init
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %._crit_edge.i.loopexit.i.epilog-lcssa
  %.lcssa3184 = phi i64 [ %i.blx, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.bmg, %._crit_edge.i.loopexit.i.epilog-lcssa ]
  %i.bmh = trunc i64 %.lcssa3184 to i16
  br label %._crit_edge.i.i267

._crit_edge.i.i267:                               ; preds = %._crit_edge.i.loopexit.i, %.preheader.i.i
  %.035.lcssa.i.i268 = phi i16 [ 0, %.preheader.i.i ], [ %i.bmh, %._crit_edge.i.loopexit.i ]
  store i32 %i.bky, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit.i269

readNumber.exit.i269:                             ; preds = %._crit_edge.i.i267, %.thread.i.i294, %bb.ko, %bb.km, %bb.kk
  %i.bmi = phi i1 [ false, %bb.kk ], [ false, %bb.km ], [ true, %bb.ko ], [ false, %.thread.i.i294 ], [ true, %._crit_edge.i.i267 ] ; 2 uses
  %i.bmj = phi i32 [ %i.bkp, %bb.kk ], [ %i.bkp, %bb.km ], [ %i.bky, %bb.ko ], [ %i.bkp, %.thread.i.i294 ], [ %i.bky, %._crit_edge.i.i267 ] ; 5 uses
  %.2.i.i270 = phi i16 [ 0, %bb.kk ], [ 0, %bb.km ], [ 0, %bb.ko ], [ 0, %.thread.i.i294 ], [ %.035.lcssa.i.i268, %._crit_edge.i.i267 ] ; 5 uses
  %i.bmk = zext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bmk
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !123
  %.fr4277 = freeze i8 %i.bmm                     ; 3 uses
  %i.bmn = zext i8 %.fr4277 to i32                ; 2 uses
  %i.bmo = add nsw i32 %i.bmn, -96                ; 4 uses
  %i.bmp = icmp ugt i32 %i.bmo, 16
  br i1 %i.bmp, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %readNumber.exit.i269
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bmn) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit358.i

bb.kr:                                            ; preds = %readNumber.exit.i269
  %i.bmq = add i32 %i.bmj, 1                      ; 3 uses
  %i.bmr = add i32 %i.bmo, %i.bmq                 ; 4 uses
  %i.bms = icmp ugt i32 %i.bmr, %i.bkc
  br i1 %i.bms, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit358.i

bb.kt:                                            ; preds = %bb.kr
  %i.bmt = icmp ne i8 %.fr4277, 96
  %i.bmu = icmp ult i32 %i.bmq, %i.bmr
  %or.cond789.i = and i1 %i.bmt, %i.bmu
  br i1 %or.cond789.i, label %.lr.ph.i350.preheader.i, label %readNumber.exit358.i

.lr.ph.i350.preheader.i:                          ; preds = %bb.kt
  %i.bmv = zext i32 %i.bmq to i64                 ; 2 uses
  %i.bmw = zext nneg i32 %i.bmo to i64            ; 2 uses
  %xtraiter4155 = and i64 %i.bmw, 1
  %i.bmx = icmp eq i32 %i.bmo, 1
  br i1 %i.bmx, label %.lr.ph.i350.i.epil.preheader, label %.lr.ph.i350.preheader.i.new

.lr.ph.i350.preheader.i.new:                      ; preds = %.lr.ph.i350.preheader.i
  %unroll_iter4159 = and i64 %i.bmw, 30
  br label %.lr.ph.i350.i

.lr.ph.i350.i:                                    ; preds = %bb.ku, %.lr.ph.i350.preheader.i.new
  %indvars.iv630.i = phi i64 [ %i.bmv, %.lr.ph.i350.preheader.i.new ], [ %indvars.iv.next631.i.1, %bb.ku ] ; 3 uses
  %.03346.i352.i = phi i32 [ 0, %.lr.ph.i350.preheader.i.new ], [ %i.bnr, %bb.ku ] ; 3 uses
  %.03545.i353.i = phi i64 [ 0, %.lr.ph.i350.preheader.i.new ], [ %i.bnq, %bb.ku ]
  %niter4160 = phi i64 [ 0, %.lr.ph.i350.preheader.i.new ], [ %niter4160.next.1, %bb.ku ]
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv630.i
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !123 ; 2 uses
  %i.bna = zext i8 %i.bmz to i64                  ; 2 uses
  %i.bnb = and i64 %i.bna, 240
  %.not.i354.i = icmp eq i64 %i.bnb, 96
  br i1 %.not.i354.i, label %.lr.ph.i350.i.1, label %.thread.i355.i, !prof !134

.thread.i355.i:                                   ; preds = %.lr.ph.i350.i, %.lr.ph.i350.i.1, %.lr.ph.i350.i.epil.preheader
  %.lcssa3185 = phi i8 [ %i.bnt, %.lr.ph.i350.i.epil.preheader ], [ %i.bmz, %.lr.ph.i350.i ], [ %i.bnf, %.lr.ph.i350.i.1 ]
  %i.bnc = sext i8 %.lcssa3185 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bnc) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit358.i

.lr.ph.i350.i.1:                                  ; preds = %.lr.ph.i350.i
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv630.i
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 1
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !123 ; 2 uses
  %i.bng = zext i8 %i.bnf to i64                  ; 2 uses
  %i.bnh = and i64 %i.bng, 240
  %.not.i354.i.1 = icmp eq i64 %i.bnh, 96
  br i1 %.not.i354.i.1, label %bb.ku, label %.thread.i355.i, !prof !134

bb.ku:                                            ; preds = %.lr.ph.i350.i.1
  %i.bni = or disjoint i32 %.03346.i352.i, 4
  %i.bnj = and i64 %i.bna, 15
  %i.bnk = zext nneg i32 %.03346.i352.i to i64
  %i.bnl = shl i64 %i.bnj, %i.bnk
  %i.bnm = or i64 %i.bnl, %.03545.i353.i
  %i.bnn = and i64 %i.bng, 15
  %i.bno = zext nneg i32 %i.bni to i64
  %i.bnp = shl i64 %i.bnn, %i.bno
  %i.bnq = or i64 %i.bnp, %i.bnm                  ; 3 uses
  %i.bnr = add nuw nsw i32 %.03346.i352.i, 8      ; 2 uses
  %indvars.iv.next631.i.1 = add nuw nsw i64 %indvars.iv630.i, 2 ; 2 uses
  %niter4160.next.1 = add i64 %niter4160, 2       ; 2 uses
  %niter4160.ncmp.1 = icmp eq i64 %niter4160.next.1, %unroll_iter4159
  br i1 %niter4160.ncmp.1, label %._crit_edge.i347.loopexit.i.unr-lcssa, label %.lr.ph.i350.i

._crit_edge.i347.loopexit.i.unr-lcssa:            ; preds = %bb.ku
  %lcmp.mod4156.not = icmp eq i64 %xtraiter4155, 0
  br i1 %lcmp.mod4156.not, label %._crit_edge.i347.loopexit.i, label %.lr.ph.i350.i.epil.preheader

.lr.ph.i350.i.epil.preheader:                     ; preds = %._crit_edge.i347.loopexit.i.unr-lcssa, %.lr.ph.i350.preheader.i
  %indvars.iv630.i.epil.init = phi i64 [ %i.bmv, %.lr.ph.i350.preheader.i ], [ %indvars.iv.next631.i.1, %._crit_edge.i347.loopexit.i.unr-lcssa ]
  %.03346.i352.i.epil.init = phi i32 [ 0, %.lr.ph.i350.preheader.i ], [ %i.bnr, %._crit_edge.i347.loopexit.i.unr-lcssa ]
  %.03545.i353.i.epil.init = phi i64 [ 0, %.lr.ph.i350.preheader.i ], [ %i.bnq, %._crit_edge.i347.loopexit.i.unr-lcssa ]
  %lcmp.mod4158 = trunc i8 %.fr4277 to i1
  call void @llvm.assume(i1 %lcmp.mod4158)
  %i.bns = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv630.i.epil.init
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !123 ; 2 uses
  %i.bnu = zext i8 %i.bnt to i64                  ; 2 uses
  %i.bnv = and i64 %i.bnu, 240
  %.not.i354.i.epil = icmp eq i64 %i.bnv, 96
  br i1 %.not.i354.i.epil, label %._crit_edge.i347.loopexit.i.epilog-lcssa, label %.thread.i355.i, !prof !134

._crit_edge.i347.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i350.i.epil.preheader
  %i.bnw = and i64 %i.bnu, 15
  %i.bnx = zext nneg i32 %.03346.i352.i.epil.init to i64
  %i.bny = shl i64 %i.bnw, %i.bnx
  %i.bnz = or i64 %i.bny, %.03545.i353.i.epil.init
  br label %._crit_edge.i347.loopexit.i

._crit_edge.i347.loopexit.i:                      ; preds = %._crit_edge.i347.loopexit.i.unr-lcssa, %._crit_edge.i347.loopexit.i.epilog-lcssa
  %.lcssa3187 = phi i64 [ %i.bnq, %._crit_edge.i347.loopexit.i.unr-lcssa ], [ %i.bnz, %._crit_edge.i347.loopexit.i.epilog-lcssa ]
  %i.boa = trunc i64 %.lcssa3187 to i32
  br label %readNumber.exit358.i

readNumber.exit358.i:                             ; preds = %._crit_edge.i347.loopexit.i, %.thread.i355.i, %bb.kt, %bb.ks, %bb.kq, %bb.ki
  %i.bob = phi i1 [ true, %bb.ki ], [ false, %bb.kq ], [ false, %bb.ks ], [ %i.bmi, %bb.kt ], [ false, %.thread.i355.i ], [ %i.bmi, %._crit_edge.i347.loopexit.i ] ; 2 uses
  %i.boc = phi i32 [ %i.bkt, %bb.ki ], [ %i.bmj, %bb.kq ], [ %i.bmj, %bb.ks ], [ %i.bmr, %bb.kt ], [ %i.bmj, %.thread.i355.i ], [ %i.bmr, %._crit_edge.i347.loopexit.i ] ; 9 uses
  %.sroa.15.0.i = phi i16 [ 0, %bb.ki ], [ %.2.i.i270, %bb.kq ], [ %.2.i.i270, %bb.ks ], [ %.2.i.i270, %bb.kt ], [ %.2.i.i270, %.thread.i355.i ], [ %.2.i.i270, %._crit_edge.i347.loopexit.i ] ; 15 uses
  %.sroa.2737.0.i = phi i32 [ 0, %bb.ki ], [ 0, %bb.kq ], [ 0, %bb.ks ], [ 0, %bb.kt ], [ 0, %.thread.i355.i ], [ %i.boa, %._crit_edge.i347.loopexit.i ]
  %i.bod = add i32 %i.boc, 2                      ; 11 uses
  %i.boe = icmp ugt i32 %i.bod, %i.bkc
  br i1 %i.boe, label %bb.kv, label %.preheader.i359.i

.preheader.i359.i:                                ; preds = %readNumber.exit358.i
  %i.bof = icmp ult i32 %i.boc, -2
  br i1 %i.bof, label %.lr.ph.preheader.i.i, label %readFixedNumber.exit.thread720.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i359.i
  %i.bog = zext i32 %i.boc to i64
  %i.boh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bog ; 2 uses
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !123
  %i.boj = zext i8 %i.boi to i32                  ; 3 uses
  %i.bok = and i32 %i.boj, 240
  %.not.i363.i = icmp eq i32 %i.bok, 96
  br i1 %.not.i363.i, label %.lr.ph.i362.1.i, label %bb.kw, !prof !134

bb.kv:                                            ; preds = %readNumber.exit358.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %readFixedNumber.exit.thread.i271

bb.kw:                                            ; preds = %.lr.ph.i362.1.i, %.lr.ph.preheader.i.i
  %.lcssa592.i = phi i32 [ %i.boj, %.lr.ph.preheader.i.i ], [ %i.bon, %.lr.ph.i362.1.i ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %.lcssa592.i) #24
  br label %readFixedNumber.exit.thread.i271

.lr.ph.i362.1.i:                                  ; preds = %.lr.ph.preheader.i.i
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boh, i64 1
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !123
  %i.bon = zext i8 %i.bom to i32                  ; 3 uses
  %i.boo = and i32 %i.bon, 240
  %.not.i363.1.i = icmp eq i32 %i.boo, 96
  br i1 %.not.i363.1.i, label %readFixedNumber.exit.i275, label %bb.kw, !prof !134

readFixedNumber.exit.i275:                        ; preds = %.lr.ph.i362.1.i
  %i.bop = and i32 %i.boj, 15
  %i.boq = shl nuw nsw i32 %i.bon, 4
  %i.bor = and i32 %i.boq, 240
  %i.bos = or disjoint i32 %i.bor, %i.bop         ; 17 uses
  store i32 %i.bod, ptr %i.b, align 4, !tbaa !117
  br i1 %i.bob, label %bb.kx, label %readFixedNumber.exit.thread.i271

readFixedNumber.exit.thread720.i:                 ; preds = %.preheader.i359.i
  store i32 %i.bod, ptr %i.b, align 4, !tbaa !117
  br i1 %i.bob, label %readNumber.exit477.i, label %readFixedNumber.exit.thread.i271

readFixedNumber.exit.thread.i271:                 ; preds = %readFixedNumber.exit.thread720.i, %readFixedNumber.exit.i275, %bb.kw, %bb.kv
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.334) #24
  br label %.loopexit360

bb.kx:                                            ; preds = %readFixedNumber.exit.i275
  %i.bot = icmp samesign ugt i32 %i.bos, 50
  br i1 %i.bot, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.335, i32 noundef %i.bos) #24
  br label %.loopexit360

bb.kz:                                            ; preds = %bb.kx
  switch i32 %i.bos, label %readNumber.exit477.i [
    i32 18, label %bb.la
    i32 19, label %bb.lj
    i32 17, label %bb.lq
    i32 33, label %bb.mh
    i32 32, label %bb.mh
    i32 16, label %bb.mr
    i32 15, label %bb.mr
    i32 14, label %bb.mr
    i32 35, label %bb.nb
    i32 36, label %bb.nb
    i32 37, label %bb.ni
    i32 38, label %bb.nn
    i32 34, label %bb.no
    i32 21, label %bb.nq
    i32 22, label %bb.nq
    i32 23, label %bb.nq
    i32 24, label %bb.nq
    i32 25, label %bb.nq
    i32 26, label %bb.nq
    i32 27, label %bb.nq
    i32 28, label %bb.nq
    i32 29, label %bb.nq
    i32 30, label %bb.nq
  ]

bb.la:                                            ; preds = %bb.kz
  %i.bou = zext i32 %i.bod to i64
  %i.bov = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bou
  %i.bow = load i8, ptr %i.bov, align 1, !tbaa !123
  %.fr4292 = freeze i8 %i.bow                     ; 3 uses
  %i.box = zext i8 %.fr4292 to i32                ; 2 uses
  %i.boy = add nsw i32 %i.box, -96                ; 4 uses
  %i.boz = icmp ugt i32 %i.boy, 16
  br i1 %i.boz, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.box) #24
  br label %.thread.i365.i

bb.lc:                                            ; preds = %bb.la
  %i.bpa = add i32 %i.boc, 3                      ; 3 uses
  %i.bpb = add i32 %i.boy, %i.bpa                 ; 5 uses
  %i.bpc = icmp ugt i32 %i.bpb, %i.bkc
  br i1 %i.bpc, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.thread.i365.i

bb.le:                                            ; preds = %bb.lc
  %i.bpd = icmp eq i8 %.fr4292, 96
  br i1 %i.bpd, label %bb.lf, label %.preheader.i.i.i279

.preheader.i.i.i279:                              ; preds = %bb.le
  %i.bpe = icmp ult i32 %i.bpa, %i.bpb
  br i1 %i.bpe, label %.lr.ph.i.preheader.i.i280, label %readNumber.exit.thread17.i.i

.lr.ph.i.preheader.i.i280:                        ; preds = %.preheader.i.i.i279
  %i.bpf = zext i32 %i.bpa to i64                 ; 2 uses
  %i.bpg = zext nneg i32 %i.boy to i64            ; 2 uses
  %xtraiter4191 = and i64 %i.bpg, 1
  %i.bph = icmp eq i32 %i.boy, 1
  br i1 %i.bph, label %.lr.ph.i.i.i281.epil.preheader, label %.lr.ph.i.preheader.i.i280.new

.lr.ph.i.preheader.i.i280.new:                    ; preds = %.lr.ph.i.preheader.i.i280
  %unroll_iter4195 = and i64 %i.bpg, 30
  br label %.lr.ph.i.i.i281

readNumber.exit.thread17.i.i:                     ; preds = %.preheader.i.i.i279
  store i32 %i.bpb, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i365.i

bb.lf:                                            ; preds = %bb.le
  store i32 %i.bpb, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i365.i

.lr.ph.i.i.i281:                                  ; preds = %bb.lg, %.lr.ph.i.preheader.i.i280.new
  %indvars.iv.i366.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i280.new ], [ %indvars.iv.next1896.1, %bb.lg ] ; 3 uses
  %indvars.iv.i366.i = phi i64 [ %i.bpf, %.lr.ph.i.preheader.i.i280.new ], [ %indvars.iv.next.i367.i.1, %bb.lg ] ; 3 uses
  %.03545.i.i.i283 = phi i64 [ 0, %.lr.ph.i.preheader.i.i280.new ], [ %i.bpx, %bb.lg ]
  %niter4196 = phi i64 [ 0, %.lr.ph.i.preheader.i.i280.new ], [ %niter4196.next.1, %bb.lg ]
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i366.i
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !123 ; 2 uses
  %i.bpk = zext i8 %i.bpj to i64                  ; 2 uses
  %i.bpl = and i64 %i.bpk, 240
  %.not.i.i.i284 = icmp eq i64 %i.bpl, 96
  br i1 %.not.i.i.i284, label %.lr.ph.i.i.i281.1, label %.thread.i.i.i285, !prof !134

.thread.i.i.i285:                                 ; preds = %.lr.ph.i.i.i281, %.lr.ph.i.i.i281.1, %.lr.ph.i.i.i281.epil.preheader
  %.lcssa3203 = phi i8 [ %i.bpz, %.lr.ph.i.i.i281.epil.preheader ], [ %i.bpj, %.lr.ph.i.i.i281 ], [ %i.bpp, %.lr.ph.i.i.i281.1 ]
  %i.bpm = sext i8 %.lcssa3203 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bpm) #24
  br label %.thread.i365.i

.lr.ph.i.i.i281.1:                                ; preds = %.lr.ph.i.i.i281
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i366.i
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 1
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !123 ; 2 uses
  %i.bpq = zext i8 %i.bpp to i64                  ; 2 uses
  %i.bpr = and i64 %i.bpq, 240
  %.not.i.i.i284.1 = icmp eq i64 %i.bpr, 96
  br i1 %.not.i.i.i284.1, label %bb.lg, label %.thread.i.i.i285, !prof !134

bb.lg:                                            ; preds = %.lr.ph.i.i.i281.1
  %indvars.iv.next1896 = or disjoint i64 %indvars.iv.i366.i.a, 4
  %i.bps = and i64 %i.bpk, 15
  %i.bpt = shl i64 %i.bps, %indvars.iv.i366.i.a
  %i.bpu = or i64 %i.bpt, %.03545.i.i.i283
  %i.bpv = and i64 %i.bpq, 15
  %i.bpw = shl i64 %i.bpv, %indvars.iv.next1896
  %i.bpx = or i64 %i.bpw, %i.bpu                  ; 3 uses
  %indvars.iv.next1896.1 = add nuw nsw i64 %indvars.iv.i366.i.a, 8 ; 2 uses
  %indvars.iv.next.i367.i.1 = add nuw nsw i64 %indvars.iv.i366.i, 2 ; 2 uses
  %niter4196.next.1 = add i64 %niter4196, 2       ; 2 uses
  %niter4196.ncmp.1 = icmp eq i64 %niter4196.next.1, %unroll_iter4195
  br i1 %niter4196.ncmp.1, label %readNumber.exit.i.i287.unr-lcssa, label %.lr.ph.i.i.i281

readNumber.exit.i.i287.unr-lcssa:                 ; preds = %bb.lg
  %lcmp.mod4192.not = icmp eq i64 %xtraiter4191, 0
  br i1 %lcmp.mod4192.not, label %readNumber.exit.i.i287, label %.lr.ph.i.i.i281.epil.preheader

.lr.ph.i.i.i281.epil.preheader:                   ; preds = %readNumber.exit.i.i287.unr-lcssa, %.lr.ph.i.preheader.i.i280
  %indvars.iv.i366.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i.i280 ], [ %indvars.iv.next1896.1, %readNumber.exit.i.i287.unr-lcssa ]
  %indvars.iv.i366.i.epil.init = phi i64 [ %i.bpf, %.lr.ph.i.preheader.i.i280 ], [ %indvars.iv.next.i367.i.1, %readNumber.exit.i.i287.unr-lcssa ]
  %.03545.i.i.i283.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i280 ], [ %i.bpx, %readNumber.exit.i.i287.unr-lcssa ]
  %lcmp.mod4194 = trunc i8 %.fr4292 to i1
  call void @llvm.assume(i1 %lcmp.mod4194)
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i366.i.epil.init
  %i.bpz = load i8, ptr %i.bpy, align 1, !tbaa !123 ; 2 uses
  %i.bqa = zext i8 %i.bpz to i64                  ; 2 uses
  %i.bqb = and i64 %i.bqa, 240
  %.not.i.i.i284.epil = icmp eq i64 %i.bqb, 96
  br i1 %.not.i.i.i284.epil, label %readNumber.exit.i.i287.epilog-lcssa, label %.thread.i.i.i285, !prof !134

readNumber.exit.i.i287.epilog-lcssa:              ; preds = %.lr.ph.i.i.i281.epil.preheader
  %i.bqc = and i64 %i.bqa, 15
  %i.bqd = shl i64 %i.bqc, %indvars.iv.i366.i.epil.init.a
  %i.bqe = or i64 %i.bqd, %.03545.i.i.i283.epil.init
  br label %readNumber.exit.i.i287

readNumber.exit.i.i287:                           ; preds = %readNumber.exit.i.i287.unr-lcssa, %readNumber.exit.i.i287.epilog-lcssa
  %.lcssa3205 = phi i64 [ %i.bpx, %readNumber.exit.i.i287.unr-lcssa ], [ %i.bqe, %readNumber.exit.i.i287.epilog-lcssa ] ; 2 uses
  store i32 %i.bpb, ptr %i.b, align 4, !tbaa !117
  %i.bqf = trunc i64 %.lcssa3205 to i32           ; 3 uses
  %.not.i368.i = icmp eq i32 %i.bqf, 0
  br i1 %.not.i368.i, label %.thread.i365.i, label %bb.lh

bb.lh:                                            ; preds = %readNumber.exit.i.i287
  %i.bqg = load i16, ptr %i.ue, align 4, !tbaa !151
  %i.bqh = zext i16 %i.bqg to i32
  %.not12.i.i = icmp ult i32 %i.bqf, %i.bqh
  br i1 %.not12.i.i, label %bb.li, label %.thread.i365.i

.thread.i365.i:                                   ; preds = %bb.lh, %readNumber.exit.i.i287, %.thread.i.i.i285, %bb.lf, %readNumber.exit.thread17.i.i, %bb.ld, %bb.lb
  %i.bqi = phi i32 [ 0, %readNumber.exit.thread17.i.i ], [ %i.bqf, %bb.lh ], [ 0, %readNumber.exit.i.i287 ], [ 0, %bb.lb ], [ 0, %bb.ld ], [ 0, %bb.lf ], [ 0, %.thread.i.i.i285 ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.347, i32 noundef %i.bqi) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readBBID.exit.i

bb.li:                                            ; preds = %bb.lh
  %i.bqj = and i64 %.lcssa3205, 65535
  br label %readBBID.exit.i

readBBID.exit.i:                                  ; preds = %bb.li, %.thread.i365.i
  %.sroa.3841.0.insert.ext113.i = phi i64 [ 65535, %.thread.i365.i ], [ %i.bqj, %bb.li ]
  %i.bqk = inttoptr i64 %.sroa.3841.0.insert.ext113.i to ptr
  br label %get_optype.exit464.i

bb.lj:                                            ; preds = %bb.kz
  %i.bql = zext i32 %i.bod to i64
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bql
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !123
  %.fr4289 = freeze i8 %i.bqn                     ; 3 uses
  %i.bqo = zext i8 %.fr4289 to i32                ; 2 uses
  %i.bqp = add nsw i32 %i.bqo, -96                ; 4 uses
  %i.bqq = icmp ugt i32 %i.bqp, 16
  br i1 %i.bqq, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bqo) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit381.i

bb.ll:                                            ; preds = %bb.lj
  %i.bqr = add i32 %i.boc, 3                      ; 3 uses
  %i.bqs = add i32 %i.bqp, %i.bqr                 ; 4 uses
  %i.bqt = icmp ugt i32 %i.bqs, %i.bkc
  br i1 %i.bqt, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit381.i

bb.ln:                                            ; preds = %bb.ll
  %i.bqu = icmp eq i8 %.fr4289, 96
  br i1 %i.bqu, label %bb.lo, label %.preheader.i369.i

.preheader.i369.i:                                ; preds = %bb.ln
  %i.bqv = icmp ult i32 %i.bqr, %i.bqs
  br i1 %i.bqv, label %.lr.ph.i373.preheader.i, label %._crit_edge.i370.i

.lr.ph.i373.preheader.i:                          ; preds = %.preheader.i369.i
  %i.bqw = zext i32 %i.bqr to i64                 ; 2 uses
  %i.bqx = zext nneg i32 %i.bqp to i64            ; 2 uses
  %xtraiter4185 = and i64 %i.bqx, 1
  %i.bqy = icmp eq i32 %i.bqp, 1
  br i1 %i.bqy, label %.lr.ph.i373.i.epil.preheader, label %.lr.ph.i373.preheader.i.new

.lr.ph.i373.preheader.i.new:                      ; preds = %.lr.ph.i373.preheader.i
  %unroll_iter4189 = and i64 %i.bqx, 30
  br label %.lr.ph.i373.i

bb.lo:                                            ; preds = %bb.ln
  store i32 %i.bqs, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit381.i

.lr.ph.i373.i:                                    ; preds = %bb.lp, %.lr.ph.i373.preheader.i.new
  %indvars.iv647.i = phi i64 [ %i.bqw, %.lr.ph.i373.preheader.i.new ], [ %indvars.iv.next648.i.1, %bb.lp ] ; 3 uses
  %.03346.i375.i = phi i32 [ 0, %.lr.ph.i373.preheader.i.new ], [ %i.brs, %bb.lp ] ; 3 uses
  %.03545.i376.i = phi i64 [ 0, %.lr.ph.i373.preheader.i.new ], [ %i.brr, %bb.lp ]
  %niter4190 = phi i64 [ 0, %.lr.ph.i373.preheader.i.new ], [ %niter4190.next.1, %bb.lp ]
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv647.i
  %i.bra = load i8, ptr %i.bqz, align 1, !tbaa !123 ; 2 uses
  %i.brb = zext i8 %i.bra to i64                  ; 2 uses
  %i.brc = and i64 %i.brb, 240
  %.not.i377.i = icmp eq i64 %i.brc, 96
  br i1 %.not.i377.i, label %.lr.ph.i373.i.1, label %.thread.i378.i, !prof !134

.thread.i378.i:                                   ; preds = %.lr.ph.i373.i, %.lr.ph.i373.i.1, %.lr.ph.i373.i.epil.preheader
  %.lcssa3200 = phi i8 [ %i.bru, %.lr.ph.i373.i.epil.preheader ], [ %i.bra, %.lr.ph.i373.i ], [ %i.brg, %.lr.ph.i373.i.1 ]
  %i.brd = sext i8 %.lcssa3200 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.brd) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit381.i

.lr.ph.i373.i.1:                                  ; preds = %.lr.ph.i373.i
  %i.bre = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv647.i
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 1
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !123 ; 2 uses
  %i.brh = zext i8 %i.brg to i64                  ; 2 uses
  %i.bri = and i64 %i.brh, 240
  %.not.i377.i.1 = icmp eq i64 %i.bri, 96
  br i1 %.not.i377.i.1, label %bb.lp, label %.thread.i378.i, !prof !134

bb.lp:                                            ; preds = %.lr.ph.i373.i.1
  %i.brj = or disjoint i32 %.03346.i375.i, 4
  %i.brk = and i64 %i.brb, 15
  %i.brl = zext nneg i32 %.03346.i375.i to i64
  %i.brm = shl i64 %i.brk, %i.brl
  %i.brn = or i64 %i.brm, %.03545.i376.i
  %i.bro = and i64 %i.brh, 15
  %i.brp = zext nneg i32 %i.brj to i64
  %i.brq = shl i64 %i.bro, %i.brp
  %i.brr = or i64 %i.brq, %i.brn                  ; 3 uses
  %i.brs = add nuw nsw i32 %.03346.i375.i, 8      ; 2 uses
  %indvars.iv.next648.i.1 = add nuw nsw i64 %indvars.iv647.i, 2 ; 2 uses
  %niter4190.next.1 = add i64 %niter4190, 2       ; 2 uses
  %niter4190.ncmp.1 = icmp eq i64 %niter4190.next.1, %unroll_iter4189
  br i1 %niter4190.ncmp.1, label %._crit_edge.i370.loopexit.i.unr-lcssa, label %.lr.ph.i373.i

._crit_edge.i370.loopexit.i.unr-lcssa:            ; preds = %bb.lp
  %lcmp.mod4186.not = icmp eq i64 %xtraiter4185, 0
  br i1 %lcmp.mod4186.not, label %._crit_edge.i370.loopexit.i, label %.lr.ph.i373.i.epil.preheader

.lr.ph.i373.i.epil.preheader:                     ; preds = %._crit_edge.i370.loopexit.i.unr-lcssa, %.lr.ph.i373.preheader.i
  %indvars.iv647.i.epil.init = phi i64 [ %i.bqw, %.lr.ph.i373.preheader.i ], [ %indvars.iv.next648.i.1, %._crit_edge.i370.loopexit.i.unr-lcssa ]
  %.03346.i375.i.epil.init = phi i32 [ 0, %.lr.ph.i373.preheader.i ], [ %i.brs, %._crit_edge.i370.loopexit.i.unr-lcssa ]
  %.03545.i376.i.epil.init = phi i64 [ 0, %.lr.ph.i373.preheader.i ], [ %i.brr, %._crit_edge.i370.loopexit.i.unr-lcssa ]
  %lcmp.mod4188 = trunc i8 %.fr4289 to i1
  call void @llvm.assume(i1 %lcmp.mod4188)
  %i.brt = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv647.i.epil.init
  %i.bru = load i8, ptr %i.brt, align 1, !tbaa !123 ; 2 uses
  %i.brv = zext i8 %i.bru to i64                  ; 2 uses
  %i.brw = and i64 %i.brv, 240
  %.not.i377.i.epil = icmp eq i64 %i.brw, 96
  br i1 %.not.i377.i.epil, label %._crit_edge.i370.loopexit.i.epilog-lcssa, label %.thread.i378.i, !prof !134

._crit_edge.i370.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i373.i.epil.preheader
  %i.brx = and i64 %i.brv, 15
  %i.bry = zext nneg i32 %.03346.i375.i.epil.init to i64
  %i.brz = shl i64 %i.brx, %i.bry
  %i.bsa = or i64 %i.brz, %.03545.i376.i.epil.init
  br label %._crit_edge.i370.loopexit.i

._crit_edge.i370.loopexit.i:                      ; preds = %._crit_edge.i370.loopexit.i.unr-lcssa, %._crit_edge.i370.loopexit.i.epilog-lcssa
  %.lcssa3202 = phi i64 [ %i.brr, %._crit_edge.i370.loopexit.i.unr-lcssa ], [ %i.bsa, %._crit_edge.i370.loopexit.i.epilog-lcssa ]
  %i.bsb = trunc i64 %.lcssa3202 to i16
  br label %._crit_edge.i370.i

._crit_edge.i370.i:                               ; preds = %._crit_edge.i370.loopexit.i, %.preheader.i369.i
  %.035.lcssa.i371.i = phi i16 [ 0, %.preheader.i369.i ], [ %i.bsb, %._crit_edge.i370.loopexit.i ]
  store i32 %i.bqs, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit381.i

readNumber.exit381.i:                             ; preds = %._crit_edge.i370.i, %.thread.i378.i, %bb.lo, %bb.lm, %bb.lk
  %.2.i372.i = phi i16 [ 0, %bb.lk ], [ 0, %bb.lm ], [ 0, %bb.lo ], [ 0, %.thread.i378.i ], [ %.035.lcssa.i371.i, %._crit_edge.i370.i ]
  %i.bsc = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext.i = zext i32 %i.bsc to i64
  %i.bsd = inttoptr i64 %.sroa.3841.0.insert.ext.i to ptr
  br label %get_optype.exit464.i

bb.lq:                                            ; preds = %bb.kz
  %i.bse = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext85.i = zext i32 %i.bse to i64
  %i.bsf = load i32, ptr %i.b, align 4, !tbaa !117 ; 5 uses
  %i.bsg = zext i32 %i.bsf to i64
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bsg
  %i.bsi = load i8, ptr %i.bsh, align 1, !tbaa !123 ; 2 uses
  %i.bsj = zext i8 %i.bsi to i32                  ; 2 uses
  %i.bsk = add nsw i32 %i.bsj, -96                ; 2 uses
  %i.bsl = icmp ugt i32 %i.bsk, 16
  br i1 %i.bsl, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bsj) #24
  br label %.thread.i384.i

bb.ls:                                            ; preds = %bb.lq
  %i.bsm = add i32 %i.bsf, 1                      ; 3 uses
  %i.bsn = add i32 %i.bsk, %i.bsm                 ; 11 uses
  %i.bso = icmp ugt i32 %i.bsn, %i.bkc
  br i1 %i.bso, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.thread.i384.i

bb.lu:                                            ; preds = %bb.ls
  %i.bsp = icmp eq i8 %i.bsi, 96
  br i1 %i.bsp, label %bb.lv, label %.preheader.i.i382.i

.preheader.i.i382.i:                              ; preds = %bb.lu
  %i.bsq = icmp ult i32 %i.bsm, %i.bsn
  br i1 %i.bsq, label %.lr.ph.i.preheader.i385.i, label %readNumber.exit.thread17.i383.i

.lr.ph.i.preheader.i385.i:                        ; preds = %.preheader.i.i382.i
  %i.bsr = zext i32 %i.bsm to i64                 ; 3 uses
  %i.bss = zext i32 %i.bsn to i64                 ; 2 uses
  %i.bst = sub nsw i64 %i.bss, %i.bsr
  %i.bsu = freeze i64 %i.bst                      ; 4 uses
  %xtraiter4173 = and i64 %i.bsu, 1
  %i.bsv = icmp eq i64 %i.bsu, 1
  br i1 %i.bsv, label %.lr.ph.i.i386.i.epil.preheader, label %.lr.ph.i.preheader.i385.i.new

.lr.ph.i.preheader.i385.i.new:                    ; preds = %.lr.ph.i.preheader.i385.i
  %unroll_iter4177 = and i64 %i.bsu, -2
  br label %.lr.ph.i.i386.i

readNumber.exit.thread17.i383.i:                  ; preds = %.preheader.i.i382.i
  store i32 %i.bsn, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i384.i

bb.lv:                                            ; preds = %bb.lu
  store i32 %i.bsn, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i384.i

.lr.ph.i.i386.i:                                  ; preds = %bb.lw, %.lr.ph.i.preheader.i385.i.new
  %indvars.iv.i387.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i385.i.new ], [ %indvars.iv.next.1, %bb.lw ] ; 3 uses
  %indvars.iv.i387.i = phi i64 [ %i.bsr, %.lr.ph.i.preheader.i385.i.new ], [ %indvars.iv.next.i392.i.1, %bb.lw ] ; 3 uses
  %.03545.i.i389.i = phi i64 [ 0, %.lr.ph.i.preheader.i385.i.new ], [ %i.btl, %bb.lw ]
  %niter4178 = phi i64 [ 0, %.lr.ph.i.preheader.i385.i.new ], [ %niter4178.next.1, %bb.lw ]
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i387.i
  %i.bsx = load i8, ptr %i.bsw, align 1, !tbaa !123 ; 2 uses
  %i.bsy = zext i8 %i.bsx to i64                  ; 2 uses
  %i.bsz = and i64 %i.bsy, 240
  %.not.i.i390.i = icmp eq i64 %i.bsz, 96
  br i1 %.not.i.i390.i, label %.lr.ph.i.i386.i.1, label %.thread.i.i391.i, !prof !134

.thread.i.i391.i:                                 ; preds = %.lr.ph.i.i386.i, %.lr.ph.i.i386.i.1, %.lr.ph.i.i386.i.epil.preheader
  %.lcssa3194 = phi i8 [ %i.btn, %.lr.ph.i.i386.i.epil.preheader ], [ %i.bsx, %.lr.ph.i.i386.i ], [ %i.btd, %.lr.ph.i.i386.i.1 ]
  %i.bta = sext i8 %.lcssa3194 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bta) #24
  br label %.thread.i384.i

.lr.ph.i.i386.i.1:                                ; preds = %.lr.ph.i.i386.i
  %i.btb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i387.i
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 1
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !123 ; 2 uses
  %i.bte = zext i8 %i.btd to i64                  ; 2 uses
  %i.btf = and i64 %i.bte, 240
  %.not.i.i390.i.1 = icmp eq i64 %i.btf, 96
  br i1 %.not.i.i390.i.1, label %bb.lw, label %.thread.i.i391.i, !prof !134

bb.lw:                                            ; preds = %.lr.ph.i.i386.i.1
  %indvars.iv.next = or disjoint i64 %indvars.iv.i387.i.a, 4
  %i.btg = and i64 %i.bsy, 15
  %i.bth = shl i64 %i.btg, %indvars.iv.i387.i.a
  %i.bti = or i64 %i.bth, %.03545.i.i389.i
  %i.btj = and i64 %i.bte, 15
  %i.btk = shl i64 %i.btj, %indvars.iv.next
  %i.btl = or i64 %i.btk, %i.bti                  ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.i387.i.a, 8 ; 2 uses
  %indvars.iv.next.i392.i.1 = add nuw nsw i64 %indvars.iv.i387.i, 2 ; 2 uses
  %niter4178.next.1 = add i64 %niter4178, 2       ; 2 uses
  %niter4178.ncmp.1 = icmp eq i64 %niter4178.next.1, %unroll_iter4177
  br i1 %niter4178.ncmp.1, label %readNumber.exit.i394.i.unr-lcssa, label %.lr.ph.i.i386.i

readNumber.exit.i394.i.unr-lcssa:                 ; preds = %bb.lw
  %lcmp.mod4174.not = icmp eq i64 %xtraiter4173, 0
  br i1 %lcmp.mod4174.not, label %readNumber.exit.i394.i, label %.lr.ph.i.i386.i.epil.preheader

.lr.ph.i.i386.i.epil.preheader:                   ; preds = %readNumber.exit.i394.i.unr-lcssa, %.lr.ph.i.preheader.i385.i
  %indvars.iv.i387.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i385.i ], [ %indvars.iv.next.1, %readNumber.exit.i394.i.unr-lcssa ]
  %indvars.iv.i387.i.epil.init = phi i64 [ %i.bsr, %.lr.ph.i.preheader.i385.i ], [ %indvars.iv.next.i392.i.1, %readNumber.exit.i394.i.unr-lcssa ]
  %.03545.i.i389.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i385.i ], [ %i.btl, %readNumber.exit.i394.i.unr-lcssa ]
  %lcmp.mod4176 = trunc i64 %i.bsu to i1
  call void @llvm.assume(i1 %lcmp.mod4176)
  %i.btm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i387.i.epil.init
  %i.btn = load i8, ptr %i.btm, align 1, !tbaa !123 ; 2 uses
  %i.bto = zext i8 %i.btn to i64                  ; 2 uses
  %i.btp = and i64 %i.bto, 240
  %.not.i.i390.i.epil = icmp eq i64 %i.btp, 96
  br i1 %.not.i.i390.i.epil, label %readNumber.exit.i394.i.epilog-lcssa, label %.thread.i.i391.i, !prof !134

readNumber.exit.i394.i.epilog-lcssa:              ; preds = %.lr.ph.i.i386.i.epil.preheader
  %i.btq = and i64 %i.bto, 15
  %i.btr = shl i64 %i.btq, %indvars.iv.i387.i.epil.init.a
  %i.bts = or i64 %i.btr, %.03545.i.i389.i.epil.init
  br label %readNumber.exit.i394.i

readNumber.exit.i394.i:                           ; preds = %readNumber.exit.i394.i.unr-lcssa, %readNumber.exit.i394.i.epilog-lcssa
  %.lcssa3196 = phi i64 [ %i.btl, %readNumber.exit.i394.i.unr-lcssa ], [ %i.bts, %readNumber.exit.i394.i.epilog-lcssa ] ; 2 uses
  store i32 %i.bsn, ptr %i.b, align 4, !tbaa !117
  %i.btt = trunc i64 %.lcssa3196 to i32           ; 3 uses
  %.not.i395.i = icmp eq i32 %i.btt, 0
  br i1 %.not.i395.i, label %.thread.i384.i, label %bb.lx

bb.lx:                                            ; preds = %readNumber.exit.i394.i
  %i.btu = load i16, ptr %i.ue, align 4, !tbaa !151
  %i.btv = zext i16 %i.btu to i32
  %.not12.i396.i = icmp ult i32 %i.btt, %i.btv
  br i1 %.not12.i396.i, label %bb.ly, label %.thread.i384.i

.thread.i384.i:                                   ; preds = %bb.lx, %readNumber.exit.i394.i, %.thread.i.i391.i, %bb.lv, %readNumber.exit.thread17.i383.i, %bb.lt, %bb.lr
  %i.btw = phi i32 [ %i.bsn, %readNumber.exit.thread17.i383.i ], [ %i.bsn, %bb.lx ], [ %i.bsn, %readNumber.exit.i394.i ], [ %i.bsf, %bb.lr ], [ %i.bsf, %bb.lt ], [ %i.bsn, %bb.lv ], [ %i.bsf, %.thread.i.i391.i ] ; 2 uses
  %i.btx = phi i32 [ 0, %readNumber.exit.thread17.i383.i ], [ %i.btt, %bb.lx ], [ 0, %readNumber.exit.i394.i ], [ 0, %bb.lr ], [ 0, %bb.lt ], [ 0, %bb.lv ], [ 0, %.thread.i.i391.i ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.347, i32 noundef %i.btx) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  %.pre663.i = zext i32 %i.btw to i64
  br label %readBBID.exit400.i

bb.ly:                                            ; preds = %bb.lx
  %.pre.i397.i = load i8, ptr %i.a, align 1, !tbaa !132, !range !136
  %.pre.fr.i398.i = freeze i8 %.pre.i397.i
  %i.bty = trunc i8 %.pre.fr.i398.i to i1         ; 2 uses
  %i.btz = shl i64 %.lcssa3196, 32
  %i.bua = and i64 %i.btz, 281470681743360
  %i.bub = select i1 %i.bty, i64 %i.bua, i64 281470681743360
  br label %readBBID.exit400.i

readBBID.exit400.i:                               ; preds = %bb.ly, %.thread.i384.i
  %.pre-phi.i = phi i64 [ %.pre663.i, %.thread.i384.i ], [ %i.bss, %bb.ly ]
  %.pre.i416.i = phi i1 [ false, %.thread.i384.i ], [ %i.bty, %bb.ly ]
  %i.buc = phi i32 [ %i.btw, %.thread.i384.i ], [ %i.bsn, %bb.ly ]
  %.sroa.3841.4.insert.ext137.i = phi i64 [ 281470681743360, %.thread.i384.i ], [ %i.bub, %bb.ly ]
  %.sroa.3841.4.insert.insert140.i = or disjoint i64 %.sroa.3841.4.insert.ext137.i, %.sroa.3841.0.insert.ext85.i
  %i.bud = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.pre-phi.i
  %i.bue = load i8, ptr %i.bud, align 1, !tbaa !123
  %.fr4286 = freeze i8 %i.bue                     ; 3 uses
  %i.buf = zext i8 %.fr4286 to i32                ; 2 uses
  %i.bug = add nsw i32 %i.buf, -96                ; 4 uses
  %i.buh = icmp ugt i32 %i.bug, 16
  br i1 %i.buh, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %readBBID.exit400.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.buf) #24
  br label %.thread.i403.i

bb.ma:                                            ; preds = %readBBID.exit400.i
  %i.bui = add i32 %i.buc, 1                      ; 3 uses
  %i.buj = add i32 %i.bug, %i.bui                 ; 5 uses
  %i.buk = icmp ugt i32 %i.buj, %i.bkc
  br i1 %i.buk, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.thread.i403.i

bb.mc:                                            ; preds = %bb.ma
  %i.bul = icmp eq i8 %.fr4286, 96
  br i1 %i.bul, label %bb.md, label %.preheader.i.i401.i

.preheader.i.i401.i:                              ; preds = %bb.mc
  %i.bum = icmp ult i32 %i.bui, %i.buj
  br i1 %i.bum, label %.lr.ph.i.preheader.i404.i, label %readNumber.exit.thread17.i402.i

.lr.ph.i.preheader.i404.i:                        ; preds = %.preheader.i.i401.i
  %i.bun = zext i32 %i.bui to i64                 ; 2 uses
  %i.buo = zext nneg i32 %i.bug to i64            ; 2 uses
  %xtraiter4179 = and i64 %i.buo, 1
  %i.bup = icmp eq i32 %i.bug, 1
  br i1 %i.bup, label %.lr.ph.i.i405.i.epil.preheader, label %.lr.ph.i.preheader.i404.i.new

.lr.ph.i.preheader.i404.i.new:                    ; preds = %.lr.ph.i.preheader.i404.i
  %unroll_iter4183 = and i64 %i.buo, 30
  br label %.lr.ph.i.i405.i

readNumber.exit.thread17.i402.i:                  ; preds = %.preheader.i.i401.i
  store i32 %i.buj, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i403.i

bb.md:                                            ; preds = %bb.mc
  store i32 %i.buj, ptr %i.b, align 4, !tbaa !117
  br label %.thread.i403.i

.lr.ph.i.i405.i:                                  ; preds = %bb.me, %.lr.ph.i.preheader.i404.i.new
  %indvars.iv.i406.i.a = phi i64 [ 0, %.lr.ph.i.preheader.i404.i.new ], [ %indvars.iv.next1893.1, %bb.me ] ; 3 uses
  %indvars.iv.i406.i = phi i64 [ %i.bun, %.lr.ph.i.preheader.i404.i.new ], [ %indvars.iv.next.i411.i.1, %bb.me ] ; 3 uses
  %.03545.i.i408.i = phi i64 [ 0, %.lr.ph.i.preheader.i404.i.new ], [ %i.bvf, %bb.me ]
  %niter4184 = phi i64 [ 0, %.lr.ph.i.preheader.i404.i.new ], [ %niter4184.next.1, %bb.me ]
  %i.buq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i406.i
  %i.bur = load i8, ptr %i.buq, align 1, !tbaa !123 ; 2 uses
  %i.bus = zext i8 %i.bur to i64                  ; 2 uses
  %i.but = and i64 %i.bus, 240
  %.not.i.i409.i = icmp eq i64 %i.but, 96
  br i1 %.not.i.i409.i, label %.lr.ph.i.i405.i.1, label %.thread.i.i410.i, !prof !134

.thread.i.i410.i:                                 ; preds = %.lr.ph.i.i405.i, %.lr.ph.i.i405.i.1, %.lr.ph.i.i405.i.epil.preheader
  %.lcssa3197 = phi i8 [ %i.bvh, %.lr.ph.i.i405.i.epil.preheader ], [ %i.bur, %.lr.ph.i.i405.i ], [ %i.bux, %.lr.ph.i.i405.i.1 ]
  %i.buu = sext i8 %.lcssa3197 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.buu) #24
  br label %.thread.i403.i

.lr.ph.i.i405.i.1:                                ; preds = %.lr.ph.i.i405.i
  %i.buv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i406.i
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 1
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !123 ; 2 uses
  %i.buy = zext i8 %i.bux to i64                  ; 2 uses
  %i.buz = and i64 %i.buy, 240
  %.not.i.i409.i.1 = icmp eq i64 %i.buz, 96
  br i1 %.not.i.i409.i.1, label %bb.me, label %.thread.i.i410.i, !prof !134

bb.me:                                            ; preds = %.lr.ph.i.i405.i.1
  %indvars.iv.next1893 = or disjoint i64 %indvars.iv.i406.i.a, 4
  %i.bva = and i64 %i.bus, 15
  %i.bvb = shl i64 %i.bva, %indvars.iv.i406.i.a
  %i.bvc = or i64 %i.bvb, %.03545.i.i408.i
  %i.bvd = and i64 %i.buy, 15
  %i.bve = shl i64 %i.bvd, %indvars.iv.next1893
  %i.bvf = or i64 %i.bve, %i.bvc                  ; 3 uses
  %indvars.iv.next1893.1 = add nuw nsw i64 %indvars.iv.i406.i.a, 8 ; 2 uses
  %indvars.iv.next.i411.i.1 = add nuw nsw i64 %indvars.iv.i406.i, 2 ; 2 uses
  %niter4184.next.1 = add i64 %niter4184, 2       ; 2 uses
  %niter4184.ncmp.1 = icmp eq i64 %niter4184.next.1, %unroll_iter4183
  br i1 %niter4184.ncmp.1, label %readNumber.exit.i413.i.unr-lcssa, label %.lr.ph.i.i405.i

readNumber.exit.i413.i.unr-lcssa:                 ; preds = %bb.me
  %lcmp.mod4180.not = icmp eq i64 %xtraiter4179, 0
  br i1 %lcmp.mod4180.not, label %readNumber.exit.i413.i, label %.lr.ph.i.i405.i.epil.preheader

.lr.ph.i.i405.i.epil.preheader:                   ; preds = %readNumber.exit.i413.i.unr-lcssa, %.lr.ph.i.preheader.i404.i
  %indvars.iv.i406.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.preheader.i404.i ], [ %indvars.iv.next1893.1, %readNumber.exit.i413.i.unr-lcssa ]
  %indvars.iv.i406.i.epil.init = phi i64 [ %i.bun, %.lr.ph.i.preheader.i404.i ], [ %indvars.iv.next.i411.i.1, %readNumber.exit.i413.i.unr-lcssa ]
  %.03545.i.i408.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i404.i ], [ %i.bvf, %readNumber.exit.i413.i.unr-lcssa ]
  %lcmp.mod4182 = trunc i8 %.fr4286 to i1
  call void @llvm.assume(i1 %lcmp.mod4182)
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i406.i.epil.init
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !123 ; 2 uses
  %i.bvi = zext i8 %i.bvh to i64                  ; 2 uses
  %i.bvj = and i64 %i.bvi, 240
  %.not.i.i409.i.epil = icmp eq i64 %i.bvj, 96
  br i1 %.not.i.i409.i.epil, label %readNumber.exit.i413.i.epilog-lcssa, label %.thread.i.i410.i, !prof !134

readNumber.exit.i413.i.epilog-lcssa:              ; preds = %.lr.ph.i.i405.i.epil.preheader
  %i.bvk = and i64 %i.bvi, 15
  %i.bvl = shl i64 %i.bvk, %indvars.iv.i406.i.epil.init.a
  %i.bvm = or i64 %i.bvl, %.03545.i.i408.i.epil.init
  br label %readNumber.exit.i413.i

readNumber.exit.i413.i:                           ; preds = %readNumber.exit.i413.i.unr-lcssa, %readNumber.exit.i413.i.epilog-lcssa
  %.lcssa3199 = phi i64 [ %i.bvf, %readNumber.exit.i413.i.unr-lcssa ], [ %i.bvm, %readNumber.exit.i413.i.epilog-lcssa ] ; 2 uses
  store i32 %i.buj, ptr %i.b, align 4, !tbaa !117
  %i.bvn = trunc i64 %.lcssa3199 to i32           ; 3 uses
  %.not.i414.i = icmp eq i32 %i.bvn, 0
  br i1 %.not.i414.i, label %.thread.i403.i, label %bb.mf

bb.mf:                                            ; preds = %readNumber.exit.i413.i
  %i.bvo = load i16, ptr %i.ue, align 4, !tbaa !151
  %i.bvp = zext i16 %i.bvo to i32
  %.not12.i415.i = icmp ult i32 %i.bvn, %i.bvp
  br i1 %.not12.i415.i, label %bb.mg, label %.thread.i403.i

.thread.i403.i:                                   ; preds = %bb.mf, %readNumber.exit.i413.i, %.thread.i.i410.i, %bb.md, %readNumber.exit.thread17.i402.i, %bb.mb, %bb.lz
  %i.bvq = phi i32 [ 0, %readNumber.exit.thread17.i402.i ], [ %i.bvn, %bb.mf ], [ 0, %readNumber.exit.i413.i ], [ 0, %bb.lz ], [ 0, %bb.mb ], [ 0, %bb.md ], [ 0, %.thread.i.i410.i ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.347, i32 noundef %i.bvq) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readBBID.exit419.i

bb.mg:                                            ; preds = %bb.mf
  %i.bvr = shl i64 %.lcssa3199, 48
  %i.bvs = select i1 %.pre.i416.i, i64 %i.bvr, i64 -281474976710656
  br label %readBBID.exit419.i

readBBID.exit419.i:                               ; preds = %bb.mg, %.thread.i403.i
  %.sroa.3841.6.insert.ext.i = phi i64 [ -281474976710656, %.thread.i403.i ], [ %i.bvs, %bb.mg ]
  %.sroa.3841.6.insert.insert.i = or disjoint i64 %.sroa.3841.4.insert.insert140.i, %.sroa.3841.6.insert.ext.i
  %i.bvt = inttoptr i64 %.sroa.3841.6.insert.insert.i to ptr
  br label %get_optype.exit464.i

bb.mh:                                            ; preds = %bb.kz, %bb.kz
  %i.bvu = add i32 %i.boc, 3                      ; 3 uses
  %i.bvv = icmp ugt i32 %i.bvu, %i.bkc
  br i1 %i.bvv, label %bb.mi, label %.preheader.i420.i

.preheader.i420.i:                                ; preds = %bb.mh
  %.not515.i = icmp eq i32 %i.bod, -1
  br i1 %.not515.i, label %.thread731.i, label %.lr.ph.preheader.i424.i

.thread731.i:                                     ; preds = %.preheader.i420.i
  store i32 %i.bvu, ptr %i.b, align 4, !tbaa !117
  br label %bb.mn

.lr.ph.preheader.i424.i:                          ; preds = %.preheader.i420.i
  %i.bvw = zext i32 %i.bod to i64
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bvw
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !123
  %i.bvz = zext i8 %i.bvy to i32                  ; 3 uses
  %i.bwa = and i32 %i.bvz, 240
  %.not.i429.i = icmp eq i32 %i.bwa, 96
  br i1 %.not.i429.i, label %bb.mk, label %bb.mj, !prof !134

bb.mi:                                            ; preds = %bb.mh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %get_optype.exit464.i

bb.mj:                                            ; preds = %.lr.ph.preheader.i424.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bvz) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %get_optype.exit464.i

bb.mk:                                            ; preds = %.lr.ph.preheader.i424.i
  %i.bwb = and i32 %i.bvz, 15                     ; 4 uses
  store i32 %i.bvu, ptr %i.b, align 4, !tbaa !117
  %.not342.i = icmp eq i32 %i.bwb, 0
  br i1 %.not342.i, label %bb.mn, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bwc = trunc nuw nsw i32 %i.bwb to i8
  %i.bwd = zext nneg i32 %i.bwb to i64
  %i.bwe = call noalias ptr @calloc(i64 noundef %i.bwd, i64 noundef 4) #23 ; 2 uses
  %.not343.i = icmp eq ptr %i.bwe, null
  br i1 %.not343.i, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.336) #24
  br label %.loopexit360

bb.mn:                                            ; preds = %bb.ml, %bb.mk, %.thread731.i
  %.not342735.i = phi i1 [ false, %bb.ml ], [ true, %bb.mk ], [ true, %.thread731.i ]
  %i.bwf = phi i8 [ %i.bwc, %bb.ml ], [ 0, %bb.mk ], [ 0, %.thread731.i ] ; 2 uses
  %.025.lcssa.i422734.i = phi i32 [ %i.bwb, %bb.ml ], [ 0, %bb.mk ], [ 0, %.thread731.i ]
  %.sroa.3841.0.i = phi ptr [ %i.bwe, %bb.ml ], [ null, %bb.mk ], [ null, %.thread731.i ] ; 3 uses
  %i.bwg = icmp eq i32 %i.bos, 32
  br i1 %i.bwg, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bwh = call fastcc zeroext i16 @readFuncID(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  br label %bb.mq

bb.mp:                                            ; preds = %bb.mn
  %i.bwi = call fastcc zeroext i16 @readAPIFuncID(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %.sroa.84.0.i = phi i16 [ %i.bwh, %bb.mo ], [ %i.bwi, %bb.mp ] ; 2 uses
  br i1 %.not342735.i, label %get_optype.exit464.i, label %.lr.ph564.preheader.i

.lr.ph564.preheader.i:                            ; preds = %bb.mq
  %wide.trip.count645.i = zext nneg i32 %.025.lcssa.i422734.i to i64
  br label %.lr.ph564.i

.lr.ph564.i:                                      ; preds = %.lr.ph564.i, %.lr.ph564.preheader.i
  %indvars.iv642.i = phi i64 [ 0, %.lr.ph564.preheader.i ], [ %indvars.iv.next643.i, %.lr.ph564.i ] ; 2 uses
  %i.bwj = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %i.bwk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3841.0.i, i64 %indvars.iv642.i
  store i32 %i.bwj, ptr %i.bwk, align 4, !tbaa !117
  %indvars.iv.next643.i = add nuw nsw i64 %indvars.iv642.i, 1 ; 2 uses
  %exitcond646.not.i = icmp eq i64 %indvars.iv.next643.i, %wide.trip.count645.i
  br i1 %exitcond646.not.i, label %get_optype.exit464.i, label %.lr.ph564.i

bb.mr:                                            ; preds = %bb.kz, %bb.kz, %bb.kz
  %i.bwl = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.73.0.insert.ext.i = zext i32 %i.bwl to i64 ; 7 uses
  %i.bwm = load ptr, ptr %i.bkn, align 8, !tbaa !112
  %i.bwn = getelementptr inbounds nuw [2 x i8], ptr %i.bwm, i64 %.sroa.73.0.insert.ext.i
  %i.bwo = load i16, ptr %i.bwn, align 2, !tbaa !113 ; 7 uses
  %i.bwp = zext i16 %i.bwo to i64                 ; 2 uses
  %i.bwq = inttoptr i64 %i.bwp to ptr
  %i.bwr = icmp eq i16 %i.bwo, 1
  br i1 %i.bwr, label %bb.mz, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bws = icmp ult i16 %i.bwo, 9
  br i1 %i.bws, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %.sroa.73.4.insert.insert74.i = or disjoint i64 %.sroa.73.0.insert.ext.i, 4294967296
  br label %bb.mz

bb.mu:                                            ; preds = %bb.ms
  %i.bwt = icmp ult i16 %i.bwo, 17
  br i1 %i.bwt, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %.sroa.73.4.insert.insert77.i = or disjoint i64 %.sroa.73.0.insert.ext.i, 8589934592
  br label %bb.mz

bb.mw:                                            ; preds = %bb.mu
  %i.bwu = icmp ult i16 %i.bwo, 33
  br i1 %i.bwu, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %.sroa.73.4.insert.insert80.i = or disjoint i64 %.sroa.73.0.insert.ext.i, 12884901888
  br label %bb.mz

bb.my:                                            ; preds = %bb.mw
  %i.bwv = icmp ult i16 %i.bwo, 65
  %.sroa.73.4.insert.insert83.i = or disjoint i64 %.sroa.73.0.insert.ext.i, 17179869184
  %spec.select.i = select i1 %i.bwv, i64 %.sroa.73.4.insert.insert83.i, i64 %.sroa.73.0.insert.ext.i
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx, %bb.mv, %bb.mt, %bb.mr
  %.sroa.73.0.in.i = phi i64 [ %spec.select.i, %bb.my ], [ %.sroa.73.4.insert.insert74.i, %bb.mt ], [ %.sroa.73.4.insert.insert77.i, %bb.mv ], [ %.sroa.73.4.insert.insert80.i, %bb.mx ], [ %.sroa.73.0.insert.ext.i, %bb.mr ]
  %.sroa.73.0.i = inttoptr i64 %.sroa.73.0.in.i to ptr ; 2 uses
  %.not340.i = icmp eq i32 %i.bos, 15
  br i1 %.not340.i, label %get_optype.exit464.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %.not341.i = icmp eq i16 %i.bwo, 64
  %notmask.i = shl nsw i64 -1, %i.bwp
  %i.bww = xor i64 %notmask.i, -1
  %i.bwx = inttoptr i64 %i.bww to ptr
  %i.bwy = select i1 %.not341.i, ptr inttoptr (i64 -1 to ptr), ptr %i.bwx
  br label %get_optype.exit464.i

bb.nb:                                            ; preds = %bb.kz, %bb.kz
  %i.bwz = zext i32 %i.bod to i64
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bwz
  %i.bxb = load i8, ptr %i.bxa, align 1, !tbaa !123
  %.fr4283 = freeze i8 %i.bxb                     ; 3 uses
  %i.bxc = zext i8 %.fr4283 to i32                ; 2 uses
  %i.bxd = add nsw i32 %i.bxc, -96                ; 4 uses
  %i.bxe = icmp ugt i32 %i.bxd, 16
  br i1 %i.bxe, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bxc) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit446.i

bb.nd:                                            ; preds = %bb.nb
  %i.bxf = add i32 %i.boc, 3                      ; 3 uses
  %i.bxg = add i32 %i.bxd, %i.bxf                 ; 4 uses
  %i.bxh = icmp ugt i32 %i.bxg, %i.bkc
  br i1 %i.bxh, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit446.i

bb.nf:                                            ; preds = %bb.nd
  %i.bxi = icmp eq i8 %.fr4283, 96
  br i1 %i.bxi, label %bb.ng, label %.preheader.i434.i

.preheader.i434.i:                                ; preds = %bb.nf
  %i.bxj = icmp ult i32 %i.bxf, %i.bxg
  br i1 %i.bxj, label %.lr.ph.i438.preheader.i, label %._crit_edge.i435.i

.lr.ph.i438.preheader.i:                          ; preds = %.preheader.i434.i
  %i.bxk = zext i32 %i.bxf to i64                 ; 2 uses
  %i.bxl = zext nneg i32 %i.bxd to i64            ; 2 uses
  %xtraiter4167 = and i64 %i.bxl, 1
  %i.bxm = icmp eq i32 %i.bxd, 1
  br i1 %i.bxm, label %.lr.ph.i438.i.epil.preheader, label %.lr.ph.i438.preheader.i.new

.lr.ph.i438.preheader.i.new:                      ; preds = %.lr.ph.i438.preheader.i
  %unroll_iter4171 = and i64 %i.bxl, 30
  br label %.lr.ph.i438.i

bb.ng:                                            ; preds = %bb.nf
  store i32 %i.bxg, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit446.i

.lr.ph.i438.i:                                    ; preds = %bb.nh, %.lr.ph.i438.preheader.i.new
  %indvars.iv639.i = phi i64 [ %i.bxk, %.lr.ph.i438.preheader.i.new ], [ %indvars.iv.next640.i.1, %bb.nh ] ; 3 uses
  %.03346.i440.i = phi i32 [ 0, %.lr.ph.i438.preheader.i.new ], [ %i.byg, %bb.nh ] ; 3 uses
  %.03545.i441.i = phi i64 [ 0, %.lr.ph.i438.preheader.i.new ], [ %i.byf, %bb.nh ]
  %niter4172 = phi i64 [ 0, %.lr.ph.i438.preheader.i.new ], [ %niter4172.next.1, %bb.nh ]
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv639.i
  %i.bxo = load i8, ptr %i.bxn, align 1, !tbaa !123 ; 2 uses
  %i.bxp = zext i8 %i.bxo to i64                  ; 2 uses
  %i.bxq = and i64 %i.bxp, 240
  %.not.i442.i = icmp eq i64 %i.bxq, 96
  br i1 %.not.i442.i, label %.lr.ph.i438.i.1, label %.thread.i443.i, !prof !134

.thread.i443.i:                                   ; preds = %.lr.ph.i438.i, %.lr.ph.i438.i.1, %.lr.ph.i438.i.epil.preheader
  %.lcssa3191 = phi i8 [ %i.byi, %.lr.ph.i438.i.epil.preheader ], [ %i.bxo, %.lr.ph.i438.i ], [ %i.bxu, %.lr.ph.i438.i.1 ]
  %i.bxr = sext i8 %.lcssa3191 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bxr) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit446.i

.lr.ph.i438.i.1:                                  ; preds = %.lr.ph.i438.i
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv639.i
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 1
  %i.bxu = load i8, ptr %i.bxt, align 1, !tbaa !123 ; 2 uses
  %i.bxv = zext i8 %i.bxu to i64                  ; 2 uses
  %i.bxw = and i64 %i.bxv, 240
  %.not.i442.i.1 = icmp eq i64 %i.bxw, 96
  br i1 %.not.i442.i.1, label %bb.nh, label %.thread.i443.i, !prof !134

bb.nh:                                            ; preds = %.lr.ph.i438.i.1
  %i.bxx = or disjoint i32 %.03346.i440.i, 4
  %i.bxy = and i64 %i.bxp, 15
  %i.bxz = zext nneg i32 %.03346.i440.i to i64
  %i.bya = shl i64 %i.bxy, %i.bxz
  %i.byb = or i64 %i.bya, %.03545.i441.i
  %i.byc = and i64 %i.bxv, 15
  %i.byd = zext nneg i32 %i.bxx to i64
  %i.bye = shl i64 %i.byc, %i.byd
  %i.byf = or i64 %i.bye, %i.byb                  ; 3 uses
  %i.byg = add nuw nsw i32 %.03346.i440.i, 8      ; 2 uses
  %indvars.iv.next640.i.1 = add nuw nsw i64 %indvars.iv639.i, 2 ; 2 uses
  %niter4172.next.1 = add i64 %niter4172, 2       ; 2 uses
  %niter4172.ncmp.1 = icmp eq i64 %niter4172.next.1, %unroll_iter4171
  br i1 %niter4172.ncmp.1, label %._crit_edge.i435.loopexit.i.unr-lcssa, label %.lr.ph.i438.i

._crit_edge.i435.loopexit.i.unr-lcssa:            ; preds = %bb.nh
  %lcmp.mod4168.not = icmp eq i64 %xtraiter4167, 0
  br i1 %lcmp.mod4168.not, label %._crit_edge.i435.loopexit.i, label %.lr.ph.i438.i.epil.preheader

.lr.ph.i438.i.epil.preheader:                     ; preds = %._crit_edge.i435.loopexit.i.unr-lcssa, %.lr.ph.i438.preheader.i
  %indvars.iv639.i.epil.init = phi i64 [ %i.bxk, %.lr.ph.i438.preheader.i ], [ %indvars.iv.next640.i.1, %._crit_edge.i435.loopexit.i.unr-lcssa ]
  %.03346.i440.i.epil.init = phi i32 [ 0, %.lr.ph.i438.preheader.i ], [ %i.byg, %._crit_edge.i435.loopexit.i.unr-lcssa ]
  %.03545.i441.i.epil.init = phi i64 [ 0, %.lr.ph.i438.preheader.i ], [ %i.byf, %._crit_edge.i435.loopexit.i.unr-lcssa ]
  %lcmp.mod4170 = trunc i8 %.fr4283 to i1
  call void @llvm.assume(i1 %lcmp.mod4170)
  %i.byh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv639.i.epil.init
  %i.byi = load i8, ptr %i.byh, align 1, !tbaa !123 ; 2 uses
  %i.byj = zext i8 %i.byi to i64                  ; 2 uses
  %i.byk = and i64 %i.byj, 240
  %.not.i442.i.epil = icmp eq i64 %i.byk, 96
  br i1 %.not.i442.i.epil, label %._crit_edge.i435.loopexit.i.epilog-lcssa, label %.thread.i443.i, !prof !134

._crit_edge.i435.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i438.i.epil.preheader
  %i.byl = and i64 %i.byj, 15
  %i.bym = zext nneg i32 %.03346.i440.i.epil.init to i64
  %i.byn = shl i64 %i.byl, %i.bym
  %i.byo = or i64 %i.byn, %.03545.i441.i.epil.init
  br label %._crit_edge.i435.loopexit.i

._crit_edge.i435.loopexit.i:                      ; preds = %._crit_edge.i435.loopexit.i.unr-lcssa, %._crit_edge.i435.loopexit.i.epilog-lcssa
  %.lcssa3193 = phi i64 [ %i.byf, %._crit_edge.i435.loopexit.i.unr-lcssa ], [ %i.byo, %._crit_edge.i435.loopexit.i.epilog-lcssa ]
  %i.byp = and i64 %.lcssa3193, 4294967295
  br label %._crit_edge.i435.i

._crit_edge.i435.i:                               ; preds = %._crit_edge.i435.loopexit.i, %.preheader.i434.i
  %.035.lcssa.i436.i = phi i64 [ 0, %.preheader.i434.i ], [ %i.byp, %._crit_edge.i435.loopexit.i ]
  store i32 %i.bxg, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit446.i

readNumber.exit446.i:                             ; preds = %._crit_edge.i435.i, %.thread.i443.i, %bb.ng, %bb.ne, %bb.nc
  %.2.i437.i = phi i64 [ 0, %bb.nc ], [ 0, %bb.ne ], [ 0, %bb.ng ], [ 0, %.thread.i443.i ], [ %.035.lcssa.i436.i, %._crit_edge.i435.i ]
  %i.byq = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.4.insert.ext.i = zext i32 %i.byq to i64
  %.sroa.3841.4.insert.shift.i = shl nuw i64 %.sroa.3841.4.insert.ext.i, 32
  %.sroa.3841.4.insert.insert.i = add nuw nsw i64 %.sroa.3841.4.insert.shift.i, %.2.i437.i
  %i.byr = inttoptr i64 %.sroa.3841.4.insert.insert.i to ptr
  %i.bys = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.73.0.insert.ext65.i = zext i32 %i.bys to i64
  %i.byt = inttoptr i64 %.sroa.73.0.insert.ext65.i to ptr
  br label %get_optype.exit464.i

bb.ni:                                            ; preds = %bb.kz
  %i.byu = add i32 %i.boc, 3                      ; 2 uses
  %i.byv = icmp ugt i32 %i.byu, %i.bkc
  br i1 %i.byv, label %bb.nj, label %.preheader.i447.i

.preheader.i447.i:                                ; preds = %bb.ni
  %.not514.i = icmp eq i32 %i.bod, -1
  br i1 %.not514.i, label %bb.nl, label %.lr.ph.preheader.i451.i

.lr.ph.preheader.i451.i:                          ; preds = %.preheader.i447.i
  %i.byw = zext i32 %i.bod to i64
  %i.byx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.byw
  %i.byy = load i8, ptr %i.byx, align 1, !tbaa !123
  %i.byz = zext i8 %i.byy to i32                  ; 3 uses
  %i.bza = and i32 %i.byz, 240
  %.not.i456.i = icmp eq i32 %i.bza, 96
  br i1 %.not.i456.i, label %._crit_edge.i448.loopexit.i, label %bb.nk, !prof !134

bb.nj:                                            ; preds = %bb.ni
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %get_optype.exit464.i

bb.nk:                                            ; preds = %.lr.ph.preheader.i451.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.byz) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %get_optype.exit464.i

._crit_edge.i448.loopexit.i:                      ; preds = %.lr.ph.preheader.i451.i
  %i.bzb = and i32 %i.byz, 15
  %i.bzc = add nuw nsw i32 %i.bzb, 2
  br label %bb.nl

bb.nl:                                            ; preds = %._crit_edge.i448.loopexit.i, %.preheader.i447.i
  %.025.lcssa.i449.i = phi i32 [ 2, %.preheader.i447.i ], [ %i.bzc, %._crit_edge.i448.loopexit.i ] ; 2 uses
  store i32 %i.byu, ptr %i.b, align 4, !tbaa !117
  %i.bzd = trunc nuw nsw i32 %.025.lcssa.i449.i to i8
  %i.bze = zext nneg i32 %.025.lcssa.i449.i to i64 ; 2 uses
  %i.bzf = call noalias ptr @calloc(i64 noundef %i.bze, i64 noundef 4) #23 ; 4 uses
  %.not339.i = icmp eq ptr %i.bzf, null
  br i1 %.not339.i, label %bb.nm, label %.lr.ph.preheader.i276

bb.nm:                                            ; preds = %bb.nl
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.336) #24
  br label %.loopexit360

.lr.ph.preheader.i276:                            ; preds = %bb.nl
  %i.bzg = call fastcc i64 @readNumber(ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %i.bzh = trunc i64 %i.bzg to i32
  store i32 %i.bzh, ptr %i.bzf, align 4, !tbaa !117
  br label %.lr.ph.i277

.lr.ph.i277:                                      ; preds = %.lr.ph.i277, %.lr.ph.preheader.i276
  %indvars.iv636.i = phi i64 [ 1, %.lr.ph.preheader.i276 ], [ %indvars.iv.next637.i, %.lr.ph.i277 ] ; 2 uses
  %i.bzi = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.bzf, i64 %indvars.iv636.i
  store i32 %i.bzi, ptr %i.bzj, align 4, !tbaa !117
  %indvars.iv.next637.i = add nuw nsw i64 %indvars.iv636.i, 1 ; 2 uses
  %exitcond.not.i278 = icmp eq i64 %indvars.iv.next637.i, %i.bze
  br i1 %exitcond.not.i278, label %get_optype.exit464.i, label %.lr.ph.i277

bb.nn:                                            ; preds = %bb.kz
  %i.bzk = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a) ; 2 uses
  %.sroa.3841.0.insert.ext93.i = zext i32 %i.bzk to i64 ; 2 uses
  %i.bzl = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.4.insert.ext117.i = zext i32 %i.bzl to i64
  %.sroa.3841.4.insert.shift118.i = shl nuw i64 %.sroa.3841.4.insert.ext117.i, 32
  %.sroa.3841.4.insert.insert120.i = or disjoint i64 %.sroa.3841.4.insert.shift118.i, %.sroa.3841.0.insert.ext93.i
  %i.bzm = inttoptr i64 %.sroa.3841.4.insert.insert120.i to ptr ; 2 uses
  %i.bzn = load i8, ptr %i.ud, align 8, !tbaa !108
  %i.bzo = zext i8 %i.bzn to i32
  %i.bzp = load i16, ptr %i.bkm, align 2, !tbaa !172
  %i.bzq = zext i16 %i.bzp to i32
  %i.bzr = add nuw nsw i32 %i.bzq, %i.bzo
  %.not.i461.i = icmp ult i32 %i.bzk, %i.bzr
  br i1 %.not.i461.i, label %get_optype.exit.i, label %get_optype.exit.thread.i

get_optype.exit.i:                                ; preds = %bb.nn
  %i.bzs = load ptr, ptr %i.bkn, align 8, !tbaa !112
  %i.bzt = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %.sroa.3841.0.insert.ext93.i
  %i.bzu = load i16, ptr %i.bzt, align 2, !tbaa !113
  %.fr513.i = freeze i16 %i.bzu
  %i.bzv = and i16 %.fr513.i, 32767               ; 2 uses
  %.not338.i = icmp eq i16 %i.bzv, 0
  br i1 %.not338.i, label %get_optype.exit.thread.i, label %get_optype.exit464.i

get_optype.exit.thread.i:                         ; preds = %get_optype.exit.i, %bb.nn
  br label %get_optype.exit464.i

bb.no:                                            ; preds = %bb.kz
  %i.bzw = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext97.i = zext i32 %i.bzw to i64
  %i.bzx = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a) ; 2 uses
  %.sroa.3841.4.insert.ext122.i = zext i32 %i.bzx to i64 ; 2 uses
  %.sroa.3841.4.insert.shift123.i = shl nuw i64 %.sroa.3841.4.insert.ext122.i, 32
  %.sroa.3841.4.insert.insert125.i = or disjoint i64 %.sroa.3841.4.insert.shift123.i, %.sroa.3841.0.insert.ext97.i
  %i.bzy = inttoptr i64 %.sroa.3841.4.insert.insert125.i to ptr ; 2 uses
  %i.bzz = load i8, ptr %i.ud, align 8, !tbaa !108
  %i.caa = zext i8 %i.bzz to i32
  %i.cab = load i16, ptr %i.bkm, align 2, !tbaa !172
  %i.cac = zext i16 %i.cab to i32
  %i.cad = add nuw nsw i32 %i.cac, %i.caa
  %.not.i462.i = icmp ult i32 %i.bzx, %i.cad
  br i1 %.not.i462.i, label %bb.np, label %get_optype.exit464.i

bb.np:                                            ; preds = %bb.no
  %i.cae = load ptr, ptr %i.bkn, align 8, !tbaa !112
  %i.caf = getelementptr inbounds nuw [2 x i8], ptr %i.cae, i64 %.sroa.3841.4.insert.ext122.i
  %i.cag = load i16, ptr %i.caf, align 2, !tbaa !113
  %i.cah = and i16 %i.cag, 32767
  br label %get_optype.exit464.i

bb.nq:                                            ; preds = %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz, %bb.kz
  %i.cai = zext i32 %i.bod to i64
  %i.caj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.cai
  %i.cak = load i8, ptr %i.caj, align 1, !tbaa !123
  %.fr4280 = freeze i8 %i.cak                     ; 3 uses
  %i.cal = zext i8 %.fr4280 to i32                ; 2 uses
  %i.cam = add nsw i32 %i.cal, -96                ; 4 uses
  %i.can = icmp ugt i32 %i.cam, 16
  br i1 %i.can, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.cal) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit477.i

bb.ns:                                            ; preds = %bb.nq
  %i.cao = add i32 %i.boc, 3                      ; 3 uses
  %i.cap = add i32 %i.cam, %i.cao                 ; 4 uses
  %i.caq = icmp ugt i32 %i.cap, %i.bkc
  br i1 %i.caq, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit477.i

bb.nu:                                            ; preds = %bb.ns
  %i.car = icmp eq i8 %.fr4280, 96
  br i1 %i.car, label %bb.nv, label %.preheader.i465.i

.preheader.i465.i:                                ; preds = %bb.nu
  %i.cas = icmp ult i32 %i.cao, %i.cap
  br i1 %i.cas, label %.lr.ph.i469.preheader.i, label %._crit_edge.i466.i

.lr.ph.i469.preheader.i:                          ; preds = %.preheader.i465.i
  %i.cat = zext i32 %i.cao to i64                 ; 2 uses
  %i.cau = zext nneg i32 %i.cam to i64            ; 2 uses
  %xtraiter4161 = and i64 %i.cau, 1
  %i.cav = icmp eq i32 %i.cam, 1
  br i1 %i.cav, label %.lr.ph.i469.i.epil.preheader, label %.lr.ph.i469.preheader.i.new

.lr.ph.i469.preheader.i.new:                      ; preds = %.lr.ph.i469.preheader.i
  %unroll_iter4165 = and i64 %i.cau, 30
  br label %.lr.ph.i469.i

bb.nv:                                            ; preds = %bb.nu
  store i32 %i.cap, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit477.i

.lr.ph.i469.i:                                    ; preds = %bb.nw, %.lr.ph.i469.preheader.i.new
  %indvars.iv633.i = phi i64 [ %i.cat, %.lr.ph.i469.preheader.i.new ], [ %indvars.iv.next634.i.1, %bb.nw ] ; 3 uses
  %.03346.i471.i = phi i32 [ 0, %.lr.ph.i469.preheader.i.new ], [ %i.cbp, %bb.nw ] ; 3 uses
  %.03545.i472.i = phi i64 [ 0, %.lr.ph.i469.preheader.i.new ], [ %i.cbo, %bb.nw ]
  %niter4166 = phi i64 [ 0, %.lr.ph.i469.preheader.i.new ], [ %niter4166.next.1, %bb.nw ]
  %i.caw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv633.i
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !123 ; 2 uses
  %i.cay = zext i8 %i.cax to i64                  ; 2 uses
  %i.caz = and i64 %i.cay, 240
  %.not.i473.i = icmp eq i64 %i.caz, 96
  br i1 %.not.i473.i, label %.lr.ph.i469.i.1, label %.thread.i474.i, !prof !134

.thread.i474.i:                                   ; preds = %.lr.ph.i469.i, %.lr.ph.i469.i.1, %.lr.ph.i469.i.epil.preheader
  %.lcssa3188 = phi i8 [ %i.cbr, %.lr.ph.i469.i.epil.preheader ], [ %i.cax, %.lr.ph.i469.i ], [ %i.cbd, %.lr.ph.i469.i.1 ]
  %i.cba = sext i8 %.lcssa3188 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.cba) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %readNumber.exit477.i

.lr.ph.i469.i.1:                                  ; preds = %.lr.ph.i469.i
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv633.i
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 1
  %i.cbd = load i8, ptr %i.cbc, align 1, !tbaa !123 ; 2 uses
  %i.cbe = zext i8 %i.cbd to i64                  ; 2 uses
  %i.cbf = and i64 %i.cbe, 240
  %.not.i473.i.1 = icmp eq i64 %i.cbf, 96
  br i1 %.not.i473.i.1, label %bb.nw, label %.thread.i474.i, !prof !134

bb.nw:                                            ; preds = %.lr.ph.i469.i.1
  %i.cbg = or disjoint i32 %.03346.i471.i, 4
  %i.cbh = and i64 %i.cay, 15
  %i.cbi = zext nneg i32 %.03346.i471.i to i64
  %i.cbj = shl i64 %i.cbh, %i.cbi
  %i.cbk = or i64 %i.cbj, %.03545.i472.i
  %i.cbl = and i64 %i.cbe, 15
  %i.cbm = zext nneg i32 %i.cbg to i64
  %i.cbn = shl i64 %i.cbl, %i.cbm
  %i.cbo = or i64 %i.cbn, %i.cbk                  ; 3 uses
  %i.cbp = add nuw nsw i32 %.03346.i471.i, 8      ; 2 uses
  %indvars.iv.next634.i.1 = add nuw nsw i64 %indvars.iv633.i, 2 ; 2 uses
  %niter4166.next.1 = add i64 %niter4166, 2       ; 2 uses
  %niter4166.ncmp.1 = icmp eq i64 %niter4166.next.1, %unroll_iter4165
  br i1 %niter4166.ncmp.1, label %._crit_edge.i466.loopexit.i.unr-lcssa, label %.lr.ph.i469.i

._crit_edge.i466.loopexit.i.unr-lcssa:            ; preds = %bb.nw
  %lcmp.mod4162.not = icmp eq i64 %xtraiter4161, 0
  br i1 %lcmp.mod4162.not, label %._crit_edge.i466.loopexit.i, label %.lr.ph.i469.i.epil.preheader

.lr.ph.i469.i.epil.preheader:                     ; preds = %._crit_edge.i466.loopexit.i.unr-lcssa, %.lr.ph.i469.preheader.i
  %indvars.iv633.i.epil.init = phi i64 [ %i.cat, %.lr.ph.i469.preheader.i ], [ %indvars.iv.next634.i.1, %._crit_edge.i466.loopexit.i.unr-lcssa ]
  %.03346.i471.i.epil.init = phi i32 [ 0, %.lr.ph.i469.preheader.i ], [ %i.cbp, %._crit_edge.i466.loopexit.i.unr-lcssa ]
  %.03545.i472.i.epil.init = phi i64 [ 0, %.lr.ph.i469.preheader.i ], [ %i.cbo, %._crit_edge.i466.loopexit.i.unr-lcssa ]
  %lcmp.mod4164 = trunc i8 %.fr4280 to i1
  call void @llvm.assume(i1 %lcmp.mod4164)
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv633.i.epil.init
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !123 ; 2 uses
  %i.cbs = zext i8 %i.cbr to i64                  ; 2 uses
  %i.cbt = and i64 %i.cbs, 240
  %.not.i473.i.epil = icmp eq i64 %i.cbt, 96
  br i1 %.not.i473.i.epil, label %._crit_edge.i466.loopexit.i.epilog-lcssa, label %.thread.i474.i, !prof !134

._crit_edge.i466.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i469.i.epil.preheader
  %i.cbu = and i64 %i.cbs, 15
  %i.cbv = zext nneg i32 %.03346.i471.i.epil.init to i64
  %i.cbw = shl i64 %i.cbu, %i.cbv
  %i.cbx = or i64 %i.cbw, %.03545.i472.i.epil.init
  br label %._crit_edge.i466.loopexit.i

._crit_edge.i466.loopexit.i:                      ; preds = %._crit_edge.i466.loopexit.i.unr-lcssa, %._crit_edge.i466.loopexit.i.epilog-lcssa
  %.lcssa3190 = phi i64 [ %i.cbo, %._crit_edge.i466.loopexit.i.unr-lcssa ], [ %i.cbx, %._crit_edge.i466.loopexit.i.epilog-lcssa ]
  %i.cby = trunc i64 %.lcssa3190 to i16
  br label %._crit_edge.i466.i

._crit_edge.i466.i:                               ; preds = %._crit_edge.i466.loopexit.i, %.preheader.i465.i
  %.035.lcssa.i467.i = phi i16 [ 0, %.preheader.i465.i ], [ %i.cby, %._crit_edge.i466.loopexit.i ]
  store i32 %i.cap, ptr %i.b, align 4, !tbaa !117
  br label %readNumber.exit477.i

readNumber.exit477.i:                             ; preds = %._crit_edge.i466.i, %.thread.i474.i, %bb.nv, %bb.nt, %bb.nr, %bb.kz, %readFixedNumber.exit.thread720.i
  %.025.lcssa.i722725728.i = phi i32 [ %i.bos, %bb.kz ], [ %i.bos, %bb.nr ], [ %i.bos, %bb.nt ], [ %i.bos, %bb.nv ], [ %i.bos, %.thread.i474.i ], [ %i.bos, %._crit_edge.i466.i ], [ 0, %readFixedNumber.exit.thread720.i ] ; 7 uses
  %.sroa.15.1.i = phi i16 [ %.sroa.15.0.i, %bb.kz ], [ 0, %bb.nr ], [ 0, %bb.nt ], [ 0, %bb.nv ], [ 0, %.thread.i474.i ], [ %.035.lcssa.i467.i, %._crit_edge.i466.i ], [ %.sroa.15.0.i, %readFixedNumber.exit.thread720.i ] ; 5 uses
  %i.cbz = zext nneg i32 %.025.lcssa.i722725728.i to i64
  %i.cca = getelementptr inbounds nuw i8, ptr @operand_counts, i64 %i.cbz
  %i.ccb = load i8, ptr %i.cca, align 1, !tbaa !123 ; 3 uses
  switch i8 %i.ccb, label %bb.oa [
    i8 0, label %get_optype.exit464.i
    i8 1, label %bb.nx
    i8 2, label %bb.ny
    i8 3, label %bb.nz
  ]

bb.nx:                                            ; preds = %readNumber.exit477.i
  %i.ccc = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext101.i = zext i32 %i.ccc to i64
  %i.ccd = inttoptr i64 %.sroa.3841.0.insert.ext101.i to ptr
  br label %get_optype.exit464.i

bb.ny:                                            ; preds = %readNumber.exit477.i
  %i.cce = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext105.i = zext i32 %i.cce to i64
  %i.ccf = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.4.insert.ext127.i = zext i32 %i.ccf to i64
  %.sroa.3841.4.insert.shift128.i = shl nuw i64 %.sroa.3841.4.insert.ext127.i, 32
  %.sroa.3841.4.insert.insert130.i = or disjoint i64 %.sroa.3841.4.insert.shift128.i, %.sroa.3841.0.insert.ext105.i
  %i.ccg = inttoptr i64 %.sroa.3841.4.insert.insert130.i to ptr
  br label %get_optype.exit464.i

bb.nz:                                            ; preds = %readNumber.exit477.i
  %i.cch = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.0.insert.ext109.i = zext i32 %i.cch to i64
  %i.cci = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.3841.4.insert.ext132.i = zext i32 %i.cci to i64
  %.sroa.3841.4.insert.shift133.i = shl nuw i64 %.sroa.3841.4.insert.ext132.i, 32
  %.sroa.3841.4.insert.insert135.i = or disjoint i64 %.sroa.3841.4.insert.shift133.i, %.sroa.3841.0.insert.ext109.i
  %i.ccj = inttoptr i64 %.sroa.3841.4.insert.insert135.i to ptr
  %i.cck = call fastcc i32 @readOperand(ptr noundef %i.ud, ptr noundef nonnull %i.sj, ptr noundef %i.b, i32 noundef %i.bkc, ptr noundef %i.a)
  %.sroa.73.0.insert.ext69.i = zext i32 %i.cck to i64
  %i.ccl = inttoptr i64 %.sroa.73.0.insert.ext69.i to ptr
  br label %get_optype.exit464.i

bb.oa:                                            ; preds = %readNumber.exit477.i
  %i.ccm = zext i8 %i.ccb to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.339, i32 noundef %.025.lcssa.i722725728.i, i32 noundef %i.ccm) #24
  store i8 0, ptr %i.a, align 1, !tbaa !132
  br label %get_optype.exit464.i

get_optype.exit464.i:                             ; preds = %.lr.ph.i277, %.lr.ph564.i, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %readNumber.exit477.i, %bb.np, %bb.no, %get_optype.exit.thread.i, %get_optype.exit.i, %bb.nk, %bb.nj, %readNumber.exit446.i, %bb.na, %bb.mz, %bb.mq, %bb.mj, %bb.mi, %readBBID.exit419.i, %readNumber.exit381.i, %readBBID.exit.i
  %.025.lcssa.i722725729.i = phi i32 [ %.025.lcssa.i722725728.i, %bb.oa ], [ %.025.lcssa.i722725728.i, %readNumber.exit477.i ], [ %.025.lcssa.i722725728.i, %bb.nx ], [ %.025.lcssa.i722725728.i, %bb.ny ], [ %.025.lcssa.i722725728.i, %bb.nz ], [ 18, %readBBID.exit.i ], [ 19, %readNumber.exit381.i ], [ 17, %readBBID.exit419.i ], [ 34, %bb.no ], [ %i.bos, %.lr.ph564.i ], [ %i.bos, %bb.na ], [ 15, %bb.mz ], [ %i.bos, %readNumber.exit446.i ], [ %i.bos, %bb.mq ], [ %i.bos, %bb.mj ], [ 38, %get_optype.exit.i ], [ 38, %get_optype.exit.thread.i ], [ 34, %bb.np ], [ 37, %bb.nk ], [ %i.bos, %bb.mi ], [ 37, %bb.nj ], [ 37, %.lr.ph.i277 ] ; 2 uses
  %.sroa.15.2.i = phi i16 [ %.sroa.15.1.i, %bb.oa ], [ %.sroa.15.1.i, %readNumber.exit477.i ], [ %.sroa.15.1.i, %bb.nx ], [ %.sroa.15.1.i, %bb.ny ], [ %.sroa.15.1.i, %bb.nz ], [ %.sroa.15.0.i, %readBBID.exit.i ], [ %.2.i372.i, %readNumber.exit381.i ], [ %.sroa.15.0.i, %readBBID.exit419.i ], [ 0, %bb.no ], [ %.sroa.15.0.i, %.lr.ph564.i ], [ %.sroa.15.0.i, %bb.na ], [ %.sroa.15.0.i, %bb.mz ], [ %.sroa.15.0.i, %readNumber.exit446.i ], [ %.sroa.15.0.i, %bb.mq ], [ %.sroa.15.0.i, %bb.mj ], [ %i.bzv, %get_optype.exit.i ], [ %.sroa.15.0.i, %get_optype.exit.thread.i ], [ %i.cah, %bb.np ], [ %.sroa.15.0.i, %bb.nk ], [ %.sroa.15.0.i, %bb.mi ], [ %.sroa.15.0.i, %bb.nj ], [ %.sroa.15.0.i, %.lr.ph.i277 ] ; 7 uses
  %.sroa.3841.1.i = phi ptr [ null, %bb.oa ], [ null, %readNumber.exit477.i ], [ %i.ccd, %bb.nx ], [ %i.ccg, %bb.ny ], [ %i.ccj, %bb.nz ], [ %i.bqk, %readBBID.exit.i ], [ %i.bsd, %readNumber.exit381.i ], [ %i.bvt, %readBBID.exit419.i ], [ %i.bzy, %bb.no ], [ %.sroa.3841.0.i, %.lr.ph564.i ], [ %i.bwy, %bb.na ], [ %i.bwq, %bb.mz ], [ %i.byr, %readNumber.exit446.i ], [ %.sroa.3841.0.i, %bb.mq ], [ null, %bb.mj ], [ %i.bzm, %get_optype.exit.i ], [ %i.bzm, %get_optype.exit.thread.i ], [ %i.bzy, %bb.np ], [ null, %bb.nk ], [ null, %bb.mi ], [ null, %bb.nj ], [ %i.bzf, %.lr.ph.i277 ]
  %.sroa.73.1.i = phi ptr [ null, %bb.oa ], [ null, %readNumber.exit477.i ], [ null, %bb.nx ], [ null, %bb.ny ], [ %i.ccl, %bb.nz ], [ null, %readBBID.exit.i ], [ null, %readNumber.exit381.i ], [ null, %readBBID.exit419.i ], [ null, %bb.no ], [ null, %.lr.ph564.i ], [ %.sroa.73.0.i, %bb.na ], [ %.sroa.73.0.i, %bb.mz ], [ %i.byt, %readNumber.exit446.i ], [ null, %bb.mq ], [ null, %bb.mj ], [ null, %get_optype.exit.i ], [ null, %get_optype.exit.thread.i ], [ null, %bb.np ], [ null, %bb.nk ], [ null, %bb.mi ], [ null, %bb.nj ], [ null, %.lr.ph.i277 ]
  %.sroa.84.1.i = phi i16 [ 0, %bb.oa ], [ 0, %readNumber.exit477.i ], [ 0, %bb.nx ], [ 0, %bb.ny ], [ 0, %bb.nz ], [ 0, %readBBID.exit.i ], [ 0, %readNumber.exit381.i ], [ 0, %readBBID.exit419.i ], [ 0, %bb.no ], [ %.sroa.84.0.i, %.lr.ph564.i ], [ 0, %bb.na ], [ 0, %bb.mz ], [ 0, %readNumber.exit446.i ], [ %.sroa.84.0.i, %bb.mq ], [ 0, %bb.mj ], [ 0, %get_optype.exit.i ], [ 0, %get_optype.exit.thread.i ], [ 0, %bb.np ], [ 0, %bb.nk ], [ 0, %bb.mi ], [ 0, %bb.nj ], [ 0, %.lr.ph.i277 ]
  %.sroa.86.0.i = phi i8 [ 0, %bb.oa ], [ %i.ccb, %readNumber.exit477.i ], [ 0, %bb.nx ], [ 0, %bb.ny ], [ 0, %bb.nz ], [ 0, %readBBID.exit.i ], [ 0, %readNumber.exit381.i ], [ 0, %readBBID.exit419.i ], [ 0, %bb.no ], [ %i.bwf, %.lr.ph564.i ], [ 0, %bb.na ], [ 0, %bb.mz ], [ 0, %readNumber.exit446.i ], [ %i.bwf, %bb.mq ], [ 0, %bb.mj ], [ 0, %get_optype.exit.i ], [ 0, %get_optype.exit.thread.i ], [ 0, %bb.np ], [ 0, %bb.nk ], [ 0, %bb.mi ], [ 0, %bb.nj ], [ %i.bzd, %.lr.ph.i277 ]
  %i.ccn = load i8, ptr %i.a, align 1, !tbaa !132, !range !136, !noundef !137
  %i.cco = trunc nuw i8 %i.ccn to i1
  br i1 %i.cco, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %get_optype.exit464.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.340) #24
  br label %.loopexit360

bb.oc:                                            ; preds = %get_optype.exit464.i
  %i.ccp = load i32, ptr %i.bkh, align 8, !tbaa !175
  %i.ccq = load i32, ptr %i.bka, align 8, !tbaa !179 ; 6 uses
  %i.ccr = add i32 %i.ccq, %i.ccp                 ; 2 uses
  %i.ccs = load i32, ptr %i.bko, align 4, !tbaa !173 ; 2 uses
  %.not344.i = icmp ult i32 %i.ccr, %i.ccs
  br i1 %.not344.i, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.341, i32 noundef %i.ccr, i32 noundef %i.ccs) #24
  br label %.loopexit360

bb.oe:                                            ; preds = %bb.oc
  %i.cct = trunc nuw nsw i32 %.025.lcssa.i722725729.i to i8
  %i.ccu = mul nuw i8 %i.cct, 5                   ; 6 uses
  %i.ccv = zext i16 %.sroa.15.2.i to i32
  %i.ccw = icmp ugt i16 %.sroa.15.2.i, 1
  br i1 %i.ccw, label %bb.of, label %bb.oo

bb.of:                                            ; preds = %bb.oe
  %i.ccx = icmp ult i16 %.sroa.15.2.i, 9
  br i1 %i.ccx, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.ccy = add nuw i8 %i.ccu, 1
  br label %bb.oo

bb.oh:                                            ; preds = %bb.of
  %i.ccz = icmp ult i16 %.sroa.15.2.i, 17
  br i1 %i.ccz, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.cda = add nuw i8 %i.ccu, 2
  br label %bb.oo

bb.oj:                                            ; preds = %bb.oh
  %i.cdb = icmp ult i16 %.sroa.15.2.i, 33
  br i1 %i.cdb, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.cdc = add nuw i8 %i.ccu, 3
  br label %bb.oo

bb.ol:                                            ; preds = %bb.oj
  %i.cdd = icmp ult i16 %.sroa.15.2.i, 66
  br i1 %i.cdd, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.cde = add nuw i8 %i.ccu, 4
  br label %bb.oo

bb.on:                                            ; preds = %bb.ol
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.342, i32 noundef %i.ccv) #24
  %.pre.i274 = load i32, ptr %i.bka, align 8, !tbaa !179
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om, %bb.ok, %bb.oi, %bb.og, %bb.oe
  %i.cdf = phi i32 [ %i.ccq, %bb.og ], [ %i.ccq, %bb.oi ], [ %i.ccq, %bb.ok ], [ %i.ccq, %bb.om ], [ %.pre.i274, %bb.on ], [ %i.ccq, %bb.oe ] ; 2 uses
  %.sroa.29.0.i = phi i8 [ %i.ccy, %bb.og ], [ %i.cda, %bb.oi ], [ %i.cdc, %bb.ok ], [ %i.cde, %bb.om ], [ %i.ccu, %bb.on ], [ %i.ccu, %bb.oe ]
  %i.cdg = load ptr, ptr %i.bkl, align 8, !tbaa !181
  %i.cdh = add i32 %i.cdf, 1
  store i32 %i.cdh, ptr %i.bka, align 8, !tbaa !179
  %i.cdi = zext i32 %i.cdf to i64
  %i.cdj = getelementptr inbounds nuw [40 x i8], ptr %i.cdg, i64 %i.cdi ; 11 uses
  store i32 %.025.lcssa.i722725729.i, ptr %i.cdj, align 8, !tbaa !117
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 4
  store i16 %.sroa.15.2.i, ptr %.sroa.15.0..sroa_idx.i, align 4, !tbaa !113
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 6
  store i16 0, ptr %.sroa.27.0..sroa_idx.i, align 2
  %.sroa.2737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 8
  store i32 %.sroa.2737.0.i, ptr %.sroa.2737.0..sroa_idx.i, align 8, !tbaa !117
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 12
  store i8 %.sroa.29.0.i, ptr %.sroa.29.0..sroa_idx.i, align 4, !tbaa !123
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.38.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.38.i, i64 3, i1 false), !tbaa.struct !182
  %.sroa.3841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 16
  store ptr %.sroa.3841.1.i, ptr %.sroa.3841.0..sroa_idx.i, align 8
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 24
  store ptr %.sroa.73.1.i, ptr %.sroa.73.0..sroa_idx.i, align 8
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 32
  store i16 %.sroa.84.1.i, ptr %.sroa.84.0..sroa_idx.i, align 8
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 34
  store i8 %.sroa.86.0.i, ptr %.sroa.86.0..sroa_idx.i, align 2
  %.sroa.88.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cdj, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.88.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.88.i, i64 5, i1 false), !tbaa.struct !183
  br i1 %.not718.i, label %bb.op, label %bb.kh

bb.op:                                            ; preds = %bb.oo
  %i.cdk = load ptr, ptr %i.sp, align 8, !tbaa !105
  %i.cdl = getelementptr inbounds nuw [72 x i8], ptr %i.cdk, i64 %i.bjw ; 3 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 20
  %i.cdn = load i16, ptr %i.cdm, align 4, !tbaa !151
  %i.cdo = zext i16 %i.cdn to i32                 ; 2 uses
  %i.cdp = icmp eq i32 %i.ub, %i.cdo
  %.pre661.i = load i32, ptr %i.b, align 4, !tbaa !117 ; 3 uses
  br i1 %i.cdp, label %bb.oq, label %bb.ot

bb.oq:                                            ; preds = %bb.op
  %i.cdq = zext i32 %.pre661.i to i64
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.cdq
  %i.cds = load i8, ptr %i.cdr, align 1, !tbaa !123 ; 2 uses
  %.not331.i = icmp eq i8 %i.cds, 69
  br i1 %.not331.i, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.cdt = zext i8 %i.cds to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.343, i32 noundef %i.cdt) #24
  br label %.loopexit360

bb.os:                                            ; preds = %bb.oq
  %i.cdu = add i32 %.pre661.i, 1
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.op
  %i.cdv = phi i32 [ %i.cdu, %bb.os ], [ %.pre661.i, %bb.op ] ; 4 uses
  %i.cdw = zext i32 %i.cdv to i64
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.cdw
  %i.cdy = load i8, ptr %i.cdx, align 1, !tbaa !123
  %i.cdz = icmp eq i8 %i.cdy, 68
  br i1 %i.cdz, label %bb.ou, label %.loopexit.i

bb.ou:                                            ; preds = %bb.ot
  %i.cea = add i32 %i.cdv, 3                      ; 2 uses
  %.not332.i = icmp ult i32 %i.cea, %i.bkc
  br i1 %.not332.i, label %bb.ov, label %.loopexit360

bb.ov:                                            ; preds = %bb.ou
  %i.ceb = zext i32 %i.cea to i64
  %i.cec = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.ceb
  %i.ced = load i8, ptr %i.cec, align 1, !tbaa !123
  %.fr4295 = freeze i8 %i.ced                     ; 3 uses
  %i.cee = zext i8 %.fr4295 to i32                ; 2 uses
  %i.cef = add nsw i32 %i.cee, -96                ; 4 uses
  %i.ceg = icmp ugt i32 %i.cef, 16
  br i1 %i.ceg, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.cee) #24
  br label %.loopexit360

bb.ox:                                            ; preds = %bb.ov
  %i.ceh = add i32 %i.cdv, 4                      ; 3 uses
  %i.cei = add i32 %i.cef, %i.ceh                 ; 4 uses
  %i.cej = icmp ugt i32 %i.cei, %i.bkc
  br i1 %i.cej, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.loopexit360

bb.oz:                                            ; preds = %bb.ox
  %i.cek = icmp ne i8 %.fr4295, 96
  %i.cel = icmp ult i32 %i.ceh, %i.cei
  %or.cond790.i = and i1 %i.cek, %i.cel
  br i1 %or.cond790.i, label %.lr.ph.i482.preheader.i, label %._crit_edge.i479.i

.lr.ph.i482.preheader.i:                          ; preds = %bb.oz
  %i.cem = zext i32 %i.ceh to i64                 ; 2 uses
  %i.cen = zext nneg i32 %i.cef to i64            ; 2 uses
  %xtraiter4197 = and i64 %i.cen, 1
  %i.ceo = icmp eq i32 %i.cef, 1
  br i1 %i.ceo, label %.lr.ph.i482.i.epil.preheader, label %.lr.ph.i482.preheader.i.new

.lr.ph.i482.preheader.i.new:                      ; preds = %.lr.ph.i482.preheader.i
  %unroll_iter4201 = and i64 %i.cen, 30
  br label %.lr.ph.i482.i

.lr.ph.i482.i:                                    ; preds = %bb.pa, %.lr.ph.i482.preheader.i.new
  %indvars.iv650.i = phi i64 [ %i.cem, %.lr.ph.i482.preheader.i.new ], [ %indvars.iv.next651.i.1, %bb.pa ] ; 3 uses
  %.03346.i484.i = phi i32 [ 0, %.lr.ph.i482.preheader.i.new ], [ %i.cfi, %bb.pa ] ; 3 uses
  %.03545.i485.i = phi i64 [ 0, %.lr.ph.i482.preheader.i.new ], [ %i.cfh, %bb.pa ]
  %niter4202 = phi i64 [ 0, %.lr.ph.i482.preheader.i.new ], [ %niter4202.next.1, %bb.pa ]
  %i.cep = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv650.i
  %i.ceq = load i8, ptr %i.cep, align 1, !tbaa !123 ; 2 uses
  %i.cer = zext i8 %i.ceq to i64                  ; 2 uses
  %i.ces = and i64 %i.cer, 240
  %.not.i486.i = icmp eq i64 %i.ces, 96
  br i1 %.not.i486.i, label %.lr.ph.i482.i.1, label %.thread.i487.i, !prof !134

.thread.i487.i:                                   ; preds = %.lr.ph.i482.i.epil.preheader, %.lr.ph.i482.i, %.lr.ph.i482.i.1
  %.lcssa3213 = phi i8 [ %i.cew, %.lr.ph.i482.i.1 ], [ %i.ceq, %.lr.ph.i482.i ], [ %i.cfk, %.lr.ph.i482.i.epil.preheader ]
  %i.cet = sext i8 %.lcssa3213 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.cet) #24
  br label %.loopexit360

.lr.ph.i482.i.1:                                  ; preds = %.lr.ph.i482.i
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv650.i
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 1
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !123 ; 2 uses
  %i.cex = zext i8 %i.cew to i64                  ; 2 uses
  %i.cey = and i64 %i.cex, 240
  %.not.i486.i.1 = icmp eq i64 %i.cey, 96
  br i1 %.not.i486.i.1, label %bb.pa, label %.thread.i487.i, !prof !134

bb.pa:                                            ; preds = %.lr.ph.i482.i.1
  %i.cez = or disjoint i32 %.03346.i484.i, 4
  %i.cfa = and i64 %i.cer, 15
  %i.cfb = zext nneg i32 %.03346.i484.i to i64
  %i.cfc = shl i64 %i.cfa, %i.cfb
  %i.cfd = or i64 %i.cfc, %.03545.i485.i
  %i.cfe = and i64 %i.cex, 15
  %i.cff = zext nneg i32 %i.cez to i64
  %i.cfg = shl i64 %i.cfe, %i.cff
  %i.cfh = or i64 %i.cfg, %i.cfd                  ; 3 uses
  %i.cfi = add nuw nsw i32 %.03346.i484.i, 8      ; 2 uses
  %indvars.iv.next651.i.1 = add nuw nsw i64 %indvars.iv650.i, 2 ; 2 uses
  %niter4202.next.1 = add i64 %niter4202, 2       ; 2 uses
  %niter4202.ncmp.1 = icmp eq i64 %niter4202.next.1, %unroll_iter4201
  br i1 %niter4202.ncmp.1, label %._crit_edge.i479.i.loopexit.unr-lcssa, label %.lr.ph.i482.i

._crit_edge.i479.i.loopexit.unr-lcssa:            ; preds = %bb.pa
  %lcmp.mod4198.not = icmp eq i64 %xtraiter4197, 0
  br i1 %lcmp.mod4198.not, label %._crit_edge.i479.i, label %.lr.ph.i482.i.epil.preheader

.lr.ph.i482.i.epil.preheader:                     ; preds = %._crit_edge.i479.i.loopexit.unr-lcssa, %.lr.ph.i482.preheader.i
  %indvars.iv650.i.epil.init = phi i64 [ %i.cem, %.lr.ph.i482.preheader.i ], [ %indvars.iv.next651.i.1, %._crit_edge.i479.i.loopexit.unr-lcssa ]
  %.03346.i484.i.epil.init = phi i32 [ 0, %.lr.ph.i482.preheader.i ], [ %i.cfi, %._crit_edge.i479.i.loopexit.unr-lcssa ]
  %.03545.i485.i.epil.init = phi i64 [ 0, %.lr.ph.i482.preheader.i ], [ %i.cfh, %._crit_edge.i479.i.loopexit.unr-lcssa ]
  %lcmp.mod4200 = trunc i8 %.fr4295 to i1
  call void @llvm.assume(i1 %lcmp.mod4200)
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv650.i.epil.init
  %i.cfk = load i8, ptr %i.cfj, align 1, !tbaa !123 ; 2 uses
  %i.cfl = zext i8 %i.cfk to i64                  ; 2 uses
  %i.cfm = and i64 %i.cfl, 240
  %.not.i486.i.epil = icmp eq i64 %i.cfm, 96
  br i1 %.not.i486.i.epil, label %._crit_edge.i479.i.loopexit.epilog-lcssa, label %.thread.i487.i, !prof !134

._crit_edge.i479.i.loopexit.epilog-lcssa:         ; preds = %.lr.ph.i482.i.epil.preheader
  %i.cfn = and i64 %i.cfl, 15
  %i.cfo = zext nneg i32 %.03346.i484.i.epil.init to i64
  %i.cfp = shl i64 %i.cfn, %i.cfo
  %i.cfq = or i64 %i.cfp, %.03545.i485.i.epil.init
  br label %._crit_edge.i479.i

._crit_edge.i479.i:                               ; preds = %._crit_edge.i479.i.loopexit.epilog-lcssa, %._crit_edge.i479.i.loopexit.unr-lcssa, %bb.oz
  %.2.i481.i = phi i64 [ 0, %bb.oz ], [ %i.cfh, %._crit_edge.i479.i.loopexit.unr-lcssa ], [ %i.cfq, %._crit_edge.i479.i.loopexit.epilog-lcssa ] ; 3 uses
  %i.cfr = trunc i64 %.2.i481.i to i32            ; 4 uses
  %i.cfs = load i32, ptr %i.bko, align 4, !tbaa !173 ; 2 uses
  %.not333.i = icmp eq i32 %i.cfs, %i.cfr
  br i1 %.not333.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %._crit_edge.i479.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.344, i32 noundef %i.cfs, i32 noundef %i.cfr) #24
  br label %.loopexit360

bb.pc:                                            ; preds = %._crit_edge.i479.i
  %i.cft = shl i64 %.2.i481.i, 2
  %i.cfu = and i64 %i.cft, 17179869180
  %i.cfv = call noalias ptr @malloc(i64 noundef %i.cfu) #25 ; 3 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  store ptr %i.cfv, ptr %i.cfw, align 8, !tbaa !184
  %.not334.i = icmp eq ptr %i.cfv, null
  br i1 %.not334.i, label %bb.pd, label %.preheader.i272

.preheader.i272:                                  ; preds = %bb.pc
  %.not575.i = icmp eq i32 %i.cfr, 0
  br i1 %.not575.i, label %.loopexit.i, label %.lr.ph572.preheader.i

.lr.ph572.preheader.i:                            ; preds = %.preheader.i272
  %wide.trip.count658.i = and i64 %.2.i481.i, 4294967295
  br label %.lr.ph572.i

bb.pd:                                            ; preds = %bb.pc
  %i.cfx = shl i32 %i.cfr, 2
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.345, i32 noundef %i.cfx) #24
  br label %.loopexit360

bb.pe:                                            ; preds = %._crit_edge.i492.loopexit.i, %bb.pi
  %.2.i494.ph.i = phi i32 [ %i.chv, %._crit_edge.i492.loopexit.i ], [ 0, %bb.pi ]
  %i.cfy = getelementptr inbounds nuw [4 x i8], ptr %i.cfv, i64 %indvars.iv656.i
  store i32 %.2.i494.ph.i, ptr %i.cfy, align 4, !tbaa !117
  %indvars.iv.next657.i = add nuw nsw i64 %indvars.iv656.i, 1 ; 2 uses
  %exitcond659.not.i = icmp eq i64 %indvars.iv.next657.i, %wide.trip.count658.i
  br i1 %exitcond659.not.i, label %.loopexit.i, label %.lr.ph572.i

.lr.ph572.i:                                      ; preds = %bb.pe, %.lr.ph572.preheader.i
  %indvars.iv656.i = phi i64 [ 0, %.lr.ph572.preheader.i ], [ %indvars.iv.next657.i, %bb.pe ] ; 3 uses
  %i.cfz = phi i32 [ %i.cei, %.lr.ph572.preheader.i ], [ %i.cgi, %bb.pe ] ; 2 uses
  %i.cga = zext i32 %i.cfz to i64
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.cga
  %i.cgc = load i8, ptr %i.cgb, align 1, !tbaa !123
  %.fr4298 = freeze i8 %i.cgc                     ; 3 uses
  %i.cgd = zext i8 %.fr4298 to i32                ; 2 uses
  %i.cge = add nsw i32 %i.cgd, -96                ; 4 uses
  %i.cgf = icmp ugt i32 %i.cge, 16
  br i1 %i.cgf, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %.lr.ph572.i
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.cgd) #24
  br label %.thread.loopexit.i

bb.pg:                                            ; preds = %.lr.ph572.i
  %i.cgh = add i32 %i.cfz, 1                      ; 3 uses
  %i.cgi = add i32 %i.cge, %i.cgh                 ; 4 uses
  %i.cgj = icmp ugt i32 %i.cgi, %i.bkc
  br i1 %i.cgj, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %.thread.loopexit.i

bb.pi:                                            ; preds = %bb.pg
  %i.cgl = icmp ne i8 %.fr4298, 96
  %i.cgm = icmp ult i32 %i.cgh, %i.cgi
  %or.cond.i273 = and i1 %i.cgl, %i.cgm
  br i1 %or.cond.i273, label %.lr.ph.i495.preheader.i, label %bb.pe

.lr.ph.i495.preheader.i:                          ; preds = %bb.pi
  %i.cgn = zext i32 %i.cgh to i64                 ; 2 uses
  %i.cgo = zext nneg i32 %i.cge to i64            ; 2 uses
  %xtraiter4206 = and i64 %i.cgo, 1
  %i.cgp = icmp eq i32 %i.cge, 1
  br i1 %i.cgp, label %.lr.ph.i495.i.epil.preheader, label %.lr.ph.i495.preheader.i.new

.lr.ph.i495.preheader.i.new:                      ; preds = %.lr.ph.i495.preheader.i
  %unroll_iter4210 = and i64 %i.cgo, 30
  br label %.lr.ph.i495.i

.lr.ph.i495.i:                                    ; preds = %bb.pj, %.lr.ph.i495.preheader.i.new
  %indvars.iv653.i = phi i64 [ %i.cgn, %.lr.ph.i495.preheader.i.new ], [ %indvars.iv.next654.i.1, %bb.pj ] ; 3 uses
  %.03346.i497.i = phi i32 [ 0, %.lr.ph.i495.preheader.i.new ], [ %i.chm, %bb.pj ] ; 3 uses
  %.03545.i498.i = phi i64 [ 0, %.lr.ph.i495.preheader.i.new ], [ %i.chl, %bb.pj ]
  %niter4211 = phi i64 [ 0, %.lr.ph.i495.preheader.i.new ], [ %niter4211.next.1, %bb.pj ]
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv653.i
  %i.cgr = load i8, ptr %i.cgq, align 1, !tbaa !123 ; 2 uses
  %i.cgs = zext i8 %i.cgr to i64                  ; 2 uses
  %i.cgt = and i64 %i.cgs, 240
  %.not.i499.i = icmp eq i64 %i.cgt, 96
  br i1 %.not.i499.i, label %.lr.ph.i495.i.1, label %.thread.i500.i.loopexit, !prof !134

.thread.i500.i.loopexit:                          ; preds = %.lr.ph.i495.i.1, %.lr.ph.i495.i
  %.lcssa3216.ph = phi i8 [ %i.cgr, %.lr.ph.i495.i ], [ %i.cha, %.lr.ph.i495.i.1 ]
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  br label %.thread.i500.i

.thread.i500.i.loopexit4212:                      ; preds = %.lr.ph.i495.i.epil.preheader
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  br label %.thread.i500.i

.thread.i500.i:                                   ; preds = %.thread.i500.i.loopexit4212, %.thread.i500.i.loopexit
  %i.cgw = phi ptr [ %i.cgu, %.thread.i500.i.loopexit ], [ %i.cgv, %.thread.i500.i.loopexit4212 ]
  %.lcssa3216 = phi i8 [ %.lcssa3216.ph, %.thread.i500.i.loopexit ], [ %i.cho, %.thread.i500.i.loopexit4212 ]
  %i.cgx = sext i8 %.lcssa3216 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.cgx) #24
  br label %.thread.loopexit.i

.lr.ph.i495.i.1:                                  ; preds = %.lr.ph.i495.i
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv653.i
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 1
  %i.cha = load i8, ptr %i.cgz, align 1, !tbaa !123 ; 2 uses
  %i.chb = zext i8 %i.cha to i64                  ; 2 uses
  %i.chc = and i64 %i.chb, 240
  %.not.i499.i.1 = icmp eq i64 %i.chc, 96
  br i1 %.not.i499.i.1, label %bb.pj, label %.thread.i500.i.loopexit, !prof !134

bb.pj:                                            ; preds = %.lr.ph.i495.i.1
  %i.chd = or disjoint i32 %.03346.i497.i, 4
  %i.che = and i64 %i.cgs, 15
  %i.chf = zext nneg i32 %.03346.i497.i to i64
  %i.chg = shl i64 %i.che, %i.chf
  %i.chh = or i64 %i.chg, %.03545.i498.i
  %i.chi = and i64 %i.chb, 15
  %i.chj = zext nneg i32 %i.chd to i64
  %i.chk = shl i64 %i.chi, %i.chj
  %i.chl = or i64 %i.chk, %i.chh                  ; 3 uses
  %i.chm = add nuw nsw i32 %.03346.i497.i, 8      ; 2 uses
  %indvars.iv.next654.i.1 = add nuw nsw i64 %indvars.iv653.i, 2 ; 2 uses
  %niter4211.next.1 = add i64 %niter4211, 2       ; 2 uses
  %niter4211.ncmp.1 = icmp eq i64 %niter4211.next.1, %unroll_iter4210
  br i1 %niter4211.ncmp.1, label %._crit_edge.i492.loopexit.i.unr-lcssa, label %.lr.ph.i495.i

._crit_edge.i492.loopexit.i.unr-lcssa:            ; preds = %bb.pj
  %lcmp.mod4207.not = icmp eq i64 %xtraiter4206, 0
  br i1 %lcmp.mod4207.not, label %._crit_edge.i492.loopexit.i, label %.lr.ph.i495.i.epil.preheader

.lr.ph.i495.i.epil.preheader:                     ; preds = %._crit_edge.i492.loopexit.i.unr-lcssa, %.lr.ph.i495.preheader.i
  %indvars.iv653.i.epil.init = phi i64 [ %i.cgn, %.lr.ph.i495.preheader.i ], [ %indvars.iv.next654.i.1, %._crit_edge.i492.loopexit.i.unr-lcssa ]
  %.03346.i497.i.epil.init = phi i32 [ 0, %.lr.ph.i495.preheader.i ], [ %i.chm, %._crit_edge.i492.loopexit.i.unr-lcssa ]
  %.03545.i498.i.epil.init = phi i64 [ 0, %.lr.ph.i495.preheader.i ], [ %i.chl, %._crit_edge.i492.loopexit.i.unr-lcssa ]
  %lcmp.mod4209 = trunc i8 %.fr4298 to i1
  call void @llvm.assume(i1 %lcmp.mod4209)
  %i.chn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv653.i.epil.init
  %i.cho = load i8, ptr %i.chn, align 1, !tbaa !123 ; 2 uses
  %i.chp = zext i8 %i.cho to i64                  ; 2 uses
  %i.chq = and i64 %i.chp, 240
  %.not.i499.i.epil = icmp eq i64 %i.chq, 96
  br i1 %.not.i499.i.epil, label %._crit_edge.i492.loopexit.i.epilog-lcssa, label %.thread.i500.i.loopexit4212, !prof !134

._crit_edge.i492.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i495.i.epil.preheader
  %i.chr = and i64 %i.chp, 15
  %i.chs = zext nneg i32 %.03346.i497.i.epil.init to i64
  %i.cht = shl i64 %i.chr, %i.chs
  %i.chu = or i64 %i.cht, %.03545.i498.i.epil.init
  br label %._crit_edge.i492.loopexit.i

._crit_edge.i492.loopexit.i:                      ; preds = %._crit_edge.i492.loopexit.i.unr-lcssa, %._crit_edge.i492.loopexit.i.epilog-lcssa
  %.lcssa3218 = phi i64 [ %i.chl, %._crit_edge.i492.loopexit.i.unr-lcssa ], [ %i.chu, %._crit_edge.i492.loopexit.i.epilog-lcssa ]
  %i.chv = trunc i64 %.lcssa3218 to i32
  br label %bb.pe

.loopexit.i:                                      ; preds = %bb.pe, %.preheader.i272, %bb.ot
  %i.chw = phi i32 [ %i.cdv, %bb.ot ], [ %i.cei, %.preheader.i272 ], [ %i.cgi, %bb.pe ] ; 2 uses
  %.not335.i = icmp eq i32 %i.chw, %i.bkc
  br i1 %.not335.i, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %.loopexit.i
  %i.chx = sub i32 %i.bkc, %i.chw
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.346, i32 noundef %i.chx) #24
  br label %.loopexit360

.thread.loopexit.i:                               ; preds = %.thread.i500.i, %bb.ph, %bb.pf
  %i.chy = phi ptr [ %i.cgw, %.thread.i500.i ], [ %i.cgk, %bb.ph ], [ %i.cgg, %bb.pf ]
  %i.chz = load ptr, ptr %i.chy, align 8, !tbaa !184
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.chz, i64 %indvars.iv656.i
  store i32 0, ptr %i.cia, align 4, !tbaa !117
  br label %.loopexit360

.loopexit360:                                     ; preds = %bb.ou, %bb.kd, %bb.kf, %bb.ky, %bb.or, %bb.pk, %readFixedNumber.exit.thread.i271, %bb.pb, %bb.nm, %bb.mm, %bb.ob, %bb.od, %bb.pd, %.thread.loopexit.i, %bb.ow, %bb.oy, %.thread.i487.i
  %.3.i266.ph = phi i32 [ 4, %.thread.i487.i ], [ 4, %bb.oy ], [ 4, %bb.ow ], [ 4, %.thread.loopexit.i ], [ 20, %bb.pd ], [ 4, %bb.od ], [ 4, %bb.ob ], [ 20, %bb.mm ], [ 20, %bb.nm ], [ 4, %bb.kd ], [ 4, %bb.pb ], [ 4, %readFixedNumber.exit.thread.i271 ], [ 4, %bb.pk ], [ 4, %bb.or ], [ 4, %bb.ky ], [ 4, %bb.kf ], [ 4, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.88.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef %i.ua) #24
  call void @free(ptr noundef %i.sj) #24
  br label %bb.qb

bb.pl:                                            ; preds = %.loopexit.i
  %i.cib = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store i32 0, ptr %i.cib, align 8, !tbaa !185
  %i.cic = load i32, ptr %i.bka, align 8, !tbaa !179
  %i.cid = load i32, ptr %i.bkh, align 8, !tbaa !175
  %i.cie = add i32 %i.cid, %i.cic
  store i32 %i.cie, ptr %i.bkh, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.88.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not132 = icmp ult i32 %i.ub, %i.cdo
  br i1 %.not132, label %parseLSig.exit.jt6, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cdl, i64 32
  %i.cig = load i32, ptr %i.cif, align 8, !tbaa !175 ; 3 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cdl, i64 4
  %i.cii = load i32, ptr %i.cih, align 4, !tbaa !173 ; 2 uses
  %.not133 = icmp eq i32 %i.cig, %i.cii
  br i1 %.not133, label %parseLSig.exit.jt5, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.30, i32 noundef %i.cig, i32 noundef %i.cii) #24
  call void @free(ptr noundef nonnull %i.sj) #24
  br label %bb.qb

parseLSig.exit:                                   ; preds = %.lr.ph3166, %thread-pre-split
  %.0103.ph11182102.lcssa = phi i32 [ %i.cil, %thread-pre-split ], [ 0, %.lr.ph3166 ]
  %i.cij = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24 ; 0 uses
  br label %.critedge

parseLSig.exit.jt0:                               ; preds = %bb.cp, %bb.co
  %i.cik = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt0.not = icmp eq ptr %i.cik, null
  br i1 %.not1261102.jt0.not, label %.critedge, label %bb.cj

parseLSig.exit.jt5:                               ; preds = %bb.pm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i32 noundef %i.ub, i32 noundef %i.cig) #24
  %i.cil = add i32 %.0103.ph111821023167, 1       ; 3 uses
  %i.cim = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt5.not = icmp eq ptr %i.cim, null
  br i1 %.not1261102.jt5.not, label %.critedge, label %thread-pre-split

parseLSig.exit.jt2:                               ; preds = %bb.fu, %.preheader.i164
  call void @free(ptr noundef nonnull %i.afw) #24
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.306, i32 noundef %.2.i68151.i, i32 noundef %.2.i147.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.cin = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt2.not = icmp eq ptr %i.cin, null
  br i1 %.not1261102.jt2.not, label %.critedge, label %bb.ck

parseLSig.exit.jt1:                               ; preds = %bb.eg, %.preheader.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  %i.cio = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt1.not = icmp eq ptr %i.cio, null
  br i1 %.not1261102.jt1.not, label %.critedge, label %bb.cl

parseLSig.exit.jt6:                               ; preds = %parseFunctionHeader.exit, %bb.pl
  %i.cip = phi i32 [ %i.bbn, %parseFunctionHeader.exit ], [ %i.ua, %bb.pl ] ; 2 uses
  %.1102.jt6 = phi i32 [ 0, %parseFunctionHeader.exit ], [ %i.ub, %bb.pl ] ; 3 uses
  %i.ciq = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt6.not = icmp eq ptr %i.ciq, null
  br i1 %.not1261102.jt6.not, label %.critedge, label %bb.cm

parseLSig.exit.jt7:                               ; preds = %bb.ci, %.lr.ph.jt7
  %i.cir = load i8, ptr %i.sj, align 1, !tbaa !123
  %i.cis = icmp ne i8 %i.cir, 83
  %i.cit = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt7 = icmp ne ptr %i.cit, null
  %or.cond1391103.jt7 = select i1 %.not1261102.jt7, i1 %i.cis, i1 false
  br i1 %or.cond1391103.jt7, label %.lr.ph.jt7, label %.critedge

.critedge:                                        ; preds = %parseMD.exit, %parseLSig.exit.jt5, %parseLSig.exit.jt6, %parseGlobals.exit, %parseLSig.exit.jt7, %parseLSig.exit.jt1, %parseLSig.exit.jt2, %parseLSig.exit.jt0, %parseLSig.exit, %.backedge365, %.preheader
  %.0103.ph.lcssa1074 = phi i32 [ 0, %.backedge365 ], [ 0, %.preheader ], [ 0, %parseLSig.exit.jt0 ], [ %i.cil, %parseLSig.exit.jt5 ], [ 0, %parseGlobals.exit ], [ 0, %parseLSig.exit.jt2 ], [ 0, %parseLSig.exit.jt1 ], [ %.0103.ph11182102.lcssa, %parseLSig.exit ], [ 0, %parseLSig.exit.jt7 ], [ %.0103.ph111821023167, %parseLSig.exit.jt6 ], [ 0, %parseMD.exit ] ; 3 uses
  call void @free(ptr noundef %i.sj) #24
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %.0103.ph.lcssa1074) #24
  %.not128 = icmp eq i32 %4, 0
  br i1 %.not128, label %sigperf_events_init.exit, label %bb.po

bb.po:                                            ; preds = %.critedge
  %i.ciu = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  %.not.i297 = icmp eq ptr %i.ciu, null
  br i1 %.not.i297, label %bb.pp, label %.thread.i298

bb.pp:                                            ; preds = %bb.po
  %i.civ = call ptr @cli_events_new(i32 noundef 128) #24 ; 2 uses
  store ptr %i.civ, ptr @g_sigevents, align 8, !tbaa !125
  %.not15.i = icmp eq ptr %i.civ, null
  br i1 %.not15.i, label %bb.pq, label %.thread.i298

bb.pq:                                            ; preds = %bb.pp
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.351) #24
  br label %sigperf_events_init.exit

.thread.i298:                                     ; preds = %bb.pp, %bb.po
  %i.ciw = load i32, ptr @g_sigid, align 4, !tbaa !117 ; 2 uses
  %i.cix = icmp ugt i32 %i.ciw, 125
  br i1 %i.cix, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %.thread.i298
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.352) #24
  br label %sigperf_events_init.exit

bb.ps:                                            ; preds = %.thread.i298
  %i.ciy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !152 ; 2 uses
  %.not16.i = icmp eq ptr %i.ciz, null
  br i1 %.not16.i, label %bb.pt, label %bb.pv

bb.pt:                                            ; preds = %bb.ps
  %i.cja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cjb = load ptr, ptr %i.cja, align 8, !tbaa !153 ; 2 uses
  %.not17.i = icmp eq ptr %i.cjb, null
  br i1 %.not17.i, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.cjc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cjd = load i32, ptr %i.cjc, align 8, !tbaa !186
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.353, i32 noundef %i.cjd) #24
  br label %sigperf_events_init.exit

bb.pv:                                            ; preds = %bb.pt, %bb.ps
  %.0.i299 = phi ptr [ %i.ciz, %bb.ps ], [ %i.cjb, %bb.pt ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.354, i32 noundef %i.ciw, ptr noundef nonnull %.0.i299) #24
  %i.cje = load i32, ptr @g_sigid, align 4, !tbaa !117 ; 3 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store i32 %i.cje, ptr %i.cjf, align 8, !tbaa !186
  %i.cjg = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  %i.cjh = add i32 %i.cje, 1
  store i32 %i.cjh, ptr @g_sigid, align 4, !tbaa !117
  %i.cji = call i32 @cli_event_define(ptr noundef %i.cjg, i32 noundef %i.cje, ptr noundef nonnull %.0.i299, i32 noundef 5, i32 noundef 2) #24
  %.not18.i = icmp eq i32 %i.cji, 0
  br i1 %.not18.i, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.cjj = load i32, ptr %i.cjf, align 8, !tbaa !186
end_hunk_1
begin_hunk_2_@readNumber:bb.a
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.epil = icmp eq i64 %i.am, 96
  br i1 %.not.epil, label %._crit_edge.loopexit.epilog-lcssa, label %.thread, !prof !134

._crit_edge.loopexit.epilog-lcssa:                ; preds = %.lr.ph.epil.preheader
  %i.an = and i64 %i.al, 15
  %i.ao = zext nneg i32 %.03346.epil.init to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %.03545.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.035.lcssa = phi i64 [ 0, %.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.loopexit.epilog-lcssa ]
  store i32 %i.i, ptr %1, align 4, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge, %bb.f, %bb.d, %bb.b
  %.2 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.thread ], [ %.035.lcssa, %._crit_edge ]
  ret i64 %.2
}

declare i32 @cl_retflevel() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @readFixedNumber(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 1, 3) %4) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !117    ; 3 uses
  %i.b = add i32 %i.a, %4                         ; 4 uses
  %i.c = icmp ugt i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp ult i32 %i.a, %i.b
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !123
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = and i32 %i.h, 240
  %.not = icmp eq i32 %i.i, 96
  br i1 %.not, label %bb.d, label %bb.c, !prof !134

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.1, %.lr.ph.preheader
  %.lcssa = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.m, %.lr.ph.1 ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %.lcssa) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.j = and i32 %i.h, 15                         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %i.e, 1      ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !123
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %i.n = and i32 %i.m, 240
  %.not.1 = icmp eq i32 %i.n, 96
  br i1 %.not.1, label %bb.e, label %bb.c, !prof !134

bb.e:                                             ; preds = %.lr.ph.1
  %i.o = shl nuw nsw i32 %i.m, 4
  %i.p = and i32 %i.o, 240
  %i.q = or disjoint i32 %i.p, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e, %.preheader
  %.025.lcssa = phi i32 [ 0, %.preheader ], [ %i.j, %bb.d ], [ %i.q, %bb.e ]
  store i32 %i.b, ptr %1, align 4, !tbaa !117
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %.025.lcssa, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @readData(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !117    ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123   ; 2 uses
  %.not = icmp eq i8 %i.d, 124
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %i.d to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.284, i32 noundef %i.e) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = add i32 %i.a, 1                          ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !117
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !123
  %.fr = freeze i8 %i.i                           ; 3 uses
  %i.j = zext i8 %.fr to i32                      ; 2 uses
  %i.k = add nsw i32 %i.j, -96                    ; 4 uses
  %i.l = icmp ugt i32 %i.k, 16
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.j) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %readNumber.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %i.a, 2                          ; 3 uses
  %i.n = add i32 %i.k, %i.m                       ; 6 uses
  %i.o = icmp ugt i32 %i.n, %2
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %readNumber.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i8 %.fr, 96
  br i1 %i.p, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.q = icmp ult i32 %i.m, %i.n
  br i1 %i.q, label %.lr.ph.i.preheader, label %readNumber.exit.thread63

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.r = zext i32 %i.m to i64                     ; 2 uses
  %i.s = zext nneg i32 %i.k to i64                ; 2 uses
  %xtraiter = and i64 %i.s, 1
  %i.t = icmp eq i32 %i.k, 1
  br i1 %i.t, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.s, 30
  br label %.lr.ph.i

readNumber.exit.thread63:                         ; preds = %.preheader.i
  store i32 %i.n, ptr %1, align 4, !tbaa !117
  br label %readNumber.exit.thread

bb.h:                                             ; preds = %bb.g
  store i32 %i.n, ptr %1, align 4, !tbaa !117
  br label %readNumber.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.an, %bb.i ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !123   ; 2 uses
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = and i64 %i.w, 240
  %.not.i = icmp eq i64 %i.x, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa105 = phi i8 [ %i.ap, %.lr.ph.i.epil.preheader ], [ %i.v, %.lr.ph.i ], [ %i.ab, %.lr.ph.i.1 ]
  %i.y = sext i8 %.lcssa105 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.y) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %readNumber.exit.thread

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !123 ; 2 uses
  %i.ac = zext i8 %i.ab to i64                    ; 2 uses
  %i.ad = and i64 %i.ac, 240
  %.not.i.1 = icmp eq i64 %i.ad, 96
  br i1 %.not.i.1, label %bb.i, label %.thread.i, !prof !134

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ae = or disjoint i32 %.03346.i, 4
  %i.af = and i64 %i.w, 15
  %i.ag = zext nneg i32 %.03346.i to i64
  %i.ah = shl i64 %i.af, %i.ag
  %i.ai = or i64 %i.ah, %.03545.i
  %i.aj = and i64 %i.ac, 15
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = shl i64 %i.aj, %i.ak
  %i.am = or i64 %i.al, %i.ai                     ; 3 uses
  %i.an = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %readNumber.exit.unr-lcssa, label %.lr.ph.i

readNumber.exit.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %readNumber.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %readNumber.exit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ %i.r, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %readNumber.exit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.an, %readNumber.exit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %readNumber.exit.unr-lcssa ]
  %lcmp.mod109 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !123 ; 2 uses
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = and i64 %i.aq, 240
  %.not.i.epil = icmp eq i64 %i.ar, 96
  br i1 %.not.i.epil, label %readNumber.exit.epilog-lcssa, label %.thread.i, !prof !134

readNumber.exit.epilog-lcssa:                     ; preds = %.lr.ph.i.epil.preheader
  %i.as = and i64 %i.aq, 15
  %i.at = zext nneg i32 %.03346.i.epil.init to i64
  %i.au = shl i64 %i.as, %i.at
  %i.av = or i64 %i.au, %.03545.i.epil.init
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %readNumber.exit.unr-lcssa, %readNumber.exit.epilog-lcssa
  %.lcssa107 = phi i64 [ %i.am, %readNumber.exit.unr-lcssa ], [ %i.av, %readNumber.exit.epilog-lcssa ] ; 2 uses
  store i32 %i.n, ptr %1, align 4, !tbaa !117
  %i.aw = trunc i64 %.lcssa107 to i32             ; 3 uses
  %.not56 = icmp eq i32 %i.aw, 0
  br i1 %.not56, label %readNumber.exit.thread, label %bb.j

readNumber.exit.thread:                           ; preds = %.thread.i, %bb.h, %bb.f, %bb.d, %readNumber.exit.thread63, %readNumber.exit
  store i32 0, ptr %4, align 4, !tbaa !117
  br label %bb.q

bb.j:                                             ; preds = %readNumber.exit
  %i.ax = shl i32 %i.aw, 1
  %i.ay = add i32 %i.n, %i.ax                     ; 4 uses
  %i.az = icmp ugt i32 %i.ay, %2
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.285) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ba = and i64 %.lcssa107, 4294967295
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.ba) #25 ; 4 uses
  %.not57 = icmp eq ptr %i.bb, null
  br i1 %.not57, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.286) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %1, align 4, !tbaa !117   ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.ay
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.04773 = phi i32 [ %i.bv, %bb.p ], [ %i.bc, %bb.n ] ; 3 uses
  %.04872 = phi ptr [ %i.bu, %bb.p ], [ %i.bb, %bb.n ] ; 2 uses
  %i.be = zext i32 %.04773 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !123 ; 2 uses
  %i.bh = add nuw i32 %.04773, 1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !123 ; 2 uses
  %i.bl = zext i8 %i.bg to i32                    ; 2 uses
  %i.bm = and i32 %i.bl, 240
  %i.bn = icmp eq i32 %i.bm, 96
  %i.bo = zext i8 %i.bk to i32                    ; 2 uses
  %i.bp = and i32 %i.bo, 240
  %i.bq = icmp eq i32 %i.bp, 96
  %.not60 = select i1 %i.bn, i1 %i.bq, i1 false, !prof !134
  br i1 %.not60, label %bb.p, label %bb.o, !prof !134

bb.o:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.287, i32 noundef %i.bl, i32 noundef %i.bo) #24
  store i8 0, ptr %3, align 1, !tbaa !132
  tail call void @free(ptr noundef %i.bb) #24
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.br = and i8 %i.bg, 15
  %i.bs = shl i8 %i.bk, 4
  %i.bt = or disjoint i8 %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %.04872, i64 1
  store i8 %i.bt, ptr %.04872, align 1, !tbaa !123
  %i.bv = add i32 %.04773, 2                      ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %i.ay
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.n
  store i32 %i.ay, ptr %1, align 4, !tbaa !117
  store i32 %i.aw, ptr %4, align 4, !tbaa !117
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %._crit_edge, %bb.m, %bb.k, %readNumber.exit.thread, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.k ], [ null, %bb.o ], [ %i.bb, %._crit_edge ], [ null, %bb.m ], [ null, %readNumber.exit.thread ]
  ret ptr %.2
}

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @parseType(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !117    ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %.fr = freeze i8 %i.d                           ; 3 uses
  %i.e = zext i8 %.fr to i32                      ; 2 uses
  %i.f = add nsw i32 %i.e, -96                    ; 4 uses
  %i.g = icmp ugt i32 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.e) #24
  store i8 0, ptr %5, align 1, !tbaa !132
  br label %readNumber.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %i.a, 1                          ; 3 uses
  %i.i = add i32 %i.f, %i.h                       ; 4 uses
  %i.j = icmp ugt i32 %i.i, %4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %5, align 1, !tbaa !132
  br label %readNumber.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %.fr, 96
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp ult i32 %i.h, %i.i
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %i.n = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %i.f, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 30
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %3, align 4, !tbaa !117
  br label %readNumber.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %bb.g ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !123   ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = and i64 %i.r, 240
  %.not.i = icmp eq i64 %i.s, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa = phi i8 [ %i.ak, %.lr.ph.i.epil.preheader ], [ %i.q, %.lr.ph.i ], [ %i.w, %.lr.ph.i.1 ]
  %i.t = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.t) #24
  store i8 0, ptr %5, align 1, !tbaa !132
  br label %readNumber.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !123   ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 240
  %.not.i.1 = icmp eq i64 %i.y, 96
  br i1 %.not.i.1, label %bb.g, label %.thread.i, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.z = or disjoint i32 %.03346.i, 4
  %i.aa = and i64 %i.r, 15
  %i.ab = zext nneg i32 %.03346.i to i64
  %i.ac = shl i64 %i.aa, %i.ab
  %i.ad = or i64 %i.ac, %.03545.i
  %i.ae = and i64 %i.x, 15
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = shl i64 %i.ae, %i.af
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %i.ai = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil.init
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.i.epil = icmp eq i64 %i.am, 96
  br i1 %.not.i.epil, label %._crit_edge.i.loopexit.epilog-lcssa, label %.thread.i, !prof !134

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %.lr.ph.i.epil.preheader
  %i.an = and i64 %i.al, 15
  %i.ao = zext nneg i32 %.03346.i.epil.init to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %.03545.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.035.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.i.loopexit.epilog-lcssa ]
  store i32 %i.i, ptr %3, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %bb.b, %bb.d, %bb.f, %.thread.i, %._crit_edge.i
  %.2.i = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.thread.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ar = trunc i64 %.2.i to i32                  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !121
  %i.at = load i8, ptr %5, align 1, !tbaa !132, !range !136, !noundef !137
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %readNumber.exit
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.296) #24
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %readNumber.exit
  %i.av = shl i64 %.2.i, 1
  %i.aw = and i64 %i.av, 8589934590
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #25 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !122
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not24 = icmp eq i32 %i.ar, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.279, i32 noundef %i.ar) #24
  br label %.loopexit.sink.split

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.az = tail call fastcc zeroext i16 @readTypeID(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv28
  store i16 %i.az, ptr %i.bb, align 2, !tbaa !113
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.bc = load i32, ptr %i.as, align 8, !tbaa !121
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next29, %i.bd
  br i1 %i.be, label %.lr.ph, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.h, %bb.j
  store i8 0, ptr %5, align 1, !tbaa !132
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @readTypeID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !117    ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %.fr = freeze i8 %i.d                           ; 3 uses
  %i.e = zext i8 %.fr to i32                      ; 2 uses
  %i.f = add nsw i32 %i.e, -96                    ; 4 uses
  %i.g = icmp ugt i32 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.e) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %i.a, 1                          ; 3 uses
  %i.i = add i32 %i.f, %i.h                       ; 4 uses
  %i.j = icmp ugt i32 %i.i, %3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %.fr, 96
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp ult i32 %i.h, %i.i
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %i.n = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %i.f, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 30
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %bb.g ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !123   ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = and i64 %i.r, 240
  %.not.i = icmp eq i64 %i.s, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa = phi i8 [ %i.ak, %.lr.ph.i.epil.preheader ], [ %i.q, %.lr.ph.i ], [ %i.w, %.lr.ph.i.1 ]
  %i.t = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.t) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !123   ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 240
  %.not.i.1 = icmp eq i64 %i.y, 96
  br i1 %.not.i.1, label %bb.g, label %.thread.i, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.z = or disjoint i32 %.03346.i, 4
  %i.aa = and i64 %i.r, 15
  %i.ab = zext nneg i32 %.03346.i to i64
  %i.ac = shl i64 %i.aa, %i.ab
  %i.ad = or i64 %i.ac, %.03545.i
  %i.ae = and i64 %i.x, 15
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = shl i64 %i.ae, %i.af
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %i.ai = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.i.epil = icmp eq i64 %i.am, 96
  br i1 %.not.i.epil, label %._crit_edge.i.loopexit.epilog-lcssa, label %.thread.i, !prof !134

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %.lr.ph.i.epil.preheader
  %i.an = and i64 %i.al, 15
  %i.ao = zext nneg i32 %.03346.i.epil.init to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %.03545.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.035.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.i.loopexit.epilog-lcssa ]
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %bb.b, %bb.d, %bb.f, %.thread.i, %._crit_edge.i
  %.2.i = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.thread.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.au = load i16, ptr %i.at, align 4, !tbaa !154
  %i.av = zext i16 %i.au to i32
  %i.aw = add i32 %i.as, %i.av
  %i.ax = zext i32 %i.aw to i64
  %.not = icmp ult i64 %.2.i, %i.ax
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %readNumber.exit
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %bb.j

bb.i:                                             ; preds = %readNumber.exit
  %i.ay = trunc i64 %.2.i to i16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i16 [ -1, %bb.h ], [ %i.ay, %bb.i ]
  ret i16 %.0
}

declare ptr @cli_bitset_init() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @types_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = zext i16 %2 to i32
  %i.d = zext i16 %2 to i64
  %i.e = getelementptr [32 x i8], ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -2080    ; 2 uses
  %i.g = zext i16 %3 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr @cli_apicall_types, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !113
  %i.k = zext i16 %i.j to i32
  %i.l = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.k
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i32 %i.l to i16
  store i16 %i.n, ptr %i.i, align 2, !tbaa !113
  %i.o = load i32, ptr %i.f, align 8, !tbaa !120  ; 3 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq i32 %i.o, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.307, i32 noundef %i.o, i32 noundef %i.p) #24
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 -2064    ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !121  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !121  ; 2 uses
  %.not45 = icmp eq i32 %i.r, %i.t
  br i1 %.not45, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not54 = icmp eq i32 %i.r, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.w = getelementptr i8, ptr %i.e, i64 -2072
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.308, i32 noundef %i.r, i32 noundef %i.t) #24
  br label %.loopexit

bb.f:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.q, align 8, !tbaa !121
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.aa = phi i32 [ %i.o, %.lr.ph ], [ %i.al, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !113 ; 4 uses
  %i.ad = icmp ult i16 %i.ac, 69
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !113 ; 3 uses
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not46 = icmp eq i16 %i.ag, %i.ac
  br i1 %.not46, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = zext nneg i16 %i.ac to i32
  %i.ai = zext i16 %i.ag to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.309, i32 noundef %i.ai, i32 noundef %i.ah) #24
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.aj = add i16 %i.ac, -69
  %i.ak = tail call fastcc zeroext i1 @types_equal(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %i.ag, i16 noundef zeroext %i.aj)
  br i1 %i.ak, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.f, align 8, !tbaa !120
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %i.al = phi i32 [ %.pre, %._crit_edge ], [ %i.aa, %bb.h ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.f, %.preheader, %bb.a, %bb.i, %bb.e, %bb.c
  %.037 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.i ], [ true, %.preheader ], [ true, %bb.k ], [ false, %bb.j ], [ true, %bb.f ]
  ret i1 %.037
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @type_components(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = icmp ult i16 %1, 65
  br i1 %i.b, label %common.ret25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = zext i16 %1 to i64
  %i.f = getelementptr [32 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -2080
  %i.h = load i32, ptr %i.g, align 8, !tbaa !120
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %common.ret25
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.315, i32 noundef %i.a) #24
  store i8 0, ptr %2, align 1, !tbaa !132
  br label %common.ret25

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 -2064    ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !121
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %common.ret25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.f, i64 -2072
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.024 = phi i16 [ 0, %.lr.ph ], [ %i.p, %bb.e ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2, !tbaa !113
  %i.o = tail call fastcc zeroext i16 @type_components(ptr noundef nonnull %0, i16 noundef zeroext %i.n, ptr noundef %2)
  %i.p = add i16 %i.o, %.024                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.i, align 8, !tbaa !121
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.e, label %common.ret25

common.ret25:                                     ; preds = %bb.b, %bb.a, %bb.g, %bb.c, %bb.d, %bb.e, %bb.f
  %common.ret25.op = phi i16 [ %i.aa, %bb.f ], [ 0, %bb.d ], [ 2, %bb.b ], [ 0, %bb.g ], [ 0, %bb.c ], [ 1, %bb.a ], [ %i.p, %bb.e ]
  ret i16 %common.ret25.op

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.f, i64 -2072
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.v = load i16, ptr %i.u, align 2, !tbaa !113
  %i.w = tail call fastcc zeroext i16 @type_components(ptr noundef nonnull %0, i16 noundef zeroext %i.v, ptr noundef %2)
  %i.x = getelementptr i8, ptr %i.f, i64 -2064
  %i.y = load i32, ptr %i.x, align 8, !tbaa !121
  %i.z = trunc i32 %i.y to i16
  %i.aa = mul i16 %i.w, %i.z
  br label %common.ret25

bb.g:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !132
  br label %common.ret25
}

declare ptr @cli_safer_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @readOperand(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !117    ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %.fr = freeze i8 %i.d                           ; 5 uses
  %i.e = add i8 %.fr, -64
  %or.cond = icmp ult i8 %i.e, 17
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i8 %.fr, 32
  store i8 %i.f, ptr %i.c, align 1, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !176
  %i.k = add i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call ptr @cli_safer_realloc_or_free(ptr noundef %i.h, i64 noundef %i.m) #24 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !206
  %.not52 = icmp eq ptr %i.n, null
  br i1 %.not52, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %2, align 4, !tbaa !117    ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !123
  %.fr135 = freeze i8 %i.r                        ; 3 uses
  %i.s = zext i8 %.fr135 to i32                   ; 2 uses
  %i.t = add nsw i32 %i.s, -96                    ; 4 uses
  %i.u = icmp ugt i32 %i.t, 16
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.s) #24
  br label %readNumber.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.v = add i32 %i.o, 1                          ; 3 uses
  %i.w = add i32 %i.t, %i.v                       ; 6 uses
  %i.x = icmp ugt i32 %i.w, %3
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exitthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %.fr135, 96
  br i1 %i.y, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.z = icmp ult i32 %i.v, %i.w
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.aa = zext i32 %i.v to i64                    ; 2 uses
  %i.ab = zext nneg i32 %i.t to i64               ; 2 uses
  %xtraiter126 = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.t, 1
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter130 = and i64 %i.ab, 30
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.w, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i.preheader.new
  %indvars.iv98 = phi i64 [ %i.aa, %.lr.ph.i.preheader.new ], [ %indvars.iv.next99.1, %bb.j ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %bb.j ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.av, %bb.j ]
  %niter131 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter131.next.1, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !123 ; 2 uses
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = and i64 %i.af, 240
  %.not.i = icmp eq i64 %i.ag, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa = phi i8 [ %i.ay, %.lr.ph.i.epil.preheader ], [ %i.ae, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.1 ]
  %i.ah = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.ah) #24
  br label %readNumber.exitthread-pre-split

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.i.1 = icmp eq i64 %i.am, 96
  br i1 %.not.i.1, label %bb.j, label %.thread.i, !prof !134

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.an = or disjoint i32 %.03346.i, 4
  %i.ao = and i64 %i.af, 15
  %i.ap = zext nneg i32 %.03346.i to i64
  %i.aq = shl i64 %i.ao, %i.ap
  %i.ar = or i64 %i.aq, %.03545.i
  %i.as = and i64 %i.al, 15
  %i.at = zext nneg i32 %i.an to i64
  %i.au = shl i64 %i.as, %i.at
  %i.av = or i64 %i.au, %i.ar                     ; 3 uses
  %i.aw = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter131.next.1 = add i64 %niter131, 2         ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv98.epil.init = phi i64 [ %i.aa, %.lr.ph.i.preheader ], [ %indvars.iv.next99.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.av, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod129 = trunc i8 %.fr135 to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98.epil.init
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !123 ; 2 uses
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = and i64 %i.az, 240
  %.not.i.epil = icmp eq i64 %i.ba, 96
  br i1 %.not.i.epil, label %._crit_edge.i.loopexit.epilog-lcssa, label %.thread.i, !prof !134

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %.lr.ph.i.epil.preheader
  %i.bb = and i64 %i.az, 15
  %i.bc = zext nneg i32 %.03346.i.epil.init to i64
  %i.bd = shl i64 %i.bb, %i.bc
  %i.be = or i64 %i.bd, %.03545.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.035.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.av, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.be, %._crit_edge.i.loopexit.epilog-lcssa ]
  store i32 %i.w, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exitthread-pre-split:                  ; preds = %.thread.i, %bb.g, %bb.e
  store i8 0, ptr %4, align 1, !tbaa !132
  %.pr = load i32, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %readNumber.exitthread-pre-split, %bb.i, %._crit_edge.i
  %i.bf = phi i32 [ %.pr, %readNumber.exitthread-pre-split ], [ %i.w, %bb.i ], [ %i.w, %._crit_edge.i ] ; 3 uses
  %.2.i = phi i64 [ 0, %readNumber.exitthread-pre-split ], [ 0, %bb.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !206
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !176
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi ; 5 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !124
  %i.bk = add i32 %i.bf, 1                        ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, %3
  br i1 %i.bl, label %bb.k, label %.preheader.i54

.preheader.i54:                                   ; preds = %readNumber.exit
  %.not80 = icmp eq i32 %i.bf, -1
  br i1 %.not80, label %readFixedNumber.exit.thread76, label %.lr.ph.preheader.i

readFixedNumber.exit.thread76:                    ; preds = %.preheader.i54
  store i32 %i.bk, ptr %2, align 4, !tbaa !117
  br label %readFixedNumber.exit.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i54
  %i.bm = zext i32 %i.bf to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !123 ; 2 uses
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 240
  %.not.i58 = icmp eq i32 %i.bq, 96
  br i1 %.not.i58, label %readFixedNumber.exit, label %bb.l, !prof !134

bb.k:                                             ; preds = %readNumber.exit
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readFixedNumber.exit.thread

bb.l:                                             ; preds = %.lr.ph.preheader.i
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bp) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readFixedNumber.exit.thread

readFixedNumber.exit:                             ; preds = %.lr.ph.preheader.i
  store i32 %i.bk, ptr %2, align 4, !tbaa !117
  %i.br = shl i8 %i.bo, 3
  %i.bs = and i8 %i.br, 120                       ; 4 uses
  %.not53 = icmp eq i8 %i.bs, 0
  br i1 %.not53, label %readFixedNumber.exit.thread, label %bb.m

readFixedNumber.exit.thread:                      ; preds = %bb.l, %bb.k, %readFixedNumber.exit.thread76, %readFixedNumber.exit
  %i.bt = trunc i64 %.2.i to i32
  %i.bu = or i32 %i.bt, -2147483648
  br label %bb.ad

bb.m:                                             ; preds = %readFixedNumber.exit
  %i.bv = icmp samesign ult i8 %i.bs, 9
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = trunc i64 %.2.i to i8
  store i8 %i.bw, ptr %i.bj, align 8, !tbaa !123
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.bx = icmp samesign ult i8 %i.bs, 17
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = trunc i64 %.2.i to i16
  store i16 %i.by, ptr %i.bj, align 8, !tbaa !113
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bz = icmp samesign ult i8 %i.bs, 33
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = trunc i64 %.2.i to i32
  store i32 %i.ca, ptr %i.bj, align 8, !tbaa !117
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i64 %.2.i, ptr %i.bj, align 8, !tbaa !124
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !174
  %i.cd = load i32, ptr %i.i, align 4, !tbaa !176 ; 2 uses
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !176
  %i.cf = add i32 %i.cd, %i.cc
  br label %bb.ad

bb.u:                                             ; preds = %bb.a
  %i.cg = zext i8 %.fr to i32                     ; 2 uses
  %i.ch = add nsw i32 %i.cg, -96                  ; 4 uses
  %i.ci = icmp ugt i32 %i.ch, 16
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.cg) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit72

bb.w:                                             ; preds = %bb.u
  %i.cj = add i32 %i.a, 1                         ; 3 uses
  %i.ck = add i32 %i.ch, %i.cj                    ; 4 uses
  %i.cl = icmp ugt i32 %i.ck, %3
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit72

bb.y:                                             ; preds = %bb.w
  %i.cm = icmp eq i8 %.fr, 96
  br i1 %i.cm, label %bb.z, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.y
  %i.cn = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cn, label %.lr.ph.i64.preheader, label %._crit_edge.i61

.lr.ph.i64.preheader:                             ; preds = %.preheader.i60
  %i.co = zext i32 %i.cj to i64                   ; 2 uses
  %i.cp = zext nneg i32 %i.ch to i64              ; 2 uses
  %xtraiter = and i64 %i.cp, 1
  %i.cq = icmp eq i32 %i.ch, 1
  br i1 %i.cq, label %.lr.ph.i64.epil.preheader, label %.lr.ph.i64.preheader.new

.lr.ph.i64.preheader.new:                         ; preds = %.lr.ph.i64.preheader
  %unroll_iter = and i64 %i.cp, 30
  br label %.lr.ph.i64

bb.z:                                             ; preds = %bb.y
  store i32 %i.ck, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit72

.lr.ph.i64:                                       ; preds = %bb.aa, %.lr.ph.i64.preheader.new
  %indvars.iv = phi i64 [ %i.co, %.lr.ph.i64.preheader.new ], [ %indvars.iv.next.1, %bb.aa ] ; 3 uses
  %.03346.i66 = phi i32 [ 0, %.lr.ph.i64.preheader.new ], [ %i.dk, %bb.aa ] ; 3 uses
  %.03545.i67 = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %i.dj, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %niter.next.1, %bb.aa ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !123 ; 2 uses
  %i.ct = zext i8 %i.cs to i64                    ; 2 uses
  %i.cu = and i64 %i.ct, 240
  %.not.i68 = icmp eq i64 %i.cu, 96
  br i1 %.not.i68, label %.lr.ph.i64.1, label %.thread.i69, !prof !134

.thread.i69:                                      ; preds = %.lr.ph.i64, %.lr.ph.i64.1, %.lr.ph.i64.epil.preheader
  %.lcssa121 = phi i8 [ %i.dm, %.lr.ph.i64.epil.preheader ], [ %i.cs, %.lr.ph.i64 ], [ %i.cy, %.lr.ph.i64.1 ]
  %i.cv = sext i8 %.lcssa121 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.cv) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit72

.lr.ph.i64.1:                                     ; preds = %.lr.ph.i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !123 ; 2 uses
  %i.cz = zext i8 %i.cy to i64                    ; 2 uses
  %i.da = and i64 %i.cz, 240
  %.not.i68.1 = icmp eq i64 %i.da, 96
  br i1 %.not.i68.1, label %bb.aa, label %.thread.i69, !prof !134

bb.aa:                                            ; preds = %.lr.ph.i64.1
  %i.db = or disjoint i32 %.03346.i66, 4
  %i.dc = and i64 %i.ct, 15
  %i.dd = zext nneg i32 %.03346.i66 to i64
  %i.de = shl i64 %i.dc, %i.dd
  %i.df = or i64 %i.de, %.03545.i67
  %i.dg = and i64 %i.cz, 15
  %i.dh = zext nneg i32 %i.db to i64
  %i.di = shl i64 %i.dg, %i.dh
  %i.dj = or i64 %i.di, %i.df                     ; 3 uses
  %i.dk = add nuw nsw i32 %.03346.i66, 8          ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i61.loopexit.unr-lcssa, label %.lr.ph.i64

._crit_edge.i61.loopexit.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i61, label %.lr.ph.i64.epil.preheader

.lr.ph.i64.epil.preheader:                        ; preds = %._crit_edge.i61.loopexit.unr-lcssa, %.lr.ph.i64.preheader
  %indvars.iv.epil.init = phi i64 [ %i.co, %.lr.ph.i64.preheader ], [ %indvars.iv.next.1, %._crit_edge.i61.loopexit.unr-lcssa ]
  %.03346.i66.epil.init = phi i32 [ 0, %.lr.ph.i64.preheader ], [ %i.dk, %._crit_edge.i61.loopexit.unr-lcssa ]
  %.03545.i67.epil.init = phi i64 [ 0, %.lr.ph.i64.preheader ], [ %i.dj, %._crit_edge.i61.loopexit.unr-lcssa ]
  %lcmp.mod125 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !123 ; 2 uses
  %i.dn = zext i8 %i.dm to i64                    ; 2 uses
  %i.do = and i64 %i.dn, 240
  %.not.i68.epil = icmp eq i64 %i.do, 96
  br i1 %.not.i68.epil, label %._crit_edge.i61.loopexit.epilog-lcssa, label %.thread.i69, !prof !134

._crit_edge.i61.loopexit.epilog-lcssa:            ; preds = %.lr.ph.i64.epil.preheader
  %i.dp = and i64 %i.dn, 15
  %i.dq = zext nneg i32 %.03346.i66.epil.init to i64
  %i.dr = shl i64 %i.dp, %i.dq
  %i.ds = or i64 %i.dr, %.03545.i67.epil.init
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.i61.loopexit.epilog-lcssa, %._crit_edge.i61.loopexit.unr-lcssa, %.preheader.i60
  %.035.lcssa.i62 = phi i64 [ 0, %.preheader.i60 ], [ %i.dj, %._crit_edge.i61.loopexit.unr-lcssa ], [ %i.ds, %._crit_edge.i61.loopexit.epilog-lcssa ]
  store i32 %i.ck, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit72

readNumber.exit72:                                ; preds = %bb.v, %bb.x, %bb.z, %.thread.i69, %._crit_edge.i61
  %.2.i63 = phi i64 [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %.thread.i69 ], [ %.035.lcssa.i62, %._crit_edge.i61 ] ; 2 uses
  %i.dt = load i8, ptr %4, align 1, !tbaa !132, !range !136, !noundef !137
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %readNumber.exit72
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !174 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %.not = icmp ult i64 %.2.i63, %i.dx
  %i.dy = trunc i64 %.2.i63 to i32                ; 2 uses
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.348, i32 noundef %i.dy, i32 noundef %i.dw) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %readNumber.exit72, %bb.c, %readFixedNumber.exit.thread, %bb.t, %bb.ac
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.ac ], [ -1, %readNumber.exit72 ], [ %i.cf, %bb.t ], [ %i.bu, %readFixedNumber.exit.thread ], [ %i.dy, %bb.ab ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i16 @readFuncID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !117    ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %.fr = freeze i8 %i.d                           ; 3 uses
  %i.e = zext i8 %.fr to i32                      ; 2 uses
  %i.f = add nsw i32 %i.e, -96                    ; 4 uses
  %i.g = icmp ugt i32 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.e) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %i.a, 1                          ; 3 uses
  %i.i = add i32 %i.f, %i.h                       ; 4 uses
  %i.j = icmp ugt i32 %i.i, %3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %.fr, 96
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp ult i32 %i.h, %i.i
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %i.n = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %i.f, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 30
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %bb.g ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !123   ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = and i64 %i.r, 240
  %.not.i = icmp eq i64 %i.s, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa = phi i8 [ %i.ak, %.lr.ph.i.epil.preheader ], [ %i.q, %.lr.ph.i ], [ %i.w, %.lr.ph.i.1 ]
  %i.t = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.t) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !123   ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 240
  %.not.i.1 = icmp eq i64 %i.y, 96
  br i1 %.not.i.1, label %bb.g, label %.thread.i, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.z = or disjoint i32 %.03346.i, 4
  %i.aa = and i64 %i.r, 15
  %i.ab = zext nneg i32 %.03346.i to i64
  %i.ac = shl i64 %i.aa, %i.ab
  %i.ad = or i64 %i.ac, %.03545.i
  %i.ae = and i64 %i.x, 15
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = shl i64 %i.ae, %i.af
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %i.ai = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.i.epil = icmp eq i64 %i.am, 96
  br i1 %.not.i.epil, label %._crit_edge.i.loopexit.epilog-lcssa, label %.thread.i, !prof !134

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %.lr.ph.i.epil.preheader
  %i.an = and i64 %i.al, 15
  %i.ao = zext nneg i32 %.03346.i.epil.init to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %.03545.i.epil.init
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %._crit_edge.i.loopexit.epilog-lcssa
  %.lcssa28 = phi i64 [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.i.loopexit.epilog-lcssa ]
  %i.ar = trunc i64 %.lcssa28 to i16
  %i.as = add i16 %i.ar, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.035.lcssa.i = phi i16 [ -1, %.preheader.i ], [ %i.as, %._crit_edge.i.loopexit ]
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %bb.b, %bb.d, %bb.f, %.thread.i, %._crit_edge.i
  %.2.i = phi i16 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %.thread.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.at = load i8, ptr %4, align 1, !tbaa !132, !range !136, !noundef !137
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %bb.j

bb.h:                                             ; preds = %readNumber.exit
  %i.av = zext i16 %.2.i to i32                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !98 ; 2 uses
  %.not = icmp ugt i32 %i.ax, %i.av
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.349, i32 noundef %i.av, i32 noundef %i.ax) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %readNumber.exit, %bb.h, %bb.i
  %.0 = phi i16 [ -1, %bb.i ], [ %.2.i, %bb.h ], [ %.2.i, %readNumber.exit ]
  ret i16 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i16 @readAPIFuncID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !117    ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !123
  %.fr = freeze i8 %i.d                           ; 3 uses
  %i.e = zext i8 %.fr to i32                      ; 2 uses
  %i.f = add nsw i32 %i.e, -96                    ; 4 uses
  %i.g = icmp ugt i32 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.e) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %i.a, 1                          ; 3 uses
  %i.i = add i32 %i.f, %i.h                       ; 4 uses
  %i.j = icmp ugt i32 %i.i, %3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %.fr, 96
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.l = icmp ult i32 %i.h, %i.i
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %i.n = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %i.f, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 30
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.03346.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %bb.g ] ; 3 uses
  %.03545.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !123   ; 2 uses
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = and i64 %i.r, 240
  %.not.i = icmp eq i64 %i.s, 96
  br i1 %.not.i, label %.lr.ph.i.1, label %.thread.i, !prof !134

.thread.i:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.epil.preheader
  %.lcssa = phi i8 [ %i.ak, %.lr.ph.i.epil.preheader ], [ %i.q, %.lr.ph.i ], [ %i.w, %.lr.ph.i.1 ]
  %i.t = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.t) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %readNumber.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !123   ; 2 uses
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 240
  %.not.i.1 = icmp eq i64 %i.y, 96
  br i1 %.not.i.1, label %bb.g, label %.thread.i, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.z = or disjoint i32 %.03346.i, 4
  %i.aa = and i64 %i.r, 15
  %i.ab = zext nneg i32 %.03346.i to i64
  %i.ac = shl i64 %i.aa, %i.ab
  %i.ad = or i64 %i.ac, %.03545.i
  %i.ae = and i64 %i.x, 15
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = shl i64 %i.ae, %i.af
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %i.ai = add nuw nsw i32 %.03346.i, 8            ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03346.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ai, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03545.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i8 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !123 ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = and i64 %i.al, 240
  %.not.i.epil = icmp eq i64 %i.am, 96
  br i1 %.not.i.epil, label %._crit_edge.i.loopexit.epilog-lcssa, label %.thread.i, !prof !134

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %.lr.ph.i.epil.preheader
  %i.an = and i64 %i.al, 15
  %i.ao = zext nneg i32 %.03346.i.epil.init to i64
  %i.ap = shl i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, %.03545.i.epil.init
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %._crit_edge.i.loopexit.epilog-lcssa
  %.lcssa23 = phi i64 [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.i.loopexit.epilog-lcssa ]
  %i.ar = trunc i64 %.lcssa23 to i16
  %i.as = add i16 %i.ar, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %.035.lcssa.i = phi i16 [ -1, %.preheader.i ], [ %i.as, %._crit_edge.i.loopexit ]
  store i32 %i.i, ptr %2, align 4, !tbaa !117
  br label %readNumber.exit

readNumber.exit:                                  ; preds = %bb.b, %bb.d, %bb.f, %.thread.i, %._crit_edge.i
  %.2.i = phi i16 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %.thread.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.at = load i8, ptr %4, align 1, !tbaa !132, !range !136, !noundef !137
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %bb.j

bb.h:                                             ; preds = %readNumber.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !147
  %i.ax = zext i16 %.2.i to i64
  %i.ay = tail call i32 @cli_bitset_test(ptr noundef %i.aw, i64 noundef %i.ax) #24
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = zext i16 %.2.i to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.350, i32 noundef %i.az) #24
  store i8 0, ptr %4, align 1, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %readNumber.exit, %bb.h, %bb.i
  %.0 = phi i16 [ -1, %bb.i ], [ %.2.i, %bb.h ], [ %.2.i, %readNumber.exit ]
  ret i16 %.0
}

declare ptr @cli_safer_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_event_define(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @have_clamjit() local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"cli_bc_ctx", !6, i64 0, !10, i64 2, !5, i64 4, !11, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !15, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !17, i64 64, !18, i64 72, !18, i64 80, !15, i64 88, !19, i64 96, !21, i64 136, !6, i64 512, !6, i64 768, !5, i64 1024, !26, i64 1032, !16, i64 1040, !5, i64 1048, !5, i64 1052, !5, i64 1056, !5, i64 1060, !22, i64 1064, !5, i64 1072, !15, i64 1080, !12, i64 1088, !5, i64 1096, !5, i64 1100, !5, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !5, i64 1176, !5, i64 1180, !5, i64 1184, !5, i64 1188, !24, i64 1192, !28, i64 1200, !29, i64 1208, !30, i64 1216, !31, i64 1224, !5, i64 1232, !5, i64 1236, !5, i64 1240, !5, i64 1244, !32, i64 1248, !33, i64 1256, !15, i64 1264, !34, i64 1272, !5, i64 1280, !5, i64 1284, !5, i64 1288, !35, i64 1296, !5, i64 1304, !36, i64 1312, !5, i64 1320, !5, i64 1324, !27, i64 1328, !5, i64 1336}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 _ZTS6cli_bc", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS11cli_bc_func", !12, i64 0}
!14 = !{!"p1 short", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"p1 _ZTS7cl_fmap", !12, i64 0}
!19 = !{!"cli_bc_hooks", !16, i64 0, !14, i64 8, !16, i64 16, !16, i64 24, !20, i64 32}
!20 = !{!"p1 _ZTS16cli_pe_hook_data", !12, i64 0}
!21 = !{!"cli_exe_info", !22, i64 0, !5, i64 8, !5, i64 12, !10, i64 16, !5, i64 20, !5, i64 24, !23, i64 32, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !25, i64 108, !6, i64 136, !6, i64 248}
!22 = !{!"p1 _ZTS15cli_exe_section", !12, i64 0}
!23 = !{!"cli_hashset", !16, i64 0, !16, i64 8, !24, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!24 = !{!"p1 _ZTS2MP", !12, i64 0}
!25 = !{!"pe_image_file_hdr", !5, i64 0, !10, i64 4, !10, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20, !10, i64 22}
!26 = !{!"p2 _ZTS7pdf_obj", !27, i64 0}
!27 = !{!"any p2 pointer", !12, i64 0}
!28 = !{!"p1 _ZTS10bc_inflate", !12, i64 0}
!29 = !{!"p1 _ZTS7bc_lzma", !12, i64 0}
!30 = !{!"p1 _ZTS8bc_bzip2", !12, i64 0}
!31 = !{!"p1 _ZTS9bc_buffer", !12, i64 0}
!32 = !{!"p1 _ZTS11cli_hashset", !12, i64 0}
!33 = !{!"p1 _ZTS9bc_jsnorm", !12, i64 0}
!34 = !{!"p1 _ZTS7cli_map", !12, i64 0}
!35 = !{!"p1 _ZTS15cli_environment", !12, i64 0}
!36 = !{!"p1 _ZTS10cli_events", !12, i64 0}
!37 = !{!9, !5, i64 60}
!38 = !{!9, !14, i64 32}
!39 = !{!9, !15, i64 40}
!40 = !{!9, !16, i64 48}
!41 = !{!9, !12, i64 1088}
!42 = !{!9, !15, i64 1080}
!43 = !{!44, !47, i64 32}
!44 = !{!"cli_ctx_tag", !15, i64 0, !15, i64 8, !45, i64 16, !46, i64 24, !47, i64 32, !17, i64 40, !48, i64 48, !5, i64 56, !5, i64 60, !49, i64 64, !5, i64 72, !5, i64 76, !12, i64 80, !18, i64 88, !17, i64 96, !50, i64 104, !51, i64 112, !12, i64 120, !36, i64 128, !52, i64 136, !52, i64 144, !53, i64 152, !54, i64 168, !54, i64 169}
!45 = !{!"p1 long", !12, i64 0}
!46 = !{!"p1 _ZTS11cli_matcher", !12, i64 0}
!47 = !{!"p1 _ZTS9cl_engine", !12, i64 0}
!48 = !{!"p1 _ZTS15cl_scan_options", !12, i64 0}
!49 = !{!"p1 _ZTS14cli_scan_layer", !12, i64 0}
!50 = !{!"p1 _ZTS9cli_dconf", !12, i64 0}
!51 = !{!"p1 _ZTS10bitset_tag", !12, i64 0}
!52 = !{!"p1 _ZTS11json_object", !12, i64 0}
!53 = !{!"timeval", !17, i64 0, !17, i64 8}
!54 = !{!"_Bool", !6, i64 0}
!55 = !{!56, !5, i64 48}
!56 = !{!"cl_engine", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 20, !5, i64 24, !5, i64 28, !15, i64 32, !15, i64 40, !5, i64 48, !17, i64 56, !5, i64 64, !5, i64 68, !17, i64 72, !17, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !57, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !58, i64 144, !59, i64 152, !59, i64 160, !60, i64 168, !50, i64 176, !61, i64 184, !61, i64 192, !62, i64 200, !46, i64 208, !46, i64 216, !15, i64 224, !63, i64 232, !64, i64 240, !65, i64 248, !17, i64 256, !24, i64 264, !66, i64 272, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !68, i64 464, !6, i64 984, !6, i64 1040, !5, i64 1068, !5, i64 1072, !5, i64 1076, !5, i64 1080, !17, i64 1088, !17, i64 1096, !17, i64 1104, !17, i64 1112, !17, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !12, i64 1176, !12, i64 1184, !12, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !17, i64 1216, !17, i64 1224, !17, i64 1232, !71, i64 1240}
!57 = !{!"p2 _ZTS11cli_matcher", !27, i64 0}
!58 = !{!"p1 _ZTS7cli_cdb", !12, i64 0}
!59 = !{!"p1 _ZTS13regex_matcher", !12, i64 0}
!60 = !{!"p1 _ZTS10phishcheck", !12, i64 0}
!61 = !{!"p1 _ZTS9cli_ftype", !12, i64 0}
!62 = !{!"p2 _ZTS8cli_pwdb", !27, i64 0}
!63 = !{!"p1 _ZTS12icon_matcher", !12, i64 0}
!64 = !{!"p1 _ZTS5CACHE", !12, i64 0}
!65 = !{!"p1 _ZTS10cli_dbinfo", !12, i64 0}
!66 = !{!"", !67, i64 0, !5, i64 8}
!67 = !{!"p1 _ZTS9cli_crt_t", !12, i64 0}
!68 = !{!"cli_all_bc", !11, i64 0, !5, i64 8, !69, i64 16, !70, i64 24, !5, i64 516}
!69 = !{!"p1 _ZTS12cli_bcengine", !12, i64 0}
!70 = !{!"cli_environment", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 93, !6, i64 158, !6, i64 223, !6, i64 288, !6, i64 353, !6, i64 418, !6, i64 483, !6, i64 484, !6, i64 485, !6, i64 486, !6, i64 487, !6, i64 488, !6, i64 489, !6, i64 490, !6, i64 491}
!71 = !{!"p1 _ZTS12_yara_global", !12, i64 0}
!72 = !{!9, !15, i64 1264}
!73 = !{!9, !5, i64 1104}
!74 = !{!9, !5, i64 4}
end_hunk_2
