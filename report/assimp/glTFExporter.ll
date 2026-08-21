inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5o3dgc14IndexedFaceSetItE13ComputeMinMaxENS_27O3DGCSC3DMCQuantizationModeE:bb.a
  %i.bl = add nuw i64 %.087106.i, 1               ; 2 uses
  %exitcond126.not.i = icmp eq i64 %i.bl, %i.d
  br i1 %exitcond126.not.i, label %._crit_edge107.split.i, label %.preheader99.i, !llvm.loop !153

.lr.ph.i:                                         ; preds = %._crit_edge107.split.i
  %i.bm = fsub float %i.ae, %i.ad                 ; 2 uses
  %i.bn = fsub float %i.ac, %i.ab                 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %i.bm
  %.1.i = select i1 %i.bo, float %i.bn, float %i.bm ; 2 uses
  %i.bp = fsub float %i.aa, %i.z                  ; 2 uses
  %i.bq = fcmp ogt float %i.bp, %.1.i
  %.1.i.1 = select i1 %i.bq, float %i.bp, float %.1.i ; 3 uses
  %i.br = fadd float %.1.i.1, %i.ad
  store float %i.br, ptr %i.f, align 4
  %i.bs = fadd float %.1.i.1, %i.ab
  store float %i.bs, ptr %i.l, align 8
  %i.bt = fadd float %.1.i.1, %i.z
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split: ; preds = %.lr.ph115.i.preheader, %.lr.ph.i
  %.sink = phi float [ %i.bt, %.lr.ph.i ], [ %i.ar, %.lr.ph115.i.preheader ]
  store float %.sink, ptr %i.p, align 4
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit: ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit.sink.split, %bb.a, %._crit_edge107.split.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8            ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42, label %.preheader101.i12.preheader

.preheader101.i12.preheader:                      ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit
  %i.cb = load float, ptr %i.bv, align 4          ; 6 uses
  store float %i.cb, ptr %i.by, align 8
  store float %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load float, ptr %i.cc, align 4          ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store float %i.cd, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ch = load float, ptr %i.cg, align 4          ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store float %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store float %i.ch, ptr %i.cj, align 4
  %.not74 = icmp eq i64 %i.bx, 1
  br i1 %.not74, label %._crit_edge107.split.i16, label %.preheader99.i34

.preheader99.i34:                                 ; preds = %.preheader101.i12.preheader, %._crit_edge.i39
  %i.ck = phi float [ %i.ed, %._crit_edge.i39 ], [ %i.ch, %.preheader101.i12.preheader ] ; 2 uses
  %i.cl = phi float [ %i.ea, %._crit_edge.i39 ], [ %i.ch, %.preheader101.i12.preheader ] ; 2 uses
  %i.cm = phi float [ %i.dw, %._crit_edge.i39 ], [ %i.cd, %.preheader101.i12.preheader ] ; 2 uses
  %i.cn = phi float [ %i.dt, %._crit_edge.i39 ], [ %i.cd, %.preheader101.i12.preheader ] ; 2 uses
  %i.co = phi float [ %i.dp, %._crit_edge.i39 ], [ %i.cb, %.preheader101.i12.preheader ] ; 2 uses
  %i.cp = phi float [ %i.dm, %._crit_edge.i39 ], [ %i.cb, %.preheader101.i12.preheader ] ; 2 uses
  %.087106.i35 = phi i64 [ %i.ef, %._crit_edge.i39 ], [ 1, %.preheader101.i12.preheader ]
  %.190105.i36 = phi i64 [ %i.ee, %._crit_edge.i39 ], [ 3, %.preheader101.i12.preheader ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.bv, i64 %.190105.i36 ; 4 uses
  %i.cr = load float, ptr %i.cq, align 4          ; 4 uses
  %i.cs = fcmp olt float %i.cp, %i.cr
  br i1 %i.cs, label %bb.m, label %bb.n

._crit_edge107.split.i16:                         ; preds = %._crit_edge.i39, %.preheader101.i12.preheader
  %i.ct = phi float [ %i.ch, %.preheader101.i12.preheader ], [ %i.ed, %._crit_edge.i39 ] ; 3 uses
  %i.cu = phi float [ %i.ch, %.preheader101.i12.preheader ], [ %i.ea, %._crit_edge.i39 ] ; 2 uses
  %i.cv = phi float [ %i.cd, %.preheader101.i12.preheader ], [ %i.dw, %._crit_edge.i39 ] ; 3 uses
  %i.cw = phi float [ %i.cd, %.preheader101.i12.preheader ], [ %i.dt, %._crit_edge.i39 ] ; 2 uses
  %i.cx = phi float [ %i.cb, %.preheader101.i12.preheader ], [ %i.dp, %._crit_edge.i39 ] ; 3 uses
  %i.cy = phi float [ %i.cb, %.preheader101.i12.preheader ], [ %i.dm, %._crit_edge.i39 ] ; 2 uses
  switch i32 %1, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42 [
    i32 0, label %.lr.ph115.i26.preheader
    i32 1, label %.lr.ph.i17
  ]

.lr.ph115.i26.preheader:                          ; preds = %._crit_edge107.split.i16
  %i.cz = fsub float %i.cy, %i.cx                 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float 0.000000e+00)
  %i.db = fsub float %i.cw, %i.cv                 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.da)
  %i.dd = fsub float %i.cu, %i.ct                 ; 2 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = tail call noundef float @sqrtf(float noundef %i.de) #30 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.by, align 8
  %i.dh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fadd <2 x float> %i.di, %i.dg
  store <2 x float> %i.dj, ptr %i.bz, align 4
  %i.dk = load float, ptr %i.ci, align 8
  %i.dl = fadd float %i.df, %i.dk
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split

bb.m:                                             ; preds = %.preheader99.i34
  store float %i.cr, ptr %i.bz, align 4
  %.pre.i41 = load float, ptr %i.cq, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader99.i34
  %i.dm = phi float [ %i.cr, %bb.m ], [ %i.cp, %.preheader99.i34 ] ; 2 uses
  %i.dn = phi float [ %.pre.i41, %bb.m ], [ %i.cr, %.preheader99.i34 ] ; 3 uses
  %i.do = fcmp ogt float %i.co, %i.dn
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.dn, ptr %i.by, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = phi float [ %i.dn, %bb.o ], [ %i.co, %bb.n ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4          ; 4 uses
  %i.ds = fcmp olt float %i.cn, %i.dr
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.dr, ptr %i.cf, align 8
  %.pre.i41.1 = load float, ptr %i.dq, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dt = phi float [ %i.dr, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %i.du = phi float [ %.pre.i41.1, %bb.q ], [ %i.dr, %bb.p ] ; 3 uses
  %i.dv = fcmp ogt float %i.cm, %i.du
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.du, ptr %i.ce, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dw = phi float [ %i.du, %bb.s ], [ %i.cm, %bb.r ] ; 2 uses
  %i.dx = getelementptr i8, ptr %i.cq, i64 8      ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4          ; 4 uses
  %i.dz = fcmp olt float %i.cl, %i.dy
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.dy, ptr %i.cj, align 4
  %.pre.i41.2 = load float, ptr %i.dx, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ea = phi float [ %i.dy, %bb.u ], [ %i.cl, %bb.t ] ; 2 uses
  %i.eb = phi float [ %.pre.i41.2, %bb.u ], [ %i.dy, %bb.t ] ; 3 uses
  %i.ec = fcmp ogt float %i.ck, %i.eb
  br i1 %i.ec, label %bb.w, label %._crit_edge.i39

bb.w:                                             ; preds = %bb.v
  store float %i.eb, ptr %i.ci, align 8
  br label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %bb.w, %bb.v
  %i.ed = phi float [ %i.eb, %bb.w ], [ %i.ck, %bb.v ] ; 2 uses
  %i.ee = add i64 %.190105.i36, 3
  %i.ef = add nuw i64 %.087106.i35, 1             ; 2 uses
  %exitcond126.not.i40 = icmp eq i64 %i.ef, %i.bx
  br i1 %exitcond126.not.i40, label %._crit_edge107.split.i16, label %.preheader99.i34, !llvm.loop !153

.lr.ph.i17:                                       ; preds = %._crit_edge107.split.i16
  %i.eg = fsub float %i.cy, %i.cx                 ; 2 uses
  %i.eh = fsub float %i.cw, %i.cv                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, %i.eg
  %.1.i20 = select i1 %i.ei, float %i.eh, float %i.eg ; 2 uses
  %i.ej = fsub float %i.cu, %i.ct                 ; 2 uses
  %i.ek = fcmp ogt float %i.ej, %.1.i20
  %.1.i20.1 = select i1 %i.ek, float %i.ej, float %.1.i20 ; 3 uses
  %i.el = fadd float %.1.i20.1, %i.cx
  store float %i.el, ptr %i.bz, align 4
  %i.em = fadd float %.1.i20.1, %i.cv
  store float %i.em, ptr %i.cf, align 8
  %i.en = fadd float %.1.i20.1, %i.ct
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split: ; preds = %.lr.ph115.i26.preheader, %.lr.ph.i17
  %.sink141 = phi float [ %i.en, %.lr.ph.i17 ], [ %i.dl, %.lr.ph115.i26.preheader ]
  store float %.sink141, ptr %i.cj, align 4
  br label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42

_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42: ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42.sink.split, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit, %._crit_edge107.split.i16
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ep = load i64, ptr %i.eo, align 8            ; 2 uses
  %.not81 = icmp eq i64 %i.ep, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 75896
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 6264
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 10360
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 43128
  br label %bb.x

._crit_edge:                                      ; preds = %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit42
  ret void

bb.x:                                             ; preds = %.lr.ph, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73
  %.080 = phi i64 [ 0, %.lr.ph ], [ %i.ke, %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73 ] ; 5 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.080
  %i.ew = load ptr, ptr %i.ev, align 8            ; 9 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.080
  %i.ey = load i64, ptr %i.ex, align 8            ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.080
  %i.fa = load i64, ptr %i.ez, align 8            ; 25 uses
  %i.fb = shl i64 %.080, 5                        ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.et, i64 %i.fb ; 21 uses
  %i.fd = getelementptr [4 x i8], ptr %i.eu, i64 %i.fb ; 21 uses
  %i.fe = icmp eq i64 %i.ey, 0
  %i.ff = icmp eq i64 %i.fa, 0
  %or.cond.i = or i1 %i.fe, %i.ff
  br i1 %or.cond.i, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73, label %.preheader101.i43.preheader

.preheader101.i43.preheader:                      ; preds = %bb.x
  %min.iters.check172 = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check172, label %.preheader101.i43.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader101.i43.preheader
  %i.fg = shl i64 %i.fa, 2                        ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.fd, i64 %i.fg
  %scevgep170 = getelementptr i8, ptr %i.ew, i64 %i.fg
  %bound0 = icmp ult ptr %i.fc, %scevgep170
  %bound1 = icmp ult ptr %i.ew, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader101.i43.preheader183, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck
  %n.vec174 = and i64 %i.fa, -4                   ; 3 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next178, %vector.body175 ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index176
  %wide.load177 = load <4 x float>, ptr %i.fh, align 4, !alias.scope !154 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index176
  store <4 x float> %wide.load177, ptr %i.fi, align 8, !alias.scope !157, !noalias !154
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index176
  store <4 x float> %wide.load177, ptr %i.fj, align 8, !alias.scope !157, !noalias !154
  %index.next178 = add nuw i64 %index176, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next178, %n.vec174
  br i1 %i.fk, label %middle.block179, label %vector.body175, !llvm.loop !159

middle.block179:                                  ; preds = %vector.body175
  %cmp.n180 = icmp eq i64 %i.fa, %n.vec174
  br i1 %cmp.n180, label %.preheader100.i46, label %.preheader101.i43.preheader183

.preheader101.i43.preheader183:                   ; preds = %vector.memcheck, %.preheader101.i43.preheader, %middle.block179
  %.088103.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader101.i43.preheader ], [ %n.vec174, %middle.block179 ] ; 3 uses
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101.i43.prol.loopexit, label %.preheader101.i43.prol

.preheader101.i43.prol:                           ; preds = %.preheader101.i43.preheader183, %.preheader101.i43.prol
  %.088103.i44.prol = phi i64 [ %i.fl, %.preheader101.i43.prol ], [ %.088103.i44.ph, %.preheader101.i43.preheader183 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader101.i43.prol ], [ 0, %.preheader101.i43.preheader183 ]
  %i.fl = add nuw i64 %.088103.i44.prol, 1        ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.088103.i44.prol
  %i.fn = load float, ptr %i.fm, align 4          ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.088103.i44.prol
  store float %i.fn, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.088103.i44.prol
  store float %i.fn, ptr %i.fp, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader101.i43.prol.loopexit, label %.preheader101.i43.prol, !llvm.loop !162

.preheader101.i43.prol.loopexit:                  ; preds = %.preheader101.i43.prol, %.preheader101.i43.preheader183
  %.088103.i44.unr = phi i64 [ %.088103.i44.ph, %.preheader101.i43.preheader183 ], [ %i.fl, %.preheader101.i43.prol ]
  %i.fq = sub i64 %.088103.i44.ph, %i.fa
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.preheader100.i46, label %.preheader101.i43

.preheader100.i46:                                ; preds = %.preheader101.i43.prol.loopexit, %.preheader101.i43, %middle.block179
  %i.fs = icmp ugt i64 %i.ey, 1
  br i1 %i.fs, label %.preheader99.i65, label %._crit_edge107.split.i47

.preheader101.i43:                                ; preds = %.preheader101.i43.prol.loopexit, %.preheader101.i43
  %.088103.i44 = phi i64 [ %i.gi, %.preheader101.i43 ], [ %.088103.i44.unr, %.preheader101.i43.prol.loopexit ] ; 7 uses
  %i.ft = add nuw i64 %.088103.i44, 1             ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.088103.i44
  %i.fv = load float, ptr %i.fu, align 4          ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.088103.i44
  store float %i.fv, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.088103.i44
  store float %i.fv, ptr %i.fx, align 4
  %i.fy = add nuw i64 %.088103.i44, 2             ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ft
  %i.ga = load float, ptr %i.fz, align 4          ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ft
  store float %i.ga, ptr %i.gb, align 4
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ft
  store float %i.ga, ptr %i.gc, align 4
  %i.gd = add nuw i64 %.088103.i44, 3             ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fy
  %i.gf = load float, ptr %i.ge, align 4          ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fy
  store float %i.gf, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fy
  store float %i.gf, ptr %i.gh, align 4
  %i.gi = add nuw i64 %.088103.i44, 4             ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gd
  %i.gk = load float, ptr %i.gj, align 4          ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gd
  store float %i.gk, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.gd
  store float %i.gk, ptr %i.gm, align 4
  %exitcond.not.i45.3 = icmp eq i64 %i.gi, %i.fa
  br i1 %exitcond.not.i45.3, label %.preheader100.i46, label %.preheader101.i43, !llvm.loop !163

.preheader99.i65:                                 ; preds = %.preheader100.i46, %._crit_edge.i70
  %.087106.i66 = phi i64 [ %i.gr, %._crit_edge.i70 ], [ 1, %.preheader100.i46 ]
  %.190105.i67 = phi i64 [ %i.gq, %._crit_edge.i70 ], [ %i.fa, %.preheader100.i46 ] ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %i.ew, i64 %.190105.i67
  br label %bb.y

._crit_edge107.split.i47:                         ; preds = %._crit_edge.i70, %.preheader100.i46
  switch i32 %1, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73 [
    i32 0, label %.lr.ph115.i57.preheader
    i32 1, label %bb.ad
  ]

.lr.ph115.i57.preheader:                          ; preds = %._crit_edge107.split.i47
  %i.go = add i64 %i.fa, -1
  %xtraiter200 = and i64 %i.fa, 3                 ; 3 uses
  %i.gp = icmp ult i64 %i.go, 3
  br i1 %i.gp, label %.lr.ph115.i57.epil.preheader, label %.lr.ph115.i57.preheader.new

.lr.ph115.i57.preheader.new:                      ; preds = %.lr.ph115.i57.preheader
  %unroll_iter204 = and i64 %i.fa, -4
  br label %.lr.ph115.i57

._crit_edge.i70:                                  ; preds = %bb.ac
  %i.gq = add i64 %.190105.i67, %i.fa
  %i.gr = add nuw i64 %.087106.i66, 1             ; 2 uses
  %exitcond126.not.i71 = icmp eq i64 %i.gr, %i.ey
  br i1 %exitcond126.not.i71, label %._crit_edge107.split.i47, label %.preheader99.i65, !llvm.loop !153

bb.y:                                             ; preds = %bb.ac, %.preheader99.i65
  %.086104.i68 = phi i64 [ 0, %.preheader99.i65 ], [ %i.hb, %bb.ac ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.086104.i68 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = getelementptr [4 x i8], ptr %i.gn, i64 %.086104.i68 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4          ; 3 uses
  %i.gw = fcmp olt float %i.gt, %i.gv
  br i1 %i.gw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %i.gv, ptr %i.gs, align 4
  %.pre.i72 = load float, ptr %i.gu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gx = phi float [ %.pre.i72, %bb.z ], [ %i.gv, %bb.y ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.086104.i68 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4
  %i.ha = fcmp ogt float %i.gz, %i.gx
  br i1 %i.ha, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.gx, ptr %i.gy, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hb = add nuw i64 %.086104.i68, 1             ; 2 uses
  %exitcond125.not.i69 = icmp eq i64 %i.hb, %i.fa
  br i1 %exitcond125.not.i69, label %._crit_edge.i70, label %bb.y, !llvm.loop !164

.lr.ph120.preheader.i61.unr-lcssa:                ; preds = %.lr.ph115.i57
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph120.preheader.i61, label %.lr.ph115.i57.epil.preheader

.lr.ph115.i57.epil.preheader:                     ; preds = %.lr.ph120.preheader.i61.unr-lcssa, %.lr.ph115.i57.preheader
  %.084114.i58.epil.init = phi i64 [ 0, %.lr.ph115.i57.preheader ], [ %i.ip, %.lr.ph120.preheader.i61.unr-lcssa ]
  %.085113.i59.epil.init = phi float [ 0.000000e+00, %.lr.ph115.i57.preheader ], [ %i.io, %.lr.ph120.preheader.i61.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter200, 0
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph115.i57.epil

.lr.ph115.i57.epil:                               ; preds = %.lr.ph115.i57.epil, %.lr.ph115.i57.epil.preheader
  %.084114.i58.epil = phi i64 [ %i.hi, %.lr.ph115.i57.epil ], [ %.084114.i58.epil.init, %.lr.ph115.i57.epil.preheader ] ; 3 uses
  %.085113.i59.epil = phi float [ %i.hh, %.lr.ph115.i57.epil ], [ %.085113.i59.epil.init, %.lr.ph115.i57.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph115.i57.epil ], [ 0, %.lr.ph115.i57.epil.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.084114.i58.epil
  %i.hd = load float, ptr %i.hc, align 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.084114.i58.epil
  %i.hf = load float, ptr %i.he, align 4
  %i.hg = fsub float %i.hd, %i.hf                 ; 2 uses
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %.085113.i59.epil) ; 2 uses
  %i.hi = add nuw i64 %.084114.i58.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter200
  br i1 %epil.iter.cmp.not, label %.lr.ph120.preheader.i61, label %.lr.ph115.i57.epil, !llvm.loop !165

.lr.ph120.preheader.i61:                          ; preds = %.lr.ph115.i57.epil, %.lr.ph120.preheader.i61.unr-lcssa
  %.lcssa = phi float [ %i.io, %.lr.ph120.preheader.i61.unr-lcssa ], [ %i.hh, %.lr.ph115.i57.epil ]
  %i.hj = tail call noundef float @sqrtf(float noundef %.lcssa) #30 ; 2 uses
  %min.iters.check = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check, label %.lr.ph120.i62.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph120.preheader.i61
  %n.vec = and i64 %i.fa, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  %wide.load = load <4 x float>, ptr %i.hk, align 8
  %i.hl = fadd <4 x float> %broadcast.splat, %wide.load
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index
  store <4 x float> %i.hl, ptr %i.hm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %_ZN5o3dgc19ComputeVectorMinMaxEPKfmmmPfS2_NS_27O3DGCSC3DMCQuantizationModeE.exit73, label %.lr.ph120.i62.preheader

.lr.ph120.i62.preheader:                          ; preds = %.lr.ph120.preheader.i61, %middle.block
  %.083118.i63.ph = phi i64 [ 0, %.lr.ph120.preheader.i61 ], [ %n.vec, %middle.block ]
end_hunk_0
