Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_subroutines?download=true
inline.NumInlined: 18129
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 1430
loop-unroll.NumUnrolled: 1519
begin_hunk_0_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi0EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi0EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_0
begin_hunk_1_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi2EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_1
begin_hunk_2_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi2EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi2EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi3EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_2
begin_hunk_3_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi3EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi3EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi4EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_3
begin_hunk_4_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi4EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi4EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi5EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_4
begin_hunk_5_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi5EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fk = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fq = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.fs, %bb.at ], [ %i.em, %bb.ai ]
  %.sink134 = phi ptr [ %i.fq, %bb.at ], [ %i.el, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.ft = ptrtoint ptr %.sink135 to i64
  %i.fu = ptrtoint ptr %.sink134 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILi5EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILin1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.CompMatr2) align 8 %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  store i32 %4, ptr %i.b, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 2
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sdiv i64 %i.y, %i.ah
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aj, align 8
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre87 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre92 = ptrtoint ptr %.pre87 to i64
  %.pre93 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %bb.a ]
  %.pre-phi = phi i64 [ %.pre92, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  %i.an = phi ptr [ %i.al, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ad
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !58
  %i.ar = sub i64 %.pre-phi, %.pre-phi94          ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 4
  br i1 %i.as, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.an, ptr align 4 %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = icmp eq i64 %i.ar, 4
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.au, ptr %i.an, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  store ptr %i.aw, ptr %8, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  store i32 %3, ptr %i.aw, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %4, ptr %.sroa.586.0..sroa_idx, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !48
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(24) %7, ptr nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  %i.bm = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
end_hunk_5
begin_hunk_6_@_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILin1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fs = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIiSaIiEED2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !58
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit76

_ZNSt6vectorIiSaIiEED2Ev.exit76:                  ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit70, %bb.aj
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.aj ], [ %.pn13.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit70 ], [ %.pn13.pn.pn, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fy = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit73
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split:       ; preds = %bb.ai, %bb.at
  %.sink135 = phi ptr [ %i.ga, %bb.at ], [ %i.eu, %bb.ai ]
  %.sink134 = phi ptr [ %i.fy, %bb.at ], [ %i.et, %bb.ai ] ; 2 uses
  %.pn13.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.at ], [ %.pn, %bb.ai ]
  %i.gb = ptrtoint ptr %.sink135 to i64
  %i.gc = ptrtoint ptr %.sink134 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %.sink134, i64 noundef %i.gd) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit73, %.body
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit73 ], [ %.pn, %.body ], [ %.pn13.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit61.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z40cpu_statevec_anyCtrlTwoTargDenseMatr_subILin1EEv5QuregSt6vectorIiSaIiEES3_ii9CompMatr2.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not282 = icmp sgt i64 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 256
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %i.y = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %.0283 = phi i64 [ %i.k, %.lr.ph285 ], [ %i.hc, %._crit_edge ] ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !28    ; 4 uses
  %i.ab = load i64, ptr %5, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i32 %i.aa, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.07.i280 = phi i64 [ %.0283, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = ashr i64 %.07.i280, %i.ag
  %notmask.i.i.i = shl nsw i64 -1, %i.ag
  %i.ai = xor i64 %notmask.i.i.i, -1
  %i.aj = and i64 %.07.i280, %i.ai
  %i.ak = add nsw i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.ah, %i.al
  %i.an = or i64 %i.am, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = ashr i64 %i.an, %i.ar
  %notmask.i.i.i.1 = shl nsw i64 -1, %i.ar
  %i.at = xor i64 %notmask.i.i.i.1, -1
  %i.au = and i64 %i.an, %i.at
  %i.av = add nsw i32 %i.aq, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.as, %i.aw
  %i.ay = or i64 %i.ax, %i.au                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.i280.epil.init = phi i64 [ %.0283, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = ashr i64 %.07.i280.epil.init, %i.bb
  %notmask.i.i.i.epil = shl nsw i64 -1, %i.bb
  %i.bd = xor i64 %notmask.i.i.i.epil, -1
  %i.be = and i64 %.07.i280.epil.init, %i.bd
  %i.bf = add nsw i32 %i.ba, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bc, %i.bg
  %i.bi = or i64 %i.bh, %i.be
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.07.i.lcssa = phi i64 [ %.0283, %bb.c ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil.preheader ]
  %i.bj = or i64 %.07.i.lcssa, %i.ab              ; 3 uses
  %i.bk = load i32, ptr %6, align 4, !tbaa !28
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load i32, ptr %7, align 4, !tbaa !28
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = xor i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bj ; 3 uses
  %.sroa.7243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  %.sroa.0223.0.copyload = load double, ptr %i.bw, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7227.0.copyload = load double, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bs
  %i.by = load <2 x double>, ptr %i.bu, align 8   ; 3 uses
  %.sroa.7243.0.copyload = load double, ptr %.sroa.7243.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bv, align 8   ; 3 uses
  %.sroa.7235.0.copyload = load double, ptr %.sroa.7235.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ca = load <4 x double>, ptr %i.m, align 8    ; 4 uses
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cc = fmul fast <4 x double> %i.ca, %i.cb
  %10 = load <2 x double>, ptr %i.o, align 8
  %.sroa.4.0.copyload.i57 = load double, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bx, align 8   ; 9 uses
  %i.ce = extractelement <4 x double> %i.ca, i64 0
  %i.cf = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.cg = fmul fast double %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.n, align 8    ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.ci, <2 x i32> <i32 2, i32 4>
  %i.ck = insertelement <2 x double> %i.bz, double %.sroa.7227.0.copyload, i64 1 ; 4 uses
  %i.cl = fmul fast <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %.sroa.0223.0.copyload, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = fmul fast <2 x double> %i.ch, %i.cn
  %i.cp = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul fast <2 x double> %i.cp, %i.cd
  %i.cr = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.cs = fmul fast double %.sroa.4.0.copyload.i57, %i.cr
  %i.ct = shufflevector <2 x double> %i.ch, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> %i.ca, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x double> %i.cv, double %.sroa.7227.0.copyload, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %.sroa.4.0.copyload.i57, i64 3
  %i.cy = fmul fast <4 x double> %i.cu, %i.cx
  %i.cz = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cy)
  %i.da = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fadd fast <2 x double> %i.cl, %i.dc
  %i.de = fadd fast <2 x double> %i.dd, %i.co
  %i.df = fadd fast <2 x double> %i.de, %i.cq     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cs, i64 1 ; 2 uses
  %i.di = fsub fast <2 x double> %i.df, %i.dh
  %i.dj = fadd fast <2 x double> %i.df, %i.dh
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.bu, align 8
  %i.dl = load <4 x double>, ptr %i.p, align 8    ; 4 uses
  %i.dm = insertelement <4 x double> %i.cb, double %.sroa.7243.0.copyload, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %.sroa.7235.0.copyload, i64 2 ; 3 uses
  %i.do = fmul fast <4 x double> %i.dl, %i.dn
  %11 = load <2 x double>, ptr %i.r, align 8
  %.sroa.4.0.copyload.i92 = load double, ptr %.sroa.4.0..sroa_idx.i91, align 8, !tbaa !23 ; 2 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.bn
  %i.dr = extractelement <4 x double> %i.dl, i64 0
  %i.ds = fmul fast double %i.dr, %i.cf
  %i.dt = load <2 x double>, ptr %i.q, align 8    ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dl, <4 x double> %i.du, <2 x i32> <i32 2, i32 4>
  %i.dw = fmul fast <2 x double> %i.dv, %i.ck
  %i.dx = fmul fast <2 x double> %i.dt, %i.cn
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x double> %i.dy, <4 x double> %i.dl, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.ea = insertelement <4 x double> poison, double %.sroa.7235.0.copyload, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %.sroa.7243.0.copyload, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %.sroa.7227.0.copyload, i64 2 ; 3 uses
  %i.ed = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i92, i64 3
  %i.ee = fmul fast <4 x double> %i.dz, %i.ed
  %i.ef = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul fast <2 x double> %i.ef, %i.cd
  %i.eh = fmul fast double %.sroa.4.0.copyload.i92, %i.cr
  %i.ei = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ee)
  %i.ej = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.do)
  %i.ek = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = fadd fast <2 x double> %i.dw, %i.el
  %i.en = fadd fast <2 x double> %i.em, %i.dx
  %i.eo = fadd fast <2 x double> %i.en, %i.eg     ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eh, i64 1 ; 2 uses
  %i.er = fsub fast <2 x double> %i.eo, %i.eq
  %i.es = fadd fast <2 x double> %i.eo, %i.eq
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.et, ptr %i.dq, align 8
  %i.eu = load <4 x double>, ptr %i.s, align 8    ; 4 uses
  %i.ev = fmul fast <4 x double> %i.eu, %i.dn
  %12 = load <2 x double>, ptr %i.u, align 8
  %.sroa.4.0.copyload.i127 = load double, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !23 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.br
  %i.ey = extractelement <4 x double> %i.eu, i64 0
  %i.ez = fmul fast double %i.ey, %i.cf
  %i.fa = load <2 x double>, ptr %i.t, align 8    ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> %i.fb, <2 x i32> <i32 2, i32 4>
  %i.fd = fmul fast <2 x double> %i.fc, %i.ck
  %i.fe = fmul fast <2 x double> %i.fa, %i.cn
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> %i.eu, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.fh = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i127, i64 3
  %i.fi = fmul fast <4 x double> %i.fg, %i.fh
  %i.fj = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul fast <2 x double> %i.fj, %i.cd
  %i.fl = fmul fast double %.sroa.4.0.copyload.i127, %i.cr
  %i.fm = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fi)
  %i.fn = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ev)
  %i.fo = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd fast <2 x double> %i.fd, %i.fp
  %i.fr = fadd fast <2 x double> %i.fq, %i.fe
  %i.fs = fadd fast <2 x double> %i.fr, %i.fk     ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1 ; 2 uses
  %i.fv = fsub fast <2 x double> %i.fs, %i.fu
  %i.fw = fadd fast <2 x double> %i.fs, %i.fu
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fx, ptr %i.ex, align 8
  %i.fy = load <4 x double>, ptr %i.v, align 8    ; 4 uses
  %i.fz = fmul fast <4 x double> %i.fy, %i.dn
  %13 = load <2 x double>, ptr %i.x, align 8
  %.sroa.4.0.copyload.i162 = load double, ptr %.sroa.4.0..sroa_idx.i161, align 8, !tbaa !23 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.bs
  %i.gc = extractelement <4 x double> %i.fy, i64 0
  %i.gd = fmul fast double %i.gc, %i.cf
  %i.ge = load <2 x double>, ptr %i.w, align 8    ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.fy, <4 x double> %i.gf, <2 x i32> <i32 2, i32 4>
  %i.gh = fmul fast <2 x double> %i.gg, %i.ck
  %i.gi = fmul fast <2 x double> %i.ge, %i.cn
  %i.gj = shufflevector <2 x double> %i.ge, <2 x double> %i.cd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.fy, <4 x i32> <i32 7, i32 5, i32 0, i32 1>
  %i.gl = insertelement <4 x double> %i.ec, double %.sroa.4.0.copyload.i162, i64 3
  %i.gm = fmul fast <4 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul fast <2 x double> %i.gn, %i.cd
  %i.gp = fmul fast double %.sroa.4.0.copyload.i162, %i.cr
  %i.gq = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm)
  %i.gr = call fast double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.gs = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fadd fast <2 x double> %i.gh, %i.gt
  %i.gv = fadd fast <2 x double> %i.gu, %i.gi
  %i.gw = fadd fast <2 x double> %i.gv, %i.go     ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1 ; 2 uses
  %i.gz = fsub fast <2 x double> %i.gw, %i.gy
  %i.ha = fadd fast <2 x double> %i.gw, %i.gy
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.gb, align 8
  %i.hc = add nsw i64 %.0283, 1
  %.not.not = icmp slt i64 %.0283, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z40cpu_statevec_anyCtrlAnyTargDenseMatr_subILi0ELi0ELb1ELb1EEv5QuregSt6vectorIiSaIiEES3_S3_8CompMatr(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, ptr nofree noundef align 8 dereferenceable(24) %3, ptr noundef byval(%struct.CompMatr) align 8 %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %1, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %2, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  tail call void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %i.o, i32 noundef %i.w, i32 noundef 0)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = load ptr, ptr %3, align 8, !tbaa !49
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.ae, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.ao = load ptr, ptr %3, align 8, !tbaa !49
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, %i.am
  %i.au = and i64 %i.at, 4294967295
  %i.av = shl nuw i64 1, %i.au
  %i.aw = sdiv i64 %i.ag, %i.av
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ax, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = icmp ugt i64 %i.al, 9223372036854775804
  br i1 %i.ay, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %.pre68 = load ptr, ptr %i.h, align 8, !tbaa !45
  %.pre77 = ptrtoint ptr %.pre68 to i64
  %.pre78 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi79 = phi i64 [ %.pre78, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ak, %bb.a ]
  %.pre-phi = phi i64 [ %.pre77, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.aj, %bb.a ]
  %i.ba = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ai, %bb.a ] ; 2 uses
  %i.bb = phi ptr [ %i.az, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.al
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !58
  %i.bf = sub i64 %.pre-phi, %.pre-phi79          ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, 4
  br i1 %i.bg, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %i.ba, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.bh = icmp eq i64 %i.bf, 4
  br i1 %i.bh, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !28
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.bj = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !48
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i15, label %.noexc18, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.bp = icmp ugt i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %.noexc.i.i17, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16, !prof !57

.noexc.i.i17:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %.noexc.i.i17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16: ; preds = %bb.g
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge unwind label %bb.ak

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16
  %.pre69 = load ptr, ptr %3, align 8, !tbaa !45  ; 2 uses
  %.pre70 = load ptr, ptr %i.x, align 8, !tbaa !45
  %.pre80 = ptrtoint ptr %.pre70 to i64
  %.pre82 = ptrtoint ptr %.pre69 to i64
  br label %.noexc18

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.pre-phi83 = phi i64 [ %.pre82, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.bn, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %.pre-phi81 = phi i64 [ %.pre80, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.bm, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.br = phi ptr [ %.pre69, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.bl, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.bs = phi ptr [ %i.bq, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 5 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !58
  %i.bw = sub i64 %.pre-phi81, %.pre-phi83        ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 4
  br i1 %i.bx, label %bb.h, label %bb.i, !prof !59

bb.h:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bs, ptr align 4 %i.br, i64 %i.bw, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc18
  %i.by = icmp eq i64 %i.bw, 4
  br i1 %i.by, label %bb.j, label %bb.k

end_hunk_6
