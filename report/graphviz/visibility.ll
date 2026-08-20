inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@visibility:bb.a
  %i.hj = fcmp olt double %i.gb, %i.ek
  %or.cond.i41.i.i = and i1 %i.hi, %i.hj
  %i.hk = fcmp olt double %i.ek, %i.gb
  %i.hl = fcmp olt double %i.gb, %i.cv
  %i.hm = and i1 %i.hk, %i.hl
  %i.hn = or i1 %or.cond.i41.i.i, %i.hm
  br i1 %i.hn, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.ho = fcmp olt double %i.cs, %i.ga
  %i.hp = fcmp olt double %i.ga, %i.cu
  %or.cond20.i39.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  %i.hq = fcmp olt double %i.cu, %i.ga
  %i.hr = fcmp olt double %i.ga, %i.cs
  %i.hs = select i1 %i.hq, i1 %i.hr, i1 false
  %i.ht = select i1 %or.cond20.i39.i.i, i1 true, i1 %i.hs
  br i1 %i.ht, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hu = fsub <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.hv = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fsub <2 x double> %i.fp, %i.hv
  %i.hx = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fsub <2 x double> %i.fq, %i.hx
  %i.hz = extractelement <2 x double> %i.hu, i64 0
  %i.ia = fneg double %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x double> %i.hy, %i.ic
  %i.ie = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.hw, <2 x double> %i.id) ; 3 uses
  %i.ig = extractelement <2 x double> %i.if, i64 1
  %i.ih = fcmp ogt double %i.ig, 1.000000e-04
  %i.ii = fcmp olt <2 x double> %i.if, splat (double -1.000000e-04) ; 2 uses
  %i.ij = extractelement <2 x i1> %i.ii, i64 1
  %i.ik = sext i1 %i.ij to i32
  %i.il = select i1 %i.ih, i32 1, i32 %i.ik
  %i.im = extractelement <2 x double> %i.if, i64 0
  %i.in = fcmp ogt double %i.im, 1.000000e-04
  %i.io = extractelement <2 x i1> %i.ii, i64 0
  %i.ip = sext i1 %i.io to i32
  %i.iq = select i1 %i.in, i32 1, i32 %i.ip
  %i.ir = mul nsw i32 %i.hg, %i.gj
  %i.is = icmp slt i32 %i.ir, 0
  %i.it = mul nsw i32 %i.il, %i.iq
  %i.iu = icmp slt i32 %i.it, 0
  %i.iv = select i1 %i.is, i1 %i.iu, i1 false
  br i1 %i.iv, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.er, %i.er
  %i.iw = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.ix = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.ix, double %i.iw)
  %sqrt.i62.i = tail call double @llvm.sqrt.f64(double %i.iy) ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i4
  store double %sqrt.i62.i, ptr %i.iz, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !17
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv71.i
  store double %sqrt.i62.i, ptr %i.jc, align 8, !tbaa !28
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.jd = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.jd, label %bb.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3, label %compVis.exit, label %bb.h, !llvm.loop !32

compVis.exit:                                     ; preds = %._crit_edge.i, %allocArray.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @ptVis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %i.b, -2
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ne i32 %i.i, 0
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #14 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  %or.cond3.i = and i1 %i.m, %i.o
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.q = shl nuw nsw i64 %i.j, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.1, i64 noundef %i.q) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %bb.c
  %i.s = icmp eq i32 %1, -2222
  br i1 %i.s, label %bb.e, label %polyhit.exit

bb.e:                                             ; preds = %gv_calloc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !33
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.i, %i.v
  br i1 %i.w, label %bb.g, label %polyhit.exit.thread154

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ab
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = sub nsw i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call zeroext i1 @in_poly(ptr %i.ac, i64 %i.ag, double %2, double %3) #15
  br i1 %i.ah, label %polyhit.exit.thread, label %bb.f, !llvm.loop !35

polyhit.exit.thread:                              ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

polyhit.exit:                                     ; preds = %gv_calloc.exit
  %i.aj = icmp sgt i32 %1, -1
  br i1 %i.aj, label %bb.h, label %polyhit.exit.thread154

bb.h:                                             ; preds = %polyhit.exit.thread, %polyhit.exit
  %.095153 = phi i32 [ %i.ai, %polyhit.exit.thread ], [ %1, %polyhit.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.am = zext nneg i32 %.095153 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  br label %polyhit.exit.thread154

polyhit.exit.thread154:                           ; preds = %bb.f, %polyhit.exit, %bb.h
  %.093 = phi i32 [ %i.ao, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %i.ar = icmp sgt i32 %.093, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader183

.lr.ph:                                           ; preds = %polyhit.exit.thread154
  %wide.trip.count.i = zext nneg i32 %.093 to i64 ; 2 uses
  %i.as = icmp slt i32 %.0, %i.b
  %i.at = sext i32 %.0 to i64
  %i.au = insertelement <2 x double> poison, double %3, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.i

.preheader183:                                    ; preds = %clear.exit.thread166, %polyhit.exit.thread154
  %i.az = icmp slt i32 %.093, %.0
  br i1 %i.az, label %.lr.ph189.preheader, label %.preheader

.lr.ph189.preheader:                              ; preds = %.preheader183
  %i.ba = sext i32 %.093 to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.bb
  %i.bc = xor i32 %.093, -1
  %i.bd = add i32 %.0, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !28
  br label %.preheader

bb.i:                                             ; preds = %.lr.ph, %clear.exit.thread166
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clear.exit.thread166 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !28 ; 7 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 10 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !28 ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load <2 x double>, ptr %i.bn, align 8   ; 3 uses
  %i.bu = load double, ptr %i.bs, align 8
  %i.bv = load <2 x double>, ptr %i.br, align 8   ; 2 uses
  %i.bw = insertelement <2 x double> %i.bt, double %.sroa.10.0.copyload, i64 0 ; 3 uses
  %i.bx = fsub <2 x double> %i.av, %i.bw          ; 4 uses
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x double> %i.bi, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fsub <2 x double> %i.ax, %i.bz          ; 2 uses
  %i.ce = fneg <2 x double> %i.cd                 ; 5 uses
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ca, <2 x double> %i.cf)
  %i.ch = fcmp uge <2 x double> %i.cg, splat (double -1.000000e-04) ; 2 uses
  %i.ci = fsub double %i.bu, %.sroa.10.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.bt, %i.bi
  %i.cj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ck = fneg double %i.cj
  %i.cl = extractelement <2 x double> %i.cc, i64 0
  %i.cm = fmul double %i.cl, %i.ck
  %i.cn = extractelement <2 x double> %i.ca, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cn, double %i.cm)
  %i.cp = fcmp ogt double %i.co, 1.000000e-04
  %i.cq = extractelement <2 x i1> %i.ch, i64 0    ; 2 uses
  %i.cr = extractelement <2 x i1> %i.ch, i64 1    ; 2 uses
  %i.cs = select i1 %i.cr, i1 %i.cq, i1 false
  %i.ct = select i1 %i.cr, i1 true, i1 %i.cq
  %.0.i = select i1 %i.cp, i1 %i.cs, i1 %i.ct
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread166

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.cu = fcmp une double %2, %i.bj               ; 2 uses
  %i.cv = insertelement <2 x double> %i.bi, double %2, i64 1 ; 2 uses
  %i.cw = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.cx = extractelement <2 x double> %i.bx, i64 0 ; 4 uses
  %i.cy = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit131
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !30

.preheader.i:                                     ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.preheader.i, label %clear.exit.thread164

.lr.ph27.preheader.i:                             ; preds = %.preheader.i
  %4 = fcmp une double %2, %i.bj                  ; 2 uses
  %i.cz = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %3, i64 1
  br label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i100, %bb.j ] ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i99
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i99
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !27
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.de
  %i.dg = load <2 x double>, ptr %i.db, align 8   ; 4 uses
  %i.dh = load <2 x double>, ptr %i.df, align 8   ; 6 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1 ; 4 uses
  %i.dj = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  %i.dk = fsub <2 x double> %i.dg, %i.cy          ; 2 uses
  %shift = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fmul <2 x double> %shift, %i.ce
  %i.dl = extractelement <2 x double> %foldExtExtBinop217, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dm, double %i.dl) ; 2 uses
  %i.do = fcmp ogt double %i.dn, 1.000000e-04
  %i.dp = fcmp olt double %i.dn, -1.000000e-04
  %i.dq = sext i1 %i.dp to i32
  %i.dr = select i1 %i.do, i32 1, i32 %i.dq       ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.cu, label %.split.i129, label %inBetween.exit.i127

.split.i129:                                      ; preds = %bb.k
  %i.dt = extractelement <2 x double> %i.dg, i64 0 ; 4 uses
  %i.du = fcmp olt double %2, %i.dt
  %i.dv = fcmp olt double %i.dt, %i.bj
  %or.cond.i.i130 = and i1 %i.du, %i.dv
  %i.dw = fcmp olt double %i.bj, %i.dt
  %i.dx = fcmp olt double %i.dt, %2
  %i.dy = and i1 %i.dw, %i.dx
  %i.dz = or i1 %or.cond.i.i130, %i.dy
  br i1 %i.dz, label %clear.exit.thread166, label %bb.l

inBetween.exit.i127:                              ; preds = %bb.k
  %i.ea = extractelement <2 x double> %i.dg, i64 1 ; 4 uses
  %i.eb = fcmp olt double %3, %i.ea
  %i.ec = fcmp olt double %i.ea, %.sroa.10.0.copyload
  %or.cond20.i.i128 = select i1 %i.eb, i1 %i.ec, i1 false
  %i.ed = fcmp olt double %.sroa.10.0.copyload, %i.ea
  %i.ee = fcmp olt double %i.ea, %3
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  %i.eg = select i1 %or.cond20.i.i128, i1 true, i1 %i.ef
  br i1 %i.eg, label %clear.exit.thread166, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i127, %.split.i129, %.lr.ph.i
  %i.eh = fsub <2 x double> %i.dh, %i.cy          ; 2 uses
  %shift219 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x double> %shift219, %i.ce
  %i.ei = extractelement <2 x double> %foldExtExtBinop220, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.ej, double %i.ei) ; 2 uses
  %i.el = fcmp ogt double %i.ek, 1.000000e-04
  %i.em = fcmp olt double %i.ek, -1.000000e-04
  %i.en = sext i1 %i.em to i32
  %i.eo = select i1 %i.el, i32 1, i32 %i.en       ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.m, label %intersect.exit131

bb.m:                                             ; preds = %bb.l
  br i1 %i.cu, label %.split43.i125, label %inBetween.exit42.i123

.split43.i125:                                    ; preds = %bb.m
  %i.eq = fcmp olt double %2, %i.dj
  %i.er = fcmp olt double %i.dj, %i.bj
  %or.cond.i41.i126 = and i1 %i.eq, %i.er
  %i.es = fcmp olt double %i.bj, %i.dj
  %i.et = fcmp olt double %i.dj, %2
  %i.eu = and i1 %i.es, %i.et
  %i.ev = or i1 %or.cond.i41.i126, %i.eu
  br i1 %i.ev, label %clear.exit.thread166, label %intersect.exit131

inBetween.exit42.i123:                            ; preds = %bb.m
  %i.ew = fcmp olt double %3, %i.di
  %i.ex = fcmp olt double %i.di, %.sroa.10.0.copyload
  %or.cond20.i39.i124 = select i1 %i.ew, i1 %i.ex, i1 false
  %i.ey = fcmp olt double %.sroa.10.0.copyload, %i.di
  %i.ez = fcmp olt double %i.di, %3
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  %i.fb = select i1 %or.cond20.i39.i124, i1 true, i1 %i.fa
  br i1 %i.fb, label %clear.exit.thread166, label %intersect.exit131

intersect.exit131:                                ; preds = %bb.l, %.split43.i125, %inBetween.exit42.i123
  %i.fc = fsub <2 x double> %i.dg, %i.dh          ; 2 uses
  %i.fd = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fsub <2 x double> %i.cv, %i.fd
  %i.ff = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fsub <2 x double> %i.cw, %i.ff
  %i.fh = extractelement <2 x double> %i.fc, i64 0
  %i.fi = fneg double %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fg, %i.fk
  %i.fm = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fe, <2 x double> %i.fl) ; 3 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 1
  %i.fp = fcmp ogt double %i.fo, 1.000000e-04
  %i.fq = fcmp olt <2 x double> %i.fn, splat (double -1.000000e-04) ; 2 uses
  %i.fr = extractelement <2 x i1> %i.fq, i64 1
  %i.fs = sext i1 %i.fr to i32
  %i.ft = select i1 %i.fp, i32 1, i32 %i.fs
  %i.fu = extractelement <2 x double> %i.fn, i64 0
  %i.fv = fcmp ogt double %i.fu, 1.000000e-04
  %i.fw = extractelement <2 x i1> %i.fq, i64 0
  %i.fx = sext i1 %i.fw to i32
  %i.fy = select i1 %i.fv, i32 1, i32 %i.fx
  %i.fz = mul nsw i32 %i.eo, %i.dr
  %i.ga = icmp slt i32 %i.fz, 0
  %i.gb = mul nsw i32 %i.ft, %i.fy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %i.gd, label %clear.exit.thread166, label %bb.j

.lr.ph27.i:                                       ; preds = %intersect.exit, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ %i.at, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %intersect.exit ] ; 3 uses
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !27
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.gh
  %i.gj = load <2 x double>, ptr %i.ge, align 8   ; 4 uses
  %i.gk = load <2 x double>, ptr %i.gi, align 8   ; 6 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1 ; 4 uses
  %i.gm = extractelement <2 x double> %i.gk, i64 0 ; 4 uses
  %i.gn = fsub <2 x double> %i.gj, %i.cy          ; 2 uses
  %shift222 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fmul <2 x double> %shift222, %i.ce
  %i.go = extractelement <2 x double> %foldExtExtBinop223, i64 0
  %i.gp = extractelement <2 x double> %i.gn, i64 0
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.gp, double %i.go) ; 2 uses
  %i.gr = fcmp ogt double %i.gq, 1.000000e-04
  %i.gs = fcmp olt double %i.gq, -1.000000e-04
  %i.gt = sext i1 %i.gs to i32
  %i.gu = select i1 %i.gr, i32 1, i32 %i.gt       ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph27.i
  br i1 %4, label %.split.i, label %inBetween.exit.i

.split.i:                                         ; preds = %bb.n
  %i.gw = extractelement <2 x double> %i.gj, i64 0 ; 4 uses
  %i.gx = fcmp olt double %2, %i.gw
  %i.gy = fcmp olt double %i.gw, %i.bj
  %or.cond.i.i = and i1 %i.gx, %i.gy
  %i.gz = fcmp olt double %i.bj, %i.gw
  %i.ha = fcmp olt double %i.gw, %2
  %i.hb = and i1 %i.gz, %i.ha
  %i.hc = or i1 %or.cond.i.i, %i.hb
  br i1 %i.hc, label %clear.exit.thread166, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.hd = extractelement <2 x double> %i.gj, i64 1 ; 4 uses
  %i.he = fcmp olt double %3, %i.hd
  %i.hf = fcmp olt double %i.hd, %.sroa.10.0.copyload
  %or.cond20.i.i = select i1 %i.he, i1 %i.hf, i1 false
  %i.hg = fcmp olt double %.sroa.10.0.copyload, %i.hd
  %i.hh = fcmp olt double %i.hd, %3
  %i.hi = select i1 %i.hg, i1 %i.hh, i1 false
  %i.hj = select i1 %or.cond20.i.i, i1 true, i1 %i.hi
  br i1 %i.hj, label %clear.exit.thread166, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.hk = fsub <2 x double> %i.gk, %i.cy          ; 2 uses
  %shift225 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop226 = fmul <2 x double> %shift225, %i.ce
  %i.hl = extractelement <2 x double> %foldExtExtBinop226, i64 0
  %i.hm = extractelement <2 x double> %i.hk, i64 0
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.hm, double %i.hl) ; 2 uses
  %i.ho = fcmp ogt double %i.hn, 1.000000e-04
  %i.hp = fcmp olt double %i.hn, -1.000000e-04
  %i.hq = sext i1 %i.hp to i32
  %i.hr = select i1 %i.ho, i32 1, i32 %i.hq       ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.p, label %intersect.exit

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %.split43.i, label %inBetween.exit42.i

.split43.i:                                       ; preds = %bb.p
  %i.ht = fcmp olt double %2, %i.gm
  %i.hu = fcmp olt double %i.gm, %i.bj
  %or.cond.i41.i = and i1 %i.ht, %i.hu
  %i.hv = fcmp olt double %i.bj, %i.gm
  %i.hw = fcmp olt double %i.gm, %2
  %i.hx = and i1 %i.hv, %i.hw
  %i.hy = or i1 %or.cond.i41.i, %i.hx
  br i1 %i.hy, label %clear.exit.thread166, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.hz = fcmp olt double %3, %i.gl
  %i.ia = fcmp olt double %i.gl, %.sroa.10.0.copyload
  %or.cond20.i39.i = select i1 %i.hz, i1 %i.ia, i1 false
  %i.ib = fcmp olt double %.sroa.10.0.copyload, %i.gl
  %i.ic = fcmp olt double %i.gl, %3
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  %i.ie = select i1 %or.cond20.i39.i, i1 true, i1 %i.id
  br i1 %i.ie, label %clear.exit.thread166, label %intersect.exit

intersect.exit:                                   ; preds = %bb.o, %.split43.i, %inBetween.exit42.i
  %i.if = fsub <2 x double> %i.gj, %i.gk          ; 2 uses
  %i.ig = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fsub <2 x double> %i.cv, %i.ig
  %i.ii = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = fsub <2 x double> %i.da, %i.ii
  %i.ik = extractelement <2 x double> %i.if, i64 0
  %i.il = fneg double %i.ik
  %i.im = insertelement <2 x double> poison, double %i.il, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.ij, %i.in
  %i.ip = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ih, <2 x double> %i.io) ; 3 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 1
  %i.is = fcmp ogt double %i.ir, 1.000000e-04
  %i.it = fcmp olt <2 x double> %i.iq, splat (double -1.000000e-04) ; 2 uses
  %i.iu = extractelement <2 x i1> %i.it, i64 1
  %i.iv = sext i1 %i.iu to i32
  %i.iw = select i1 %i.is, i32 1, i32 %i.iv
  %i.ix = extractelement <2 x double> %i.iq, i64 0
  %i.iy = fcmp ogt double %i.ix, 1.000000e-04
  %i.iz = extractelement <2 x i1> %i.it, i64 0
  %i.ja = sext i1 %i.iz to i32
  %i.jb = select i1 %i.iy, i32 1, i32 %i.ja
  %i.jc = mul nsw i32 %i.hr, %i.gu
  %i.jd = icmp slt i32 %i.jc, 0
  %i.je = mul nsw i32 %i.iw, %i.jb
  %i.jf = icmp slt i32 %i.je, 0
  %i.jg = select i1 %i.jd, i1 %i.jf, i1 false     ; 2 uses
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.b, %lftr.wideiv.i
  %or.cond.i = select i1 %i.jg, i1 true, i1 %exitcond35.not.i
  br i1 %or.cond.i, label %clear.exit, label %.lr.ph27.i, !llvm.loop !36

clear.exit:                                       ; preds = %intersect.exit
  br i1 %i.jg, label %clear.exit.thread166, label %clear.exit.thread164

clear.exit.thread164:                             ; preds = %.preheader.i, %clear.exit
  %foldExtExtBinop228 = fmul <2 x double> %i.bx, %i.bx
  %i.jh = extractelement <2 x double> %foldExtExtBinop228, i64 0
  %i.ji = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jh)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.jj)
  br label %clear.exit.thread166

clear.exit.thread166:                             ; preds = %intersect.exit131, %inBetween.exit.i127, %inBetween.exit42.i123, %.split.i129, %.split43.i125, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread164
  %sqrt.i.sink = phi double [ %sqrt.i, %clear.exit.thread164 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i125 ], [ 0.000000e+00, %.split.i129 ], [ 0.000000e+00, %inBetween.exit42.i123 ], [ 0.000000e+00, %inBetween.exit.i127 ], [ 0.000000e+00, %intersect.exit131 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %sqrt.i.sink, ptr %i.jk, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader183, label %bb.i, !llvm.loop !37

.preheader:                                       ; preds = %.lr.ph189.preheader, %.preheader183
  %i.jl = icmp slt i32 %.0, %i.b
  br i1 %i.jl, label %.lr.ph191, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.jm = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count203 = sext i32 %i.b to i64      ; 2 uses
  %i.jn = insertelement <2 x double> poison, double %3, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> poison, double %2, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %clear.exit119.thread179
  %indvars.iv200 = phi i64 [ %i.jm, %.lr.ph191 ], [ %indvars.iv.next201, %clear.exit119.thread179 ] ; 5 uses
  %i.js = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv200 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jt = load <2 x double>, ptr %i.js, align 8, !tbaa !28 ; 9 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0 ; 10 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !28 ; 13 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv200
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !27
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv200
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !27
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ke = load <2 x double>, ptr %i.jy, align 8   ; 3 uses
  %i.kf = load double, ptr %i.kd, align 8
  %i.kg = load <2 x double>, ptr %i.kc, align 8   ; 2 uses
  %i.kh = insertelement <2 x double> %i.ke, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.ki = fsub <2 x double> %i.jo, %i.kh          ; 5 uses
  %i.kj = shufflevector <2 x double> %i.kg, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2>
  %i.kk = shufflevector <2 x double> %i.jt, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kl = fsub <2 x double> %i.kj, %i.kk          ; 2 uses
  %i.km = shufflevector <2 x double> %i.kg, <2 x double> %i.kh, <2 x i32> <i32 1, i32 2>
  %i.kn = fsub <2 x double> %i.km, %i.kh          ; 2 uses
  %i.ko = fsub <2 x double> %i.jq, %i.kk          ; 2 uses
  %i.kp = fneg <2 x double> %i.ko                 ; 5 uses
  %i.kq = fmul <2 x double> %i.kn, %i.kp
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kl, <2 x double> %i.kq)
  %i.ks = fcmp uge <2 x double> %i.kr, splat (double -1.000000e-04) ; 2 uses
  %i.kt = fsub double %i.kf, %.sroa.10.0.copyload17
  %foldExtExtBinop230 = fsub <2 x double> %i.ke, %i.jt
  %i.ku = extractelement <2 x double> %foldExtExtBinop230, i64 0
  %i.kv = fneg double %i.ku
  %i.kw = extractelement <2 x double> %i.kn, i64 0
  %i.kx = fmul double %i.kw, %i.kv
  %i.ky = extractelement <2 x double> %i.kl, i64 0
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.ky, double %i.kx)
  %i.la = fcmp ogt double %i.kz, 1.000000e-04
  %i.lb = extractelement <2 x i1> %i.ks, i64 0    ; 2 uses
  %i.lc = extractelement <2 x i1> %i.ks, i64 1    ; 2 uses
  %i.ld = select i1 %i.lc, i1 %i.lb, i1 false
  %i.le = select i1 %i.lc, i1 true, i1 %i.lb
  %.0.i101 = select i1 %i.la, i1 %i.ld, i1 %i.le
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread179

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.lr.ph27.preheader.i104

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.lf = fcmp une double %2, %i.ju               ; 2 uses
  %i.lg = insertelement <2 x double> %i.jt, double %2, i64 1
  %i.lh = insertelement <2 x double> %i.jr, double %.sroa.10.0.copyload17, i64 0
  %i.li = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.lj = insertelement <2 x double> %i.jt, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit151
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.lr.ph27.preheader.i104, label %.lr.ph.i115, !llvm.loop !30

.lr.ph27.preheader.i104:                          ; preds = %bb.s, %bb.r
  %i.lk = fcmp une double %2, %i.ju               ; 2 uses
  %i.ll = insertelement <2 x double> %i.jt, double %2, i64 1
  %i.lm = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ln = insertelement <2 x double> %i.lm, double %3, i64 1
  %i.lo = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.lp = insertelement <2 x double> %i.jt, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !27
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.lt
  %i.lv = load <2 x double>, ptr %i.lq, align 8   ; 4 uses
  %i.lw = load <2 x double>, ptr %i.lu, align 8   ; 6 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 1 ; 4 uses
  %i.ly = extractelement <2 x double> %i.lw, i64 0 ; 4 uses
  %i.lz = fsub <2 x double> %i.lv, %i.lj          ; 2 uses
  %shift232 = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fmul <2 x double> %shift232, %i.kp
  %i.ma = extractelement <2 x double> %foldExtExtBinop233, i64 0
  %i.mb = extractelement <2 x double> %i.lz, i64 0
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.li, double %i.mb, double %i.ma) ; 2 uses
  %i.md = fcmp ogt double %i.mc, 1.000000e-04
  %i.me = fcmp olt double %i.mc, -1.000000e-04
  %i.mf = sext i1 %i.me to i32
  %i.mg = select i1 %i.md, i32 1, i32 %i.mf       ; 2 uses
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.lf, label %.split.i149, label %inBetween.exit.i147

.split.i149:                                      ; preds = %bb.t
  %i.mi = extractelement <2 x double> %i.lv, i64 0 ; 4 uses
  %i.mj = fcmp olt double %2, %i.mi
  %i.mk = fcmp olt double %i.mi, %i.ju
  %or.cond.i.i150 = and i1 %i.mj, %i.mk
  %i.ml = fcmp olt double %i.ju, %i.mi
  %i.mm = fcmp olt double %i.mi, %2
end_hunk_0
