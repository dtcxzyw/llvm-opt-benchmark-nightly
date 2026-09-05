Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ieee754?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd:bb.a

bb.n:                                             ; preds = %bb.m
  %i.au = fsub double %i.an, %i.ao
  br label %.sink.split

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.av = lshr i32 %i.i, 20                       ; 2 uses
  %i.aw = fsub double %i.an, %i.ao                ; 3 uses
  store double %i.aw, ptr %1, align 8
  %.cast = bitcast double %i.aw to i64
  %sum.shift = lshr i64 %.cast, 52
  %i.ax = trunc nuw nsw i64 %sum.shift to i32
  %i.ay = and i32 %i.ax, 2047
  %i.az = sub nsw i32 %i.av, %i.ay
  %i.ba = icmp sgt i32 %i.az, 16
  br i1 %i.ba, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bb = fmul nnan double %i.al, f0x3DD0B4611A600000 ; 2 uses
  %i.bc = fsub double %i.an, %i.bb                ; 5 uses
  %i.bd = fsub double %i.an, %i.bc
  %i.be = fsub double %i.bd, %i.bb
  %i.bf = fneg double %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3BA3198A2E037073, double %i.bf) ; 2 uses
  %i.bh = fsub double %i.bc, %i.bg                ; 3 uses
  store double %i.bh, ptr %1, align 8
  %.cast128 = bitcast double %i.bh to i64
  %sum.shift111 = lshr i64 %.cast128, 52
  %i.bi = trunc nuw nsw i64 %sum.shift111 to i32
  %i.bj = and i32 %i.bi, 2047
  %i.bk = sub nsw i32 %i.av, %i.bj
  %i.bl = icmp sgt i32 %i.bk, 49
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = fmul nnan double %i.al, f0x3BA3198A2E000000 ; 2 uses
  %i.bn = fsub double %i.bc, %i.bm                ; 3 uses
  %i.bo = fsub double %i.bc, %i.bn
  %i.bp = fsub double %i.bo, %i.bm
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.al, double f0x397B839A252049C1, double %i.bq) ; 2 uses
  %i.bs = fsub double %i.bn, %i.br
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.q
  %.sink = phi double [ %i.bs, %bb.q ], [ %i.au, %bb.n ] ; 2 uses
  %.1106.ph = phi double [ %i.bn, %bb.q ], [ %i.an, %bb.n ]
  %.1.ph = phi double [ %i.br, %bb.q ], [ %i.ao, %bb.n ]
  store double %.sink, ptr %1, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.o, %bb.p
  %i.bt = phi double [ %i.bh, %bb.p ], [ %i.aw, %bb.o ], [ %.sink, %.sink.split ] ; 2 uses
  %.1106 = phi double [ %i.bc, %bb.p ], [ %i.an, %bb.o ], [ %.1106.ph, %.sink.split ]
  %.1 = phi double [ %i.bg, %bb.p ], [ %i.ao, %bb.o ], [ %.1.ph, %.sink.split ]
  %i.bu = fsub double %.1106, %i.bt
  %i.bv = fsub double %i.bu, %.1                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.bv, ptr %i.bw, align 8
  %i.bx = icmp slt i64 %i.f, 0
  br i1 %i.bx, label %bb.s, label %bb.ba

bb.s:                                             ; preds = %bb.r
  %i.by = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bv, i64 1
  %i.ca = fneg <2 x double> %i.bz
  store <2 x double> %i.ca, ptr %1, align 8
  %i.cb = sub nsw i32 0, %i.ak
  br label %bb.ba

bb.t:                                             ; preds = %bb.k
  %i.cc = icmp samesign ugt i32 %i.i, 2146435071
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = fsub double %0, %0                      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.cd, ptr %i.ce, align 8
  store double %i.cd, ptr %1, align 8
  br label %bb.ba

bb.v:                                             ; preds = %bb.t
  %i.cf = and i64 %i.f, 4294967295
  %i.cg = lshr i32 %i.i, 20
  %i.ch = add nsw i32 %i.cg, -1046                ; 3 uses
  %i.ci = shl nsw i32 %i.ch, 20
  %i.cj = sub nsw i32 %i.i, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 32
  %i.cm = or disjoint i64 %i.cl, %i.cf
  %i.cn = bitcast i64 %i.cm to double             ; 2 uses
  %i.co = fptosi double %i.cn to i32
  %i.cp = sitofp i32 %i.co to double              ; 2 uses
  store double %i.cp, ptr %i.e, align 16
  %i.cq = fsub double %i.cn, %i.cp
  %i.cr = fmul double %i.cq, f0x4170000000000000  ; 2 uses
  %i.cs = fptosi double %i.cr to i32
  %i.ct = sitofp i32 %i.cs to double              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.ct, ptr %i.cu, align 8
  %i.cv = fsub double %i.cr, %i.ct
  %i.cw = fmul double %i.cv, f0x4170000000000000
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store double %i.cw, ptr %i.cx, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvar = phi i35 [ %indvar.next, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 3, %bb.v ] ; 31 uses
  %i.cy = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8
  %i.da = load double, ptr %i.cz, align 8
  %i.db = fcmp oeq double %i.da, 0.000000e+00
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvar.next = add i35 %indvar, 1
  br i1 %i.db, label %bb.w, label %bb.x, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.dc = trunc i64 %indvars.iv to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.dd = add nsw i32 %i.dc, -1                   ; 4 uses
  %i.de = trunc nsw i32 %i.ch to i16
  %.lhs.trunc.i = add nsw i16 %i.de, -3
  %i.df = sdiv i16 %.lhs.trunc.i, 24              ; 2 uses
  %.sext.i = zext nneg i16 %i.df to i32           ; 2 uses
  %.neg.i = mul nsw i32 %.sext.i, -24
  %.neg266.i = add nsw i32 %.neg.i, %i.ch         ; 6 uses
  %i.dg = add nsw i32 %.neg266.i, -24             ; 6 uses
  %.not27.i = icmp slt i64 %indvars.iv, -3
  br i1 %.not27.i, label %.preheader16.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.dh = add i32 %i.dc, 3                        ; 5 uses
  %i.di = sub nsw i32 %.sext.i, %i.dd             ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 0)
  %i.dj = add nuw i32 %smax.i, 1                  ; 2 uses
  %wide.trip.count.i = zext i32 %i.dj to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.dk = icmp slt i32 %i.dh, 1
  br i1 %i.dk, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader17.i.unr-lcssa:                         ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader17.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader17.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader17.i.unr-lcssa ]
  %.023729.i.epil.init = phi i32 [ %i.di, %.lr.ph.preheader.i ], [ %i.iw, %.preheader17.i.unr-lcssa ] ; 2 uses
  %lcmp.mod271 = trunc i32 %i.dj to i1
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.dl = icmp slt i32 %.023729.i.epil.init, 0
  br i1 %i.dl, label %.preheader17.i.epilog-lcssa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dm = zext nneg i32 %.023729.i.epil.init to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = sitofp i32 %i.do to double
  br label %.preheader17.i.epilog-lcssa

.preheader17.i.epilog-lcssa:                      ; preds = %bb.y, %.lr.ph.i.epil.preheader
  %i.dq = phi double [ %i.dp, %bb.y ], [ 0.000000e+00, %.lr.ph.i.epil.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store double %i.dq, ptr %i.dr, align 8
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.preheader17.i.unr-lcssa, %.preheader17.i.epilog-lcssa
  %.not273.not30.i = icmp sgt i64 %indvars.iv, 0
  br i1 %.not273.not30.i, label %.preheader16.us.preheader.i, label %.preheader16.preheader.i

.preheader16.preheader.i:                         ; preds = %.preheader17.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %.pre177 = and i64 %indvars.iv, 4294967295
  br label %.preheader15.i

.preheader16.us.preheader.i:                      ; preds = %.preheader17.i
  %wide.trip.count102.i = and i64 %indvars.iv, 4294967295 ; 2 uses
  %i.ds = add nsw i64 %wide.trip.count102.i, -1   ; 5 uses
  %xtraiter272 = and i64 %indvars.iv, 1
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.epil.preheader, label %.preheader16.us.preheader.i.new

.preheader16.us.preheader.i.new:                  ; preds = %.preheader16.us.preheader.i
  %unroll_iter276 = and i64 %indvars.iv, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader16.us.preheader.i.new
  %indvars.iv99.i = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %indvars.iv.next100.i.1, %bb.z ] ; 4 uses
  %.032.us.i = phi double [ 0.000000e+00, %.preheader16.us.preheader.i.new ], [ %i.ej, %bb.z ]
  %niter277 = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %niter277.next.1, %bb.z ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i
  %i.dv = load double, ptr %i.du, align 16
  %i.dw = trunc nuw nsw i64 %indvars.iv99.i to i32
  %i.dx = sub nuw i32 %i.dd, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.ea, double %.032.us.i)
  %indvars.iv.next100.i = or disjoint i64 %indvars.iv99.i, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.i
  %i.ed = load double, ptr %i.ec, align 8
  %i.ee = trunc nuw nsw i64 %indvars.iv.next100.i to i32
  %i.ef = sub nuw i32 %i.dd, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ei, double %i.eb) ; 3 uses
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %niter277.next.1 = add i64 %niter277, 2         ; 2 uses
  %niter277.ncmp.1 = icmp eq i64 %niter277.next.1, %unroll_iter276
  br i1 %niter277.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.z, !llvm.loop !6

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.z
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader16.us.preheader.i
  %indvars.iv99.i.epil.init = phi i64 [ 0, %.preheader16.us.preheader.i ], [ %indvars.iv.next100.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.032.us.i.epil.init = phi double [ 0.000000e+00, %.preheader16.us.preheader.i ], [ %i.ej, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod275 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i.epil.init
  %i.el = load double, ptr %i.ek, align 8
  %i.em = trunc nuw nsw i64 %indvars.iv99.i.epil.init to i32
  %i.en = sub nuw i32 %i.dd, %i.em
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = tail call double @llvm.fmuladd.f64(double %i.el, double %i.eq, double %.032.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa270 = phi double [ %i.ej, %._crit_edge.us.i.unr-lcssa ], [ %i.er, %.epil.preheader ]
  store double %.lcssa270, ptr %i.d, align 16
  %xtraiter279 = and i64 %indvars.iv, 1
  %i.es = icmp eq i64 %i.ds, 0
  br i1 %i.es, label %.epil.preheader278, label %._crit_edge.us.i.new

._crit_edge.us.i.new:                             ; preds = %._crit_edge.us.i
  %unroll_iter283 = and i64 %indvars.iv, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %._crit_edge.us.i.new
  %indvars.iv99.1.i = phi i64 [ 0, %._crit_edge.us.i.new ], [ %indvars.iv.next100.1.i.1, %bb.aa ] ; 4 uses
  %.032.us.1.i = phi double [ 0.000000e+00, %._crit_edge.us.i.new ], [ %i.fc, %bb.aa ]
  %niter284 = phi i64 [ 0, %._crit_edge.us.i.new ], [ %niter284.next.1, %bb.aa ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i
  %i.eu = load double, ptr %i.et, align 16
  %i.ev = sub nsw i64 %indvars.iv, %indvars.iv99.1.i
  %2 = and i64 %i.ev, 4294967295
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.ew = load double, ptr %3, align 8
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ew, double %.032.us.1.i)
  %indvars.iv.next100.1.i = or disjoint i64 %indvars.iv99.1.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.1.i
  %i.ez = load double, ptr %i.ey, align 8
  %i.fa = sub nsw i64 %indvars.iv, %indvars.iv.next100.1.i
  %4 = and i64 %i.fa, 4294967295
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4
  %i.fb = load double, ptr %5, align 8
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fb, double %i.ex) ; 3 uses
  %indvars.iv.next100.1.i.1 = add nuw nsw i64 %indvars.iv99.1.i, 2 ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %._crit_edge.us.1.i.unr-lcssa, label %bb.aa, !llvm.loop !6

._crit_edge.us.1.i.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %._crit_edge.us.1.i, label %.epil.preheader278

.epil.preheader278:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %._crit_edge.us.i
  %indvars.iv99.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %indvars.iv.next100.1.i.1, %._crit_edge.us.1.i.unr-lcssa ] ; 2 uses
  %.032.us.1.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.i ], [ %i.fc, %._crit_edge.us.1.i.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i.epil.init
  %i.fe = load double, ptr %i.fd, align 8
  %i.ff = sub nsw i64 %indvars.iv, %indvars.iv99.1.i.epil.init
  %6 = and i64 %i.ff, 4294967295
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %6
  %i.fg = load double, ptr %7, align 8
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fg, double %.032.us.1.i.epil.init)
  br label %._crit_edge.us.1.i

._crit_edge.us.1.i:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %.epil.preheader278
  %.lcssa269 = phi double [ %i.fc, %._crit_edge.us.1.i.unr-lcssa ], [ %i.fh, %.epil.preheader278 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %.lcssa269, ptr %i.fi, align 8
  %i.fj = add nuw i64 %indvars.iv, 1              ; 2 uses
  %xtraiter286 = and i64 %indvars.iv, 1
  %i.fk = icmp eq i64 %i.ds, 0
  br i1 %i.fk, label %.epil.preheader285, label %._crit_edge.us.1.i.new

._crit_edge.us.1.i.new:                           ; preds = %._crit_edge.us.1.i
  %unroll_iter290 = and i64 %indvars.iv, 4294967294
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %._crit_edge.us.1.i.new
  %indvars.iv99.2.i = phi i64 [ 0, %._crit_edge.us.1.i.new ], [ %indvars.iv.next100.2.i.1, %bb.ab ] ; 5 uses
  %.032.us.2.i = phi double [ 0.000000e+00, %._crit_edge.us.1.i.new ], [ %i.fz, %bb.ab ]
  %niter291 = phi i64 [ 0, %._crit_edge.us.1.i.new ], [ %niter291.next.1, %bb.ab ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i
  %i.fm = load double, ptr %i.fl, align 16
  %i.fn = sub i64 %i.fj, %indvars.iv99.2.i
  %sext185.a = shl i64 %i.fn, 32
  %i.fo = ashr exact i64 %sext185.a, 29
  %i.fp = getelementptr inbounds i8, ptr %i.b, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fq, double %.032.us.2.i)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load double, ptr %i.ft, align 8
  %i.fv = sub nsw i64 %indvars.iv, %indvars.iv99.2.i
  %sext185.1.a = shl i64 %i.fv, 32
  %i.fw = ashr exact i64 %sext185.1.a, 29
  %i.fx = getelementptr inbounds i8, ptr %i.b, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.fy, double %i.fr) ; 3 uses
  %indvars.iv.next100.2.i.1 = add nuw nsw i64 %indvars.iv99.2.i, 2 ; 2 uses
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %._crit_edge.us.2.i.unr-lcssa, label %bb.ab, !llvm.loop !6

._crit_edge.us.2.i.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %._crit_edge.us.2.i, label %.epil.preheader285

.epil.preheader285:                               ; preds = %._crit_edge.us.2.i.unr-lcssa, %._crit_edge.us.1.i
  %indvars.iv99.2.i.epil.init = phi i64 [ 0, %._crit_edge.us.1.i ], [ %indvars.iv.next100.2.i.1, %._crit_edge.us.2.i.unr-lcssa ] ; 2 uses
  %.032.us.2.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.1.i ], [ %i.fz, %._crit_edge.us.2.i.unr-lcssa ]
  %lcmp.mod289 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i.epil.init
  %i.gb = load double, ptr %i.ga, align 8
  %i.gc = sub i64 %i.fj, %indvars.iv99.2.i.epil.init
  %sext185.epil.a = shl i64 %i.gc, 32
  %i.gd = ashr exact i64 %sext185.epil.a, 29
  %i.ge = getelementptr inbounds i8, ptr %i.b, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gf, double %.032.us.2.i.epil.init)
  br label %._crit_edge.us.2.i

._crit_edge.us.2.i:                               ; preds = %._crit_edge.us.2.i.unr-lcssa, %.epil.preheader285
  %.lcssa268 = phi double [ %i.fz, %._crit_edge.us.2.i.unr-lcssa ], [ %i.gg, %.epil.preheader285 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %.lcssa268, ptr %i.gh, align 16
  %i.gi = add nuw i64 %indvars.iv, 2              ; 3 uses
  %xtraiter293 = and i64 %indvars.iv, 1
  %i.gj = icmp eq i64 %i.ds, 0
  br i1 %i.gj, label %.epil.preheader292, label %._crit_edge.us.2.i.new

._crit_edge.us.2.i.new:                           ; preds = %._crit_edge.us.2.i
  %unroll_iter297 = and i64 %indvars.iv, 4294967294
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %._crit_edge.us.2.i.new
  %indvars.iv99.3.i = phi i64 [ 0, %._crit_edge.us.2.i.new ], [ %indvars.iv.next100.3.i.1, %bb.ac ] ; 4 uses
  %.032.us.3.i = phi double [ 0.000000e+00, %._crit_edge.us.2.i.new ], [ %i.gx, %bb.ac ]
  %niter298 = phi i64 [ 0, %._crit_edge.us.2.i.new ], [ %niter298.next.1, %bb.ac ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.3.i
  %i.gl = load double, ptr %i.gk, align 16
  %i.gm = sub i64 %i.gi, %indvars.iv99.3.i
  %sext186.a = shl i64 %i.gm, 32
  %i.gn = ashr exact i64 %sext186.a, 29
  %i.go = getelementptr inbounds i8, ptr %i.b, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gp, double %.032.us.3.i)
  %indvars.iv.next100.3.i = or disjoint i64 %indvars.iv99.3.i, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.3.i
  %i.gs = load double, ptr %i.gr, align 8
  %i.gt = sub i64 %i.gi, %indvars.iv.next100.3.i
  %sext186.1 = shl i64 %i.gt, 32
  %i.gu = ashr exact i64 %sext186.1, 29
  %i.gv = getelementptr inbounds i8, ptr %i.b, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gw, double %i.gq) ; 3 uses
  %indvars.iv.next100.3.i.1 = add nuw nsw i64 %indvars.iv99.3.i, 2 ; 2 uses
  %niter298.next.1 = add i64 %niter298, 2         ; 2 uses
  %niter298.ncmp.1 = icmp eq i64 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %._crit_edge.us.3.i.unr-lcssa, label %bb.ac, !llvm.loop !6

._crit_edge.us.3.i.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %._crit_edge.us.3.i, label %.epil.preheader292

.epil.preheader292:                               ; preds = %._crit_edge.us.3.i.unr-lcssa, %._crit_edge.us.2.i
  %indvars.iv99.3.i.epil.init = phi i64 [ 0, %._crit_edge.us.2.i ], [ %indvars.iv.next100.3.i.1, %._crit_edge.us.3.i.unr-lcssa ] ; 2 uses
  %.032.us.3.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.2.i ], [ %i.gx, %._crit_edge.us.3.i.unr-lcssa ]
  %lcmp.mod296 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.3.i.epil.init
  %i.gz = load double, ptr %i.gy, align 8
  %i.ha = sub i64 %i.gi, %indvars.iv99.3.i.epil.init
  %sext186.epil = shl i64 %i.ha, 32
  %i.hb = ashr exact i64 %sext186.epil, 29
  %i.hc = getelementptr inbounds i8, ptr %i.b, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8
  %i.he = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.hd, double %.032.us.3.i.epil.init)
  br label %._crit_edge.us.3.i

._crit_edge.us.3.i:                               ; preds = %._crit_edge.us.3.i.unr-lcssa, %.epil.preheader292
  %.lcssa267 = phi double [ %i.gx, %._crit_edge.us.3.i.unr-lcssa ], [ %i.he, %.epil.preheader292 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %.lcssa267, ptr %i.hf, align 8
  %xtraiter300 = and i64 %indvars.iv, 1
  %i.hg = icmp eq i64 %i.ds, 0
  br i1 %i.hg, label %.epil.preheader299, label %._crit_edge.us.3.i.new

._crit_edge.us.3.i.new:                           ; preds = %._crit_edge.us.3.i
  %unroll_iter304 = and i64 %indvars.iv, 4294967294
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge.us.3.i.new
  %indvars.iv99.4.i = phi i64 [ 0, %._crit_edge.us.3.i.new ], [ %indvars.iv.next100.4.i.1, %bb.ad ] ; 4 uses
  %.032.us.4.i = phi double [ 0.000000e+00, %._crit_edge.us.3.i.new ], [ %i.hw, %bb.ad ]
  %niter305 = phi i64 [ 0, %._crit_edge.us.3.i.new ], [ %niter305.next.1, %bb.ad ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.4.i
  %i.hi = load double, ptr %i.hh, align 16
  %i.hj = trunc nuw nsw i64 %indvars.iv99.4.i to i32
  %i.hk = sub i32 %i.dh, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.hn, double %.032.us.4.i)
  %indvars.iv.next100.4.i = or disjoint i64 %indvars.iv99.4.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.4.i
  %i.hq = load double, ptr %i.hp, align 8
  %i.hr = trunc nuw nsw i64 %indvars.iv.next100.4.i to i32
  %i.hs = sub i32 %i.dh, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hv, double %i.ho) ; 3 uses
  %indvars.iv.next100.4.i.1 = add nuw nsw i64 %indvars.iv99.4.i, 2 ; 2 uses
  %niter305.next.1 = add i64 %niter305, 2         ; 2 uses
  %niter305.ncmp.1 = icmp eq i64 %niter305.next.1, %unroll_iter304
  br i1 %niter305.ncmp.1, label %._crit_edge.us.4.i.unr-lcssa, label %bb.ad, !llvm.loop !6

._crit_edge.us.4.i.unr-lcssa:                     ; preds = %bb.ad
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %._crit_edge.us.4.i, label %.epil.preheader299

.epil.preheader299:                               ; preds = %._crit_edge.us.4.i.unr-lcssa, %._crit_edge.us.3.i
  %indvars.iv99.4.i.epil.init = phi i64 [ 0, %._crit_edge.us.3.i ], [ %indvars.iv.next100.4.i.1, %._crit_edge.us.4.i.unr-lcssa ] ; 2 uses
  %.032.us.4.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.3.i ], [ %i.hw, %._crit_edge.us.4.i.unr-lcssa ]
  %lcmp.mod303 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod303)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.4.i.epil.init
  %i.hy = load double, ptr %i.hx, align 8
  %i.hz = trunc nuw nsw i64 %indvars.iv99.4.i.epil.init to i32
  %i.ia = sub i32 %i.dh, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.id, double %.032.us.4.i.epil.init)
  br label %._crit_edge.us.4.i

._crit_edge.us.4.i:                               ; preds = %._crit_edge.us.4.i.unr-lcssa, %.epil.preheader299
  %.lcssa266 = phi double [ %i.hw, %._crit_edge.us.4.i.unr-lcssa ], [ %i.ie, %.epil.preheader299 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store double %.lcssa266, ptr %i.if, align 16
  br label %.preheader15.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.ag ] ; 3 uses
  %.023729.i = phi i32 [ %i.di, %.lr.ph.preheader.i.new ], [ %i.iw, %bb.ag ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ag ]
  %i.ig = icmp slt i32 %.023729.i, 0
  br i1 %i.ig, label %.lr.ph.i.1, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ih = zext nneg i32 %.023729.i to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = sitofp i32 %i.ij to double
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ae, %.lr.ph.i
  %i.il = phi double [ %i.ik, %bb.ae ], [ 0.000000e+00, %.lr.ph.i ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
end_hunk_0
