Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ieee754?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd:bb.a
  %i.e = alloca [3 x double], align 16            ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = bitcast double %0 to i64                 ; 4 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 2 uses
  %i.i = and i32 %i.h, 2147483647                 ; 9 uses
  %i.j = icmp samesign ult i32 %i.i, 1072243196
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %0, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.k, align 8
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.i, 1073928572
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.h, 0
  %.not113 = icmp eq i32 %i.i, 1073291771         ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = fadd double %0, f0xBFF921FB54400000      ; 3 uses
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %i.n, f0xBDD0B4611A626331    ; 2 uses
  store double %i.o, ptr %1, align 8
  %i.p = fsub double %i.n, %i.o
  %i.q = fadd double %i.p, f0xBDD0B4611A626331
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.q, ptr %i.r, align 8
  br label %bb.ba

bb.g:                                             ; preds = %bb.e
  %i.s = fadd double %i.n, f0xBDD0B4611A600000    ; 2 uses
  %i.t = fadd double %i.s, f0xBBA3198A2E037073    ; 2 uses
  store double %i.t, ptr %1, align 8
  %i.u = fsub double %i.s, %i.t
  %i.v = fadd double %i.u, f0xBBA3198A2E037073
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.v, ptr %i.w, align 8
  br label %bb.ba

bb.h:                                             ; preds = %bb.d
  %i.x = fadd double %0, f0x3FF921FB54400000      ; 3 uses
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fadd double %i.x, f0x3DD0B4611A626331    ; 2 uses
  store double %i.y, ptr %1, align 8
  %i.z = fsub double %i.x, %i.y
  %i.aa = fadd double %i.z, f0x3DD0B4611A626331
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aa, ptr %i.ab, align 8
  br label %bb.ba

bb.j:                                             ; preds = %bb.h
  %i.ac = fadd double %i.x, f0x3DD0B4611A600000   ; 2 uses
  %i.ad = fadd double %i.ac, f0x3BA3198A2E037073  ; 2 uses
  store double %i.ad, ptr %1, align 8
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fadd double %i.ae, f0x3BA3198A2E037073
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.af, ptr %i.ag, align 8
  br label %bb.ba

bb.k:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i32 %i.i, 1094263292
  br i1 %i.ah, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3FE45F306DC9C883, double 5.000000e-01)
  %i.ak = fptosi double %i.aj to i32              ; 5 uses
  %i.al = sitofp i32 %i.ak to double              ; 6 uses
  %i.am = fneg double %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double f0x3FF921FB54400000, double %i.ai) ; 6 uses
  %i.ao = fmul nnan double %i.al, f0x3DD0B4611A626331 ; 4 uses
  %i.ap = icmp slt i32 %i.ak, 32
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = sext i32 %i.ak to i64
  %i.ar = getelementptr [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE8npio2_hw, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4
  %.not = icmp eq i32 %i.i, %i.at
  br i1 %.not, label %bb.o, label %bb.n

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
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 3, %bb.v ] ; 35 uses
  %i.cy = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8
  %i.da = load double, ptr %i.cz, align 8
  %i.db = fcmp oeq double %i.da, 0.000000e+00
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvar.next = add i35 %indvar, 1
  br i1 %i.db, label %bb.w, label %bb.x, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.dc = trunc nsw i64 %indvars.iv to i32
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
  %i.dh = sub nsw i32 %.sext.i, %i.dd             ; 2 uses
  %2 = add i64 %indvars.iv, 4
  %wide.trip.count.i = and i64 %2, 4294967295     ; 2 uses
  %xtraiter = and i64 %indvars.iv, 1              ; 2 uses
  %3 = icmp eq i64 %wide.trip.count.i, 1
  br i1 %3, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = sub nsw i64 %wide.trip.count.i, %xtraiter
  br label %.lr.ph.i

.preheader17.i.unr-lcssa:                         ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader17.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader17.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader17.i.unr-lcssa ]
  %.023729.i.epil.init = phi i32 [ %i.dh, %.lr.ph.preheader.i ], [ %i.iq, %.preheader17.i.unr-lcssa ] ; 2 uses
  %lcmp.mod270 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.di = icmp slt i32 %.023729.i.epil.init, 0
  br i1 %i.di, label %.preheader17.i.epilog-lcssa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dj = zext nneg i32 %.023729.i.epil.init to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sitofp i32 %i.dl to double
  br label %.preheader17.i.epilog-lcssa

.preheader17.i.epilog-lcssa:                      ; preds = %bb.y, %.lr.ph.i.epil.preheader
  %i.dn = phi double [ %i.dm, %bb.y ], [ 0.000000e+00, %.lr.ph.i.epil.preheader ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store double %i.dn, ptr %i.do, align 8
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.preheader17.i.unr-lcssa, %.preheader17.i.epilog-lcssa
  %4 = add nuw i64 %indvars.iv, 3                 ; 3 uses
  %.not273.not30.i = icmp sgt i64 %indvars.iv, 0
  br i1 %.not273.not30.i, label %.preheader16.us.preheader.i, label %.preheader16.preheader.i

.preheader16.preheader.i:                         ; preds = %.preheader17.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %.pre177 = and i64 %indvars.iv, 4294967295
  br label %.preheader15.i

.preheader16.us.preheader.i:                      ; preds = %.preheader17.i
  %wide.trip.count102.i = and i64 %indvars.iv, 4294967295 ; 2 uses
  %i.dp = add nsw i64 %wide.trip.count102.i, -1   ; 5 uses
  %xtraiter271 = and i64 %indvars.iv, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.epil.preheader, label %.preheader16.us.preheader.i.new

.preheader16.us.preheader.i.new:                  ; preds = %.preheader16.us.preheader.i
  %unroll_iter275 = and i64 %indvars.iv, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader16.us.preheader.i.new
  %indvars.iv99.i = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %indvars.iv.next100.i.1, %bb.z ] ; 4 uses
  %.032.us.i = phi double [ 0.000000e+00, %.preheader16.us.preheader.i.new ], [ %i.eg, %bb.z ]
  %niter276 = phi i64 [ 0, %.preheader16.us.preheader.i.new ], [ %niter276.next.1, %bb.z ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i
  %i.ds = load double, ptr %i.dr, align 16
  %i.dt = trunc nuw nsw i64 %indvars.iv99.i to i32
  %i.du = sub nuw i32 %i.dd, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dx, double %.032.us.i)
  %indvars.iv.next100.i = or disjoint i64 %indvars.iv99.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.i
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = trunc nuw nsw i64 %indvars.iv.next100.i to i32
  %i.ec = sub nuw i32 %i.dd, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ef, double %i.dy) ; 3 uses
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.z, !llvm.loop !6

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.z
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader16.us.preheader.i
  %indvars.iv99.i.epil.init = phi i64 [ 0, %.preheader16.us.preheader.i ], [ %indvars.iv.next100.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.032.us.i.epil.init = phi double [ 0.000000e+00, %.preheader16.us.preheader.i ], [ %i.eg, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod274 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.i.epil.init
  %i.ei = load double, ptr %i.eh, align 8
  %i.ej = trunc nuw nsw i64 %indvars.iv99.i.epil.init to i32
  %i.ek = sub nuw i32 %i.dd, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.el
  %i.en = load double, ptr %i.em, align 8
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.en, double %.032.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa269 = phi double [ %i.eg, %._crit_edge.us.i.unr-lcssa ], [ %i.eo, %.epil.preheader ]
  store double %.lcssa269, ptr %i.d, align 16
  %xtraiter278 = and i64 %indvars.iv, 1
  %i.ep = icmp eq i64 %i.dp, 0
  br i1 %i.ep, label %.epil.preheader277, label %._crit_edge.us.i.new

._crit_edge.us.i.new:                             ; preds = %._crit_edge.us.i
  %unroll_iter282 = and i64 %indvars.iv, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %._crit_edge.us.i.new
  %indvars.iv99.1.i = phi i64 [ 0, %._crit_edge.us.i.new ], [ %indvars.iv.next100.1.i.1, %bb.aa ] ; 4 uses
  %.032.us.1.i = phi double [ 0.000000e+00, %._crit_edge.us.i.new ], [ %i.fd, %bb.aa ]
  %niter283 = phi i64 [ 0, %._crit_edge.us.i.new ], [ %niter283.next.1, %bb.aa ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i
  %i.er = load double, ptr %i.eq, align 16
  %i.es = sub nsw i64 %indvars.iv, %indvars.iv99.1.i
  %i.et = and i64 %i.es, 4294967295
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.er, double %i.ev, double %.032.us.1.i)
  %indvars.iv.next100.1.i = or disjoint i64 %indvars.iv99.1.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.1.i
  %i.ey = load double, ptr %i.ex, align 8
  %i.ez = sub nsw i64 %indvars.iv, %indvars.iv.next100.1.i
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fc, double %i.ew) ; 3 uses
  %indvars.iv.next100.1.i.1 = add nuw nsw i64 %indvars.iv99.1.i, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %._crit_edge.us.1.i.unr-lcssa, label %bb.aa, !llvm.loop !6

._crit_edge.us.1.i.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %._crit_edge.us.1.i, label %.epil.preheader277

.epil.preheader277:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %._crit_edge.us.i
  %indvars.iv99.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %indvars.iv.next100.1.i.1, %._crit_edge.us.1.i.unr-lcssa ] ; 2 uses
  %.032.us.1.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.i ], [ %i.fd, %._crit_edge.us.1.i.unr-lcssa ]
  %lcmp.mod281 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.1.i.epil.init
  %i.ff = load double, ptr %i.fe, align 8
  %i.fg = sub nsw i64 %indvars.iv, %indvars.iv99.1.i.epil.init
  %i.fh = and i64 %i.fg, 4294967295
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fj, double %.032.us.1.i.epil.init)
  br label %._crit_edge.us.1.i

._crit_edge.us.1.i:                               ; preds = %._crit_edge.us.1.i.unr-lcssa, %.epil.preheader277
  %.lcssa268 = phi double [ %i.fd, %._crit_edge.us.1.i.unr-lcssa ], [ %i.fk, %.epil.preheader277 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %.lcssa268, ptr %i.fl, align 8
  %i.fm = add nuw i64 %indvars.iv, 1              ; 2 uses
  %xtraiter285 = and i64 %indvars.iv, 1
  %i.fn = icmp eq i64 %i.dp, 0
  br i1 %i.fn, label %.epil.preheader284, label %._crit_edge.us.1.i.new

._crit_edge.us.1.i.new:                           ; preds = %._crit_edge.us.1.i
  %unroll_iter289 = and i64 %indvars.iv, 4294967294
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %._crit_edge.us.1.i.new
  %indvars.iv99.2.i = phi i64 [ 0, %._crit_edge.us.1.i.new ], [ %indvars.iv.next100.2.i.1, %bb.ab ] ; 5 uses
  %.032.us.2.i = phi double [ 0.000000e+00, %._crit_edge.us.1.i.new ], [ %i.gc, %bb.ab ]
  %niter290 = phi i64 [ 0, %._crit_edge.us.1.i.new ], [ %niter290.next.1, %bb.ab ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i
  %i.fp = load double, ptr %i.fo, align 16
  %i.fq = sub i64 %i.fm, %indvars.iv99.2.i
  %sext = shl i64 %i.fq, 32
  %i.fr = ashr exact i64 %sext, 29
  %i.fs = getelementptr inbounds i8, ptr %i.b, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ft, double %.032.us.2.i)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load double, ptr %i.fw, align 8
  %i.fy = sub nsw i64 %indvars.iv, %indvars.iv99.2.i
  %sext.1 = shl i64 %i.fy, 32
  %i.fz = ashr exact i64 %sext.1, 29
  %i.ga = getelementptr inbounds i8, ptr %i.b, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.gb, double %i.fu) ; 3 uses
  %indvars.iv.next100.2.i.1 = add nuw nsw i64 %indvars.iv99.2.i, 2 ; 2 uses
  %niter290.next.1 = add i64 %niter290, 2         ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %._crit_edge.us.2.i.unr-lcssa, label %bb.ab, !llvm.loop !6

._crit_edge.us.2.i.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %._crit_edge.us.2.i, label %.epil.preheader284

.epil.preheader284:                               ; preds = %._crit_edge.us.2.i.unr-lcssa, %._crit_edge.us.1.i
  %indvars.iv99.2.i.epil.init = phi i64 [ 0, %._crit_edge.us.1.i ], [ %indvars.iv.next100.2.i.1, %._crit_edge.us.2.i.unr-lcssa ] ; 2 uses
  %.032.us.2.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.1.i ], [ %i.gc, %._crit_edge.us.2.i.unr-lcssa ]
  %lcmp.mod288 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.2.i.epil.init
  %i.ge = load double, ptr %i.gd, align 8
  %i.gf = sub i64 %i.fm, %indvars.iv99.2.i.epil.init
  %sext.epil = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext.epil, 29
  %i.gh = getelementptr inbounds i8, ptr %i.b, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gi, double %.032.us.2.i.epil.init)
  br label %._crit_edge.us.2.i

._crit_edge.us.2.i:                               ; preds = %._crit_edge.us.2.i.unr-lcssa, %.epil.preheader284
  %.lcssa267 = phi double [ %i.gc, %._crit_edge.us.2.i.unr-lcssa ], [ %i.gj, %.epil.preheader284 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %.lcssa267, ptr %i.gk, align 16
  %i.gl = add nuw i64 %indvars.iv, 2              ; 3 uses
  %xtraiter292 = and i64 %indvars.iv, 1
  %i.gm = icmp eq i64 %i.dp, 0
  br i1 %i.gm, label %.epil.preheader291, label %._crit_edge.us.2.i.new

._crit_edge.us.2.i.new:                           ; preds = %._crit_edge.us.2.i
  %unroll_iter296 = and i64 %indvars.iv, 4294967294
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %._crit_edge.us.2.i.new
  %indvars.iv99.3.i = phi i64 [ 0, %._crit_edge.us.2.i.new ], [ %indvars.iv.next100.3.i.1, %bb.ac ] ; 4 uses
  %.032.us.3.i = phi double [ 0.000000e+00, %._crit_edge.us.2.i.new ], [ %i.ha, %bb.ac ]
  %niter297 = phi i64 [ 0, %._crit_edge.us.2.i.new ], [ %niter297.next.1, %bb.ac ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.3.i
  %i.go = load double, ptr %i.gn, align 16
  %i.gp = sub i64 %i.gl, %indvars.iv99.3.i
  %sext185 = shl i64 %i.gp, 32
  %i.gq = ashr exact i64 %sext185, 29
  %i.gr = getelementptr inbounds i8, ptr %i.b, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gs, double %.032.us.3.i)
  %indvars.iv.next100.3.i = or disjoint i64 %indvars.iv99.3.i, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.3.i
  %i.gv = load double, ptr %i.gu, align 8
  %i.gw = sub i64 %i.gl, %indvars.iv.next100.3.i
  %sext185.1 = shl i64 %i.gw, 32
  %i.gx = ashr exact i64 %sext185.1, 29
  %i.gy = getelementptr inbounds i8, ptr %i.b, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gz, double %i.gt) ; 3 uses
  %indvars.iv.next100.3.i.1 = add nuw nsw i64 %indvars.iv99.3.i, 2 ; 2 uses
  %niter297.next.1 = add i64 %niter297, 2         ; 2 uses
  %niter297.ncmp.1 = icmp eq i64 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1, label %._crit_edge.us.3.i.unr-lcssa, label %bb.ac, !llvm.loop !6

._crit_edge.us.3.i.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %._crit_edge.us.3.i, label %.epil.preheader291

.epil.preheader291:                               ; preds = %._crit_edge.us.3.i.unr-lcssa, %._crit_edge.us.2.i
  %indvars.iv99.3.i.epil.init = phi i64 [ 0, %._crit_edge.us.2.i ], [ %indvars.iv.next100.3.i.1, %._crit_edge.us.3.i.unr-lcssa ] ; 2 uses
  %.032.us.3.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.2.i ], [ %i.ha, %._crit_edge.us.3.i.unr-lcssa ]
  %lcmp.mod295 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.3.i.epil.init
  %i.hc = load double, ptr %i.hb, align 8
  %i.hd = sub i64 %i.gl, %indvars.iv99.3.i.epil.init
  %sext185.epil = shl i64 %i.hd, 32
  %i.he = ashr exact i64 %sext185.epil, 29
  %i.hf = getelementptr inbounds i8, ptr %i.b, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.hg, double %.032.us.3.i.epil.init)
  br label %._crit_edge.us.3.i

._crit_edge.us.3.i:                               ; preds = %._crit_edge.us.3.i.unr-lcssa, %.epil.preheader291
  %.lcssa266 = phi double [ %i.ha, %._crit_edge.us.3.i.unr-lcssa ], [ %i.hh, %.epil.preheader291 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %.lcssa266, ptr %i.hi, align 8
  %xtraiter299 = and i64 %indvars.iv, 1
  %i.hj = icmp eq i64 %i.dp, 0
  br i1 %i.hj, label %.epil.preheader298, label %._crit_edge.us.3.i.new

._crit_edge.us.3.i.new:                           ; preds = %._crit_edge.us.3.i
  %unroll_iter303 = and i64 %indvars.iv, 4294967294
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge.us.3.i.new
  %indvars.iv99.4.i = phi i64 [ 0, %._crit_edge.us.3.i.new ], [ %indvars.iv.next100.4.i.1, %bb.ad ] ; 4 uses
  %.032.us.4.i = phi double [ 0.000000e+00, %._crit_edge.us.3.i.new ], [ %i.ht, %bb.ad ]
  %niter304 = phi i64 [ 0, %._crit_edge.us.3.i.new ], [ %niter304.next.1, %bb.ad ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.4.i
  %i.hl = load double, ptr %i.hk, align 16
  %5 = sub i64 %4, %indvars.iv99.4.i
  %6 = and i64 %5, 4294967295
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %6
  %i.hn = load double, ptr %i.hm, align 8
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.hn, double %.032.us.4.i)
  %indvars.iv.next100.4.i = or disjoint i64 %indvars.iv99.4.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100.4.i
  %i.hq = load double, ptr %i.hp, align 8
  %7 = sub i64 %4, %indvars.iv.next100.4.i
  %8 = and i64 %7, 4294967295
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %8
  %i.hs = load double, ptr %i.hr, align 8
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hs, double %i.ho) ; 3 uses
  %indvars.iv.next100.4.i.1 = add nuw nsw i64 %indvars.iv99.4.i, 2 ; 2 uses
  %niter304.next.1 = add i64 %niter304, 2         ; 2 uses
  %niter304.ncmp.1 = icmp eq i64 %niter304.next.1, %unroll_iter303
  br i1 %niter304.ncmp.1, label %._crit_edge.us.4.i.unr-lcssa, label %bb.ad, !llvm.loop !6

._crit_edge.us.4.i.unr-lcssa:                     ; preds = %bb.ad
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %._crit_edge.us.4.i, label %.epil.preheader298

.epil.preheader298:                               ; preds = %._crit_edge.us.4.i.unr-lcssa, %._crit_edge.us.3.i
  %indvars.iv99.4.i.epil.init = phi i64 [ 0, %._crit_edge.us.3.i ], [ %indvars.iv.next100.4.i.1, %._crit_edge.us.4.i.unr-lcssa ] ; 2 uses
  %.032.us.4.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.us.3.i ], [ %i.ht, %._crit_edge.us.4.i.unr-lcssa ]
  %lcmp.mod302 = trunc i64 %indvars.iv to i1
  tail call void @llvm.assume(i1 %lcmp.mod302)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv99.4.i.epil.init
  %i.hv = load double, ptr %i.hu, align 8
  %9 = sub i64 %4, %indvars.iv99.4.i.epil.init
  %10 = and i64 %9, 4294967295
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %10
  %i.hx = load double, ptr %i.hw, align 8
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.hx, double %.032.us.4.i.epil.init)
  br label %._crit_edge.us.4.i

._crit_edge.us.4.i:                               ; preds = %._crit_edge.us.4.i.unr-lcssa, %.epil.preheader298
  %.lcssa265 = phi double [ %i.ht, %._crit_edge.us.4.i.unr-lcssa ], [ %i.hy, %.epil.preheader298 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store double %.lcssa265, ptr %i.hz, align 16
  br label %.preheader15.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.ag ] ; 3 uses
  %.023729.i = phi i32 [ %i.dh, %.lr.ph.preheader.i.new ], [ %i.iq, %bb.ag ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ag ]
  %i.ia = icmp slt i32 %.023729.i, 0
  br i1 %i.ia, label %.lr.ph.i.1, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ib = zext nneg i32 %.023729.i to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = sitofp i32 %i.id to double
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ae, %.lr.ph.i
  %i.if = phi double [ %i.ie, %bb.ae ], [ 0.000000e+00, %.lr.ph.i ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store double %i.if, ptr %i.ig, align 16
  %i.ih = icmp slt i32 %.023729.i, -1
  br i1 %i.ih, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.1
  %i.ii = sext i32 %.023729.i to i64
  %i.ij = getelementptr [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = sitofp i32 %i.il to double
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.1
  %i.in = phi double [ %i.im, %bb.af ], [ 0.000000e+00, %.lr.ph.i.1 ]
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store double %i.in, ptr %i.ip, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.iq = add nsw i32 %.023729.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader17.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.preheader15.i:                                   ; preds = %._crit_edge.us.4.i, %.preheader16.preheader.i
  %wide.trip.count132.i.pre-phi = phi i64 [ %wide.trip.count102.i, %._crit_edge.us.4.i ], [ %.pre177, %.preheader16.preheader.i ] ; 3 uses
  %.not273.not30171.i = phi i1 [ true, %._crit_edge.us.4.i ], [ false, %.preheader16.preheader.i ]
  %i.ir = icmp sgt i32 %.neg266.i, 24             ; 2 uses
  %i.is = icmp eq i32 %i.dg, 0
  %i.it = sub nsw i32 48, %.neg266.i              ; 2 uses
  %i.iu = sub nsw i32 47, %.neg266.i
  %i.iv = zext nneg i16 %i.df to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi, i64 %i.iv ; 3 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.iz = add nsw i64 %wide.trip.count132.i.pre-phi, -1
  %xtraiter318 = and i64 %wide.trip.count132.i.pre-phi, 3 ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 3
  %unroll_iter322 = and i64 %wide.trip.count132.i.pre-phi, 4294967292
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  %lcmp.mod321 = icmp ne i64 %xtraiter318, 0
  br label %.lr.ph38.preheader.i

.loopexit12.loopexit.i:                           ; preds = %._crit_edge52.i, %._crit_edge52.i.loopexit.us, %middle.block
  br label %.lr.ph38.preheader.i, !llvm.loop !8

.lr.ph38.preheader.i:                             ; preds = %.loopexit12.loopexit.i, %.preheader15.i
  %.0254.i = phi i32 [ 4, %.preheader15.i ], [ %i.nb, %.loopexit12.loopexit.i ] ; 8 uses
  %i.jb = zext nneg i32 %.0254.i to i64           ; 27 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8         ; 2 uses
  %i.je = add nsw i64 %i.jb, -1                   ; 2 uses
  %xtraiter305 = and i64 %i.jb, 1
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %.lr.ph38.i.epil.preheader, label %.lr.ph38.preheader.i.new

.lr.ph38.preheader.i.new:                         ; preds = %.lr.ph38.preheader.i
  %unroll_iter309 = and i64 %i.jb, 2147483646
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i.new
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph38.preheader.i.new ], [ %indvars.iv.next111.i.1, %.lr.ph38.i ] ; 3 uses
  %indvars.iv108.i = phi i64 [ %i.jb, %.lr.ph38.preheader.i.new ], [ %indvars.iv.next109.i.1, %.lr.ph38.i ] ; 3 uses
  %.023037.i = phi double [ %i.jd, %.lr.ph38.preheader.i.new ], [ %i.ka, %.lr.ph38.i ] ; 2 uses
  %niter310 = phi i64 [ 0, %.lr.ph38.preheader.i.new ], [ %niter310.next.1, %.lr.ph38.i ]
  %i.jg = fmul double %.023037.i, f0x3E70000000000000
  %i.jh = fptosi double %i.jg to i32
  %i.ji = sitofp i32 %i.jh to double              ; 2 uses
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double f0xC170000000000000, double %.023037.i)
  %i.jk = fptosi double %i.jj to i32
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110.i
  store i32 %i.jk, ptr %i.jl, align 8
  %i.jm = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv108.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 -8
  %i.jo = load double, ptr %i.jn, align 8
  %i.jp = fadd double %i.jo, %i.ji                ; 2 uses
  %i.jq = fmul double %i.jp, f0x3E70000000000000
  %i.jr = fptosi double %i.jq to i32
  %i.js = sitofp i32 %i.jr to double              ; 2 uses
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.js, double f0xC170000000000000, double %i.jp)
  %i.ju = fptosi double %i.jt to i32
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.ju, ptr %i.jw, align 4
  %i.jx = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv108.i
  %i.jy = getelementptr i8, ptr %i.jx, i64 -16
  %i.jz = load double, ptr %i.jy, align 8
  %i.ka = fadd double %i.jz, %i.js                ; 3 uses
  %indvars.iv.next111.i.1 = add nuw nsw i64 %indvars.iv110.i, 2 ; 2 uses
  %indvars.iv.next109.i.1 = add nsw i64 %indvars.iv108.i, -2 ; 2 uses
  %niter310.next.1 = add i64 %niter310, 2         ; 2 uses
  %niter310.ncmp.1 = icmp eq i64 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph38.i, !llvm.loop !9

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph38.i
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %._crit_edge.i, label %.lr.ph38.i.epil.preheader

.lr.ph38.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph38.preheader.i
  %indvars.iv110.i.epil.init = phi i64 [ 0, %.lr.ph38.preheader.i ], [ %indvars.iv.next111.i.1, %._crit_edge.i.unr-lcssa ]
  %indvars.iv108.i.epil.init = phi i64 [ %i.jb, %.lr.ph38.preheader.i ], [ %indvars.iv.next109.i.1, %._crit_edge.i.unr-lcssa ]
  %.023037.i.epil.init = phi double [ %i.jd, %.lr.ph38.preheader.i ], [ %i.ka, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod308 = trunc i32 %.0254.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.kb = fmul double %.023037.i.epil.init, f0x3E70000000000000
  %i.kc = fptosi double %i.kb to i32
  %i.kd = sitofp i32 %i.kc to double              ; 2 uses
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kd, double f0xC170000000000000, double %.023037.i.epil.init)
  %i.kf = fptosi double %i.ke to i32
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110.i.epil.init
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv108.i.epil.init
  %i.ki = getelementptr i8, ptr %i.kh, i64 -8
  %i.kj = load double, ptr %i.ki, align 8
  %i.kk = fadd double %i.kj, %i.kd
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph38.i.epil.preheader
  %.lcssa250 = phi double [ %i.ka, %._crit_edge.i.unr-lcssa ], [ %i.kk, %.lr.ph38.i.epil.preheader ]
  %i.kl = tail call double @scalbn(double noundef %.lcssa250, i32 noundef %i.dg) #12 ; 2 uses
  %i.km = fmul double %i.kl, 1.250000e-01
  %i.kn = tail call double @llvm.floor.f64(double %i.km)
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kn, double -8.000000e+00, double %i.kl) ; 2 uses
  %i.kp = fptosi double %i.ko to i32              ; 5 uses
  %i.kq = sitofp i32 %i.kp to double
  %i.kr = fsub double %i.ko, %i.kq                ; 5 uses
  br i1 %i.ir, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ks = getelementptr [4 x i8], ptr %i.a, i64 %i.jb
  %i.kt = getelementptr i8, ptr %i.ks, i64 -4     ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4            ; 2 uses
  %i.kv = ashr i32 %i.ku, %i.it                   ; 2 uses
  %i.kw = add nsw i32 %i.kv, %i.kp
  %i.kx = shl i32 %i.kv, %i.it
  %i.ky = sub nsw i32 %i.ku, %i.kx                ; 2 uses
  store i32 %i.ky, ptr %i.kt, align 4
  %i.kz = ashr i32 %i.ky, %i.iu
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge.i
  br i1 %i.is, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.la = getelementptr [4 x i8], ptr %i.a, i64 %i.jb
  %i.lb = getelementptr i8, ptr %i.la, i64 -4
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = ashr i32 %i.lc, 23
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.le = fcmp ult double %i.kr, 5.000000e-01
  br i1 %i.le, label %.thread6.i, label %.thread.i

bb.al:                                            ; preds = %bb.aj, %bb.ah
  %.0250.i = phi i32 [ %i.kw, %bb.ah ], [ %i.kp, %bb.aj ] ; 2 uses
  %.0232.i = phi i32 [ %i.kz, %bb.ah ], [ %i.ld, %bb.aj ] ; 3 uses
  %i.lf = icmp sgt i32 %.0232.i, 0
  br i1 %i.lf, label %.thread.i, label %.thread6.i

.thread.i:                                        ; preds = %bb.al, %bb.ak
  %.02325.i = phi i32 [ %.0232.i, %bb.al ], [ 2, %bb.ak ]
  %.02503.i = phi i32 [ %.0250.i, %bb.al ], [ %i.kp, %bb.ak ]
  %xtraiter312 = and i64 %i.jb, 1
  %i.lg = icmp eq i64 %i.je, 0
  br i1 %i.lg, label %.epil.preheader311, label %.thread.i.new

.thread.i.new:                                    ; preds = %.thread.i
  %unroll_iter316 = and i64 %i.jb, 2147483646
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.thread.i.new
end_hunk_0
begin_hunk_1_@_ZN2v84base7ieee7546legacy3powEdd:bb.a
  br i1 %i.jn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jo = fdiv double %i.jj, %i.jm
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit209

bb.bn:                                            ; preds = %bb.bl
  %or.cond.i = fcmp ueq double %i.jj, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v84base6DivideIdEET_S2_S2_.exit209, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jp = fcmp ult double %i.jj, 0.000000e+00
  br i1 %i.jp, label %bb.bp, label %_ZN2v84base6DivideIdEET_S2_S2_.exit209

bb.bp:                                            ; preds = %bb.bo
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit209

_ZN2v84base6DivideIdEET_S2_S2_.exit209:           ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.0.i208 = phi double [ %i.jo, %bb.bm ], [ -inf, %bb.bp ], [ +qnan, %bb.bn ], [ +inf, %bb.bo ]
  %i.jq = fsub double %i.iz, %.0.i208
  %i.jr = fadd double %i.jq, 1.000000e+00         ; 2 uses
  %i.js = bitcast double %i.jr to i64             ; 2 uses
  %i.jt = lshr i64 %i.js, 32
  %i.ju = trunc nuw i64 %i.jt to i32
  %i.jv = shl i32 %.3, 20
  %i.jw = add nsw i32 %i.jv, %i.ju                ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 1048576
  br i1 %i.jx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZN2v84base6DivideIdEET_S2_S2_.exit209
  %i.jy = tail call double @scalbn(double noundef %i.jr, i32 noundef %.3) #12
  br label %bb.bs

bb.br:                                            ; preds = %_ZN2v84base6DivideIdEET_S2_S2_.exit209
  %i.jz = and i64 %i.js, 4294967295
  %i.ka = zext nneg i32 %i.jw to i64
  %i.kb = shl nuw nsw i64 %i.ka, 32
  %i.kc = or disjoint i64 %i.kb, %i.jz
  %i.kd = bitcast i64 %i.kc to double
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.2 = phi double [ %i.jy, %bb.bq ], [ %i.kd, %bb.br ]
  %i.ke = fmul double %spec.store.select, %.2
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit

_ZN2v84base6DivideIdEET_S2_S2_.exit:              ; preds = %bb.al, %_ZN2v84base6DivideIdEET_S2_S2_.exit205, %bb.aj, %bb.ak, %bb.ai, %bb.v, %bb.z, %bb.y, %bb.x, %bb.a, %bb.bs, %bb.bi, %bb.bg, %bb.bd, %bb.bb, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.ad, %bb.ab, %bb.u, %bb.t, %bb.r, %bb.e
  %.0 = phi double [ %i.hw, %bb.bi ], [ %i.s, %bb.e ], [ %i.ap, %bb.r ], [ %i.as, %bb.t ], [ %i.av, %bb.u ], [ 1.000000e+00, %bb.a ], [ +inf, %bb.y ], [ %i.bb, %bb.ab ], [ %i.bd, %bb.ad ], [ %0, %bb.v ], [ +snan(0x4000000000000), %bb.ai ], [ %i.by, %bb.ap ], [ %i.ca, %bb.aq ], [ %i.ch, %bb.as ], [ %i.co, %bb.au ], [ %i.hh, %bb.bb ], [ %i.hm, %bb.bd ], [ %i.ke, %bb.bs ], [ %i.hs, %bb.bg ], [ %i.az, %bb.x ], [ -inf, %bb.z ], [ %.0269, %_ZN2v84base6DivideIdEET_S2_S2_.exit205 ], [ %i.bn, %bb.ak ], [ %.0269, %bb.aj ], [ +snan(0x4000000000000), %bb.al ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @scalbn(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544sinhEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  %i.b = select i1 %i.a, double -5.000000e-01, double 5.000000e-01 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %0) ; 8 uses
  %i.d = fcmp olt double %i.c, 2.200000e+01
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.c, f0x3E30000000000000
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.c) ; 6 uses
  %i.g = fcmp olt double %i.c, 1.000000e+00
  %i.h = fadd double %i.f, 1.000000e+00           ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fneg double %i.f
  %i.j = fmul double %i.f, %i.i
  %i.k = fdiv double %i.j, %i.h
  %i.l = tail call double @llvm.fmuladd.f64(double %i.f, double 2.000000e+00, double %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = fdiv double %i.f, %i.h
  %i.n = fadd double %i.f, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi double [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %.0 = fmul double %i.b, %.pn
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = fcmp olt double %i.c, f0x40862E4200000000
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.c)
  %i.q = fmul double %i.b, %i.p
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.r = fcmp ugt double %i.c, f0x408633CE8FB9F87D
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fmul nnan double %i.c, 5.000000e-01
  %i.t = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.s) ; 2 uses
  %i.u = fmul double %i.b, %i.t
  %i.v = fmul double %i.t, %i.u
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = fmul double %0, f0x7FAC7B1F3CAC7433
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %bb.j, %bb.h, %bb.f
  %.1 = phi double [ %i.w, %bb.k ], [ %.0, %bb.f ], [ %i.q, %bb.h ], [ %i.v, %bb.j ], [ %0, %bb.b ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544tanhEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 4 uses
  %i.e = icmp samesign ugt i32 %i.d, 2146435071
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %i.a, -1
  %i.g = fdiv double 1.000000e+00, %0             ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fadd double %i.g, 1.000000e+00
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = fadd double %i.g, -1.000000e+00
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i32 %i.d, 1077280768
  br i1 %i.j, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i32 %i.d, 1043333120
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fadd double %0, 1.000000e+300
  %i.m = fcmp ogt double %i.l, 1.000000e+00
  br i1 %i.m, label %bb.l, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.n = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.n, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.o = tail call double @llvm.fabs.f64(double %0)
  %i.p = fmul double %i.o, 2.000000e+00
  %i.q = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.p)
  %i.r = fadd double %i.q, 2.000000e+00
  %i.s = fdiv double 2.000000e+00, %i.r
  %i.t = fsub double 1.000000e+00, %i.s
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.h
  %i.u = tail call double @llvm.fabs.f64(double %0)
  %i.v = fmul double %i.u, -2.000000e+00
  %i.w = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.v) ; 2 uses
  %i.x = fneg double %i.w
  %i.y = fadd double %i.w, 2.000000e+00
  %i.z = fdiv double %i.x, %i.y
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aa = load volatile double, ptr @_ZZN2v84base7ieee7544tanhEdE4tiny, align 8
  %i.ab = fsub double 1.000000e+00, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.thread, %bb.j
  %.013 = phi double [ %i.t, %bb.i ], [ %i.z, %.thread ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ac = fneg double %.013
  %i.ad = icmp slt i64 %i.a, 0
  %i.ae = select i1 %i.ad, double %i.ac, double %.013
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.d, %bb.c
  %.0 = phi double [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.ae, %bb.k ], [ %0, %bb.g ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24, !25, !26}
!12 = distinct !{!12, !24, !26, !25}
!13 = distinct !{!13, !24, !25, !26}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, !27}
!16 = distinct !{!16, !24, !25}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24}
!19 = distinct !{!19, !24, !28}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !24}
!22 = distinct !{!22, !24}
!23 = distinct !{!23, !27}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"llvm.loop.peeled.count", i32 4}
end_hunk_1
