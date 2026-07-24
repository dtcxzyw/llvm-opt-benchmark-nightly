inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cdft:bb.a
  %i.cm = add nsw i32 %i.cg, %i.x                 ; 2 uses
  %i.cn = add nsw i32 %i.cm, %i.x                 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.co ; 3 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = fneg double %i.cs
  %i.cu = sext i32 %i.cn to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cu ; 3 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr i8, ptr %i.cv, i64 8      ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8
  %i.cz = fneg double %i.cy
  store double %i.cw, ptr %i.cp, align 8, !tbaa !8
  store double %i.cz, ptr %i.cr, align 8, !tbaa !8
  store double %i.cq, ptr %i.cv, align 8, !tbaa !8
  store double %i.ct, ptr %i.cx, align 8, !tbaa !8
  %i.da = add nsw i32 %i.cn, %i.x
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %2, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !8
  %i.df = fneg double %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !8
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond279.not.i = icmp eq i64 %indvars.iv.next276.i, %wide.trip.count278.i
  br i1 %exitcond279.not.i, label %bitrv2conj.exit, label %.preheader.i, !llvm.loop !28

bb.f:                                             ; preds = %._crit_edge246.thread.i, %._crit_edge246.i
  %i.dg = phi i32 [ 2, %._crit_edge246.thread.i ], [ %i.t, %._crit_edge246.i ] ; 3 uses
  %.0233.lcssa288.i = phi i32 [ 1, %._crit_edge246.thread.i ], [ %i.q, %._crit_edge246.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = fneg double %i.di
  store double %i.dj, ptr %i.dh, align 8, !tbaa !8
  %i.dk = sext i32 %i.dg to i64
  %i.dl = getelementptr [8 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !8
  %i.do = fneg double %i.dn
  store double %i.do, ptr %i.dm, align 8, !tbaa !8
  %i.dp = icmp sgt i32 %.0233.lcssa288.i, 1
  br i1 %i.dp, label %.preheader239.preheader.i, label %bitrv2conj.exit

.preheader239.preheader.i:                        ; preds = %bb.f
  %wide.trip.count268.i = zext nneg i32 %.0233.lcssa288.i to i64
  br label %.preheader239.i

.preheader239.i:                                  ; preds = %bb.h, %.preheader239.preheader.i
  %indvars.iv265.i = phi i64 [ 1, %.preheader239.preheader.i ], [ %indvars.iv.next266.i, %bb.h ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv265.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %indvars.iv265.tr.i = trunc i64 %indvars.iv265.i to i32
  %i.dt = shl i32 %indvars.iv265.tr.i, 1          ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader239.i
  %indvars.iv260.i = phi i64 [ 0, %.preheader239.i ], [ %indvars.iv.next261.i, %bb.g ] ; 3 uses
  %i.du = shl nuw nsw i64 %indvars.iv260.i, 1
  %i.dv = add nsw i64 %i.du, %i.ds                ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv260.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  %i.dy = add nsw i32 %i.dx, %i.dt                ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv ; 3 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = getelementptr i8, ptr %i.dz, i64 8      ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = fneg double %i.ec
  %i.ee = sext i32 %i.dy to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ee ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = getelementptr i8, ptr %i.ef, i64 8      ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !8
  %i.ej = fneg double %i.ei
  store double %i.eg, ptr %i.dz, align 8, !tbaa !8
  store double %i.ej, ptr %i.eb, align 8, !tbaa !8
  store double %i.ea, ptr %i.ef, align 8, !tbaa !8
  store double %i.ed, ptr %i.eh, align 8, !tbaa !8
  %i.ek = add nsw i32 %i.dy, %i.dg
  %gep298.i = getelementptr [8 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %i.el = load double, ptr %gep298.i, align 8, !tbaa !8
  %i.em = getelementptr i8, ptr %gep298.i, i64 8  ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !8
  %i.eo = fneg double %i.en
  %i.ep = sext i32 %i.ek to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ep ; 3 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8
  %i.es = getelementptr i8, ptr %i.eq, i64 8      ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !8
  %i.eu = fneg double %i.et
  store double %i.er, ptr %gep298.i, align 8, !tbaa !8
  store double %i.eu, ptr %i.em, align 8, !tbaa !8
  store double %i.el, ptr %i.eq, align 8, !tbaa !8
  store double %i.eo, ptr %i.es, align 8, !tbaa !8
  %indvars.iv.next261.i = add nuw nsw i64 %indvars.iv260.i, 1 ; 2 uses
  %exitcond264.not.i = icmp eq i64 %indvars.iv.next261.i, %indvars.iv265.i
  br i1 %exitcond264.not.i, label %bb.h, label %bb.g, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  %i.ev = add nsw i32 %i.dt, %i.dr                ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %2, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 8      ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !8
  %i.fa = fneg double %i.ez
  store double %i.fa, ptr %i.ey, align 8, !tbaa !8
  %i.fb = add nsw i32 %i.ev, %i.dg
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr %2, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 8      ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !8
  %i.fg = fneg double %i.ff
  store double %i.fg, ptr %i.fe, align 8, !tbaa !8
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %exitcond269.not.i = icmp eq i64 %indvars.iv.next266.i, %wide.trip.count268.i
  br i1 %exitcond269.not.i, label %bitrv2conj.exit, label %.preheader239.i, !llvm.loop !30

bitrv2conj.exit:                                  ; preds = %bb.h, %._crit_edge253.i, %.preheader238.i, %bb.f
  br i1 %i.c, label %bb.i, label %.loopexit120.i

bb.i:                                             ; preds = %bitrv2conj.exit
  tail call fastcc void @cft1st(i32 noundef range(i32 5, -2147483648) %0, ptr noundef %2, ptr noundef readonly %4)
  %i.fh = icmp samesign ugt i32 %0, 32
  br i1 %i.fh, label %.lr.ph.i22, label %.loopexit120.i

.lr.ph.i22:                                       ; preds = %bb.i, %.lr.ph.i22
  %i.fi = phi i32 [ %i.fj, %.lr.ph.i22 ], [ 32, %bb.i ] ; 3 uses
  %.0114121.i = phi i32 [ %i.fi, %.lr.ph.i22 ], [ 8, %bb.i ]
  tail call fastcc void @cftmdl(i32 noundef range(i32 5, -2147483648) %0, i32 noundef %.0114121.i, ptr noundef %2, ptr noundef readonly %4)
  %i.fj = shl i32 %i.fi, 2                        ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %0
  br i1 %i.fk, label %.lr.ph.i22, label %.loopexit120.i, !llvm.loop !31

.loopexit120.i:                                   ; preds = %.lr.ph.i22, %bb.i, %bitrv2conj.exit
  %.1115.i = phi i32 [ 2, %bitrv2conj.exit ], [ 8, %bb.i ], [ %i.fi, %.lr.ph.i22 ] ; 4 uses
  %i.fl = shl i32 %.1115.i, 2
  %i.fm = icmp eq i32 %i.fl, %0
  %i.fn = icmp sgt i32 %.1115.i, 0                ; 2 uses
  br i1 %i.fm, label %.preheader.i21, label %.preheader118.i

.preheader118.i:                                  ; preds = %.loopexit120.i
  br i1 %i.fn, label %.lr.ph123.preheader.i, label %cftbsub.exit

.lr.ph123.preheader.i:                            ; preds = %.preheader118.i
  %i.fo = zext nneg i32 %.1115.i to i64           ; 6 uses
  %invariant.gep.i17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fo ; 5 uses
  %i.fp = add nsw i64 %i.fo, -2                   ; 2 uses
  %i.fq = lshr exact i64 %i.fp, 1
  %i.fr = add nuw i64 %i.fq, 1                    ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.fp, 34
  br i1 %min.iters.check79, label %.lr.ph123.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader.i
  %i.fs = shl nuw nsw i64 %i.fo, 3                ; 3 uses
  %i.ft = getelementptr i8, ptr %2, i64 %i.fs
  %scevgep = getelementptr i8, ptr %i.ft, i64 -8  ; 3 uses
  %scevgep54 = getelementptr i8, ptr %2, i64 8    ; 3 uses
  %scevgep55 = getelementptr i8, ptr %2, i64 %i.fs ; 3 uses
  %i.fu = shl nuw nsw i64 %i.fo, 3                ; 2 uses
  %i.fv = getelementptr i8, ptr %2, i64 %i.fs
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  %scevgep56 = getelementptr i8, ptr %i.fw, i64 -8 ; 3 uses
  %i.fx = getelementptr i8, ptr %2, i64 %i.fu
  %scevgep57 = getelementptr i8, ptr %i.fx, i64 8 ; 3 uses
  %i.fy = shl nuw nsw i64 %i.fo, 4
  %scevgep58 = getelementptr i8, ptr %2, i64 %i.fy ; 3 uses
  %bound0 = icmp ult ptr %2, %scevgep55
  %bound1 = icmp ult ptr %scevgep54, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %2, %scevgep56
  %bound160 = icmp ult ptr %invariant.gep.i17, %scevgep
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %2, %scevgep58
  %bound163 = icmp ult ptr %scevgep57, %scevgep
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  %bound066 = icmp ult ptr %scevgep54, %scevgep56
  %bound167 = icmp ult ptr %invariant.gep.i17, %scevgep55
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %scevgep54, %scevgep58
  %bound171 = icmp ult ptr %scevgep57, %scevgep55
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  %bound074 = icmp ult ptr %invariant.gep.i17, %scevgep58
  %bound175 = icmp ult ptr %scevgep57, %scevgep56
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  br i1 %conflict.rdx77, label %.lr.ph123.i.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck
  %n.vec82 = and i64 %i.fr, -2                    ; 3 uses
  %i.fz = shl i64 %n.vec82, 1
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph80
  %index84 = phi i64 [ 0, %vector.ph80 ], [ %index.next90, %vector.body83 ] ; 2 uses
  %i.ga = shl nuw i64 %index84, 1                 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ga ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.gb, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec85 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i17, i64 %i.ga ; 2 uses
  %wide.vec86 = load <4 x double>, ptr %i.gc, align 8, !tbaa !8 ; 2 uses
  %strided.vec87 = shufflevector <4 x double> %wide.vec86, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec88 = shufflevector <4 x double> %wide.vec86, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gd = fsub <2 x double> %strided.vec, %strided.vec87
  %i.ge = fsub <2 x double> %strided.vec88, %strided.vec85
  %i.gf = fadd <2 x double> %strided.vec, %strided.vec87
  %i.gg = fneg <2 x double> %strided.vec85
  %i.gh = fsub <2 x double> %i.gg, %strided.vec88
  %interleaved.vec = shufflevector <2 x double> %i.gf, <2 x double> %i.gh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.gb, align 8, !tbaa !8
  %interleaved.vec89 = shufflevector <2 x double> %i.gd, <2 x double> %i.ge, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec89, ptr %i.gc, align 8, !tbaa !8
  %index.next90 = add nuw i64 %index84, 2         ; 2 uses
  %i.gi = icmp eq i64 %index.next90, %n.vec82
  br i1 %i.gi, label %middle.block91, label %vector.body83, !llvm.loop !32

middle.block91:                                   ; preds = %vector.body83
  %cmp.n92 = icmp eq i64 %i.fr, %n.vec82
  br i1 %cmp.n92, label %cftbsub.exit, label %.lr.ph123.i.preheader

.lr.ph123.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph123.preheader.i, %middle.block91
  %indvars.iv.i18.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123.preheader.i ], [ %i.fz, %middle.block91 ]
  br label %.lr.ph123.i

.preheader.i21:                                   ; preds = %.loopexit120.i
  br i1 %i.fn, label %.lr.ph125.preheader.i, label %cftbsub.exit

.lr.ph125.preheader.i:                            ; preds = %.preheader.i21
  %i.gj = zext nneg i32 %.1115.i to i64           ; 14 uses
  %invariant.gep132.i = getelementptr [8 x i8], ptr %2, i64 %i.gj ; 9 uses
  %i.gk = add nsw i64 %i.gj, -2                   ; 2 uses
  %i.gl = lshr exact i64 %i.gk, 1
  %i.gm = add nuw i64 %i.gl, 1                    ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.gk, 50
  br i1 %min.iters.check221, label %.lr.ph125.i.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph125.preheader.i
  %i.gn = shl nuw nsw i64 %i.gj, 3                ; 3 uses
  %i.go = add nsw i64 %i.gn, -16                  ; 3 uses
  %i.gp = getelementptr i8, ptr %2, i64 %i.gn
  %scevgep95 = getelementptr i8, ptr %i.gp, i64 -8 ; 7 uses
  %scevgep96 = getelementptr i8, ptr %2, i64 8    ; 7 uses
  %scevgep97 = getelementptr i8, ptr %2, i64 %i.gn ; 7 uses
  %i.gq = shl nuw nsw i64 %i.gj, 4                ; 3 uses
  %scevgep98 = getelementptr i8, ptr %2, i64 %i.gq ; 7 uses
  %i.gr = getelementptr i8, ptr %2, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  %scevgep99 = getelementptr i8, ptr %i.gs, i64 8 ; 7 uses
  %i.gt = getelementptr i8, ptr %2, i64 %i.gq
  %scevgep100 = getelementptr i8, ptr %i.gt, i64 8 ; 7 uses
  %i.gu = mul nuw nsw i64 %i.gj, 24
  %scevgep101 = getelementptr i8, ptr %2, i64 %i.gu ; 7 uses
  %i.gv = shl nuw nsw i64 %i.gj, 3                ; 2 uses
  %i.gw = getelementptr i8, ptr %2, i64 %i.go
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gv
  %scevgep102 = getelementptr i8, ptr %i.gx, i64 8 ; 7 uses
  %i.gy = getelementptr i8, ptr %2, i64 %i.gv
  %scevgep103 = getelementptr i8, ptr %i.gy, i64 8 ; 7 uses
  %i.gz = shl nuw nsw i64 %i.gj, 4
  %scevgep104 = getelementptr i8, ptr %2, i64 %i.gz ; 7 uses
  %i.ha = mul nuw nsw i64 %i.gj, 24               ; 3 uses
  %scevgep105 = getelementptr i8, ptr %2, i64 %i.ha ; 7 uses
  %i.hb = getelementptr i8, ptr %2, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.go
  %scevgep106 = getelementptr i8, ptr %i.hc, i64 8 ; 7 uses
  %i.hd = getelementptr i8, ptr %2, i64 %i.ha
  %scevgep107 = getelementptr i8, ptr %i.hd, i64 8 ; 7 uses
  %i.he = shl nuw nsw i64 %i.gj, 5
  %scevgep108 = getelementptr i8, ptr %2, i64 %i.he ; 7 uses
  %bound0109 = icmp ult ptr %2, %scevgep97
  %bound1110 = icmp ult ptr %scevgep96, %scevgep95
  %found.conflict111 = and i1 %bound0109, %bound1110
  %bound0112 = icmp ult ptr %2, %scevgep99
  %bound1113 = icmp ult ptr %scevgep98, %scevgep95
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %found.conflict111, %found.conflict114
  %bound0116 = icmp ult ptr %2, %scevgep101
  %bound1117 = icmp ult ptr %scevgep100, %scevgep95
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %bound0120 = icmp ult ptr %2, %scevgep102
  %bound1121 = icmp ult ptr %invariant.gep132.i, %scevgep95
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %2, %scevgep104
  %bound1125 = icmp ult ptr %scevgep103, %scevgep95
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %2, %scevgep106
  %bound1129 = icmp ult ptr %scevgep105, %scevgep95
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  %bound0132 = icmp ult ptr %2, %scevgep108
  %bound1133 = icmp ult ptr %scevgep107, %scevgep95
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx131, %found.conflict134
  %bound0136 = icmp ult ptr %scevgep96, %scevgep99
  %bound1137 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx135, %found.conflict138
  %bound0140 = icmp ult ptr %scevgep96, %scevgep101
  %bound1141 = icmp ult ptr %scevgep100, %scevgep97
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %conflict.rdx139, %found.conflict142
  %bound0144 = icmp ult ptr %scevgep96, %scevgep102
  %bound1145 = icmp ult ptr %invariant.gep132.i, %scevgep97
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %scevgep96, %scevgep104
  %bound1149 = icmp ult ptr %scevgep103, %scevgep97
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  %bound0152 = icmp ult ptr %scevgep96, %scevgep106
  %bound1153 = icmp ult ptr %scevgep105, %scevgep97
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  %bound0156 = icmp ult ptr %scevgep96, %scevgep108
  %bound1157 = icmp ult ptr %scevgep107, %scevgep97
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %bound0160 = icmp ult ptr %scevgep98, %scevgep101
  %bound1161 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %scevgep98, %scevgep102
  %bound1165 = icmp ult ptr %invariant.gep132.i, %scevgep99
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep98, %scevgep104
  %bound1169 = icmp ult ptr %scevgep103, %scevgep99
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep98, %scevgep106
  %bound1173 = icmp ult ptr %scevgep105, %scevgep99
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep98, %scevgep108
  %bound1177 = icmp ult ptr %scevgep107, %scevgep99
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %scevgep100, %scevgep102
  %bound1181 = icmp ult ptr %invariant.gep132.i, %scevgep101
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep100, %scevgep104
  %bound1185 = icmp ult ptr %scevgep103, %scevgep101
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %scevgep100, %scevgep106
  %bound1189 = icmp ult ptr %scevgep105, %scevgep101
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  %bound0192 = icmp ult ptr %scevgep100, %scevgep108
  %bound1193 = icmp ult ptr %scevgep107, %scevgep101
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  %bound0196 = icmp ult ptr %invariant.gep132.i, %scevgep104
  %bound1197 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %invariant.gep132.i, %scevgep106
  %bound1201 = icmp ult ptr %scevgep105, %scevgep102
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %invariant.gep132.i, %scevgep108
  %bound1205 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %scevgep103, %scevgep106
  %bound1209 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %scevgep103, %scevgep108
  %bound1213 = icmp ult ptr %scevgep107, %scevgep104
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  %bound0216 = icmp ult ptr %scevgep105, %scevgep108
  %bound1217 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  br i1 %conflict.rdx219, label %.lr.ph125.i.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck94
  %n.vec224 = and i64 %i.gm, -2                   ; 3 uses
  %i.hf = shl i64 %n.vec224, 1
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next243, %vector.body225 ] ; 2 uses
  %i.hg = shl nuw i64 %index226, 1                ; 2 uses
  %i.hh = add nuw nsw i64 %i.hg, %i.gj            ; 2 uses
  %i.hi = add nuw nsw i64 %i.hh, %i.gj            ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hg ; 2 uses
  %wide.vec227 = load <4 x double>, ptr %i.hj, align 8, !tbaa !8 ; 2 uses
  %strided.vec228 = shufflevector <4 x double> %wide.vec227, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec229 = shufflevector <4 x double> %wide.vec227, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hh ; 2 uses
  %wide.vec230 = load <4 x double>, ptr %i.hk, align 8, !tbaa !8 ; 2 uses
  %strided.vec231 = shufflevector <4 x double> %wide.vec230, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec232 = shufflevector <4 x double> %wide.vec230, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hl = fadd <2 x double> %strided.vec228, %strided.vec231 ; 2 uses
  %i.hm = fneg <2 x double> %strided.vec229
  %i.hn = fsub <2 x double> %i.hm, %strided.vec232 ; 2 uses
  %i.ho = fsub <2 x double> %strided.vec228, %strided.vec231 ; 2 uses
  %i.hp = fsub <2 x double> %strided.vec232, %strided.vec229 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hi ; 2 uses
  %wide.vec233 = load <4 x double>, ptr %i.hq, align 8, !tbaa !8 ; 2 uses
  %strided.vec234 = shufflevector <4 x double> %wide.vec233, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec235 = shufflevector <4 x double> %wide.vec233, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep132.i, i64 %i.hi ; 2 uses
  %wide.vec236 = load <4 x double>, ptr %i.hr, align 8, !tbaa !8 ; 2 uses
  %strided.vec237 = shufflevector <4 x double> %wide.vec236, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec238 = shufflevector <4 x double> %wide.vec236, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hs = fadd <2 x double> %strided.vec234, %strided.vec237 ; 2 uses
  %i.ht = fadd <2 x double> %strided.vec235, %strided.vec238 ; 2 uses
  %i.hu = fsub <2 x double> %strided.vec234, %strided.vec237 ; 2 uses
  %i.hv = fsub <2 x double> %strided.vec235, %strided.vec238 ; 2 uses
  %i.hw = fadd <2 x double> %i.hl, %i.hs
  %i.hx = fsub <2 x double> %i.hn, %i.ht
  %interleaved.vec239 = shufflevector <2 x double> %i.hw, <2 x double> %i.hx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec239, ptr %i.hj, align 8, !tbaa !8
  %i.hy = fsub <2 x double> %i.hl, %i.hs
  %i.hz = fadd <2 x double> %i.hn, %i.ht
  %interleaved.vec240 = shufflevector <2 x double> %i.hy, <2 x double> %i.hz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec240, ptr %i.hq, align 8, !tbaa !8
  %i.ia = fsub <2 x double> %i.ho, %i.hv
  %i.ib = fsub <2 x double> %i.hp, %i.hu
  %interleaved.vec241 = shufflevector <2 x double> %i.ia, <2 x double> %i.ib, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec241, ptr %i.hk, align 8, !tbaa !8
  %i.ic = fadd <2 x double> %i.ho, %i.hv
  %i.id = fadd <2 x double> %i.hp, %i.hu
  %interleaved.vec242 = shufflevector <2 x double> %i.ic, <2 x double> %i.id, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec242, ptr %i.hr, align 8, !tbaa !8
  %index.next243 = add nuw i64 %index226, 2       ; 2 uses
  %i.ie = icmp eq i64 %index.next243, %n.vec224
  br i1 %i.ie, label %middle.block244, label %vector.body225, !llvm.loop !33

middle.block244:                                  ; preds = %vector.body225
  %cmp.n245 = icmp eq i64 %i.gm, %n.vec224
  br i1 %cmp.n245, label %cftbsub.exit, label %.lr.ph125.i.preheader

.lr.ph125.i.preheader:                            ; preds = %vector.memcheck94, %.lr.ph125.preheader.i, %middle.block244
  %indvars.iv128.i.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph125.preheader.i ], [ %i.hf, %middle.block244 ]
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.preheader, %.lr.ph125.i
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i, %.lr.ph125.i ], [ %indvars.iv128.i.ph, %.lr.ph125.i.preheader ] ; 3 uses
  %i.if = add nuw nsw i64 %indvars.iv128.i, %i.gj ; 2 uses
  %i.ig = add nuw nsw i64 %i.if, %i.gj            ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv128.i ; 3 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !8 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.if ; 3 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !8 ; 2 uses
  %i.il = fadd double %i.ii, %i.ik                ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !8 ; 2 uses
  %i.io = fneg double %i.in
  %i.ip = getelementptr i8, ptr %i.ij, i64 8      ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !8 ; 2 uses
  %i.ir = fsub double %i.io, %i.iq                ; 2 uses
  %i.is = fsub double %i.ii, %i.ik                ; 2 uses
  %i.it = fsub double %i.iq, %i.in                ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ig ; 3 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !8 ; 2 uses
  %gep133.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep132.i, i64 %i.ig ; 3 uses
  %i.iw = load double, ptr %gep133.i, align 8, !tbaa !8 ; 2 uses
  %i.ix = fadd double %i.iv, %i.iw                ; 2 uses
  %i.iy = getelementptr i8, ptr %i.iu, i64 8      ; 2 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !8 ; 2 uses
  %i.ja = getelementptr i8, ptr %gep133.i, i64 8  ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !8 ; 2 uses
  %i.jc = fadd double %i.iz, %i.jb                ; 2 uses
  %i.jd = fsub double %i.iv, %i.iw                ; 2 uses
  %i.je = fsub double %i.iz, %i.jb                ; 2 uses
  %i.jf = fadd double %i.il, %i.ix
  store double %i.jf, ptr %i.ih, align 8, !tbaa !8
  %i.jg = fsub double %i.ir, %i.jc
  store double %i.jg, ptr %i.im, align 8, !tbaa !8
  %i.jh = fsub double %i.il, %i.ix
  store double %i.jh, ptr %i.iu, align 8, !tbaa !8
  %i.ji = fadd double %i.ir, %i.jc
  store double %i.ji, ptr %i.iy, align 8, !tbaa !8
  %i.jj = fsub double %i.is, %i.je
  store double %i.jj, ptr %i.ij, align 8, !tbaa !8
  %i.jk = fsub double %i.it, %i.jd
  store double %i.jk, ptr %i.ip, align 8, !tbaa !8
  %i.jl = fadd double %i.is, %i.je
  store double %i.jl, ptr %gep133.i, align 8, !tbaa !8
  %i.jm = fadd double %i.it, %i.jd
  store double %i.jm, ptr %i.ja, align 8, !tbaa !8
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 2 ; 2 uses
  %i.jn = icmp samesign ult i64 %indvars.iv.next129.i, %i.gj
  br i1 %i.jn, label %.lr.ph125.i, label %cftbsub.exit, !llvm.loop !34

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.preheader, %.lr.ph123.i
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20, %.lr.ph123.i ], [ %indvars.iv.i18.ph, %.lr.ph123.i.preheader ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i18 ; 3 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !8 ; 2 uses
  %gep.i19 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i17, i64 %indvars.iv.i18 ; 3 uses
  %i.jq = load double, ptr %gep.i19, align 8, !tbaa !8 ; 2 uses
  %i.jr = fsub double %i.jp, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !8 ; 2 uses
  %i.ju = getelementptr i8, ptr %gep.i19, i64 8   ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !8 ; 2 uses
  %i.jw = fsub double %i.jv, %i.jt
  %i.jx = fadd double %i.jp, %i.jq
  store double %i.jx, ptr %i.jo, align 8, !tbaa !8
  %i.jy = fneg double %i.jt
  %i.jz = fsub double %i.jy, %i.jv
  store double %i.jz, ptr %i.js, align 8, !tbaa !8
  store double %i.jr, ptr %gep.i19, align 8, !tbaa !8
  store double %i.jw, ptr %i.ju, align 8, !tbaa !8
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %i.ka = icmp samesign ult i64 %indvars.iv.next.i20, %i.fo
  br i1 %i.ka, label %.lr.ph123.i, label %cftbsub.exit, !llvm.loop !35

bb.j:                                             ; preds = %bb.a
  %i.kb = icmp eq i32 %0, 4
  br i1 %i.kb, label %bb.k, label %cftbsub.exit

bb.k:                                             ; preds = %bb.j
  %invariant.gep.i23 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kc = load <2 x double>, ptr %2, align 8, !tbaa !8 ; 2 uses
  %i.kd = load <2 x double>, ptr %invariant.gep.i23, align 8, !tbaa !8 ; 2 uses
  %i.ke = fadd <2 x double> %i.kc, %i.kd
  store <2 x double> %i.ke, ptr %2, align 8, !tbaa !8
  %i.kf = fsub <2 x double> %i.kc, %i.kd
  store <2 x double> %i.kf, ptr %invariant.gep.i23, align 8, !tbaa !8
  br label %cftbsub.exit

cftbsub.exit:                                     ; preds = %.lr.ph123.i, %.lr.ph125.i, %middle.block91, %middle.block244, %.preheader.i21, %.preheader118.i, %bb.j, %bb.k, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @errorcheck(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %.not14 = icmp sgt i32 %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = fneg double %2
  %i.b = sext i32 %0 to i64
  %i.c = add i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01216 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %.01315 = phi i32 [ 0, %.lr.ph ], [ %i.f, %bb.b ]
  %i.d = mul nuw nsw i32 %.01315, 7141
  %i.e = add nuw nsw i32 %i.d, 54773
  %i.f = urem i32 %i.e, 259200                    ; 2 uses
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = fmul double %i.i, %i.a
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double f0x3ED02E85C0898B71, double %i.j)
  %i.l = tail call double @llvm.fabs.f64(double %i.k) ; 2 uses
  %i.m = fcmp ogt double %.01216, %i.l
  %i.n = select i1 %i.m, double %.01216, double %i.l ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.012.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.n, %bb.b ]
  ret double %.012.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

end_hunk_0
begin_hunk_1_@bitrv2:bb.a
  %.not = icmp eq i64 %indvars.iv246, 0
  br i1 %.not, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv246
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %indvars.iv246.tr = trunc i64 %indvars.iv246 to i32
  %i.ae = shl i32 %indvars.iv246.tr, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph223, %bb.b
  %indvars.iv241 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next242, %bb.b ] ; 3 uses
  %i.af = shl nuw nsw i64 %indvars.iv241, 1
  %i.ag = add nsw i64 %i.af, %i.ad                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv241
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ai, %i.ae                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al ; 2 uses
  %i.an = load <2 x double>, ptr %i.ak, align 8, !tbaa !8
  %i.ao = load <2 x double>, ptr %i.am, align 8, !tbaa !8
  store <2 x double> %i.ao, ptr %i.ak, align 8, !tbaa !8
  store <2 x double> %i.an, ptr %i.am, align 8, !tbaa !8
  %i.ap = add nsw i64 %i.ag, %i.z                 ; 2 uses
  %i.aq = add nsw i32 %i.aj, %i.y                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = load <2 x double>, ptr %i.ar, align 8, !tbaa !8
  %i.av = load <2 x double>, ptr %i.at, align 8, !tbaa !8
  store <2 x double> %i.av, ptr %i.ar, align 8, !tbaa !8
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !8
  %i.aw = add nsw i64 %i.ap, %i.z                 ; 2 uses
  %i.ax = sub nsw i32 %i.aq, %i.x                 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az ; 2 uses
  %i.bb = load <2 x double>, ptr %i.ay, align 8, !tbaa !8
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !8
  store <2 x double> %i.bc, ptr %i.ay, align 8, !tbaa !8
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !8
  %i.bd = add nsw i32 %i.ax, %i.y
  %gep268 = getelementptr [8 x i8], ptr %invariant.gep267, i64 %i.aw ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bg = load <2 x double>, ptr %gep268, align 8, !tbaa !8
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !8
  store <2 x double> %i.bh, ptr %gep268, align 8, !tbaa !8
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !8
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %indvars.iv246
  br i1 %exitcond245.not, label %._crit_edge224, label %bb.b, !llvm.loop !39

._crit_edge224:                                   ; preds = %bb.b, %.preheader
  %i.bi = phi i32 [ 0, %.preheader ], [ %i.ac, %bb.b ]
  %i.bj = trunc i64 %indvars.iv246 to i32
  %i.bk = add i32 %.0203.lcssa258261, %i.bj
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add nsw i32 %i.bi, %i.bl                ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bo ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bp, align 8, !tbaa !8
  %i.bt = load <2 x double>, ptr %i.br, align 8, !tbaa !8
  store <2 x double> %i.bt, ptr %i.bp, align 8, !tbaa !8
  store <2 x double> %i.bs, ptr %i.br, align 8, !tbaa !8
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %i.aa
  br i1 %exitcond250.not, label %.loopexit, label %.preheader, !llvm.loop !40

.preheader209:                                    ; preds = %.preheader209.preheader, %bb.d
  %indvars.iv236 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next237, %bb.d ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv236
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sext i32 %i.bv to i64
  %indvars.iv236.tr = trunc i64 %indvars.iv236 to i32
  %i.bx = shl i32 %indvars.iv236.tr, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader209, %bb.c
  %indvars.iv231 = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next232, %bb.c ] ; 3 uses
  %i.by = shl nuw nsw i64 %indvars.iv231, 1
  %i.bz = add nsw i64 %i.by, %i.bw                ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = add nsw i32 %i.cb, %i.bx                ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ce ; 2 uses
  %i.cg = load <2 x double>, ptr %i.cd, align 8, !tbaa !8
  %i.ch = load <2 x double>, ptr %i.cf, align 8, !tbaa !8
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !8
  store <2 x double> %i.cg, ptr %i.cf, align 8, !tbaa !8
  %i.ci = add nsw i32 %i.cc, %i.r
  %gep266 = getelementptr [8 x i8], ptr %invariant.gep265, i64 %i.bz ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cj ; 2 uses
  %i.cl = load <2 x double>, ptr %gep266, align 8, !tbaa !8
  %i.cm = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  store <2 x double> %i.cm, ptr %gep266, align 8, !tbaa !8
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !8
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %indvars.iv236
  br i1 %exitcond235.not, label %bb.d, label %bb.c, !llvm.loop !41

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.preheader209, !llvm.loop !42

.loopexit:                                        ; preds = %bb.d, %._crit_edge224, %._crit_edge217.thread, %.preheader210, %.preheader208
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cftfsub(i32 noundef range(i32 4, -2147483648) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 8
  br i1 %i.a, label %bb.b, label %.loopexit118

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @cft1st(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = icmp samesign ugt i32 %0, 32
  br i1 %i.b, label %.lr.ph, label %.loopexit118

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.c = phi i32 [ %i.d, %.lr.ph ], [ 32, %bb.b ] ; 3 uses
  %.0112119 = phi i32 [ %i.c, %.lr.ph ], [ 8, %bb.b ]
  tail call fastcc void @cftmdl(i32 noundef %0, i32 noundef %.0112119, ptr noundef %1, ptr noundef %2)
  %i.d = shl i32 %i.c, 2                          ; 2 uses
  %i.e = icmp slt i32 %i.d, %0
  br i1 %i.e, label %.lr.ph, label %.loopexit118, !llvm.loop !43

.loopexit118:                                     ; preds = %.lr.ph, %bb.b, %bb.a
  %.1113 = phi i32 [ 2, %bb.a ], [ 8, %bb.b ], [ %i.c, %.lr.ph ] ; 6 uses
  %i.f = shl i32 %.1113, 2
  %i.g = icmp eq i32 %i.f, %0
  %i.h = icmp sgt i32 %.1113, 0                   ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader116

.preheader116:                                    ; preds = %.loopexit118
  br i1 %i.h, label %.lr.ph121.preheader, label %.loopexit

.lr.ph121.preheader:                              ; preds = %.preheader116
  %i.i = zext nneg i32 %.1113 to i64
  %i.j = zext nneg i32 %.1113 to i64              ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i ; 5 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %min.iters.check = icmp ult i64 %i.k, 38
  br i1 %min.iters.check, label %.lr.ph121.preheader311, label %vector.memcheck

.lr.ph121.preheader311:                           ; preds = %vector.memcheck, %.lr.ph121.preheader
  br label %.lr.ph121

vector.memcheck:                                  ; preds = %.lr.ph121.preheader
  %i.m = shl nuw nsw i64 %i.j, 3                  ; 3 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 -8   ; 3 uses
  %scevgep133 = getelementptr i8, ptr %1, i64 8   ; 3 uses
  %scevgep134 = getelementptr i8, ptr %1, i64 %i.m ; 3 uses
  %i.o = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep135 = getelementptr i8, ptr %i.q, i64 -8 ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.o
  %scevgep136 = getelementptr i8, ptr %i.r, i64 8 ; 3 uses
  %i.s = shl nuw nsw i64 %i.j, 4
  %scevgep137 = getelementptr i8, ptr %1, i64 %i.s ; 3 uses
  %bound0 = icmp ult ptr %1, %scevgep134
  %bound1 = icmp ult ptr %scevgep133, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0138 = icmp ult ptr %1, %scevgep135
  %bound1139 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx = or i1 %found.conflict, %found.conflict140
  %bound0141 = icmp ult ptr %1, %scevgep137
  %bound1142 = icmp ult ptr %scevgep136, %scevgep
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx, %found.conflict143
  %bound0145 = icmp ult ptr %scevgep133, %scevgep135
  %bound1146 = icmp ult ptr %invariant.gep, %scevgep134
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %scevgep133, %scevgep137
  %bound1150 = icmp ult ptr %scevgep136, %scevgep134
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %invariant.gep, %scevgep137
  %bound1154 = icmp ult ptr %scevgep136, %scevgep135
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph121.preheader311, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.t = shl nuw i64 %index, 1                    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 2 uses
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.w = fsub <2 x double> %wide.load, %wide.load158
  %i.x = fadd <2 x double> %wide.load, %wide.load158
  store <2 x double> %i.x, ptr %i.u, align 8, !tbaa !8
  store <2 x double> %i.w, ptr %i.v, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 1
  %i.y = icmp eq i64 %index, %i.l
  br i1 %i.y, label %.loopexit, label %vector.body, !llvm.loop !44

.preheader:                                       ; preds = %.loopexit118
  br i1 %i.h, label %.lr.ph123.preheader, label %.loopexit

.lr.ph123.preheader:                              ; preds = %.preheader
  %i.z = zext nneg i32 %.1113 to i64              ; 5 uses
  %i.aa = zext nneg i32 %.1113 to i64             ; 9 uses
  %invariant.gep130 = getelementptr [8 x i8], ptr %1, i64 %i.z ; 9 uses
  %i.ab = add nsw i64 %i.aa, -2                   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.ab, 50
  br i1 %min.iters.check287, label %.lr.ph123.preheader310, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph123.preheader
  %i.ae = shl nuw nsw i64 %i.aa, 3                ; 3 uses
  %i.af = add nsw i64 %i.ae, -16                  ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep161 = getelementptr i8, ptr %i.ag, i64 -8 ; 7 uses
  %scevgep162 = getelementptr i8, ptr %1, i64 8   ; 7 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.ae ; 7 uses
  %i.ah = shl nuw nsw i64 %i.aa, 4                ; 3 uses
  %scevgep164 = getelementptr i8, ptr %1, i64 %i.ah ; 7 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep165 = getelementptr i8, ptr %i.aj, i64 8 ; 7 uses
  %i.ak = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep166 = getelementptr i8, ptr %i.ak, i64 8 ; 7 uses
  %i.al = mul nuw nsw i64 %i.aa, 24
  %scevgep167 = getelementptr i8, ptr %1, i64 %i.al ; 7 uses
  %i.am = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.af
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep168 = getelementptr i8, ptr %i.ao, i64 8 ; 7 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %scevgep169 = getelementptr i8, ptr %i.ap, i64 8 ; 7 uses
  %i.aq = shl nuw nsw i64 %i.aa, 4
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.aq ; 7 uses
  %i.ar = mul nuw nsw i64 %i.aa, 24               ; 3 uses
  %scevgep171 = getelementptr i8, ptr %1, i64 %i.ar ; 7 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.af
  %scevgep172 = getelementptr i8, ptr %i.at, i64 8 ; 7 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep173 = getelementptr i8, ptr %i.au, i64 8 ; 7 uses
  %i.av = shl nuw nsw i64 %i.aa, 5
  %scevgep174 = getelementptr i8, ptr %1, i64 %i.av ; 7 uses
  %bound0175 = icmp ult ptr %1, %scevgep163
  %bound1176 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %1, %scevgep165
  %bound1179 = icmp ult ptr %scevgep164, %scevgep161
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %bound0182 = icmp ult ptr %1, %scevgep167
  %bound1183 = icmp ult ptr %scevgep166, %scevgep161
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %1, %scevgep168
  %bound1187 = icmp ult ptr %invariant.gep130, %scevgep161
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %1, %scevgep170
  %bound1191 = icmp ult ptr %scevgep169, %scevgep161
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %1, %scevgep172
  %bound1195 = icmp ult ptr %scevgep171, %scevgep161
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %1, %scevgep174
  %bound1199 = icmp ult ptr %scevgep173, %scevgep161
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %scevgep162, %scevgep165
  %bound1203 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %scevgep162, %scevgep167
  %bound1207 = icmp ult ptr %scevgep166, %scevgep163
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %scevgep162, %scevgep168
  %bound1211 = icmp ult ptr %invariant.gep130, %scevgep163
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %scevgep162, %scevgep170
  %bound1215 = icmp ult ptr %scevgep169, %scevgep163
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %scevgep162, %scevgep172
  %bound1219 = icmp ult ptr %scevgep171, %scevgep163
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %scevgep162, %scevgep174
  %bound1223 = icmp ult ptr %scevgep173, %scevgep163
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %scevgep164, %scevgep167
  %bound1227 = icmp ult ptr %scevgep166, %scevgep165
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %scevgep164, %scevgep168
  %bound1231 = icmp ult ptr %invariant.gep130, %scevgep165
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %scevgep164, %scevgep170
  %bound1235 = icmp ult ptr %scevgep169, %scevgep165
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %scevgep164, %scevgep172
  %bound1239 = icmp ult ptr %scevgep171, %scevgep165
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %scevgep164, %scevgep174
  %bound1243 = icmp ult ptr %scevgep173, %scevgep165
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %scevgep166, %scevgep168
  %bound1247 = icmp ult ptr %invariant.gep130, %scevgep167
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %scevgep166, %scevgep170
  %bound1251 = icmp ult ptr %scevgep169, %scevgep167
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %scevgep166, %scevgep172
  %bound1255 = icmp ult ptr %scevgep171, %scevgep167
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %scevgep166, %scevgep174
  %bound1259 = icmp ult ptr %scevgep173, %scevgep167
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %invariant.gep130, %scevgep170
  %bound1263 = icmp ult ptr %scevgep169, %scevgep168
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %invariant.gep130, %scevgep172
  %bound1267 = icmp ult ptr %scevgep171, %scevgep168
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %invariant.gep130, %scevgep174
  %bound1271 = icmp ult ptr %scevgep173, %scevgep168
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %scevgep169, %scevgep172
  %bound1275 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %scevgep169, %scevgep174
  %bound1279 = icmp ult ptr %scevgep173, %scevgep170
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %scevgep171, %scevgep174
  %bound1283 = icmp ult ptr %scevgep173, %scevgep172
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  br i1 %conflict.rdx285, label %.lr.ph123.preheader310, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck160
  %n.vec290 = and i64 %i.ad, -2                   ; 3 uses
  %i.aw = shl i64 %n.vec290, 1
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next306, %vector.body291 ] ; 2 uses
  %i.ax = shl nuw i64 %index292, 1                ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, %i.z             ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.z             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.ba, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec293 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay ; 2 uses
  %wide.vec294 = load <4 x double>, ptr %i.bb, align 8, !tbaa !8 ; 2 uses
  %strided.vec295 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bc = fadd <2 x double> %strided.vec, %strided.vec295 ; 2 uses
  %i.bd = fadd <2 x double> %strided.vec293, %strided.vec296 ; 2 uses
  %i.be = fsub <2 x double> %strided.vec, %strided.vec295 ; 2 uses
  %i.bf = fsub <2 x double> %strided.vec293, %strided.vec296 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az ; 2 uses
  %wide.vec297 = load <4 x double>, ptr %i.bg, align 8, !tbaa !8 ; 2 uses
  %strided.vec298 = shufflevector <4 x double> %wide.vec297, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec299 = shufflevector <4 x double> %wide.vec297, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep130, i64 %i.az ; 2 uses
  %wide.vec300 = load <4 x double>, ptr %i.bh, align 8, !tbaa !8 ; 2 uses
  %strided.vec301 = shufflevector <4 x double> %wide.vec300, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec302 = shufflevector <4 x double> %wide.vec300, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fadd <2 x double> %strided.vec298, %strided.vec301 ; 2 uses
  %i.bj = fadd <2 x double> %strided.vec299, %strided.vec302 ; 2 uses
  %i.bk = fsub <2 x double> %strided.vec298, %strided.vec301 ; 2 uses
  %i.bl = fsub <2 x double> %strided.vec299, %strided.vec302 ; 2 uses
  %i.bm = fadd <2 x double> %i.bc, %i.bi
  %i.bn = fadd <2 x double> %i.bd, %i.bj
  %interleaved.vec = shufflevector <2 x double> %i.bm, <2 x double> %i.bn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !8
  %i.bo = fsub <2 x double> %i.bc, %i.bi
  %i.bp = fsub <2 x double> %i.bd, %i.bj
  %interleaved.vec303 = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec303, ptr %i.bg, align 8, !tbaa !8
  %i.bq = fsub <2 x double> %i.be, %i.bl
  %i.br = fadd <2 x double> %i.bf, %i.bk
  %interleaved.vec304 = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec304, ptr %i.bb, align 8, !tbaa !8
  %i.bs = fadd <2 x double> %i.be, %i.bl
  %i.bt = fsub <2 x double> %i.bf, %i.bk
  %interleaved.vec305 = shufflevector <2 x double> %i.bs, <2 x double> %i.bt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec305, ptr %i.bh, align 8, !tbaa !8
  %index.next306 = add nuw i64 %index292, 2       ; 2 uses
  %i.bu = icmp eq i64 %index.next306, %n.vec290
  br i1 %i.bu, label %middle.block307, label %vector.body291, !llvm.loop !45

middle.block307:                                  ; preds = %vector.body291
  %cmp.n308 = icmp eq i64 %i.ad, %n.vec290
  br i1 %cmp.n308, label %.loopexit, label %.lr.ph123.preheader310

.lr.ph123.preheader310:                           ; preds = %vector.memcheck160, %.lr.ph123.preheader, %middle.block307
  %indvars.iv126.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.lr.ph123.preheader ], [ %i.aw, %middle.block307 ]
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader310, %.lr.ph123
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.lr.ph123 ], [ %indvars.iv126.ph, %.lr.ph123.preheader310 ] ; 3 uses
  %i.bv = add nuw nsw i64 %indvars.iv126, %i.z    ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, %i.z             ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv126 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw ; 2 uses
  %gep131 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep130, i64 %i.bw ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bx, align 8, !tbaa !8 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.by, align 8, !tbaa !8 ; 2 uses
  %i.cc = fsub <2 x double> %i.ca, %i.cb          ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bz, align 8, !tbaa !8 ; 2 uses
  %i.ce = load <2 x double>, ptr %gep131, align 8, !tbaa !8 ; 2 uses
  %i.cf = fsub <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ch = fadd <2 x double> %i.ca, %i.cb          ; 2 uses
  %i.ci = fadd <2 x double> %i.cd, %i.ce          ; 2 uses
  %i.cj = fadd <2 x double> %i.ch, %i.ci
  store <2 x double> %i.cj, ptr %i.bx, align 8, !tbaa !8
  %i.ck = fsub <2 x double> %i.ch, %i.ci
  store <2 x double> %i.ck, ptr %i.bz, align 8, !tbaa !8
  %i.cl = fsub <2 x double> %i.cc, %i.cg          ; 2 uses
  %i.cm = fadd <2 x double> %i.cc, %i.cg          ; 2 uses
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cn, ptr %i.by, align 8, !tbaa !8
  %i.co = shufflevector <2 x double> %i.cm, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.co, ptr %gep131, align 8, !tbaa !8
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %i.cp = icmp samesign ult i64 %indvars.iv.next127, %i.aa
  br i1 %i.cp, label %.lr.ph123, label %.loopexit, !llvm.loop !46

.lr.ph121:                                        ; preds = %.lr.ph121.preheader311, %.lr.ph121
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph121 ], [ 0, %.lr.ph121.preheader311 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !8 ; 2 uses
  %i.cs = load <2 x double>, ptr %gep, align 8, !tbaa !8 ; 2 uses
  %i.ct = fadd <2 x double> %i.cr, %i.cs
  store <2 x double> %i.ct, ptr %i.cq, align 8, !tbaa !8
  %i.cu = fsub <2 x double> %i.cr, %i.cs
  store <2 x double> %i.cu, ptr %gep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.cv, label %.lr.ph121, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %vector.body, %.lr.ph121, %.lr.ph123, %middle.block307, %.preheader116, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cft1st(i32 noundef range(i32 9, -2147483648) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %1, align 8, !tbaa !8
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !8
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.l, align 8, !tbaa !8
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.q, align 8, !tbaa !8
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.b, align 8, !tbaa !8
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.g, align 8, !tbaa !8
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !8
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8 ; 2 uses
  %i.al = fadd double %i.ai, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8 ; 2 uses
  %i.aq = fadd double %i.an, %i.ap                ; 2 uses
  %i.ar = fsub double %i.ai, %i.ak                ; 2 uses
  %i.as = fsub double %i.an, %i.ap                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8 ; 2 uses
  %i.ax = fadd double %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8 ; 2 uses
  %i.bc = fadd double %i.az, %i.bb                ; 2 uses
  %i.bd = fsub double %i.au, %i.aw                ; 2 uses
  %i.be = fsub double %i.az, %i.bb                ; 2 uses
  %i.bf = fadd double %i.al, %i.ax
  store double %i.bf, ptr %i.ah, align 8, !tbaa !8
  %i.bg = fadd double %i.aq, %i.bc
  store double %i.bg, ptr %i.am, align 8, !tbaa !8
  %i.bh = fsub double %i.bc, %i.aq
  store double %i.bh, ptr %i.at, align 8, !tbaa !8
  %i.bi = fsub double %i.al, %i.ax
  store double %i.bi, ptr %i.ay, align 8, !tbaa !8
  %i.bj = fsub double %i.ar, %i.be                ; 2 uses
  %i.bk = fadd double %i.as, %i.bd                ; 2 uses
  %i.bl = fsub double %i.bj, %i.bk
  %i.bm = fmul double %i.ag, %i.bl
  store double %i.bm, ptr %i.aj, align 8, !tbaa !8
  %i.bn = fadd double %i.bk, %i.bj
  %i.bo = fmul double %i.ag, %i.bn
  store double %i.bo, ptr %i.ao, align 8, !tbaa !8
  %i.bp = fadd double %i.ar, %i.be                ; 2 uses
  %i.bq = fsub double %i.bd, %i.as                ; 2 uses
  %i.br = fsub double %i.bq, %i.bp
  %i.bs = fmul double %i.ag, %i.br
  store double %i.bs, ptr %i.av, align 8, !tbaa !8
  %i.bt = fadd double %i.bq, %i.bp
  %i.bu = fmul double %i.ag, %i.bt
  store double %i.bu, ptr %i.ba, align 8, !tbaa !8
  %i.bv = icmp samesign ugt i32 %0, 16
  br i1 %i.bv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.bw = zext nneg i32 %0 to i64                 ; 3 uses
  %i.bx = add nsw i64 %i.bw, -17
  %i.by = lshr i64 %i.bx, 4                       ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 1                ; 3 uses
  %min.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.iters.check, label %.lr.ph.preheader315, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %1, i64 128    ; 2 uses
  %i.ca = add nsw i64 %i.bw, -17                  ; 2 uses
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %i.cc = shl i64 %i.cb, 7
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %scevgep305 = getelementptr i8, ptr %i.cd, i64 256 ; 2 uses
  %scevgep306 = getelementptr i8, ptr %2, i64 32
  %i.ce = shl i64 %i.cb, 5
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %scevgep307 = getelementptr i8, ptr %i.cf, i64 64
  %scevgep308 = getelementptr i8, ptr %2, i64 16
  %i.cg = and i64 %i.ca, -16
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep309 = getelementptr i8, ptr %i.ch, i64 32
  %bound0 = icmp ult ptr %scevgep, %scevgep307
  %bound1 = icmp ult ptr %scevgep306, %scevgep305
  %found.conflict = and i1 %bound0, %bound1
  %bound0310 = icmp ult ptr %scevgep, %scevgep309
  %bound1311 = icmp ult ptr %scevgep308, %scevgep305
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx = or i1 %found.conflict, %found.conflict312
  br i1 %conflict.rdx, label %.lr.ph.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 2305843009213693950     ; 3 uses
  %i.ci = shl nuw nsw i64 %n.vec, 1
  %i.cj = shl i64 %i.bz, 4
  %i.ck = or i64 %i.cj, 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cl = shl nuw i64 %index, 1
  %i.cm = shl nuw i64 %index, 4                   ; 2 uses
  %i.cn = or disjoint i64 %i.cl, 2                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cn
  %wide.vec = load <4 x double>, ptr %i.co, align 8, !tbaa !8, !alias.scope !48 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 5 uses
  %strided.vec313 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.cp = shl nuw nsw i64 %i.cn, 4
  %i.cq = shl i64 %index, 5
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 4 uses
  %i.cs = getelementptr i8, ptr %2, i64 %i.cq     ; 4 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 64
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !8, !alias.scope !51
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !8, !alias.scope !51
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cz = getelementptr i8, ptr %i.cs, i64 72
  %i.da = load double, ptr %i.cy, align 8, !tbaa !8, !alias.scope !51
  %i.db = load double, ptr %i.cz, align 8, !tbaa !8, !alias.scope !51
  %i.dc = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1 ; 4 uses
  %i.de = fmul <2 x double> %strided.vec313, splat (double 2.000000e+00) ; 2 uses
  %i.df = fneg <2 x double> %i.de
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dd, <2 x double> %i.cx) ; 2 uses
  %i.dh = fneg <2 x double> %i.dd
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.cx, <2 x double> %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cm ; 16 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 128 ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %1, i64 %i.cm ; 16 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 256
  %i.dn = load double, ptr %i.dk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.do = load double, ptr %i.dm, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 144 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dl, i64 272
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.du = load double, ptr %i.ds, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.dv = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1 ; 2 uses
  %i.dx = fadd <2 x double> %i.dq, %i.dw          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 136 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dl, i64 264    ; 2 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.eb = load double, ptr %i.dz, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ec = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.eb, i64 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 152 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dl, i64 280    ; 2 uses
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eh, i64 1 ; 2 uses
  %i.ek = fadd <2 x double> %i.ed, %i.ej          ; 2 uses
  %i.el = fsub <2 x double> %i.dq, %i.dw          ; 2 uses
  %i.em = fsub <2 x double> %i.ed, %i.ej          ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 160 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dl, i64 288
  %i.ep = load double, ptr %i.en, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.er = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dj, i64 176 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dl, i64 304
  %i.ev = load double, ptr %i.et, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1 ; 2 uses
  %i.ez = fadd <2 x double> %i.es, %i.ey          ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 168 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.dl, i64 296    ; 2 uses
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dj, i64 184 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.dl, i64 312    ; 2 uses
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1 ; 2 uses
  %i.fm = fadd <2 x double> %i.ff, %i.fl          ; 2 uses
  %i.fn = fsub <2 x double> %i.es, %i.ey          ; 2 uses
  %i.fo = fsub <2 x double> %i.ff, %i.fl          ; 2 uses
  %i.fp = fadd <2 x double> %i.dx, %i.ez          ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0
  store double %i.fq, ptr %i.dk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fr = fadd <2 x double> %i.ek, %i.fm          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  store double %i.fs, ptr %i.dy, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ft = fsub <2 x double> %i.dx, %i.ez          ; 2 uses
  %i.fu = fsub <2 x double> %i.ek, %i.fm          ; 2 uses
  %i.fv = fneg <2 x double> %i.fu
  %i.fw = fmul <2 x double> %strided.vec313, %i.fv
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.ft, <2 x double> %i.fw) ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  store double %i.fy, ptr %i.en, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fz = fmul <2 x double> %strided.vec313, %i.ft
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.fu, <2 x double> %i.fz) ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  store double %i.gb, ptr %i.fa, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gc = fsub <2 x double> %i.el, %i.fo          ; 2 uses
  %i.gd = fadd <2 x double> %i.em, %i.fn          ; 2 uses
  %i.ge = fneg <2 x double> %i.gd
  %i.gf = fmul <2 x double> %i.dd, %i.ge
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.gc, <2 x double> %i.gf) ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  store double %i.gh, ptr %i.dr, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gi = shufflevector <2 x double> %i.fr, <2 x double> %i.gg, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gi, ptr %i.dz, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gj = fmul <2 x double> %i.dd, %i.gc
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.gd, <2 x double> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  store double %i.gl, ptr %i.ee, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gm = shufflevector <2 x double> %i.gk, <2 x double> %i.fx, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gm, ptr %i.ef, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gn = fadd <2 x double> %i.el, %i.fo          ; 2 uses
  %i.go = fsub <2 x double> %i.em, %i.fn          ; 2 uses
  %i.gp = fneg <2 x double> %i.go
  %i.gq = fmul <2 x double> %i.di, %i.gp
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.gn, <2 x double> %i.gq) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  store double %i.gs, ptr %i.et, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gt = shufflevector <2 x double> %i.ga, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gt, ptr %i.fb, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gu = fmul <2 x double> %i.di, %i.gn
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.go, <2 x double> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  store double %i.gw, ptr %i.fg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.gy = getelementptr i8, ptr %i.cs, i64 80
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !8, !alias.scope !51
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !8, !alias.scope !51
  %i.hb = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.he = getelementptr i8, ptr %i.cs, i64 88
  %i.hf = load double, ptr %i.hd, align 8, !tbaa !8, !alias.scope !51
  %i.hg = load double, ptr %i.he, align 8, !tbaa !8, !alias.scope !51
  %i.hh = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hg, i64 1 ; 4 uses
  %i.hj = fmul <2 x double> %strided.vec, splat (double 2.000000e+00) ; 2 uses
  %i.hk = fneg <2 x double> %i.hj
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hi, <2 x double> %i.hc) ; 2 uses
  %i.hm = fneg <2 x double> %i.hi
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.hc, <2 x double> %i.hm) ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dj, i64 192 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.dl, i64 320
  %i.hq = load double, ptr %i.ho, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hr = load double, ptr %i.hp, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dj, i64 208 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.dl, i64 336
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hx = load double, ptr %i.hv, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hy = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1 ; 2 uses
  %i.ia = fadd <2 x double> %i.ht, %i.hz          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dj, i64 200 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.dl, i64 328    ; 2 uses
  %i.id = load double, ptr %i.ib, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.if = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.ie, i64 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dj, i64 216 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.dl, i64 344    ; 2 uses
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.il = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1 ; 2 uses
  %i.in = fadd <2 x double> %i.ig, %i.im          ; 2 uses
  %i.io = fsub <2 x double> %i.ht, %i.hz          ; 2 uses
  %i.ip = fsub <2 x double> %i.ig, %i.im          ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dj, i64 224 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.dl, i64 352
  %i.is = load double, ptr %i.iq, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.it = load double, ptr %i.ir, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.iu = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.it, i64 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dj, i64 240 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.dl, i64 368
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.iz = load double, ptr %i.ix, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ja = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iz, i64 1 ; 2 uses
  %i.jc = fadd <2 x double> %i.iv, %i.jb          ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dj, i64 232 ; 2 uses
  %i.je = getelementptr i8, ptr %i.dl, i64 360    ; 2 uses
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jg = load double, ptr %i.je, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jh = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jg, i64 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dj, i64 248 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.dl, i64 376    ; 2 uses
  %i.jl = load double, ptr %i.jj, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jm = load double, ptr %i.jk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jn = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %i.jm, i64 1 ; 2 uses
  %i.jp = fadd <2 x double> %i.ji, %i.jo          ; 2 uses
  %i.jq = fsub <2 x double> %i.iv, %i.jb          ; 2 uses
end_hunk_1
begin_hunk_2_@cft1st:bb.a
  %i.oi = fsub <2 x double> %i.nv, %i.nw
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ok = fsub <2 x double> %i.oh, %i.oj          ; 3 uses
  %i.ol = fadd <2 x double> %i.oh, %i.oj          ; 3 uses
  %i.om = shufflevector <2 x double> %i.ok, <2 x double> %i.ol, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.on = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oo = fneg <2 x double> %i.om
  %i.op = shufflevector <2 x double> %i.oo, <2 x double> %i.ok, <2 x i32> <i32 1, i32 2>
  %i.oq = fmul <2 x double> %i.on, %i.op
  %i.or = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.om, <2 x double> %i.oq)
  store <2 x double> %i.os, ptr %i.np, align 8, !tbaa !8
  %i.ot = shufflevector <2 x double> %i.ol, <2 x double> %i.ok, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ou = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fneg <2 x double> %i.ot
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> %i.ol, <2 x i32> <i32 1, i32 2>
  %i.ox = fmul <2 x double> %i.ou, %i.ow
  %i.oy = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.ot, <2 x double> %i.ox)
  store <2 x double> %i.oz, ptr %i.nr, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.pa = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.pa, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cftmdl(i32 noundef range(i32 9, -2147483648) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 3 uses
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 5 uses
  %i.d = zext nneg i32 %1 to i64                  ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.c ; 9 uses
  %i.e = add nsw i64 %i.d, -1
  %i.f = lshr i64 %i.e, 1
  %i.g = add nuw i64 %i.f, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %1, 51
  br i1 %min.iters.check, label %.lr.ph.preheader1109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl nuw nsw i64 %i.d, 3
  %i.i = add nsw i64 %i.h, -8                     ; 2 uses
  %i.j = and i64 %i.i, -16                        ; 4 uses
  %i.k = or i64 %i.i, 8
  %scevgep = getelementptr i8, ptr %2, i64 %i.k   ; 7 uses
  %scevgep444 = getelementptr i8, ptr %2, i64 8   ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %scevgep445 = getelementptr i8, ptr %i.l, i64 16 ; 7 uses
  %i.m = shl nuw nsw i64 %i.d, 4                  ; 3 uses
  %scevgep446 = getelementptr i8, ptr %2, i64 %i.m ; 7 uses
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %scevgep447 = getelementptr i8, ptr %i.o, i64 8 ; 7 uses
  %i.p = getelementptr i8, ptr %2, i64 %i.m
  %scevgep448 = getelementptr i8, ptr %i.p, i64 8 ; 7 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.n
  %scevgep449 = getelementptr i8, ptr %i.q, i64 16 ; 7 uses
  %i.r = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.s = add nsw i64 %i.j, %i.r                   ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %scevgep450 = getelementptr i8, ptr %i.t, i64 8 ; 7 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.r
  %scevgep451 = getelementptr i8, ptr %i.u, i64 8 ; 7 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.s
  %scevgep452 = getelementptr i8, ptr %i.v, i64 16 ; 7 uses
  %i.w = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %scevgep453 = getelementptr i8, ptr %2, i64 %i.w ; 7 uses
  %i.x = add nsw i64 %i.w, %i.j                   ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %scevgep454 = getelementptr i8, ptr %i.y, i64 8 ; 7 uses
  %i.z = getelementptr i8, ptr %2, i64 %i.w
  %scevgep455 = getelementptr i8, ptr %i.z, i64 8 ; 7 uses
  %i.aa = getelementptr i8, ptr %2, i64 %i.x
  %scevgep456 = getelementptr i8, ptr %i.aa, i64 16 ; 7 uses
  %bound0 = icmp ult ptr %2, %scevgep445
  %bound1 = icmp ult ptr %scevgep444, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0457 = icmp ult ptr %2, %scevgep447
  %bound1458 = icmp ult ptr %scevgep446, %scevgep
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx = or i1 %found.conflict, %found.conflict459
  %bound0460 = icmp ult ptr %2, %scevgep449
  %bound1461 = icmp ult ptr %scevgep448, %scevgep
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx, %found.conflict462
  %bound0464 = icmp ult ptr %2, %scevgep450
  %bound1465 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  %bound0468 = icmp ult ptr %2, %scevgep452
  %bound1469 = icmp ult ptr %scevgep451, %scevgep
  %found.conflict470 = and i1 %bound0468, %bound1469
  %conflict.rdx471 = or i1 %conflict.rdx467, %found.conflict470
  %bound0472 = icmp ult ptr %2, %scevgep454
  %bound1473 = icmp ult ptr %scevgep453, %scevgep
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx471, %found.conflict474
  %bound0476 = icmp ult ptr %2, %scevgep456
  %bound1477 = icmp ult ptr %scevgep455, %scevgep
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  %bound0480 = icmp ult ptr %scevgep444, %scevgep447
  %bound1481 = icmp ult ptr %scevgep446, %scevgep445
  %found.conflict482 = and i1 %bound0480, %bound1481
  %conflict.rdx483 = or i1 %conflict.rdx479, %found.conflict482
  %bound0484 = icmp ult ptr %scevgep444, %scevgep449
  %bound1485 = icmp ult ptr %scevgep448, %scevgep445
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx483, %found.conflict486
  %bound0488 = icmp ult ptr %scevgep444, %scevgep450
  %bound1489 = icmp ult ptr %invariant.gep, %scevgep445
  %found.conflict490 = and i1 %bound0488, %bound1489
  %conflict.rdx491 = or i1 %conflict.rdx487, %found.conflict490
  %bound0492 = icmp ult ptr %scevgep444, %scevgep452
  %bound1493 = icmp ult ptr %scevgep451, %scevgep445
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx495 = or i1 %conflict.rdx491, %found.conflict494
  %bound0496 = icmp ult ptr %scevgep444, %scevgep454
  %bound1497 = icmp ult ptr %scevgep453, %scevgep445
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx495, %found.conflict498
  %bound0500 = icmp ult ptr %scevgep444, %scevgep456
  %bound1501 = icmp ult ptr %scevgep455, %scevgep445
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %scevgep446, %scevgep449
  %bound1505 = icmp ult ptr %scevgep448, %scevgep447
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  %bound0508 = icmp ult ptr %scevgep446, %scevgep450
  %bound1509 = icmp ult ptr %invariant.gep, %scevgep447
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %scevgep446, %scevgep452
  %bound1513 = icmp ult ptr %scevgep451, %scevgep447
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %scevgep446, %scevgep454
  %bound1517 = icmp ult ptr %scevgep453, %scevgep447
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %scevgep446, %scevgep456
  %bound1521 = icmp ult ptr %scevgep455, %scevgep447
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %scevgep448, %scevgep450
  %bound1525 = icmp ult ptr %invariant.gep, %scevgep449
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %scevgep448, %scevgep452
  %bound1529 = icmp ult ptr %scevgep451, %scevgep449
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  %bound0532 = icmp ult ptr %scevgep448, %scevgep454
  %bound1533 = icmp ult ptr %scevgep453, %scevgep449
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  %bound0536 = icmp ult ptr %scevgep448, %scevgep456
  %bound1537 = icmp ult ptr %scevgep455, %scevgep449
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %conflict.rdx535, %found.conflict538
  %bound0540 = icmp ult ptr %invariant.gep, %scevgep452
  %bound1541 = icmp ult ptr %scevgep451, %scevgep450
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx543 = or i1 %conflict.rdx539, %found.conflict542
  %bound0544 = icmp ult ptr %invariant.gep, %scevgep454
  %bound1545 = icmp ult ptr %scevgep453, %scevgep450
  %found.conflict546 = and i1 %bound0544, %bound1545
  %conflict.rdx547 = or i1 %conflict.rdx543, %found.conflict546
  %bound0548 = icmp ult ptr %invariant.gep, %scevgep456
  %bound1549 = icmp ult ptr %scevgep455, %scevgep450
  %found.conflict550 = and i1 %bound0548, %bound1549
  %conflict.rdx551 = or i1 %conflict.rdx547, %found.conflict550
  %bound0552 = icmp ult ptr %scevgep451, %scevgep454
  %bound1553 = icmp ult ptr %scevgep453, %scevgep452
  %found.conflict554 = and i1 %bound0552, %bound1553
  %conflict.rdx555 = or i1 %conflict.rdx551, %found.conflict554
  %bound0556 = icmp ult ptr %scevgep451, %scevgep456
  %bound1557 = icmp ult ptr %scevgep455, %scevgep452
  %found.conflict558 = and i1 %bound0556, %bound1557
  %conflict.rdx559 = or i1 %conflict.rdx555, %found.conflict558
  %bound0560 = icmp ult ptr %scevgep453, %scevgep456
  %bound1561 = icmp ult ptr %scevgep455, %scevgep454
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %conflict.rdx559, %found.conflict562
  br i1 %conflict.rdx563, label %.lr.ph.preheader1109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -2                       ; 3 uses
  %i.ab = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl nuw i64 %index, 1                   ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, %i.c             ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %i.c             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.af, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec564 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  %wide.vec565 = load <4 x double>, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %strided.vec566 = shufflevector <4 x double> %wide.vec565, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec567 = shufflevector <4 x double> %wide.vec565, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ah = fadd <2 x double> %strided.vec, %strided.vec566 ; 2 uses
  %i.ai = fadd <2 x double> %strided.vec564, %strided.vec567 ; 2 uses
  %i.aj = fsub <2 x double> %strided.vec, %strided.vec566 ; 2 uses
  %i.ak = fsub <2 x double> %strided.vec564, %strided.vec567 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae ; 2 uses
  %wide.vec568 = load <4 x double>, ptr %i.al, align 8, !tbaa !8 ; 2 uses
  %strided.vec569 = shufflevector <4 x double> %wide.vec568, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec570 = shufflevector <4 x double> %wide.vec568, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ae ; 2 uses
  %wide.vec571 = load <4 x double>, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %strided.vec572 = shufflevector <4 x double> %wide.vec571, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec573 = shufflevector <4 x double> %wide.vec571, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.an = fadd <2 x double> %strided.vec569, %strided.vec572 ; 2 uses
  %i.ao = fadd <2 x double> %strided.vec570, %strided.vec573 ; 2 uses
  %i.ap = fsub <2 x double> %strided.vec569, %strided.vec572 ; 2 uses
  %i.aq = fsub <2 x double> %strided.vec570, %strided.vec573 ; 2 uses
  %i.ar = fadd <2 x double> %i.ah, %i.an
  %i.as = fadd <2 x double> %i.ai, %i.ao
  %interleaved.vec = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.af, align 8, !tbaa !8
  %i.at = fsub <2 x double> %i.ah, %i.an
  %i.au = fsub <2 x double> %i.ai, %i.ao
  %interleaved.vec574 = shufflevector <2 x double> %i.at, <2 x double> %i.au, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec574, ptr %i.al, align 8, !tbaa !8
  %i.av = fsub <2 x double> %i.aj, %i.aq
  %i.aw = fadd <2 x double> %i.ak, %i.ap
  %interleaved.vec575 = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec575, ptr %i.ag, align 8, !tbaa !8
  %i.ax = fadd <2 x double> %i.aj, %i.aq
  %i.ay = fsub <2 x double> %i.ak, %i.ap
  %interleaved.vec576 = shufflevector <2 x double> %i.ax, <2 x double> %i.ay, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec576, ptr %i.am, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader1109

.lr.ph.preheader1109:                             ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1109, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1109 ] ; 3 uses
  %i.ba = add nuw nsw i64 %indvars.iv, %i.c       ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %i.c             ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bb ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %i.bg = load <2 x double>, ptr %i.bd, align 8, !tbaa !8 ; 2 uses
  %i.bh = fsub <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bi = load <2 x double>, ptr %i.be, align 8, !tbaa !8 ; 2 uses
  %i.bj = load <2 x double>, ptr %gep, align 8, !tbaa !8 ; 2 uses
  %i.bk = fsub <2 x double> %i.bi, %i.bj
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = fadd <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bn = fadd <2 x double> %i.bi, %i.bj          ; 2 uses
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  store <2 x double> %i.bo, ptr %i.bc, align 8, !tbaa !8
  %i.bp = fsub <2 x double> %i.bm, %i.bn
  store <2 x double> %i.bp, ptr %i.be, align 8, !tbaa !8
  %i.bq = fsub <2 x double> %i.bh, %i.bl          ; 2 uses
  %i.br = fadd <2 x double> %i.bh, %i.bl          ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bs, ptr %i.bd, align 8, !tbaa !8
  %i.bt = shufflevector <2 x double> %i.br, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bt, ptr %gep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8 ; 2 uses
  %i.bx = mul i32 %1, 5                           ; 2 uses
  %i.by = icmp slt i32 %i.a, %i.bx
  br i1 %i.by, label %.lr.ph400.preheader, label %._crit_edge401

.lr.ph400.preheader:                              ; preds = %._crit_edge
  %i.bz = sext i32 %i.a to i64                    ; 8 uses
  %i.ca = sext i32 %1 to i64                      ; 8 uses
  %i.cb = sext i32 %i.bx to i64                   ; 3 uses
  %invariant.gep438 = getelementptr [8 x i8], ptr %2, i64 %i.ca ; 2 uses
  %i.cc = xor i64 %i.bz, -1
  %i.cd = add nsw i64 %i.cc, %i.cb                ; 2 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add nuw i64 %i.ce, 1                    ; 2 uses
  %min.iters.check706 = icmp ult i64 %i.cd, 42
  br i1 %min.iters.check706, label %.lr.ph400.preheader1108, label %vector.memcheck577

vector.memcheck577:                               ; preds = %.lr.ph400.preheader
  %i.cg = shl nsw i64 %i.bz, 3                    ; 7 uses
  %scevgep578 = getelementptr i8, ptr %2, i64 %i.cg ; 7 uses
  %i.ch = xor i64 %i.bz, -1
  %i.ci = add nsw i64 %i.ch, %i.cb
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = and i64 %i.cj, -16                      ; 4 uses
  %i.cl = add nsw i64 %i.ck, %i.cg                ; 2 uses
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %scevgep579 = getelementptr i8, ptr %i.cm, i64 8 ; 7 uses
  %i.cn = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep580 = getelementptr i8, ptr %i.cn, i64 8 ; 7 uses
  %i.co = getelementptr i8, ptr %2, i64 %i.cl
  %scevgep581 = getelementptr i8, ptr %i.co, i64 16 ; 7 uses
  %i.cp = shl nsw i64 %i.ca, 4                    ; 2 uses
  %i.cq = add nsw i64 %i.cp, %i.cg                ; 2 uses
  %scevgep582 = getelementptr i8, ptr %2, i64 %i.cq ; 7 uses
  %i.cr = add nsw i64 %i.ck, %i.cp
  %i.cs = add nsw i64 %i.cr, %i.cg                ; 2 uses
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %scevgep583 = getelementptr i8, ptr %i.ct, i64 8 ; 7 uses
  %i.cu = getelementptr i8, ptr %2, i64 %i.cq
  %scevgep584 = getelementptr i8, ptr %i.cu, i64 8 ; 7 uses
  %i.cv = getelementptr i8, ptr %2, i64 %i.cs
  %scevgep585 = getelementptr i8, ptr %i.cv, i64 16 ; 7 uses
  %i.cw = add nsw i64 %i.ca, %i.bz
  %i.cx = shl nsw i64 %i.cw, 3                    ; 3 uses
  %scevgep586 = getelementptr i8, ptr %2, i64 %i.cx ; 7 uses
  %i.cy = add nsw i64 %i.ck, %i.cx                ; 2 uses
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %scevgep587 = getelementptr i8, ptr %i.cz, i64 8 ; 7 uses
  %i.da = getelementptr i8, ptr %2, i64 %i.cx
  %scevgep588 = getelementptr i8, ptr %i.da, i64 8 ; 7 uses
  %i.db = getelementptr i8, ptr %2, i64 %i.cy
  %scevgep589 = getelementptr i8, ptr %i.db, i64 16 ; 7 uses
  %i.dc = mul nsw i64 %i.ca, 24                   ; 2 uses
  %i.dd = add nsw i64 %i.dc, %i.cg                ; 2 uses
  %scevgep590 = getelementptr i8, ptr %2, i64 %i.dd ; 7 uses
  %i.de = add nsw i64 %i.dc, %i.ck
  %i.df = add nsw i64 %i.de, %i.cg                ; 2 uses
  %i.dg = getelementptr i8, ptr %2, i64 %i.df
  %scevgep591 = getelementptr i8, ptr %i.dg, i64 8 ; 7 uses
  %i.dh = getelementptr i8, ptr %2, i64 %i.dd
  %scevgep592 = getelementptr i8, ptr %i.dh, i64 8 ; 7 uses
  %i.di = getelementptr i8, ptr %2, i64 %i.df
  %scevgep593 = getelementptr i8, ptr %i.di, i64 16 ; 7 uses
  %bound0594 = icmp ult ptr %scevgep578, %scevgep581
  %bound1595 = icmp ult ptr %scevgep580, %scevgep579
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0597 = icmp ult ptr %scevgep578, %scevgep583
  %bound1598 = icmp ult ptr %scevgep582, %scevgep579
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %found.conflict596, %found.conflict599
  %bound0601 = icmp ult ptr %scevgep578, %scevgep585
  %bound1602 = icmp ult ptr %scevgep584, %scevgep579
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %scevgep578, %scevgep587
  %bound1606 = icmp ult ptr %scevgep586, %scevgep579
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %scevgep578, %scevgep589
  %bound1610 = icmp ult ptr %scevgep588, %scevgep579
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  %bound0613 = icmp ult ptr %scevgep578, %scevgep591
  %bound1614 = icmp ult ptr %scevgep590, %scevgep579
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %conflict.rdx612, %found.conflict615
  %bound0617 = icmp ult ptr %scevgep578, %scevgep593
  %bound1618 = icmp ult ptr %scevgep592, %scevgep579
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %conflict.rdx616, %found.conflict619
  %bound0621 = icmp ult ptr %scevgep580, %scevgep583
  %bound1622 = icmp ult ptr %scevgep582, %scevgep581
  %found.conflict623 = and i1 %bound0621, %bound1622
  %conflict.rdx624 = or i1 %conflict.rdx620, %found.conflict623
  %bound0625 = icmp ult ptr %scevgep580, %scevgep585
  %bound1626 = icmp ult ptr %scevgep584, %scevgep581
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %conflict.rdx624, %found.conflict627
  %bound0629 = icmp ult ptr %scevgep580, %scevgep587
  %bound1630 = icmp ult ptr %scevgep586, %scevgep581
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  %bound0633 = icmp ult ptr %scevgep580, %scevgep589
  %bound1634 = icmp ult ptr %scevgep588, %scevgep581
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %scevgep580, %scevgep591
  %bound1638 = icmp ult ptr %scevgep590, %scevgep581
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %scevgep580, %scevgep593
  %bound1642 = icmp ult ptr %scevgep592, %scevgep581
  %found.conflict643 = and i1 %bound0641, %bound1642
end_hunk_2
