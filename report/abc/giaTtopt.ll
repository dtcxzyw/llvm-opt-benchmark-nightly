inline.NumInlined: 1562
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Ttopt10TruthTable4SwapEi:bb.a
  %i.dj = shl nuw nsw i32 1, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !75 ; 2 uses
  %i.dm = zext nneg i32 %i.dj to i64              ; 4 uses
  %i.dn = sext i32 %i.di to i64
  %i.do = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable8swapmaskE, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !71 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.dg to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert163 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat164 = shufflevector <2 x i64> %broadcast.splatinsert163, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !71 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !71 ; 2 uses
  %i.ds = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.dt = lshr <2 x i64> %wide.load165, %broadcast.splat
  %i.du = and <2 x i64> %i.ds, %broadcast.splat164
  %i.dv = and <2 x i64> %i.dt, %broadcast.splat164
  %i.dw = xor <2 x i64> %i.du, %wide.load         ; 2 uses
  %i.dx = xor <2 x i64> %i.dv, %wide.load165      ; 2 uses
  %i.dy = and <2 x i64> %i.dw, %broadcast.splat164
  %i.dz = and <2 x i64> %i.dx, %broadcast.splat164
  %i.ea = shl <2 x i64> %i.dy, %broadcast.splat
  %i.eb = shl <2 x i64> %i.dz, %broadcast.splat
  %i.ec = xor <2 x i64> %i.ea, %i.dw              ; 2 uses
  %i.ed = xor <2 x i64> %i.eb, %i.dx              ; 2 uses
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat
  %i.eg = and <2 x i64> %i.ee, %broadcast.splat164
  %i.eh = and <2 x i64> %i.ef, %broadcast.splat164
  %i.ei = xor <2 x i64> %i.eg, %i.ec
  %i.ej = xor <2 x i64> %i.eh, %i.ed
  store <2 x i64> %i.ei, ptr %i.dq, align 8, !tbaa !71
  store <2 x i64> %i.ej, ptr %i.dr, align 8, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader76:                                     ; preds = %bb.s
  br i1 %i.dh, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %.preheader76
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !75 ; 3 uses
  %i.en = zext nneg i32 %i.dg to i64
  %i.eo = add nsw i64 %i.en, -1                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 1                       ; 2 uses
  %i.eq = add nuw i64 %i.ep, 1                    ; 2 uses
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %.epil.preheader, label %.lr.ph98.new

.lr.ph98.new:                                     ; preds = %.lr.ph98
  %unroll_iter = and i64 %i.eq, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph98.new
  %indvars.iv114 = phi i64 [ 0, %.lr.ph98.new ], [ %indvars.iv.next115.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph98.new ], [ %niter.next.1, %bb.t ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv114 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !71 ; 2 uses
  %i.eu = lshr i64 %i.et, 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !71
  %i.ex = xor i64 %i.ew, %i.eu                    ; 2 uses
  %i.ey = shl i64 %i.ex, 32
  %i.ez = xor i64 %i.ey, %i.et                    ; 2 uses
  store i64 %i.ez, ptr %i.es, align 8, !tbaa !71
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = xor i64 %i.fa, %i.ex
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !71
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv114 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !71 ; 2 uses
  %i.ff = lshr i64 %i.fe, 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !71
  %i.fi = xor i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = shl i64 %i.fi, 32
  %i.fk = xor i64 %i.fj, %i.fe                    ; 2 uses
  store i64 %i.fk, ptr %i.fd, align 8, !tbaa !71
  %i.fl = lshr i64 %i.fk, 32
  %i.fm = xor i64 %i.fl, %i.fi
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !71
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit184.unr-lcssa, label %bb.t, !llvm.loop !207

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !71 ; 2 uses
  %i.fp = lshr i64 %i.fo, %i.dm
  %i.fq = and i64 %i.fp, %i.dp
  %i.fr = xor i64 %i.fq, %i.fo                    ; 2 uses
  %i.fs = and i64 %i.fr, %i.dp
  %i.ft = shl i64 %i.fs, %i.dm
  %i.fu = xor i64 %i.ft, %i.fr                    ; 2 uses
  %i.fv = lshr i64 %i.fu, %i.dm
  %i.fw = and i64 %i.fv, %i.dp
  %i.fx = xor i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fn, align 8, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !208

.loopexit.loopexit184.unr-lcssa:                  ; preds = %bb.t
  %i.fy = and i64 %i.eo, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fy, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit184.unr-lcssa, %.lr.ph98
  %indvars.iv114.epil.init = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next115.1, %.loopexit.loopexit184.unr-lcssa ]
  %lcmp.mod194 = trunc i64 %i.eq to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv114.epil.init ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !71 ; 2 uses
  %i.gb = lshr i64 %i.ga, 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !71
  %i.ge = xor i64 %i.gd, %i.gb                    ; 2 uses
  %i.gf = shl i64 %i.ge, 32
  %i.gg = xor i64 %i.gf, %i.ga                    ; 2 uses
  store i64 %i.gg, ptr %i.fz, align 8, !tbaa !71
  %i.gh = lshr i64 %i.gg, 32
  %i.gi = xor i64 %i.gh, %i.ge
  store i64 %i.gi, ptr %i.gc, align 8, !tbaa !71
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %.epil.preheader, %.loopexit.loopexit184.unr-lcssa, %._crit_edge.us, %middle.block, %.preheader78, %.preheader76, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt10TruthTable7BDDSwapEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #22
  %i.d = add nsw i32 %1, 2                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = sext i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.k = phi i32 [ %i.f, %.preheader.lr.ph ], [ %i.bl, %._crit_edge ]
  %indvars.iv18 = phi i64 [ %i.j, %.preheader.lr.ph ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !87   ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 5 uses
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = trunc i64 %indvars.iv18 to i32
  %i.u = sub i32 %i.t, %i.d                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 4294967295
  %i.y = icmp ugt i64 %i.v, 4294967295
  %i.z = or i1 %i.x, %i.y
  br i1 %i.z, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.s, 8589934588               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue29, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue29 ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !69 ; 5 uses
  %i.ab = ashr <4 x i32> %wide.load, %broadcast.splat
  %i.ac = srem <4 x i32> %i.ab, splat (i32 4)     ; 2 uses
  %i.ad = icmp eq <4 x i32> %i.ac, splat (i32 1)
  %i.ae = add nsw <4 x i32> %i.ac, splat (i32 -1)
  %i.af = icmp ult <4 x i32> %i.ae, splat (i32 2) ; 4 uses
  %predphi = select <4 x i1> %i.ad, <4 x i32> splat (i32 1), <4 x i32> splat (i32 -1) ; 4 uses
  %i.ag = extractelement <4 x i1> %i.af, i64 0
  br i1 %i.ag, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ah = extractelement <4 x i32> %predphi, i64 0
  %i.ai = shl i32 %i.ah, %i.u
  %i.aj = extractelement <4 x i32> %wide.load, i64 0
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.aa, align 4, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.al = extractelement <4 x i1> %i.af, i64 1
  br i1 %i.al, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue
  %i.am = extractelement <4 x i32> %predphi, i64 1
  %i.an = shl i32 %i.am, %i.u
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = extractelement <4 x i32> %wide.load, i64 1
  %i.ar = add i32 %i.an, %i.aq
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.af, i64 2
  br i1 %i.as, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.at = extractelement <4 x i32> %predphi, i64 2
  %i.au = shl i32 %i.at, %i.u
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = extractelement <4 x i32> %wide.load, i64 2
  %i.ay = add i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.az = extractelement <4 x i1> %i.af, i64 3
  br i1 %i.az, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.ba = extractelement <4 x i32> %predphi, i64 3
  %i.bb = shl i32 %i.ba, %i.u
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = extractelement <4 x i32> %wide.load, i64 3
  %i.bf = add i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %pred.store.continue29
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge16:                                    ; preds = %._crit_edge, %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #22
  ret i32 %i.bk

._crit_edge.loopexit:                             ; preds = %_ZN5Ttopt10TruthTable9SwapIndexERii.exit, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.preheader ] ; 2 uses
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next19, %i.bm
  br i1 %i.bn, label %.preheader, label %._crit_edge16, !llvm.loop !210

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN5Ttopt10TruthTable9SwapIndexERii.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5Ttopt10TruthTable9SwapIndexERii.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69 ; 2 uses
  %i.bq = ashr i32 %i.bp, %i.u
  %i.br = srem i32 %i.bq, 4                       ; 2 uses
  switch i32 %i.br, label %_ZN5Ttopt10TruthTable9SwapIndexERii.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %scalar.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %scalar.ph
  %.sink.i = phi i32 [ -1, %bb.b ], [ %i.br, %scalar.ph ]
  %.neg.i = shl i32 %.sink.i, %i.u
  %i.bs = add i32 %.neg.i, %i.bp
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !69
  br label %_ZN5Ttopt10TruthTable9SwapIndexERii.exit

_ZN5Ttopt10TruthTable9SwapIndexERii.exit:         ; preds = %scalar.ph, %.sink.split.i
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %2 = and i64 %indvars.iv.next, 4294967295
  %i.bt = icmp ugt i64 %i.s, %2
  br i1 %i.bt, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !211
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !101
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !71
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !71
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !104
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !69
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !86
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !69
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !69
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

end_hunk_0
begin_hunk_1_@_ZN5Ttopt14TruthTableCare10BDDRebuildEi:bb.a

.loopexit32:                                      ; preds = %_ZN5Ttopt14TruthTableCare4IsDCEii.exit, %.preheader, %bb.l
  %i.br = add nsw i32 %.242, 1                    ; 2 uses
  %i.bs = load i32, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.g, label %._crit_edge, !llvm.loop !296

._crit_edge:                                      ; preds = %.loopexit32, %.preheader33
  %.lcssa35 = phi i32 [ %i.z, %.preheader33 ], [ %i.bs, %.loopexit32 ] ; 3 uses
  %i.bu = icmp sgt i32 %.lcssa35, 0
  br i1 %i.bu, label %.lr.ph.i26, label %_ZN5Ttopt10TruthTable12BDDNodeCountEv.exit

.lr.ph.i26:                                       ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !111 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !111 ; 5 uses
  %wide.trip.count.i27 = zext nneg i32 %.lcssa35 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.lcssa35, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26
  %i.bz = and i64 %wide.trip.count.i27, 3         ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 4, i64 %i.bz
  %n.vec = sub nsw i64 %wide.trip.count.i27, %i.cb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ <i32 1, i32 0>, %vector.ph ], [ %i.ev, %vector.body ]
  %vec.phi63 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ew, %vector.body ]
  %i.cc = or disjoint i64 %index, 1               ; 2 uses
  %i.cd = or disjoint i64 %index, 2               ; 2 uses
  %i.ce = or disjoint i64 %index, 3               ; 2 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cc ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cd ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !86
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !86
  %i.cp = insertelement <2 x ptr> poison, ptr %i.cn, i64 0
  %i.cq = insertelement <2 x ptr> %i.cp, ptr %i.co, i64 1
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !86
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !86
  %i.ct = insertelement <2 x ptr> poison, ptr %i.cr, i64 0
  %i.cu = insertelement <2 x ptr> %i.ct, ptr %i.cs, i64 1
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !87
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.cx = insertelement <2 x ptr> poison, ptr %i.cv, i64 0
  %i.cy = insertelement <2 x ptr> %i.cx, ptr %i.cw, i64 1
  %i.cz = load ptr, ptr %i.ch, align 8, !tbaa !87
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.db = insertelement <2 x ptr> poison, ptr %i.cz, i64 0
  %i.dc = insertelement <2 x ptr> %i.db, ptr %i.da, i64 1
  %i.dd = ptrtoint <2 x ptr> %i.cq to <2 x i64>
  %i.de = ptrtoint <2 x ptr> %i.cu to <2 x i64>
  %i.df = ptrtoint <2 x ptr> %i.cy to <2 x i64>
  %i.dg = ptrtoint <2 x ptr> %i.dc to <2 x i64>
  %i.dh = sub <2 x i64> %i.dd, %i.df
  %i.di = sub <2 x i64> %i.de, %i.dg
  %i.dj = lshr exact <2 x i64> %i.dh, splat (i64 2)
  %i.dk = lshr exact <2 x i64> %i.di, splat (i64 2)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.cd ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !86
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !86
  %i.dv = insertelement <2 x ptr> poison, ptr %i.dt, i64 0
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %i.du, i64 1
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !86
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !86
  %i.dz = insertelement <2 x ptr> poison, ptr %i.dx, i64 0
  %i.ea = insertelement <2 x ptr> %i.dz, ptr %i.dy, i64 1
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !87
  %i.ec = load ptr, ptr %i.dm, align 8, !tbaa !87
  %i.ed = insertelement <2 x ptr> poison, ptr %i.eb, i64 0
  %i.ee = insertelement <2 x ptr> %i.ed, ptr %i.ec, i64 1
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.eh = insertelement <2 x ptr> poison, ptr %i.ef, i64 0
  %i.ei = insertelement <2 x ptr> %i.eh, ptr %i.eg, i64 1
  %i.ej = ptrtoint <2 x ptr> %i.dw to <2 x i64>
  %i.ek = ptrtoint <2 x ptr> %i.ea to <2 x i64>
  %i.el = ptrtoint <2 x ptr> %i.ee to <2 x i64>
  %i.em = ptrtoint <2 x ptr> %i.ei to <2 x i64>
  %i.en = sub <2 x i64> %i.ej, %i.el
  %i.eo = sub <2 x i64> %i.ek, %i.em
  %i.ep = lshr exact <2 x i64> %i.en, splat (i64 2)
  %i.eq = lshr exact <2 x i64> %i.eo, splat (i64 2)
  %i.er = sub nsw <2 x i64> %i.dj, %i.ep
  %i.es = sub nsw <2 x i64> %i.dk, %i.eq
  %i.et = trunc <2 x i64> %i.er to <2 x i32>
  %i.eu = trunc <2 x i64> %i.es to <2 x i32>
  %i.ev = add <2 x i32> %vec.phi, %i.et           ; 2 uses
  %i.ew = add <2 x i32> %vec.phi63, %i.eu         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ew, %i.ev
  %i.ey = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i26, %middle.block
  %indvars.iv.i28.ph = phi i64 [ 0, %.lr.ph.i26 ], [ %n.vec, %middle.block ]
  %.056.i.ph = phi i32 [ 1, %.lr.ph.i26 ], [ %i.ey, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %scalar.ph ], [ %indvars.iv.i28.ph, %scalar.ph.preheader ] ; 3 uses
  %.056.i = phi i32 [ %i.fr, %scalar.ph ], [ %.056.i.ph, %scalar.ph.preheader ]
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %indvars.iv.i28 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !86
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv.i28 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !86
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !87
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr exact i64 %i.fn, 2
  %i.fp = sub nsw i64 %i.fg, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add nsw i32 %.056.i, %i.fq              ; 2 uses
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, %wide.trip.count.i27
  br i1 %exitcond.not.i30, label %_ZN5Ttopt10TruthTable12BDDNodeCountEv.exit, label %scalar.ph, !llvm.loop !298

_ZN5Ttopt10TruthTable12BDDNodeCountEv.exit:       ; preds = %scalar.ph, %._crit_edge
  %.05.lcssa.i = phi i32 [ 1, %._crit_edge ], [ %i.fr, %scalar.ph ]
  ret i32 %.05.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt14TruthTableCare17BDDRebuildByMergeEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !257  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !155  ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = sub nsw i32 %i.m, %1                     ; 6 uses
  %i.o = icmp sgt i32 %i.n, 6
  %i.p = sub nsw i32 6, %i.n                      ; 3 uses
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = add nsw i32 %i.n, -6                     ; 4 uses
  %i.u = shl nuw i32 1, %i.t                      ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 4 uses
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.t, 31
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.split.us
  %i.v = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.v
  %scevgep22 = getelementptr i8, ptr %i.s, i64 %i.v
  %min.iters.check = icmp slt i32 %i.u, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.w = icmp slt i32 %i.u, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us ], [ 0, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv13 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !281
  %i.z = ashr i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !283
  %i.ac = shl i32 %i.ab, %i.t
  %i.ad = shl i32 %i.z, %i.t
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 2 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.s, i64 %i.ae ; 7 uses
  %invariant.gep27.i.us = getelementptr [8 x i8], ptr %i.s, i64 %i.af ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.us
  br i1 %i.w, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph.i.us
  %i.ag = shl nsw i64 %i.af, 3
  %scevgep21 = getelementptr i8, ptr %scevgep, i64 %i.ag
  %i.ah = shl nsw i64 %i.ae, 3
  %scevgep23 = getelementptr i8, ptr %scevgep22, i64 %i.ah
  %bound0 = icmp ult ptr %invariant.gep27.i.us, %scevgep23
  %bound1 = icmp ult ptr %invariant.gep.i.us, %scevgep21
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !71, !alias.scope !299
  %wide.load24 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !71, !alias.scope !299
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %index ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %wide.load25 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !71, !alias.scope !302, !noalias !299
  %wide.load26 = load <2 x i64>, ptr %i.al, align 8, !tbaa !71, !alias.scope !302, !noalias !299
  %i.am = or <2 x i64> %wide.load25, %wide.load
  %i.an = or <2 x i64> %wide.load26, %wide.load24
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !71, !alias.scope !302, !noalias !299
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !71, !alias.scope !302, !noalias !299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us, label %vector.body, !llvm.loop !304

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.ap = load i64, ptr %gep.i.us, align 8, !tbaa !71
  %gep28.i.us = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.aq = load i64, ptr %gep28.i.us, align 8, !tbaa !71
  %i.ar = or i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %gep28.i.us, align 8, !tbaa !71
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us
  %i.as = load i64, ptr %gep.i.us.1, align 8, !tbaa !71
  %gep28.i.us.1 = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.at = load i64, ptr %gep28.i.us.1, align 8, !tbaa !71
  %i.au = or i64 %i.at, %i.as
  store i64 %i.au, ptr %gep28.i.us.1, align 8, !tbaa !71
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %gep.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us.1
  %i.av = load i64, ptr %gep.i.us.2, align 8, !tbaa !71
  %gep28.i.us.2 = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %indvars.iv.next.i.us.1 ; 2 uses
  %i.aw = load i64, ptr %gep28.i.us.2, align 8, !tbaa !71
  %i.ax = or i64 %i.aw, %i.av
  store i64 %i.ax, ptr %gep28.i.us.2, align 8, !tbaa !71
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %gep.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us.2
  %i.ay = load i64, ptr %gep.i.us.3, align 8, !tbaa !71
  %gep28.i.us.3 = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %indvars.iv.next.i.us.2 ; 2 uses
  %i.az = load i64, ptr %gep28.i.us.3, align 8, !tbaa !71
  %i.ba = or i64 %i.az, %i.ay
  store i64 %i.ba, ptr %gep28.i.us.3, align 8, !tbaa !71
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !305

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us.loopexit.unr-lcssa: ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.us.3, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %scalar.ph.epil ], [ %indvars.iv.i.us.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %gep.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil
  %i.bb = load i64, ptr %gep.i.us.epil, align 8, !tbaa !71
  %gep28.i.us.epil = getelementptr [8 x i8], ptr %invariant.gep27.i.us, i64 %indvars.iv.i.us.epil ; 2 uses
  %i.bc = load i64, ptr %gep28.i.us.epil, align 8, !tbaa !71
  %i.bd = or i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %gep28.i.us.epil, align 8, !tbaa !71
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us, label %scalar.ph.epil, !llvm.loop !306

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us: ; preds = %vector.body, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next14 = add i64 %indvars.iv13, 1   ; 2 uses
  %2 = and i64 %indvars.iv.next14, 4294967295
  %i.be = icmp ugt i64 %i.k, %2
  br i1 %i.be, label %.lr.ph.i.us, label %._crit_edge, !llvm.loop !307

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = sext i32 %i.n to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !71
  br label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit

._crit_edge:                                      ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.us, %.lr.ph.split.us, %bb.a
  ret void

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit:     ; preds = %.lr.ph.split, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !281
  %i.bk = ashr i32 %i.bj, 1                       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !283 ; 2 uses
  %i.bn = ashr i32 %i.bm, %i.p
  %i.bo = srem i32 %i.bm, %i.q
  %i.bp = shl i32 %i.bo, %i.n
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !71
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = lshr i64 %i.bs, %i.bt
  %i.bv = and i64 %i.bu, %i.bh
  %i.bw = ashr i32 %i.bk, %i.p
  %i.bx = srem i32 %i.bk, %i.q
  %i.by = shl i32 %i.bx, %i.n
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bv, %i.bz
  %i.cb = sext i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cb ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !71
  %i.ce = or i64 %i.ca, %i.cd
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !71
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %3 = and i64 %indvars.iv.next, 4294967295
  %i.cf = icmp ugt i64 %i.k, %3
  br i1 %i.cf, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %._crit_edge, !llvm.loop !307
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt14TruthTableCare5MergeEiiib(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = sub nsw i32 %i.b, %3                     ; 6 uses
  %i.d = icmp sgt i32 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -6                     ; 4 uses
  %.not.i = icmp eq i32 %i.e, 31
  br i1 %.not.i, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = shl i32 %2, %i.e
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.j = shl i32 %1, %i.e
  %i.k = sext i32 %i.h to i64                     ; 2 uses
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 7 uses
  %invariant.gep27.i = getelementptr [8 x i8], ptr %i.i, i64 %i.l ; 7 uses
  %min.iters.check = icmp slt i32 %i.f, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.m = icmp slt i32 %i.f, 4
  br i1 %i.m, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.n = add nsw i64 %i.l, %wide.trip.count.i
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  %i.p = add nsw i64 %i.k, %wide.trip.count.i
  %i.q = shl nsw i64 %i.p, 3
  %scevgep12 = getelementptr i8, ptr %i.i, i64 %i.q
  %bound0 = icmp ult ptr %invariant.gep27.i, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !71, !alias.scope !308
  %wide.load13 = load <2 x i64>, ptr %i.s, align 8, !tbaa !71, !alias.scope !308
  %i.t = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %index ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %wide.load14 = load <2 x i64>, ptr %i.t, align 8, !tbaa !71, !alias.scope !311, !noalias !308
  %wide.load15 = load <2 x i64>, ptr %i.u, align 8, !tbaa !71, !alias.scope !311, !noalias !308
  %i.v = or <2 x i64> %wide.load14, %wide.load
  %i.w = or <2 x i64> %wide.load15, %wide.load13
  store <2 x i64> %i.v, ptr %i.t, align 8, !tbaa !71, !alias.scope !311, !noalias !308
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !71, !alias.scope !311, !noalias !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %vector.body, !llvm.loop !313

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.y = load i64, ptr %gep.i, align 8, !tbaa !71
  %gep28.i = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i ; 2 uses
  %i.z = load i64, ptr %gep28.i, align 8, !tbaa !71
  %i.aa = or i64 %i.z, %i.y
  store i64 %i.aa, ptr %gep28.i, align 8, !tbaa !71
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ab = load i64, ptr %gep.i.1, align 8, !tbaa !71
  %gep28.i.1 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ac = load i64, ptr %gep28.i.1, align 8, !tbaa !71
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %gep28.i.1, align 8, !tbaa !71
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.ae = load i64, ptr %gep.i.2, align 8, !tbaa !71
  %gep28.i.2 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.af = load i64, ptr %gep28.i.2, align 8, !tbaa !71
  %i.ag = or i64 %i.af, %i.ae
  store i64 %i.ag, ptr %gep28.i.2, align 8, !tbaa !71
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.ah = load i64, ptr %gep.i.3, align 8, !tbaa !71
  %gep28.i.3 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ai = load i64, ptr %gep28.i.3, align 8, !tbaa !71
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %gep28.i.3, align 8, !tbaa !71
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !314

bb.c:                                             ; preds = %bb.a
  %i.ak = sub nsw i32 6, %i.c                     ; 3 uses
  %i.al = ashr i32 %2, %i.ak
  %i.am = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.an = srem i32 %2, %i.am
  %i.ao = shl i32 %i.an, %i.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aq = sext i32 %i.al to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !71
  %i.au = zext nneg i32 %i.ao to i64
  %i.av = lshr i64 %i.at, %i.au
  %i.aw = sext i32 %i.c to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !71
  %i.az = and i64 %i.av, %i.ay
  %i.ba = ashr i32 %1, %i.ak
  %i.bb = srem i32 %1, %i.am
  %i.bc = shl i32 %i.bb, %i.c
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %i.az, %i.bd
  %i.bf = sext i32 %i.ba to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bi = or i64 %i.be, %i.bh
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !71
  br label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa: ; preds = %scalar.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.3, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph.epil ], [ %indvars.iv.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  %i.bj = load i64, ptr %gep.i.epil, align 8, !tbaa !71
  %gep28.i.epil = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i.epil ; 2 uses
  %i.bk = load i64, ptr %gep28.i.epil, align 8, !tbaa !71
  %i.bl = or i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %gep28.i.epil, align 8, !tbaa !71
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %scalar.ph.epil, !llvm.loop !315

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit:     ; preds = %vector.body, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa, %scalar.ph.epil, %bb.b, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bn = sext i32 %3 to i64
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !151
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn ; 4 uses
  %i.bq = shl i32 %1, 1
  %i.br = zext i1 %4 to i32
  %i.bs = or disjoint i32 %i.bq, %i.br
  %.sroa.2.0.insert.ext.i = zext i32 %2 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !257 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158
  %.not.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bu, align 4
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !257
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !257
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !155 ; 7 uses
  %i.ca = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable
end_hunk_1
