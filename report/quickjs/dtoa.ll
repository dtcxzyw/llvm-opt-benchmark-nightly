Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@mul_pow:bb.a
  br i1 %lcmp.mod116.not.not, label %.prol.loopexit113.unr-lcssa, label %.prol.loopexit113

.prol.loopexit113.unr-lcssa:                      ; preds = %bb.j
  %i.ae = shl nuw nsw i32 1, %i.ac
  %i.af = and i32 %i.ae, %..i
  %.not.i.prol = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.i.prol, i64 1, i64 %i.i
  %spec.select.i.prol = mul i64 %i.m, %i.ag       ; 2 uses
  %i.ah = sub nsw i32 29, %i.ab
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %bb.j
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.i, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ac, %bb.j ], [ %i.ah, %.prol.loopexit113.unr-lcssa ]
  %i.ai = icmp eq i32 %i.ab, 30
  br i1 %i.ai, label %pow_ui.exit, label %.new114

.new114:                                          ; preds = %.prol.loopexit113, %.new114
  %.234.i = phi i64 [ %spec.select.i.1, %.new114 ], [ %.234.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.03033.i = phi i32 [ %i.as, %.new114 ], [ %.03033.i.unr, %.prol.loopexit113 ] ; 3 uses
  %i.aj = mul i64 %.234.i, %.234.i
  %i.ak = shl nuw i32 1, %.03033.i
  %i.al = and i32 %i.ak, %..i
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i, i64 1, i64 %i.i
  %spec.select.i = mul i64 %i.aj, %i.am           ; 2 uses
  %i.an = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.ao = mul i64 %spec.select.i, %spec.select.i
  %i.ap = shl nuw i32 1, %i.an
  %i.aq = and i32 %i.ap, %..i
  %.not.i.1 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.i.1, i64 1, i64 %i.i
  %spec.select.i.1 = mul i64 %i.ao, %i.ar         ; 2 uses
  %i.as = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.at = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.at, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %0, align 4, !tbaa !18    ; 6 uses
  %.not.i77 = icmp eq i32 %i.au, 0
  br i1 %.not.i77, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.av = zext i32 %.161 to i64                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %i.aw = icmp eq i32 %i.au, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bl, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.av
  %i.bb = add nuw i64 %i.ba, %.01112.i            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !18
  %i.bd = lshr i64 %i.bb, 32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.av
  %i.bj = add nuw i64 %i.bi, %i.bd                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !18
  %i.bl = lshr i64 %i.bj, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_mul1.exit.unr-lcssa, label %bb.l, !llvm.loop !5

mp_mul1.exit.unr-lcssa:                           ; preds = %bb.l
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %mp_mul1.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_mul1.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %mp_mul1.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %mp_mul1.exit.unr-lcssa ]
  %lcmp.mod120 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.av
  %i.bq = add nuw i64 %i.bp, %.01112.i.epil.init  ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !18
  %i.bs = lshr i64 %i.bq, 32
  br label %mp_mul1.exit

mp_mul1.exit:                                     ; preds = %mp_mul1.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bl, %mp_mul1.exit.unr-lcssa ], [ %i.bs, %.epil.preheader ] ; 2 uses
  %.not76 = icmp eq i64 %.lcssa, 0
  br i1 %.not76, label %mp_mul1.exit.thread, label %bb.m

bb.m:                                             ; preds = %mp_mul1.exit
  %i.bt = trunc nuw i64 %.lcssa to i32
  %i.bu = add nsw i32 %i.au, 1
  store i32 %i.bu, ptr %0, align 4, !tbaa !18
  %i.bv = sext i32 %i.au to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !18
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.k, %bb.m, %mp_mul1.exit
  %i.bx = sub nuw nsw i32 %.06599, %..i           ; 2 uses
  %.not74 = icmp eq i32 %i.bx, 0
  br i1 %.not74, label %.loopexit, label %bb.c, !llvm.loop !25

bb.n:                                             ; preds = %bb.b
  %i.by = xor i32 %3, -1
  %i.bz = add nuw i32 %i.g, %i.by
  %i.ca = sdiv i32 %i.bz, %i.g
  %i.cb = shl nsw i32 %i.ca, 5                    ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.b                 ; 2 uses
  br i1 %4, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %0, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %mpb_floor_log2.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = shl nsw i32 %i.cd, 5
  %i.cj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ck = xor i32 %i.cj, -1
  %i.cl = add i32 %i.ci, %i.ck
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.o, %bb.p
  %.0.i78 = phi i32 [ %i.cl, %bb.p ], [ -1, %bb.o ]
  %i.cm = sub nsw i32 %5, %.0.i78
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cn = add nsw i32 %5, 2
  %i.co = sub i32 %i.cn, %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.co, %bb.q ], [ %i.cm, %mpb_floor_log2.exit ]
  %..i80 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.cp = add nsw i32 %i.cb, %..i80
  %i.cq = sub nsw i32 0, %i.cp
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.cq, i32 noundef 2)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.cs = icmp eq i32 %1, 5                       ; 2 uses
  %i.ct = zext i32 %1 to i64                      ; 7 uses
  %i.cu = icmp eq i32 %1, 10                      ; 2 uses
  %or.cond.i.i = or i1 %i.cs, %i.cu
  %i.cv = mul nuw i64 %i.ct, %i.ct
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %mpb_renorm.exit
  %.097 = phi i32 [ 0, %bb.r ], [ %.1, %mpb_renorm.exit ]
  %.05896 = phi i32 [ 0, %bb.r ], [ %i.ex, %mpb_renorm.exit ]
  %.295 = phi i32 [ 0, %bb.r ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16694 = phi i32 [ %i.a, %bb.r ], [ %i.fg, %mpb_renorm.exit ] ; 2 uses
  %.08693 = phi i32 [ 0, %bb.r ], [ %.187, %mpb_renorm.exit ]
  %.08892 = phi i32 [ 0, %bb.r ], [ %.189, %mpb_renorm.exit ]
  %..i81 = tail call noundef i32 @llvm.smin.i32(i32 %.16694, i32 %i.g) ; 15 uses
  %.not73 = icmp eq i32 %..i81, %.295
  br i1 %.not73, label %pow_ui_inv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp ult i32 %..i81, 14
  %or.cond3.i82 = and i1 %i.cs, %i.cw
  br i1 %or.cond3.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = add nsw i32 %..i81, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !18 ; 2 uses
  %i.db = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.da, i1 true) ; 2 uses
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.cy
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18
  br label %pow_ui_inv.exit

bb.v:                                             ; preds = %bb.t
  switch i32 %..i81, label %bb.x [
    i32 0, label %pow_ui.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %pow_ui.exit.i

bb.x:                                             ; preds = %bb.v
  %i.df = icmp ult i32 %..i81, 18
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.df
  br i1 %or.cond3.i.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dg = zext nneg i32 %..i81 to i64             ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr @pow5_table, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = icmp samesign ugt i32 %..i81, 13
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr i8, ptr @pow5h_table, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 -14
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 32
  %i.dr = or disjoint i64 %i.dq, %i.dk
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i = phi i64 [ %i.dr, %bb.z ], [ %i.dk, %bb.y ]
  %narrow.i.i = select i1 %i.cu, i32 %..i81, i32 0
  %i.ds = zext nneg i32 %narrow.i.i to i64
  %.1.i.i = shl nuw nsw i64 %.0.i.i, %i.ds
  br label %pow_ui.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.dt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i81, i1 true) ; 4 uses
  %i.du = sub nsw i32 30, %i.dt                   ; 2 uses
  %i.dv = and i32 %i.dt, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ab
  %i.dw = shl nuw nsw i32 1, %i.du
  %i.dx = and i32 %i.dw, %..i81
  %.not.i.i.prol = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not.i.i.prol, i64 1, i64 %i.ct
  %spec.select.i.i.prol = mul i64 %i.cv, %i.dy    ; 2 uses
  %i.dz = sub nsw i32 29, %i.dt
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ab
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.i.unr = phi i64 [ %i.ct, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.i.unr = phi i32 [ %i.du, %bb.ab ], [ %i.dz, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.dt, 30
  br i1 %i.ea, label %pow_ui.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i.i = phi i64 [ %spec.select.i.i.1, %.new ], [ %.234.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i.i = phi i32 [ %i.ek, %.new ], [ %.03033.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.eb = mul i64 %.234.i.i, %.234.i.i
  %i.ec = shl nuw i32 1, %.03033.i.i
  %i.ed = and i32 %i.ec, %..i81
  %.not.i.i = icmp eq i32 %i.ed, 0
  %i.ee = select i1 %.not.i.i, i64 1, i64 %i.ct
  %spec.select.i.i = mul i64 %i.eb, %i.ee         ; 2 uses
  %i.ef = add nsw i32 %.03033.i.i, -1             ; 2 uses
  %i.eg = mul i64 %spec.select.i.i, %spec.select.i.i
  %i.eh = shl nuw i32 1, %i.ef
  %i.ei = and i32 %i.eh, %..i81
  %.not.i.i.1 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not.i.i.1, i64 1, i64 %i.ct
  %spec.select.i.i.1 = mul i64 %i.eg, %i.ej       ; 2 uses
  %i.ek = add nsw i32 %.03033.i.i, -2
  %.not36.i.i.1 = icmp eq i32 %i.ef, 0
  br i1 %.not36.i.i.1, label %pow_ui.exit.i, label %.new, !llvm.loop !3

pow_ui.exit.i:                                    ; preds = %.prol.loopexit, %.new, %bb.aa, %bb.w, %bb.v
  %.031.i.i = phi i64 [ 1, %bb.v ], [ %i.ct, %bb.w ], [ %.1.i.i, %bb.aa ], [ %spec.select.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.1, %.new ]
  %i.el = trunc i64 %.031.i.i to i32              ; 2 uses
  %i.em = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.el, i1 true) ; 2 uses
  %i.en = shl i32 %i.el, %i.em                    ; 3 uses
  %i.eo = xor i32 %i.en, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw i64 %i.ep, 32
  %i.er = or disjoint i64 %i.eq, 4294967295
  %i.es = zext i32 %i.en to i64
  %i.et = udiv i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %pow_ui.exit.i, %bb.u, %bb.s
  %.189 = phi i32 [ %.08892, %bb.s ], [ %i.db, %bb.u ], [ %i.em, %pow_ui.exit.i ] ; 2 uses
  %.187 = phi i32 [ %.08693, %bb.s ], [ %i.de, %bb.u ], [ %i.eu, %pow_ui.exit.i ] ; 2 uses
  %.3 = phi i32 [ %.295, %bb.s ], [ %..i81, %bb.u ], [ %..i81, %pow_ui.exit.i ]
  %.1 = phi i32 [ %.097, %bb.s ], [ %i.dc, %bb.u ], [ %i.en, %pow_ui.exit.i ] ; 2 uses
  %i.ev = load i32, ptr %0, align 4, !tbaa !18
  %i.ew = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cr, i32 noundef %i.ev, i32 noundef %.1, i32 noundef %.187, i32 noundef %.189)
  %i.ex = or i32 %i.ew, %.05896                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !18   ; 2 uses
  %i.ey = icmp sgt i32 %.pr.i, 1
  br i1 %i.ey, label %.lr.ph.i84, label %mpb_renorm.exit

.lr.ph.i84:                                       ; preds = %pow_ui_inv.exit, %bb.ac
  %i.ez = phi i32 [ %i.fe, %bb.ac ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr [4 x i8], ptr %0, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !18
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %mpb_renorm.exit

bb.ac:                                            ; preds = %.lr.ph.i84
  %i.fe = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fe, ptr %0, align 4, !tbaa !18
  %i.ff = icmp sgt i32 %i.ez, 2
  br i1 %i.ff, label %.lr.ph.i84, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i84, %bb.ac, %pow_ui_inv.exit
  %i.fg = sub nsw i32 %.16694, %..i81             ; 2 uses
  %.not72 = icmp eq i32 %i.fg, 0
  br i1 %.not72, label %bb.ad, label %bb.s, !llvm.loop !26

bb.ad:                                            ; preds = %mpb_renorm.exit
  %i.fh = add nsw i32 %..i80, %i.cc
  %i.fi = icmp ne i32 %i.ex, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.fl = or i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.cr, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.ad, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.fh, %bb.ad ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 5 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !18     ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.i, label %mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = sub nuw nsw i32 32, %i.e                 ; 3 uses
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.v, %bb.e ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.w, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18   ; 2 uses
  %i.n = shl i32 %i.m, %i.e
  %i.o = or i32 %i.n, %.015.i
  store i32 %i.o, ptr %i.l, align 4, !tbaa !18
  %i.p = lshr i32 %i.m, %i.j
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = shl i32 %i.s, %i.e
  %i.u = or disjoint i32 %i.t, %i.p
  store i32 %i.u, ptr %i.r, align 4, !tbaa !18
  %i.v = lshr i32 %i.s, %i.j                      ; 3 uses
  %i.w = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !6

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.e
  %i.x = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %mp_shl.exit.loopexit.unr-lcssa ]
end_hunk_0
