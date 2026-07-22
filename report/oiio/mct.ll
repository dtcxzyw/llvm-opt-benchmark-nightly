inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@opj_mct_decode_real:bb.a
  store <4 x float> %i.z, ptr %i.o, align 16, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.080, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.07479, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.07578, i64 32 ; 2 uses
  %i.ad = add nuw nsw i64 %.07677, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.075.lcssa = phi ptr [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 8 uses
  %.074.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.aa, %.lr.ph ] ; 8 uses
  %i.ae = and i64 %3, 7                           ; 7 uses
  %.not87 = icmp eq i64 %i.ae, 0
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.af = load float, ptr %.0.lcssa, align 4, !tbaa !20 ; 3 uses
  %i.ag = load float, ptr %.074.lcssa, align 4, !tbaa !20 ; 2 uses
  %i.ah = load float, ptr %.075.lcssa, align 4, !tbaa !20 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 1.402000e+00, float %i.af)
  %i.aj = fneg float %i.ag
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 3.441300e-01, float %i.af)
  %i.al = fneg float %i.ah
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ag, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.af, i64 1
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.ap) ; 2 uses
  store float %i.ai, ptr %.0.lcssa, align 4, !tbaa !20
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  store float %i.ar, ptr %.074.lcssa, align 4, !tbaa !20
  %i.as = extractelement <2 x float> %i.aq, i64 1
  store float %i.as, ptr %.075.lcssa, align 4, !tbaa !20
  %exitcond90.not = icmp eq i64 %i.ae, 1
  br i1 %exitcond90.not, label %._crit_edge86, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !20 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 4 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20 ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float 1.402000e+00, float %i.au)
  %i.ba = fneg float %i.aw
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 3.441300e-01, float %i.au)
  %i.bc = fneg float %i.ay
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.aw, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.au, i64 1
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.bg) ; 2 uses
  store float %i.az, ptr %i.at, align 4, !tbaa !20
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  store float %i.bi, ptr %i.av, align 4, !tbaa !20
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  store float %i.bj, ptr %i.ax, align 4, !tbaa !20
  %exitcond90.not.1 = icmp eq i64 %i.ae, 2
  br i1 %exitcond90.not.1, label %._crit_edge86, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !20 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 8 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float 1.402000e+00, float %i.bl)
  %i.br = fneg float %i.bn
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 3.441300e-01, float %i.bl)
  %i.bt = fneg float %i.bp
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bn, i64 1
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bl, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.bx) ; 2 uses
  store float %i.bq, ptr %i.bk, align 4, !tbaa !20
  %i.bz = extractelement <2 x float> %i.by, i64 0
  store float %i.bz, ptr %i.bm, align 4, !tbaa !20
  %i.ca = extractelement <2 x float> %i.by, i64 1
  store float %i.ca, ptr %i.bo, align 4, !tbaa !20
  %exitcond90.not.2 = icmp eq i64 %i.ae, 3
  br i1 %exitcond90.not.2, label %._crit_edge86, label %.lr.ph85.3

.lr.ph85.3:                                       ; preds = %.lr.ph85.2
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !20 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 12 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 12 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float 1.402000e+00, float %i.cc)
  %i.ci = fneg float %i.ce
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float 3.441300e-01, float %i.cc)
  %i.ck = fneg float %i.cg
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ce, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cc, i64 1
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.co) ; 2 uses
  store float %i.ch, ptr %i.cb, align 4, !tbaa !20
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  store float %i.cq, ptr %i.cd, align 4, !tbaa !20
  %i.cr = extractelement <2 x float> %i.cp, i64 1
  store float %i.cr, ptr %i.cf, align 4, !tbaa !20
  %exitcond90.not.3 = icmp eq i64 %i.ae, 4
  br i1 %exitcond90.not.3, label %._crit_edge86, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.3
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !20 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 16 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !20 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 16 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !20 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float 1.402000e+00, float %i.ct)
  %i.cz = fneg float %i.cv
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float 3.441300e-01, float %i.ct)
  %i.db = fneg float %i.cx
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.cv, i64 1
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.ct, i64 1
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.df) ; 2 uses
  store float %i.cy, ptr %i.cs, align 4, !tbaa !20
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  store float %i.dh, ptr %i.cu, align 4, !tbaa !20
  %i.di = extractelement <2 x float> %i.dg, i64 1
  store float %i.di, ptr %i.cw, align 4, !tbaa !20
  %exitcond90.not.4 = icmp eq i64 %i.ae, 5
  br i1 %exitcond90.not.4, label %._crit_edge86, label %.lr.ph85.5

.lr.ph85.5:                                       ; preds = %.lr.ph85.4
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !20 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 20 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 20 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !20 ; 2 uses
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float 1.402000e+00, float %i.dk)
  %i.dq = fneg float %i.dm
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float 3.441300e-01, float %i.dk)
  %i.ds = fneg float %i.do
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dm, i64 1
  %i.dv = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dk, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.dw) ; 2 uses
  store float %i.dp, ptr %i.dj, align 4, !tbaa !20
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  store float %i.dy, ptr %i.dl, align 4, !tbaa !20
  %i.dz = extractelement <2 x float> %i.dx, i64 1
  store float %i.dz, ptr %i.dn, align 4, !tbaa !20
  %exitcond90.not.5 = icmp eq i64 %i.ae, 6
  br i1 %exitcond90.not.5, label %._crit_edge86, label %.lr.ph85.6

.lr.ph85.6:                                       ; preds = %.lr.ph85.5
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !20 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 24 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !20 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 24 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !20 ; 2 uses
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float 1.402000e+00, float %i.eb)
  %i.eh = fneg float %i.ed
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float 3.441300e-01, float %i.eb)
  %i.ej = fneg float %i.ef
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ed, i64 1
  %i.em = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.eb, i64 1
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.en) ; 2 uses
  store float %i.eg, ptr %i.ea, align 4, !tbaa !20
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  store float %i.ep, ptr %i.ec, align 4, !tbaa !20
  %i.eq = extractelement <2 x float> %i.eo, i64 1
  store float %i.eq, ptr %i.ee, align 4, !tbaa !20
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.3, %.lr.ph85.4, %.lr.ph85.5, %.lr.ph85.6, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_mct_getnorm_real(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @opj_mct_norms_real, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !17
  ret double %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_encode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %3, %3                           ; 4 uses
  %i.b = add i32 %i.a, %3
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call ptr @opj_malloc(i64 noundef %i.d) #8 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 10 uses
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %.preheader54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 4294967288               ; 4 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !20
  %wide.load83 = load <4 x float>, ptr %i.l, align 4, !tbaa !20
  %i.m = fmul <4 x float> %wide.load, splat (float 8.192000e+03)
  %i.n = fmul <4 x float> %wide.load83, splat (float 8.192000e+03)
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !3
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.preheader54, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04556.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.04655.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %middle.block, %bb.b
  %i.t = icmp ne i64 %1, 0
  %i.u = icmp ne i32 %3, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %.preheader53.us.us.preheader, label %._crit_edge65

.preheader53.us.us.preheader:                     ; preds = %.preheader54
  %i.v = shl nuw nsw i64 %i.f, 2
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.w = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.f, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  %min.iters.check90 = icmp ult i32 %3, 8
  %n.vec93 = and i64 %i.f, 4294967288             ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec93, 2
  %cmp.n104 = icmp eq i64 %n.vec93, %i.f
  %xtraiter112 = and i64 %i.f, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  %i.y = add nsw i64 %i.f, -1
  br label %.preheader53.us.us

.preheader53.us.us:                               ; preds = %.preheader53.us.us.preheader, %._crit_edge.us.us
  %.14764.us.us = phi i64 [ %i.db, %._crit_edge.us.us ], [ 0, %.preheader53.us.us.preheader ]
  br i1 %i.w, label %.epil.preheader, label %.preheader53.us.us.new

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %.loopexit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.loopexit ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.062.us.us = phi ptr [ %.lcssa, %.loopexit ], [ %i.g, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 9 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !3
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us
  %scevgep = getelementptr i8, ptr %i.aa, i64 4   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %.062.us.us, i64 %i.v
  %bound0 = icmp ult ptr %i.aa, %i.g
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.aa, %scevgep85
  %bound187 = icmp ult ptr %.062.us.us, %scevgep
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  br i1 %conflict.rdx, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %i.ab = getelementptr i8, ptr %.062.us.us, i64 %i.x ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body94 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.as, %vector.body94 ]
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.at, %vector.body94 ]
  %i.ac = shl i64 %index95, 2
  %next.gep97 = getelementptr i8, ptr %.062.us.us, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load98 = load <4 x i32>, ptr %next.gep97, align 4, !tbaa !3, !alias.scope !27
  %wide.load99 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !3, !alias.scope !27
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index95 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load100 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !3, !alias.scope !30
  %wide.load101 = load <4 x i32>, ptr %i.af, align 4, !tbaa !3, !alias.scope !30
  %i.ag = sext <4 x i32> %wide.load98 to <4 x i64>
  %i.ah = sext <4 x i32> %wide.load99 to <4 x i64>
  %i.ai = sext <4 x i32> %wide.load100 to <4 x i64>
  %i.aj = sext <4 x i32> %wide.load101 to <4 x i64>
  %i.ak = mul nsw <4 x i64> %i.ai, %i.ag
  %i.al = mul nsw <4 x i64> %i.aj, %i.ah
  %i.am = add nsw <4 x i64> %i.ak, splat (i64 4096)
  %i.an = add nsw <4 x i64> %i.al, splat (i64 4096)
  %i.ao = lshr <4 x i64> %i.am, splat (i64 13)
  %i.ap = lshr <4 x i64> %i.an, splat (i64 13)
  %i.aq = trunc <4 x i64> %i.ao to <4 x i32>
  %i.ar = trunc <4 x i64> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <4 x i32> %vec.phi96, %i.ar         ; 2 uses
  %index.next102 = add nuw i64 %index95, 8        ; 2 uses
  %i.au = icmp eq i64 %index.next102, %n.vec93
  br i1 %i.au, label %middle.block103, label %vector.body94, !llvm.loop !32

middle.block103:                                  ; preds = %vector.body94
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.av, ptr %i.aa, align 4, !tbaa !3, !alias.scope !33, !noalias !35
  br i1 %cmp.n104, label %.loopexit, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %..preheader_crit_edge.us.us, %middle.block103
  %indvars.iv69.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %n.vec93, %middle.block103 ] ; 4 uses
  %.160.us.us.ph = phi ptr [ %.062.us.us, %vector.memcheck ], [ %.062.us.us, %..preheader_crit_edge.us.us ], [ %i.ab, %middle.block103 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %..preheader_crit_edge.us.us ], [ %i.av, %middle.block103 ] ; 2 uses
  br i1 %lcmp.mod113.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol

scalar.ph89.prol:                                 ; preds = %scalar.ph89.preheader
  %i.aw = load i32, ptr %.160.us.us.ph, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69.ph
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = sext i32 %i.aw to i64
  %i.ba = sext i32 %i.ay to i64
  %i.bb = mul nsw i64 %i.ba, %i.az
  %i.bc = add nsw i64 %i.bb, 4096
  %i.bd = lshr i64 %i.bc, 13
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add nsw i32 %.ph, %i.be                 ; 2 uses
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.160.us.us.ph, i64 4 ; 2 uses
  %indvars.iv.next70.prol = or disjoint i64 %indvars.iv69.ph, 1
  br label %scalar.ph89.prol.loopexit

scalar.ph89.prol.loopexit:                        ; preds = %scalar.ph89.prol, %scalar.ph89.preheader
  %.lcssa109.unr = phi ptr [ poison, %scalar.ph89.preheader ], [ %i.bg, %scalar.ph89.prol ]
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %scalar.ph89.preheader ], [ %indvars.iv.next70.prol, %scalar.ph89.prol ]
  %.160.us.us.unr = phi ptr [ %.160.us.us.ph, %scalar.ph89.preheader ], [ %i.bg, %scalar.ph89.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph89.preheader ], [ %i.bf, %scalar.ph89.prol ]
  %i.bh = icmp eq i64 %indvars.iv69.ph, %i.y
  br i1 %i.bh, label %.loopexit, label %scalar.ph89

.loopexit:                                        ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89, %middle.block103
  %.lcssa = phi ptr [ %i.ab, %middle.block103 ], [ %.lcssa109.unr, %scalar.ph89.prol.loopexit ], [ %i.cg, %scalar.ph89 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !24
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.f
  br i1 %exitcond78.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !36

scalar.ph89:                                      ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %scalar.ph89 ], [ %indvars.iv69.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %.160.us.us = phi ptr [ %i.cg, %scalar.ph89 ], [ %.160.us.us.unr, %scalar.ph89.prol.loopexit ] ; 3 uses
  %i.bj = phi i32 [ %i.cf, %scalar.ph89 ], [ %.unr, %scalar.ph89.prol.loopexit ]
  %i.bk = load i32, ptr %.160.us.us, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bk to i64
  %i.bo = sext i32 %i.bm to i64
  %i.bp = mul nsw i64 %i.bo, %i.bn
  %i.bq = add nsw i64 %i.bp, 4096
  %i.br = lshr i64 %i.bq, 13
  %i.bs = trunc i64 %i.br to i32
  %i.bt = add nsw i32 %i.bj, %i.bs                ; 2 uses
  store i32 %i.bt, ptr %i.aa, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.bv to i64
  %i.ca = sext i32 %i.by to i64
  %i.cb = mul nsw i64 %i.ca, %i.bz
  %i.cc = add nsw i64 %i.cb, 4096
  %i.cd = lshr i64 %i.cc, 13
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = add nsw i32 %i.bt, %i.ce                ; 2 uses
  store i32 %i.cf, ptr %i.aa, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.160.us.us, i64 8 ; 2 uses
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %i.f
  br i1 %exitcond73.not.1, label %.loopexit, label %scalar.ph89, !llvm.loop !37

.preheader53.us.us.new:                           ; preds = %.preheader53.us.us, %.preheader53.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader53.us.us.new, !llvm.loop !38

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader53.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader53.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader53.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c, !llvm.loop !39

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.loopexit
  %i.db = add nuw i64 %.14764.us.us, 1            ; 2 uses
  %exitcond79.not = icmp eq i64 %i.db, %1
  br i1 %exitcond79.not, label %._crit_edge65, label %.preheader53.us.us, !llvm.loop !41

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %.04556 = phi ptr [ %i.dc, %.lr.ph ], [ %.04556.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.04655 = phi i64 [ %i.dh, %.lr.ph ], [ %.04655.ph, %.lr.ph.preheader110 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.04556, i64 4
  %i.dd = load float, ptr %.04556, align 4, !tbaa !20
  %i.de = fmul float %i.dd, 8.192000e+03
  %i.df = fptosi float %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04655
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !3
  %i.dh = add nuw nsw i64 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.h
  br i1 %exitcond.not, label %.preheader54, label %.lr.ph, !llvm.loop !42

._crit_edge65:                                    ; preds = %._crit_edge.us.us, %.preheader54
  tail call void @opj_free(ptr noundef nonnull %i.e) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge65
  %.044 = phi i32 [ 1, %._crit_edge65 ], [ 0, %bb.a ]
  ret i32 %.044
}

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #4

end_hunk_0
