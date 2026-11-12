Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/optimize?download=true
inline.NumInlined: 534
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tcg_optimize:bb.a
  br i1 %.not679, label %.critedge, label %.lr.ph687

.lr.ph687:                                        ; preds = %._crit_edge
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 24 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 16 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 15 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph687, %fold_add.exit
  %.076680 = phi ptr [ %i.aa, %.lr.ph687 ], [ %i.ai, %fold_add.exit ] ; 397 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.076680, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load i32, ptr %.076680, align 8         ; 4 uses
  %i.ak = and i32 %i.aj, 255                      ; 2 uses
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %1, align 8
  %i.an = lshr i32 %i.aj, 24                      ; 4 uses
  %i.ao = lshr i32 %i.aj, 16
  %i.ap = and i32 %i.ao, 255                      ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, %i.an            ; 3 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %init_arguments.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.076680, i64 32
  %wide.trip.count.i.i = zext nneg i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %init_ts_info.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %init_ts_info.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 5 uses
  %i.av = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 672
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.at, %i.ax
  %i.az = sdiv exact i64 %i.ay, 56                ; 2 uses
  %i.ba = lshr i64 %i.az, 6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = and i64 %i.az, 63
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %i.bf = and i64 %i.be, %i.bc
  %.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.e, label %init_ts_info.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bg = or i64 %i.be, %i.bc
  store i64 %i.bg, ptr %i.bb, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bk = load i64, ptr %i.av, align 8            ; 2 uses
  %i.bl = add i64 %i.bk, 56                       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.bp = call ptr @tcg_malloc_internal(ptr noundef nonnull %i.av, i32 noundef 56) #9
  br label %tcg_malloc.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.bl, ptr %i.av, align 8
  %i.bq = inttoptr i64 %i.bk to ptr
  br label %tcg_malloc.exit.i.i.i

tcg_malloc.exit.i.i.i:                            ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.bp, %bb.g ], [ %i.bq, %bb.h ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %i.bh, align 8
  br label %bb.i

bb.i:                                             ; preds = %tcg_malloc.exit.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %tcg_malloc.exit.i.i.i ], [ %i.bi, %bb.e ] ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %i.au, ptr %i.br, align 8
  store ptr %i.au, ptr %.0.i.i.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = load i64, ptr %i.au, align 8
  %i.bv = and i64 %i.bu, 30064771072
  %i.bw = icmp eq i64 %i.bv, 17179869184
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store i64 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store i64 %i.by, ptr %i.ca, align 8
  %i.cb = load i64, ptr %i.bx, align 8            ; 2 uses
  %.lobit.i.i.i.i = ashr i64 %i.cb, 63
  %i.cc = xor i64 %.lobit.i.i.i.i, %i.cb
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = ashr exact i64 -9223372036854775808, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store i64 %i.cf, ptr %i.cg, align 8
  br label %init_ts_info.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store i64 -1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  br label %init_ts_info.exit.i.i

init_ts_info.exit.i.i:                            ; preds = %bb.k, %bb.j, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %init_arguments.exit.i, label %bb.d, !llvm.loop !17

init_arguments.exit.i:                            ; preds = %init_ts_info.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not2.i.i, label %copy_propagate.exit.i, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %init_arguments.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.076680, i64 32
  %i.ck = zext nneg i32 %i.an to i64
  %i.cl = zext nneg i32 %i.aq to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i32.i
  %indvars.iv.i33.i = phi i64 [ %i.ck, %.lr.ph.i32.i ], [ %indvars.iv.next.i36.i, %bb.n ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i33.i ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 5 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 48
  %.val.i.i.i = load ptr, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i34.i = icmp eq ptr %i.cr, %i.co
  br i1 %.not.i34.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val13.i.i.i = load i64, ptr %i.co, align 8    ; 2 uses
  %i.cs = and i64 %.val13.i.i.i, 30064771072
  %i.ct = icmp samesign ugt i64 %i.cs, 8589934592
  br i1 %i.ct, label %find_better_copy.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cu = phi i64 [ %i.de, %.lr.ph.i.i.i ], [ %.val13.i.i.i, %bb.m ] ; 2 uses
  %.01121.i.i.i = phi ptr [ %.011.i.i.i, %.lr.ph.i.i.i ], [ %i.cr, %bb.m ] ; 3 uses
  %.020.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %i.co, %bb.m ]
  %i.cv = lshr i64 %i.cu, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 7
  %i.cy = load i64, ptr %.01121.i.i.i, align 8    ; 2 uses
  %i.cz = lshr i64 %i.cy, 32
  %i.da = trunc nuw i64 %i.cz to i32
  %i.db = and i32 %i.da, 7
  %i.dc = icmp samesign ult i32 %i.cx, %i.db      ; 2 uses
  %i.dd = select i1 %i.dc, ptr %.01121.i.i.i, ptr %.020.i.i.i ; 2 uses
  %.pn.in.i.i.i = getelementptr i8, ptr %.01121.i.i.i, i64 48
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8
  %.011.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %.011.i.i.i = load ptr, ptr %.011.in.i.i.i, align 8 ; 2 uses
  %.not.i.i35.i = icmp eq ptr %.011.i.i.i, %i.co
  %i.de = select i1 %i.dc, i64 %i.cy, i64 %i.cu
  br i1 %.not.i.i35.i, label %find_better_copy.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

find_better_copy.exit.loopexit.i.i:               ; preds = %.lr.ph.i.i.i
  %i.df = ptrtoint ptr %i.dd to i64
  br label %find_better_copy.exit.i.i

find_better_copy.exit.i.i:                        ; preds = %find_better_copy.exit.loopexit.i.i, %bb.m
  %.012.i.i.i = phi i64 [ %i.cn, %bb.m ], [ %i.df, %find_better_copy.exit.loopexit.i.i ]
  store i64 %.012.i.i.i, ptr %i.cm, align 8
  br label %bb.n

bb.n:                                             ; preds = %find_better_copy.exit.i.i, %bb.l
  %indvars.iv.next.i36.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next.i36.i, %i.cl
  br i1 %i.dg, label %bb.l, label %copy_propagate.exit.i, !llvm.loop !18

copy_propagate.exit.i:                            ; preds = %bb.n, %init_arguments.exit.i
  %i.dh = load i32, ptr %.076680, align 8         ; 2 uses
  %i.di = lshr i32 %i.dh, 24
  %i.dj = lshr i32 %i.dh, 16
  %i.dk = and i32 %i.dj, 255
  %i.dl = add nuw nsw i32 %i.dk, %i.di
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.076680, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %2 = load i64, ptr %i.dr, align 8
  %3 = lshr i64 %2, 32
  %4 = trunc nuw i64 %3 to i32                    ; 2 uses
  %i.ds = and i32 %4, 3
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %copy_propagate.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.o
  %wide.trip.count.i = zext nneg i32 %i.du to i64
  br label %bb.p

bb.p:                                             ; preds = %reset_ts.exit632, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %reset_ts.exit632 ] ; 4 uses
  %i.dw = lshr i64 %indvars.iv.i, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i64 %indvars.iv.i, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  %.not30.i = icmp eq i64 %i.eb, 0
  br i1 %.not30.i, label %reset_ts.exit632, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %1, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 672
  %i.ee = getelementptr inbounds nuw [56 x i8], ptr %i.ed, i64 %indvars.iv.i ; 5 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 48     ; 2 uses
  %.val39.i600 = load ptr, ptr %i.ef, align 8     ; 7 uses
  %i.eg = load ptr, ptr %.val39.i600, align 8     ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val39.i600, i64 8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 8 uses
  %i.ej = getelementptr i8, ptr %i.eg, i64 48
  %.val38.i601 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %i.ei, i64 48     ; 2 uses
  %.val.i602 = load ptr, ptr %i.ek, align 8
  store ptr %i.eg, ptr %.val.i602, align 8
  %i.el = load ptr, ptr %i.eh, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.val38.i601, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store ptr %i.ee, ptr %i.eh, align 8
  store ptr %i.ee, ptr %.val39.i600, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.val39.i600, i64 32
  store i64 -1, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.val39.i600, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %.val39.i600, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false)
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %reset_ts.exit632, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = icmp eq ptr %i.ee, %i.ei
  br i1 %i.es, label %.preheader.i629, label %bb.u

.preheader.i629:                                  ; preds = %bb.r, %.preheader.i629
  %.042.i630 = phi ptr [ %i.eu, %.preheader.i629 ], [ %i.eq, %bb.r ] ; 2 uses
  call void @interval_tree_remove(ptr noundef nonnull %.042.i630, ptr noundef nonnull %i.af) #9
  %i.et = getelementptr inbounds nuw i8, ptr %.042.i630, i64 48
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i631 = icmp eq ptr %i.eu, null
  br i1 %.not.i631, label %bb.s, label %.preheader.i629, !llvm.loop !1

bb.s:                                             ; preds = %.preheader.i629
  %i.ev = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %reset_ts.exit632, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = load ptr, ptr %i.c, align 8
  store ptr %i.ev, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.val39.i600, i64 24 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  store ptr %i.ez, ptr %i.c, align 8
  store ptr null, ptr %i.ep, align 8
  store ptr %i.ep, ptr %i.ey, align 8
  br label %reset_ts.exit632

bb.u:                                             ; preds = %bb.r
  %.val13.i.i603 = load i64, ptr %i.ei, align 8   ; 2 uses
  %i.fa = and i64 %.val13.i.i603, 30064771072
  %i.fb = icmp samesign ugt i64 %i.fa, 8589934592
  br i1 %i.fb, label %find_better_copy.exit.i617, label %.preheader.i.i604

.preheader.i.i604:                                ; preds = %bb.u
  %.pn16.i.i605 = load ptr, ptr %i.ek, align 8
  %.011.in17.i.i606 = getelementptr inbounds nuw i8, ptr %.pn16.i.i605, i64 8
  %.01118.i.i607 = load ptr, ptr %.011.in17.i.i606, align 8 ; 2 uses
  %.not19.i.i608 = icmp eq ptr %.01118.i.i607, %i.ei
  br i1 %.not19.i.i608, label %find_better_copy.exit.i617, label %.lr.ph.i.i609

.lr.ph.i.i609:                                    ; preds = %.preheader.i.i604, %.lr.ph.i.i609
  %i.fc = phi i64 [ %i.fm, %.lr.ph.i.i609 ], [ %.val13.i.i603, %.preheader.i.i604 ] ; 2 uses
  %.01121.i.i610 = phi ptr [ %.011.i.i615, %.lr.ph.i.i609 ], [ %.01118.i.i607, %.preheader.i.i604 ] ; 3 uses
  %.020.i.i611 = phi ptr [ %i.fl, %.lr.ph.i.i609 ], [ %i.ei, %.preheader.i.i604 ]
  %i.fd = lshr i64 %i.fc, 32
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 7
  %i.fg = load i64, ptr %.01121.i.i610, align 8   ; 2 uses
  %i.fh = lshr i64 %i.fg, 32
  %i.fi = trunc nuw i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 7
  %i.fk = icmp samesign ult i32 %i.ff, %i.fj      ; 2 uses
  %i.fl = select i1 %i.fk, ptr %.01121.i.i610, ptr %.020.i.i611 ; 2 uses
  %.pn.in.i.i612 = getelementptr i8, ptr %.01121.i.i610, i64 48
  %.pn.i.i613 = load ptr, ptr %.pn.in.i.i612, align 8
  %.011.in.i.i614 = getelementptr inbounds nuw i8, ptr %.pn.i.i613, i64 8
  %.011.i.i615 = load ptr, ptr %.011.in.i.i614, align 8 ; 2 uses
  %.not.i.i616 = icmp eq ptr %.011.i.i615, %i.ei
  %i.fm = select i1 %i.fk, i64 %i.fg, i64 %i.fc
  br i1 %.not.i.i616, label %find_better_copy.exit.i617, label %.lr.ph.i.i609, !llvm.loop !0

find_better_copy.exit.i617:                       ; preds = %.lr.ph.i.i609, %.preheader.i.i604, %bb.u
  %.012.i.i618 = phi ptr [ %i.ei, %bb.u ], [ %i.ei, %.preheader.i.i604 ], [ %i.fl, %.lr.ph.i.i609 ] ; 2 uses
  %.val18.i.i619 = load ptr, ptr %i.ef, align 8   ; 2 uses
  %i.fn = getelementptr i8, ptr %.012.i.i618, i64 48
  %.val.i.i620 = load ptr, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.val18.i.i619, i64 16 ; 4 uses
  %.019.i.i621 = load ptr, ptr %i.fo, align 8     ; 2 uses
  %.not20.i.i622 = icmp eq ptr %.019.i.i621, null
  br i1 %.not20.i.i622, label %reset_ts.exit632, label %.lr.ph.i40.i623

.lr.ph.i40.i623:                                  ; preds = %find_better_copy.exit.i617, %.lr.ph.i40.i623
  %.021.i.i624 = phi ptr [ %.0.i.i625, %.lr.ph.i40.i623 ], [ %.019.i.i621, %find_better_copy.exit.i617 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.021.i.i624, i64 56 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp eq ptr %i.fq, %i.ee
  call void @llvm.assume(i1 %i.fr)
  store ptr %.012.i.i618, ptr %i.fp, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.021.i.i624, i64 48
  %.0.i.i625 = load ptr, ptr %i.fs, align 8       ; 2 uses
  %.not.i41.i626 = icmp eq ptr %.0.i.i625, null
  br i1 %.not.i41.i626, label %._crit_edge.i.i627, label %.lr.ph.i40.i623, !llvm.loop !2

._crit_edge.i.i627:                               ; preds = %.lr.ph.i40.i623
  %.pre.i.i628 = load ptr, ptr %i.fo, align 8     ; 2 uses
  %i.ft = icmp eq ptr %.pre.i.i628, null
  br i1 %i.ft, label %reset_ts.exit632, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i627
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i620, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  store ptr %.pre.i.i628, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.val18.i.i619, i64 24 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  store ptr %i.fx, ptr %i.fu, align 8
  store ptr null, ptr %i.fo, align 8
  store ptr %i.fo, ptr %i.fw, align 8
  br label %reset_ts.exit632

reset_ts.exit632:                                 ; preds = %bb.v, %._crit_edge.i.i627, %find_better_copy.exit.i617, %bb.t, %bb.s, %bb.q, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.p, !llvm.loop !19

.loopexit.i:                                      ; preds = %reset_ts.exit632, %bb.o, %copy_propagate.exit.i
  %i.fy = and i32 %4, 4
  %.not31.i = icmp eq i32 %i.fy, 0
  br i1 %.not31.i, label %bb.w, label %remove_mem_copy_all.exit.i

bb.w:                                             ; preds = %.loopexit.i
  %i.fz = call ptr @interval_tree_iter_first(ptr noundef nonnull %i.af, i64 noundef 0, i64 noundef -1) #9 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not9.i.i.i, label %remove_mem_copy_all.exit.i, label %.lr.ph.i.i37.i

.lr.ph.i.i37.i:                                   ; preds = %bb.w, %bb.ac
  %i.ga = phi ptr [ %i.gu, %bb.ac ], [ %i.fz, %bb.w ] ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.gd, align 8    ; 3 uses
  call void @interval_tree_remove(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.af) #9
  %i.ge = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8            ; 3 uses
  %i.gg = icmp eq ptr %i.gf, %i.ga
  br i1 %i.gg, label %bb.x, label %.preheader.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i37.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  store ptr %i.gi, ptr %i.ge, align 8
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  store ptr %i.ge, ptr %i.gk, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr null, ptr %i.gh, align 8
  br label %bb.ac

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i37.i, %.preheader.i.i.i.i
  %.0.i.i.i38.i = phi ptr [ %i.gm, %.preheader.i.i.i.i ], [ %i.gf, %.lr.ph.i.i37.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i.i38.i, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, %i.ga
  br i1 %.not.i.i.i.i, label %bb.aa, label %.preheader.i.i.i.i, !llvm.loop !3

bb.aa:                                            ; preds = %.preheader.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i.i38.i, i64 48 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  store ptr %i.gp, ptr %i.gn, align 8
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  store ptr %i.gn, ptr %i.gr, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 2 uses
  store ptr null, ptr %i.gs, align 8
  %i.gt = load ptr, ptr %i.c, align 8
  store ptr %i.ga, ptr %i.gt, align 8
  store ptr %i.gs, ptr %i.c, align 8
  %i.gu = call ptr @interval_tree_iter_first(ptr noundef nonnull %i.af, i64 noundef 0, i64 noundef -1) #9 ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i39.i, label %remove_mem_copy_all.exit.i, label %.lr.ph.i.i37.i

remove_mem_copy_all.exit.i:                       ; preds = %bb.ac, %bb.w, %.loopexit.i
  %.not45.i = icmp eq i32 %i.an, 0
  br i1 %.not45.i, label %fold_call.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %remove_mem_copy_all.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.076680, i64 32
  %wide.trip.count51.i = zext nneg i32 %i.an to i64
  br label %bb.ad

bb.ad:                                            ; preds = %reset_ts.exit, %.lr.ph44.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph44.i ], [ %indvars.iv.next49.i, %reset_ts.exit ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv48.i
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = inttoptr i64 %i.gx to ptr               ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 48     ; 2 uses
  %.val39.i = load ptr, ptr %i.gz, align 8        ; 7 uses
  %i.ha = load ptr, ptr %.val39.i, align 8        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.val39.i, i64 8 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8            ; 8 uses
  %i.hd = getelementptr i8, ptr %i.ha, i64 48
  %.val38.i583 = load ptr, ptr %i.hd, align 8
  %i.he = getelementptr i8, ptr %i.hc, i64 48     ; 2 uses
  %.val.i584 = load ptr, ptr %i.he, align 8
  store ptr %i.ha, ptr %.val.i584, align 8
  %i.hf = load ptr, ptr %i.hb, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.val38.i583, i64 8
  store ptr %i.hf, ptr %i.hg, align 8
  store ptr %i.gy, ptr %i.hb, align 8
  store ptr %i.gy, ptr %.val39.i, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.val39.i, i64 32
  store i64 -1, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.val39.i, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %.val39.i, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %reset_ts.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hm = icmp eq ptr %i.hc, %i.gy
  br i1 %i.hm, label %.preheader.i, label %bb.ah

.preheader.i:                                     ; preds = %bb.ae, %.preheader.i
  %.042.i598 = phi ptr [ %i.ho, %.preheader.i ], [ %i.hk, %bb.ae ] ; 2 uses
  call void @interval_tree_remove(ptr noundef nonnull %.042.i598, ptr noundef nonnull %i.af) #9
  %i.hn = getelementptr inbounds nuw i8, ptr %.042.i598, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not.i599 = icmp eq ptr %i.ho, null
  br i1 %.not.i599, label %bb.af, label %.preheader.i, !llvm.loop !1

bb.af:                                            ; preds = %.preheader.i
  %i.hp = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %reset_ts.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hr = load ptr, ptr %i.c, align 8
  store ptr %i.hp, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.val39.i, i64 24 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  store ptr %i.ht, ptr %i.c, align 8
  store ptr null, ptr %i.hj, align 8
  store ptr %i.hj, ptr %i.hs, align 8
  br label %reset_ts.exit

bb.ah:                                            ; preds = %bb.ae
  %.val13.i.i585 = load i64, ptr %i.hc, align 8   ; 2 uses
  %i.hu = and i64 %.val13.i.i585, 30064771072
  %i.hv = icmp samesign ugt i64 %i.hu, 8589934592
  br i1 %i.hv, label %find_better_copy.exit.i594, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ah
  %.pn16.i.i = load ptr, ptr %i.he, align 8
  %.011.in17.i.i = getelementptr inbounds nuw i8, ptr %.pn16.i.i, i64 8
  %.01118.i.i = load ptr, ptr %.011.in17.i.i, align 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %.01118.i.i, %i.hc
  br i1 %.not19.i.i, label %find_better_copy.exit.i594, label %.lr.ph.i.i586

.lr.ph.i.i586:                                    ; preds = %.preheader.i.i, %.lr.ph.i.i586
  %i.hw = phi i64 [ %i.ig, %.lr.ph.i.i586 ], [ %.val13.i.i585, %.preheader.i.i ] ; 2 uses
  %.01121.i.i587 = phi ptr [ %.011.i.i592, %.lr.ph.i.i586 ], [ %.01118.i.i, %.preheader.i.i ] ; 3 uses
  %.020.i.i588 = phi ptr [ %i.if, %.lr.ph.i.i586 ], [ %i.hc, %.preheader.i.i ]
  %i.hx = lshr i64 %i.hw, 32
  %i.hy = trunc nuw i64 %i.hx to i32
  %i.hz = and i32 %i.hy, 7
  %i.ia = load i64, ptr %.01121.i.i587, align 8   ; 2 uses
  %i.ib = lshr i64 %i.ia, 32
  %i.ic = trunc nuw i64 %i.ib to i32
  %i.id = and i32 %i.ic, 7
  %i.ie = icmp samesign ult i32 %i.hz, %i.id      ; 2 uses
  %i.if = select i1 %i.ie, ptr %.01121.i.i587, ptr %.020.i.i588 ; 2 uses
  %.pn.in.i.i589 = getelementptr i8, ptr %.01121.i.i587, i64 48
  %.pn.i.i590 = load ptr, ptr %.pn.in.i.i589, align 8
  %.011.in.i.i591 = getelementptr inbounds nuw i8, ptr %.pn.i.i590, i64 8
  %.011.i.i592 = load ptr, ptr %.011.in.i.i591, align 8 ; 2 uses
  %.not.i.i593 = icmp eq ptr %.011.i.i592, %i.hc
  %i.ig = select i1 %i.ie, i64 %i.ia, i64 %i.hw
  br i1 %.not.i.i593, label %find_better_copy.exit.i594, label %.lr.ph.i.i586, !llvm.loop !0

find_better_copy.exit.i594:                       ; preds = %.lr.ph.i.i586, %.preheader.i.i, %bb.ah
  %.012.i.i595 = phi ptr [ %i.hc, %bb.ah ], [ %i.hc, %.preheader.i.i ], [ %i.if, %.lr.ph.i.i586 ] ; 2 uses
  %.val18.i.i = load ptr, ptr %i.gz, align 8      ; 2 uses
  %i.ih = getelementptr i8, ptr %.012.i.i595, i64 48
  %.val.i.i596 = load ptr, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16 ; 4 uses
  %.019.i.i = load ptr, ptr %i.ii, align 8        ; 2 uses
  %.not20.i.i = icmp eq ptr %.019.i.i, null
  br i1 %.not20.i.i, label %reset_ts.exit, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %find_better_copy.exit.i594, %.lr.ph.i40.i
  %.021.i.i = phi ptr [ %.0.i.i597, %.lr.ph.i40.i ], [ %.019.i.i, %find_better_copy.exit.i594 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 56 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = icmp eq ptr %i.ik, %i.gy
  call void @llvm.assume(i1 %i.il)
  store ptr %.012.i.i595, ptr %i.ij, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 48
  %.0.i.i597 = load ptr, ptr %i.im, align 8       ; 2 uses
  %.not.i41.i = icmp eq ptr %.0.i.i597, null
  br i1 %.not.i41.i, label %._crit_edge.i.i, label %.lr.ph.i40.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i40.i
  %.pre.i.i = load ptr, ptr %i.ii, align 8        ; 2 uses
  %i.in = icmp eq ptr %.pre.i.i, null
  br i1 %i.in, label %reset_ts.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i596, i64 24 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  store ptr %.pre.i.i, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 24 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8
  store ptr %i.ir, ptr %i.io, align 8
  store ptr null, ptr %i.ii, align 8
end_hunk_0
