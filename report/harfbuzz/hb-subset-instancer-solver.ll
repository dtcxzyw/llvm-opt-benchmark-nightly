Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-solver?download=true
inline.NumInlined: 101
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL6_solve6TripleS_R11hb_vector_tI9hb_pair_tIdS_ELb0EEb:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !10, !noalias !64
  %i.al = fneg double %i.ak
  %i.am = load <2 x double>, ptr %i.aj, align 8, !tbaa !11, !noalias !64
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ao, ptr %i.ah, align 8, !tbaa !11
  store double %i.al, ptr %i.ai, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br label %.lr.ph267.prol.loopexit

.lr.ph267.prol.loopexit:                          ; preds = %.lr.ph267.prol, %.lr.ph267.preheader
  %.094266.unr = phi ptr [ %i.ab, %.lr.ph267.preheader ], [ %i.ap, %.lr.ph267.prol ]
  %i.aq = icmp eq i64 %i.af, 0
  br i1 %i.aq, label %.loopexit, label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267
  %.094266 = phi ptr [ %i.bh, %.lr.ph267 ], [ %.094266.unr, %.lr.ph267.prol.loopexit ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.094266, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.094266, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.094266, i64 16
  %i.au = load double, ptr %i.ar, align 8, !tbaa !10, !noalias !64
  %i.av = fneg double %i.au
  %i.aw = load <2 x double>, ptr %i.at, align 8, !tbaa !11, !noalias !64
  %i.ax = fneg <2 x double> %i.aw
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ay, ptr %i.ar, align 8, !tbaa !11
  store double %i.av, ptr %i.as, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.094266, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.094266, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %.094266, i64 48
  %i.bc = load double, ptr %i.az, align 8, !tbaa !10, !noalias !64
  %i.bd = fneg double %i.bc
  %i.be = load <2 x double>, ptr %i.bb, align 8, !tbaa !11, !noalias !64
  %i.bf = fneg <2 x double> %i.be
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bg, ptr %i.az, align 8, !tbaa !11
  store double %i.bd, ptr %i.ba, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.094266, i64 64 ; 2 uses
  %.not106.1 = icmp eq ptr %i.bh, %i.ae
  br i1 %.not106.1, label %.loopexit, label %.lr.ph267

bb.d:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5resetEv.exit
  %i.bi = fcmp ole double %i.i, %i.k              ; 3 uses
  %i.bj = fcmp olt double %i.i, %i.p              ; 2 uses
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = fcmp ogt double %i.k, %i.p
  %i.bl = fcmp ogt double %i.p, %i.o
  %i.bm = select i1 %i.bk, i1 true, i1 %i.bl, !prof !12 ; 4 uses
  br i1 %i.bj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.bm, label %_ZL13supportScalardRK6Triple.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bn = fcmp uge double %i.k, 0.000000e+00
  %i.bo = fcmp ule double %i.o, 0.000000e+00
  %or.cond.not.i = select i1 %i.bn, i1 true, i1 %i.bo
  %i.bp = fcmp une double %i.p, 0.000000e+00
  %i.bq = fcmp une double %i.i, %i.p
  %i.br = and i1 %i.bq, %or.cond.not.i
  %or.cond40.i = and i1 %i.bp, %i.br
  br i1 %or.cond40.i, label %bb.h, label %_ZL13supportScalardRK6Triple.exit, !prof !65

bb.h:                                             ; preds = %bb.g
  %i.bs = fcmp ole double %i.o, %i.i
  %or.cond34.i.not = select i1 %i.bi, i1 true, i1 %i.bs
  br i1 %or.cond34.i.not, label %_ZL13supportScalardRK6Triple.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = fsub double %i.i, %i.k
  %i.bu = fsub double %i.p, %i.k
  %i.bv = fdiv double %i.bt, %i.bu
  br label %_ZL13supportScalardRK6Triple.exit

_ZL13supportScalardRK6Triple.exit:                ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi double [ %i.bv, %bb.i ], [ 1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ] ; 9 uses
  store double %i.i, ptr %i.l, align 8, !tbaa !11
  store double %i.i, ptr %i.m, align 8, !tbaa !11
  tail call fastcc void @_ZL6_solve6TripleS_R11hb_vector_tI9hb_pair_tIdS_ELb0EEb(ptr noundef nonnull byval(%struct.Triple) align 8 %0, ptr noundef nonnull byval(%struct.Triple) align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 3 uses
  %i.by = load i32, ptr %i.e, align 4, !tbaa !18  ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %.idx = shl nuw nsw i64 %i.bz, 5                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx
  %.not263 = icmp eq i32 %i.by, 0
  br i1 %.not263, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL13supportScalardRK6Triple.exit
  %i.cb = add nsw i64 %.idx, -32                  ; 2 uses
  %i.cc = lshr exact i64 %i.cb, 5
  %i.cd = add nuw nsw i64 %i.cc, 1
  %xtraiter = and i64 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.095264.prol = phi ptr [ %i.cg, %.lr.ph.prol ], [ %i.bx, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ce = load double, ptr %.095264.prol, align 8, !tbaa !21
  %i.cf = fmul double %.0.i, %i.ce
  store double %i.cf, ptr %.095264.prol, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.095264.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !41

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.095264.unr = phi ptr [ %i.bx, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %i.ch = icmp ult i64 %i.cb, 224
  br i1 %i.ch, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.095264 = phi ptr [ %i.df, %.lr.ph ], [ %.095264.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.ci = load double, ptr %.095264, align 8, !tbaa !21
  %i.cj = fmul double %.0.i, %i.ci
  store double %i.cj, ptr %.095264, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %.095264, i64 32 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !21
  %i.cm = fmul double %.0.i, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %.095264, i64 64 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !21
  %i.cp = fmul double %.0.i, %i.co
  store double %i.cp, ptr %i.cn, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %.095264, i64 96 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !21
  %i.cs = fmul double %.0.i, %i.cr
  store double %i.cs, ptr %i.cq, align 8, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.095264, i64 128 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !21
  %i.cv = fmul double %.0.i, %i.cu
  store double %i.cv, ptr %i.ct, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.095264, i64 160 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !21
  %i.cy = fmul double %.0.i, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.095264, i64 192 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !21
  %i.db = fmul double %.0.i, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.095264, i64 224 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !21
  %i.de = fmul double %.0.i, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.095264, i64 256 ; 2 uses
  %.not.7 = icmp eq ptr %i.df, %i.ca
  br i1 %.not.7, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.e
  br i1 %i.bm, label %_ZL13supportScalardRK6Triple.exit120, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.dg = fcmp uge double %i.k, 0.000000e+00
  %i.dh = fcmp ule double %i.o, 0.000000e+00
  %or.cond.not.i116 = select i1 %i.dg, i1 true, i1 %i.dh
  %i.di = fcmp une double %i.p, 0.000000e+00
  %i.dj = fcmp une double %i.j, %i.p
  %i.dk = and i1 %i.dj, %or.cond.not.i116
  %or.cond40.i117 = and i1 %i.di, %i.dk
  br i1 %or.cond40.i117, label %bb.l, label %_ZL13supportScalardRK6Triple.exit120, !prof !65

bb.l:                                             ; preds = %bb.k
  %i.dl = fcmp ugt double %i.j, %i.k
  %i.dm = fcmp ugt double %i.o, %i.j
  %or.cond34.i119 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond34.i119, label %bb.m, label %_ZL13supportScalardRK6Triple.exit120

bb.m:                                             ; preds = %bb.l
  %i.dn = fcmp olt double %i.j, %i.p
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = fsub double %i.j, %i.k
  %i.dp = fsub double %i.p, %i.k
  %i.dq = fdiv double %i.do, %i.dp
  br label %_ZL13supportScalardRK6Triple.exit120

bb.o:                                             ; preds = %bb.m
  %i.dr = fsub double %i.o, %i.j
  %i.ds = fsub double %i.o, %i.p
  %i.dt = fdiv double %i.dr, %i.ds
  br label %_ZL13supportScalardRK6Triple.exit120

_ZL13supportScalardRK6Triple.exit120:             ; preds = %bb.j, %bb.k, %bb.l, %bb.n, %bb.o
  %.0.i118 = phi double [ %i.dt, %bb.o ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ], [ 0.000000e+00, %bb.l ], [ %i.dq, %bb.n ] ; 9 uses
  %.not.i.not = icmp eq i32 %i.d, 0
  br i1 %.not.i.not, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %_ZL13supportScalardRK6Triple.exit120
  %i.du = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.du, label %..critedge_crit_edge.i, label %bb.q, !prof !22

..critedge_crit_edge.i:                           ; preds = %bb.p
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %.critedge.i

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZL13supportScalardRK6Triple.exit120
  %i.dv = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ 0, %_ZL13supportScalardRK6Triple.exit120 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !19
  %6 = add i32 %i.dv, 1
  store i32 %6, ptr %i.e, align 4, !tbaa !18
  %7 = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %7 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  store double %.0.i118, ptr %i.dy, align 8, !tbaa !21, !alias.scope !67
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit: ; preds = %bb.q, %.critedge.i
  br i1 %i.bm, label %_ZL13supportScalardRK6Triple.exit126, label %bb.r, !prof !12

bb.r:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit
  %i.ea = fcmp uge double %i.k, 0.000000e+00
  %i.eb = fcmp ule double %i.o, 0.000000e+00
  %or.cond.not.i122 = select i1 %i.ea, i1 true, i1 %i.eb
  %i.ec = fcmp une double %i.p, 0.000000e+00
  %i.ed = fcmp une double %i.i, %i.p
  %i.ee = and i1 %i.ed, %or.cond.not.i122
  %or.cond40.i123 = and i1 %i.ec, %i.ee
  br i1 %or.cond40.i123, label %bb.s, label %_ZL13supportScalardRK6Triple.exit126, !prof !65

bb.s:                                             ; preds = %bb.r
  %i.ef = fcmp ole double %i.o, %i.i
  %or.cond34.i125.not = select i1 %i.bi, i1 true, i1 %i.ef
  br i1 %or.cond34.i125.not, label %_ZL13supportScalardRK6Triple.exit126, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = fsub double %i.o, %i.i
  %i.eh = fsub double %i.o, %i.p
  %i.ei = fdiv double %i.eg, %i.eh
  br label %_ZL13supportScalardRK6Triple.exit126

_ZL13supportScalardRK6Triple.exit126:             ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit, %bb.r, %bb.s, %bb.t
  %.0.i124 = phi double [ %i.ei, %bb.t ], [ 1.000000e+00, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IRdS1_EEEEPS2_DpOT_.exit ], [ 1.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ] ; 3 uses
  %i.ej = fcmp ult double %.0.i118, %.0.i124
  br i1 %i.ej, label %bb.af, label %bb.u

bb.u:                                             ; preds = %_ZL13supportScalardRK6Triple.exit126
  %i.ek = fsub double 1.000000e+00, %.0.i118      ; 2 uses
  %i.el = fsub double %i.o, %i.p
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.p) ; 3 uses
  %i.en = fcmp oge double %i.k, %i.j
  %.sroa.speculated243 = select i1 %i.en, double %i.k, double %i.j
  %i.eo = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.ep = load i32, ptr %2, align 8, !tbaa !17
  %.not.i129 = icmp slt i32 %i.eo, %i.ep
  br i1 %.not.i129, label %.critedge.i133, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = add i32 %i.eo, 1
  %i.er = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.eq, i1 noundef zeroext false)
  br i1 %i.er, label %..critedge_crit_edge.i131, label %bb.w, !prof !22

..critedge_crit_edge.i131:                        ; preds = %bb.v
  %.pre.i132 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %.critedge.i133

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit

.critedge.i133:                                   ; preds = %..critedge_crit_edge.i131, %bb.u
  %i.es = phi i32 [ %.pre.i132, %..critedge_crit_edge.i131 ], [ %i.eo, %bb.u ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19
  %i.ev = add i32 %i.es, 1
  store i32 %i.ev, ptr %i.e, align 4, !tbaa !18
  %i.ew = zext i32 %i.es to i64
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %i.ew ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store double %.sroa.speculated243, ptr %i.ey, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store double %i.p, ptr %.sroa.4292.0..sroa_idx, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store double %i.em, ptr %.sroa.5293.0..sroa_idx, align 8
  store double %i.ek, ptr %i.ex, align 8, !tbaa !21, !alias.scope !68
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit: ; preds = %bb.w, %.critedge.i133
  %i.ez = fcmp ult double %i.o, %i.i
  br i1 %i.ez, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit
  %i.fa = fsub double %.0.i124, %.0.i118
  %i.fb = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.fc = load i32, ptr %2, align 8, !tbaa !17
  %.not.i136 = icmp slt i32 %i.fb, %i.fc
  br i1 %.not.i136, label %.critedge.i140, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = add i32 %i.fb, 1
  %i.fe = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.fd, i1 noundef zeroext false)
  br i1 %i.fe, label %..critedge_crit_edge.i138, label %bb.z, !prof !22

..critedge_crit_edge.i138:                        ; preds = %bb.y
  %.pre.i139 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %.critedge.i140

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit141

.critedge.i140:                                   ; preds = %..critedge_crit_edge.i138, %bb.x
  %i.ff = phi i32 [ %.pre.i139, %..critedge_crit_edge.i138 ], [ %i.fb, %bb.x ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !19
  %i.fi = add i32 %i.ff, 1
  store i32 %i.fi, ptr %i.e, align 4, !tbaa !18
  %i.fj = zext i32 %i.ff to i64
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store double %i.em, ptr %i.fl, align 8
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store double %i.i, ptr %.sroa.4289.0..sroa_idx, align 8
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store double %i.i, ptr %.sroa.5290.0..sroa_idx, align 8
  store double %i.fa, ptr %i.fk, align 8, !tbaa !21, !alias.scope !69
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit141

bb.aa:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit
  %i.fm = fcmp oeq double %i.o, %i.j
  %i.fn = fadd double %i.o, f0x3F10000000000000
  %.0 = select i1 %i.fm, double %i.fn, double %i.o ; 2 uses
  %i.fo = fsub double 0.000000e+00, %.0.i118      ; 2 uses
  %i.fp = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.fq = load i32, ptr %2, align 8, !tbaa !17
  %.not.i144 = icmp slt i32 %i.fp, %i.fq
  br i1 %.not.i144, label %.critedge.i148, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = add i32 %i.fp, 1
  %i.fs = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.fr, i1 noundef zeroext false)
  br i1 %i.fs, label %..critedge_crit_edge.i146, label %bb.ac, !prof !22

..critedge_crit_edge.i146:                        ; preds = %bb.ab
  %.pre.i147 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %.critedge.i148

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149

.critedge.i148:                                   ; preds = %..critedge_crit_edge.i146, %bb.aa
  %i.ft = phi i32 [ %.pre.i147, %..critedge_crit_edge.i146 ], [ %i.fp, %bb.aa ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !19
  %i.fw = add i32 %i.ft, 1
  store i32 %i.fw, ptr %i.e, align 4, !tbaa !18
  %i.fx = zext i32 %i.ft to i64
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fv, i64 %i.fx ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store double %i.em, ptr %i.fz, align 8
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store double %.0, ptr %.sroa.4286.0..sroa_idx, align 8
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store double %i.i, ptr %.sroa.5287.0..sroa_idx, align 8
  store double %i.fo, ptr %i.fy, align 8, !tbaa !21, !alias.scope !70
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149: ; preds = %bb.ac, %.critedge.i148
  %i.ga = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.gb = load i32, ptr %2, align 8, !tbaa !17
  %.not.i152 = icmp slt i32 %i.ga, %i.gb
  br i1 %.not.i152, label %.critedge.i156, label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149
  %i.gc = add i32 %i.ga, 1
  %i.gd = tail call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.gc, i1 noundef zeroext false)
  br i1 %i.gd, label %..critedge_crit_edge.i154, label %bb.ae, !prof !22

..critedge_crit_edge.i154:                        ; preds = %bb.ad
  %.pre.i155 = load i32, ptr %i.e, align 4, !tbaa !18
  br label %.critedge.i156

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit141

.critedge.i156:                                   ; preds = %..critedge_crit_edge.i154, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149
  %i.ge = phi i32 [ %.pre.i155, %..critedge_crit_edge.i154 ], [ %i.ga, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit149 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !19
  %i.gh = add i32 %i.ge, 1
  store i32 %i.gh, ptr %i.e, align 4, !tbaa !18
  %i.gi = zext i32 %i.ge to i64
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %i.gi ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store double %.0, ptr %i.gk, align 8
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store double %i.i, ptr %.sroa.4283.0..sroa_idx, align 8
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store double %i.i, ptr %.sroa.5284.0..sroa_idx, align 8
  store double %i.fo, ptr %i.gj, align 8, !tbaa !21, !alias.scope !71
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE4pushIJS0_IdRS1_EEEEPS2_DpOT_.exit141

bb.af:                                            ; preds = %_ZL13supportScalardRK6Triple.exit126
  %i.gl = fcmp oge double %i.j, %i.k
  %.sroa.speculated = select i1 %i.gl, double %i.j, double %i.k
  %i.gm = fsub double 1.000000e+00, %.0.i118
  %i.gn = load i32, ptr %i.e, align 4, !tbaa !18  ; 3 uses
  %i.go = load i32, ptr %2, align 8, !tbaa !17
  %.not.i160 = icmp slt i32 %i.gn, %i.go
  br i1 %.not.i160, label %.critedge.i164, label %bb.ag
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE5allocEjb:bb.a
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !77

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 134217727
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 5
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 137438953441) %i.v, i1 false), !alias.scope !83
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 5
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !84

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare void @hb_free(ptr noundef) local_unnamed_addr #6

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #6

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTS6Triple", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!9, !8, i64 16}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS9hb_pair_tId6TripleE", !14, i64 0}
!16 = !{!"_ZTS11hb_vector_tI9hb_pair_tId6TripleELb0EE", !5, i64 0, !5, i64 4, !15, i64 8}
!17 = !{!16, !5, i64 0}
!18 = !{!16, !5, i64 4}
!19 = !{!16, !15, i64 8}
!20 = !{!"_ZTS9hb_pair_tId6TripleE", !8, i64 0, !9, i64 8}
!21 = !{!20, !8, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, i1 true, !"_ZL15_reverse_negateRK6Triple"}
!24 = distinct !{!24, !23, !"_ZL15_reverse_negateRK6Triple: argument 0"}
!25 = !{!24}
!26 = !{!"_ZTS15TripleDistances", !8, i64 0, !8, i64 8}
!27 = !{!26, !8, i64 0}
!28 = !{!26, !8, i64 8}
!29 = distinct !{!29, i1 true, !"_ZN9hb_pair_tIRd6TripleEcvS_IT_T0_EIdS1_TnPN12hb_enable_ifIXaasr3std14is_convertibleIS0_S3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!30 = distinct !{!30, !29, !"_ZN9hb_pair_tIRd6TripleEcvS_IT_T0_EIdS1_TnPN12hb_enable_ifIXaasr3std14is_convertibleIS0_S3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!31 = !{!9, !8, i64 8}
!32 = !{!"branch_weights", i32 -294967296, i32 6003000}
!33 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11}
!34 = !{!30}
!35 = distinct !{!35, i1 true, !"_ZL15_reverse_negateRK6Triple"}
!36 = distinct !{!36, !35, !"_ZL15_reverse_negateRK6Triple: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZL15_reverse_negateRK6Triple"}
!38 = distinct !{!38, !37, !"_ZL15_reverse_negateRK6Triple: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZL15_reverse_negateRK6Triple"}
!40 = distinct !{!40, !39, !"_ZL15_reverse_negateRK6Triple: argument 0"}
!41 = distinct !{!41, !66}
!42 = distinct !{!42, i1 true, !"_ZN9hb_pair_tIRd6TripleEcvS_IT_T0_EIdS1_TnPN12hb_enable_ifIXaasr3std14is_convertibleIS0_S3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!43 = distinct !{!43, !42, !"_ZN9hb_pair_tIRd6TripleEcvS_IT_T0_EIdS1_TnPN12hb_enable_ifIXaasr3std14is_convertibleIS0_S3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!45 = distinct !{!45, !44, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!47 = distinct !{!47, !46, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!48 = distinct !{!48, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!49 = distinct !{!49, !48, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!51 = distinct !{!51, !50, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!53 = distinct !{!53, !52, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!55 = distinct !{!55, !54, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!57 = distinct !{!57, !56, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!59 = distinct !{!59, !58, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv"}
!61 = distinct !{!61, !60, !"_ZN9hb_pair_tIdR6TripleEcvS_IT_T0_EIdS0_TnPN12hb_enable_ifIXaasr3std14is_convertibleIdS3_EE5valuesr3std14is_convertibleIS1_S4_EE5valueEvE4typeELPv0EEEv: argument 0"}
!62 = !{!36}
!63 = !{!38}
!64 = !{!40}
!65 = !{!"branch_weights", i32 2000, i32 2002}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!43}
!68 = !{!45}
!69 = !{!47}
!70 = !{!49}
!71 = !{!51}
!72 = !{!53}
!73 = !{!55}
!74 = !{!57}
!75 = !{!59}
!76 = !{!61}
!77 = distinct !{!77, !82}
!78 = distinct !{!78, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!79 = distinct !{!79, !78, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!80 = distinct !{!80, !78, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!81 = !{!5, !5, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!80, !79}
!84 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
end_hunk_1
