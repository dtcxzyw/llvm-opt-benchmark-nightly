Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@mul_pow:bb.a
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
  %i.c = sub nsw i32 0, %1                        ; 2 uses
  %i.d = lshr i32 %i.c, 5                         ; 4 uses
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
  %lcmp.mod203 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 2 uses
  %i.aa = shl i32 %i.z, %i.e
  %i.ab = or i32 %i.aa, %.015.i.epil.init
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !18
  %i.ac = lshr i32 %i.z, %i.j
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  store i32 %.0.lcssa.i, ptr %i.ad, align 4, !tbaa !18
  %i.ae = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !18
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i104, label %mpb_renorm.exit

.lr.ph.i104:                                      ; preds = %mp_shl.exit, %bb.f
  %i.ah = phi i32 [ %i.am, %bb.f ], [ %i.af, %mp_shl.exit ] ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %mpb_renorm.exit

bb.f:                                             ; preds = %.lr.ph.i104
  %i.am = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.am, ptr %0, align 4, !tbaa !18
  %i.an = icmp sgt i32 %i.ah, 2
  br i1 %i.an, label %.lr.ph.i104, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %bb.f, %.lr.ph.i104, %mp_shl.exit, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.s, label %bb.g

bb.g:                                             ; preds = %mpb_renorm.exit
  %i.ao = load i32, ptr %0, align 4, !tbaa !18    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph134, label %.preheader

.lr.ph134:                                        ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.ar = zext nneg i32 %i.d to i64
  %invariant.gep166 = getelementptr [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %min.iters.check186 = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph134
  %n.vec188 = and i64 %i.aq, 2147483640           ; 2 uses
  %i.as = and i64 %i.aq, 7
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.at = sub i64 %i.aq, %index190                ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -12
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  %wide.load191 = load <4 x i32>, ptr %i.av, align 4, !tbaa !18
  %wide.load192 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !18
  %i.ax = getelementptr [4 x i8], ptr %invariant.gep166, i64 %i.at ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = getelementptr i8, ptr %i.ax, i64 -28
  store <4 x i32> %wide.load191, ptr %i.ay, align 4, !tbaa !18
  store <4 x i32> %wide.load192, ptr %i.az, align 4, !tbaa !18
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.ba, label %middle.block194, label %vector.body189, !llvm.loop !27

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %n.vec188, %i.aq
  br i1 %cmp.n195, label %.preheader, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph134, %middle.block194
  %indvars.iv145.ph = phi i64 [ %i.aq, %.lr.ph134 ], [ %i.as, %middle.block194 ]
  br label %scalar.ph185

.preheader:                                       ; preds = %scalar.ph185, %middle.block194, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = add nsw i32 %i.d, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = add nuw nsw i64 %5, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bb, i8 0, i64 %6, i1 false), !tbaa !18
  %i.bc = add nsw i32 %i.ao, %i.d
  store i32 %i.bc, ptr %0, align 4, !tbaa !18
  br label %bb.s

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %scalar.ph185 ], [ %indvars.iv145.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.bd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv145
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %gep167 = getelementptr [4 x i8], ptr %invariant.gep166, i64 %indvars.iv145
  store i32 %i.be, ptr %gep167, align 4, !tbaa !18
  %i.bf = icmp samesign ugt i64 %indvars.iv145, 1
  br i1 %i.bf, label %scalar.ph185, label %.preheader, !llvm.loop !28

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !18    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit107

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %1, -1                      ; 2 uses
  %i.bh = lshr i32 %i.bg, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.bh, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit107

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.bi = and i32 %i.bg, 31                       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bk = zext nneg i32 %i.bh to i64              ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18 ; 2 uses
  %i.bn = shl nuw i32 1, %i.bi
  %i.bo = and i32 %i.bm, %i.bn
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %mpb_get_bit.exit107, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.bp = icmp eq i32 %2, 1
  br i1 %i.bp, label %mpb_get_bit.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not125 = icmp eq i32 %1, 1
  br i1 %.not125, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not136 = icmp eq i32 %i.bh, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i32 %1, 257
  br i1 %min.iters.check, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bk, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 4, !tbaa !18
  %wide.load172 = load <4 x i32>, ptr %i.br, align 4, !tbaa !18
  %i.bs = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bt = or <4 x i32> %wide.load172, %vec.phi171 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bt, %i.bs
  %i.bv = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bk
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085128.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader198, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader198 ] ; 2 uses
  %.085128 = phi i32 [ %i.by, %.lr.ph ], [ %.085128.ph, %.lr.ph.preheader198 ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = or i32 %i.bx, %.085128                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bk
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.bv, %middle.block ], [ %i.by, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.bi
  %i.bz = xor i32 %notmask, -1
  %i.ca = and i32 %i.bm, %i.bz
  %i.cb = or i32 %i.ca, %.085.lcssa
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.thread, label %mpb_get_bit.exit107

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.cd = lshr i32 %1, 5                          ; 2 uses
  %.not.i105 = icmp samesign ult i32 %i.cd, %.pre
  br i1 %.not.i105, label %bb.m, label %mpb_get_bit.exit107

bb.m:                                             ; preds = %.thread
  %i.ce = and i32 %1, 31
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18
  %i.ci = lshr i32 %i.ch, %i.ce
  %i.cj = and i32 %i.ci, 1
  br label %mpb_get_bit.exit107

mpb_get_bit.exit107:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.cj, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.ck = lshr i32 %1, 5                          ; 4 uses
  %i.cl = and i32 %1, 31
  %.not97 = icmp slt i32 %i.ck, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit107
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.cm, align 4, !tbaa !18
  br label %bb.s

bb.o:                                             ; preds = %mpb_get_bit.exit107
  %.not98 = icmp eq i32 %i.ck, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = sub nuw nsw i32 %.pre, %i.ck            ; 6 uses
  store i32 %i.cn, ptr %0, align 4, !tbaa !18
  %.not168 = icmp eq i32 %i.cn, 0
  br i1 %.not168, label %mpb_renorm.exit112, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cp = zext nneg i32 %i.ck to i64
  %wide.trip.count143 = zext nneg i32 %i.cn to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.cn, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph131
  %n.vec176 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index178 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !18
  %wide.load180 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !18
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index178 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %wide.load179, ptr %i.cs, align 4, !tbaa !18
  store <4 x i32> %wide.load180, ptr %i.ct, align 4, !tbaa !18
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.cu, label %middle.block182, label %vector.body177, !llvm.loop !31

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count143
  br i1 %cmp.n183, label %.loopexit, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph131, %middle.block182
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph131 ], [ %n.vec176, %middle.block182 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph173 ], [ %indvars.iv140.ph, %scalar.ph173.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv140
  %i.cv = load i32, ptr %gep, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv140
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !18
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.loopexit, label %scalar.ph173, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph173, %middle.block182, %bb.o
  %i.cx = phi i32 [ %.pre, %bb.o ], [ %i.cn, %middle.block182 ], [ %i.cn, %scalar.ph173 ] ; 2 uses
  %.not99 = icmp eq i32 %i.cl, 0
  br i1 %.not99, label %mpb_renorm.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.loopexit
  %i.cy = zext nneg i32 %i.cx to i64
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %.016.i = phi i32 [ %i.da, %.lr.ph.i109 ], [ 0, %.lr.ph.i109.preheader ]
  %.014.in15.i = phi i64 [ %.014.i, %.lr.ph.i109 ], [ %i.cy, %.lr.ph.i109.preheader ] ; 3 uses
  %.014.i = add nsw i64 %.014.in15.i, -1
  %i.cz = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !18 ; 2 uses
  %i.db = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.da, i32 range(i32 1, 32) %1)
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = icmp samesign ugt i64 %.014.in15.i, 1
end_hunk_0
begin_hunk_1_@js_atod:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.d = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.d, label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.a
  %i.e = sext i32 %.pre to i64
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = shl nsw i32 %.pre, 5
  %i.j = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = sub i32 %i.i, %i.j
  %.0.i = select i1 %i.h, i32 0, i32 %i.k         ; 2 uses
  %i.l = sub nsw i32 %.0.i, %2                    ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 -1021) ; 2 uses
  %.0.neg = add i32 %.0.i, -1074
  %i.n = sub i32 %.0.neg, %i.m
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.n, i32 noundef 0)
  %i.o = load i32, ptr %1, align 4, !tbaa !18
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %i.r = zext i32 %i.q to i64
  br label %mpb_get_u64.exit

bb.c:                                             ; preds = %mpb_floor_log2.exit
  %i.s = load i64, ptr %i.a, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i29 = phi i64 [ %i.r, %bb.b ], [ %i.s, %bb.c ]
  %i.t = sub nuw nsw i32 -1021, %i.m
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.0.i29, %i.u                    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 9007199254740991      ; 2 uses
  %i.x = zext i1 %i.w to i32
  %.024 = add nsw i32 %i.l, %i.x
  %i.y = zext i1 %i.w to i64
  %.023 = lshr i64 %i.v, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %mpb_get_u64.exit
  %.125 = phi i32 [ %.024, %mpb_get_u64.exit ], [ 0, %bb.a ]
  %.1 = phi i64 [ %.023, %mpb_get_u64.exit ], [ 0, %bb.a ]
  store i32 %.125, ptr %0, align 4, !tbaa !18
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mp_div1norm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %mp_shl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %.not18 = icmp eq i32 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = sub nsw i32 32, %5                       ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.a, 4294967294
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.p, %bb.c ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01314.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.f = shl i32 %i.e, %5
  %i.g = or i32 %i.f, %.015.i
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01314.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !18
  %i.i = lshr i32 %i.e, %i.b
  %i.j = or disjoint i64 %.01314.i, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %i.m = shl i32 %i.l, %5
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  store i32 %i.n, ptr %i.o, align 4, !tbaa !18
  %i.p = lshr i32 %i.l, %i.b                      ; 3 uses
  %i.q = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !6

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %mp_shl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01314.i.epil.init
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = shl i32 %i.s, %5
  %i.u = or i32 %i.t, %.015.i.epil.init
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01314.i.epil.init
  store i32 %i.u, ptr %i.v, align 4, !tbaa !18
  %i.w = lshr i32 %i.s, %i.b
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.019 = add i32 %2, -1                          ; 2 uses
  %i.x = icmp sgt i32 %.019, -1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mp_shl.exit
  %i.y = zext i32 %4 to i64
  %i.z = zext i32 %3 to i64
  %i.aa = zext nneg i32 %.019 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.120 = phi i32 [ %.017, %.lr.ph ], [ %i.ba, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18 ; 3 uses
  %i.ad = ashr i32 %i.ac, 31                      ; 2 uses
  %i.ae = and i32 %i.ad, %3
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = sub i32 %.120, %i.ad
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.y
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw i64 %i.ai, %i.aj
  %i.al = lshr i64 %i.ak, 32
  %i.am = zext i32 %.120 to i64
  %i.an = trunc nuw i64 %i.al to i32
  %i.ao = add i32 %.120, %i.an                    ; 2 uses
  %i.ap = shl nuw i64 %i.am, 32
  %i.aq = zext i32 %i.ac to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = zext i32 %i.ao to i64
  %.neg.i = xor i64 %i.as, -1
  %.neg24.i = mul i64 %.neg.i, %i.z
  %i.at = add i64 %i.ar, %.neg24.i                ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = add i32 %i.ao, 1
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = trunc i64 %i.at to i32
  %i.az = and i32 %3, %i.av
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not27 = icmp eq i64 %indvars.iv, 0
  br i1 %.not27, label %._crit_edge, label %bb.d, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d, %bb.b, %mp_shl.exit
  %.1.lcssa = phi i32 [ %.017, %mp_shl.exit ], [ 0, %bb.b ], [ %i.ba, %bb.d ]
  %i.bc = lshr i32 %.1.lcssa, %5
  ret i32 %i.bc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!12, !12, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16, !35, !36}
!28 = distinct !{!28, !16, !36, !35}
!29 = distinct !{!29, !16, !35, !36}
!30 = distinct !{!30, !16, !36, !35}
!31 = distinct !{!31, !16, !35, !36}
!32 = distinct !{!32, !16, !36, !35}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !16}
!38 = !{!"branch_weights", i32 2002, i32 2000}
!39 = !{!"short", !11, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"any pointer", !11, i64 0}
!42 = !{!"p1 omnipotent char", !41, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, !16}
end_hunk_1
