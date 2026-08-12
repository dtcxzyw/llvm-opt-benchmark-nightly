inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_decompose:bb.a
  %interleaved.vec279 = fadd reassoc nsz arcp contract afn <16 x float> %i.ee, %wide.vec274
  store <16 x float> %interleaved.vec279, ptr %i.ec, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %index.next280 = add nuw i64 %index263, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next280, %n.vec261
  br i1 %i.ef, label %middle.block281, label %vector.body262, !llvm.loop !52

middle.block281:                                  ; preds = %vector.body262
  br i1 %cmp.n282, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader

.preheader.us.us.i.i.i.preheader:                 ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %middle.block281
  %.05263.us.us.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ], [ %i.cu, %middle.block281 ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader, %.preheader.us.us.i.i.i
  %.05263.us.us.i.i.i = phi i64 [ %i.eq, %.preheader.us.us.i.i.i ], [ %.05263.us.us.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.05263.us.us.i.i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05263.us.us.i.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.05263.us.us.i.i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05263.us.us.i.i.i
  %i.ek = load <4 x float>, ptr %i.eg, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, splat (float 2.000000e+00)
  %i.em = load <4 x float>, ptr %i.eh, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.en = fadd reassoc nsz arcp contract afn <4 x float> %i.el, %i.em
  %i.eo = load <4 x float>, ptr %i.ei, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.ep = fadd reassoc nsz arcp contract afn <4 x float> %i.en, %i.eo
  store <4 x float> %i.ep, ptr %i.ej, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %i.eq = add nuw i64 %.05263.us.us.i.i.i, 4      ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ci
  br i1 %i.er, label %.preheader.us.us.i.i.i, label %._crit_edge.us.us.i.i.i, !llvm.loop !53

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader.us.us.i.i.i, %middle.block281
  %indvars.iv.next76.i.i.i = add nuw nsw i64 %indvars.iv75.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next76.i.i.i, %i.cb
  br i1 %exitcond78.not.i.i.i, label %.lr.ph96.i.i.i, label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  br i1 %.not69.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i.preheader

dwt_interleave_rows.exit.i.i.i.preheader:         ; preds = %.lr.ph.split.i.i.i
  %i.es = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.es, 12
  %n.vec287 = and i64 %i.eu, 9223372036854775804  ; 3 uses
  %i.ev = shl i64 %n.vec287, 2
  %cmp.n308 = icmp eq i64 %i.eu, %n.vec287
  br label %dwt_interleave_rows.exit.i.i.i

dwt_interleave_rows.exit.i.i.i:                   ; preds = %dwt_interleave_rows.exit.i.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ], [ 0, %dwt_interleave_rows.exit.i.i.i.preheader ] ; 6 uses
  %i.ew = shl nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.ex = mul i64 %i.ew, %i.cc                    ; 2 uses
  %i.ey = icmp ult i64 %..i.i.i, %indvars.iv.i.i.i
  %i.ez = sub nuw i64 %indvars.iv.i.i.i, %..i.i.i
  %i.fa = sub nuw i64 %..i.i.i, %indvars.iv.i.i.i
  %i.fb = select i1 %i.ey, i64 %i.ez, i64 %i.fa
  %i.fc = add i64 %indvars.iv.i.i.i, %..i.i.i     ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.cb
  %i.fe = sub i64 %i.ch, %i.fc
  %i.ff = select i1 %i.fd, i64 %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ex ; 2 uses
  %i.fh = mul i64 %i.fb, %i.ci
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fh ; 2 uses
  %i.fj = mul i64 %i.ff, %i.ci
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ex ; 2 uses
  br i1 %min.iters.check285, label %.preheader.i.i.i.preheader, label %vector.body288

vector.body288:                                   ; preds = %dwt_interleave_rows.exit.i.i.i, %vector.body288
  %index289 = phi i64 [ %index.next306, %vector.body288 ], [ 0, %dwt_interleave_rows.exit.i.i.i ] ; 2 uses
  %i.fm = shl nuw i64 %index289, 2                ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fm
  %wide.vec290 = load <16 x float>, ptr %i.fn, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fm
  %wide.vec295 = load <16 x float>, ptr %i.fo, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fm
  %wide.vec300 = load <16 x float>, ptr %i.fp, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fm
  %i.fr = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec290, splat (float 2.000000e+00)
  %i.fs = fadd reassoc nsz arcp contract afn <16 x float> %i.fr, %wide.vec295
  %interleaved.vec305 = fadd reassoc nsz arcp contract afn <16 x float> %i.fs, %wide.vec300
  store <16 x float> %interleaved.vec305, ptr %i.fq, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %index.next306 = add nuw i64 %index289, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next306, %n.vec287
  br i1 %i.ft, label %middle.block307, label %vector.body288, !llvm.loop !54

middle.block307:                                  ; preds = %vector.body288
  br i1 %cmp.n308, label %._crit_edge.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %dwt_interleave_rows.exit.i.i.i, %middle.block307
  %.05263.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.i.i.i ], [ %i.ev, %middle.block307 ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.05263.i.i.i = phi i64 [ %i.ge, %.preheader.i.i.i ], [ %.05263.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.05263.i.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.05263.i.i.i
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.05263.i.i.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.05263.i.i.i
  %i.fy = load <4 x float>, ptr %i.fu, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fy, splat (float 2.000000e+00)
  %i.ga = load <4 x float>, ptr %i.fv, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.gb = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, %i.ga
  %i.gc = load <4 x float>, ptr %i.fw, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.gd = fadd reassoc nsz arcp contract afn <4 x float> %i.gb, %i.gc
  store <4 x float> %i.gd, ptr %i.fx, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %i.ge = add nuw i64 %.05263.i.i.i, 4            ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.ci
  br i1 %i.gf, label %.preheader.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !55

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i, %middle.block307
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.cb
  br i1 %exitcond.not.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i

dwt_decompose_vert.exit.i.i:                      ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  br label %dwt_decompose_layer.exit.i

.lr.ph96.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %._crit_edge.us.us.i.i.i, %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %i.gg = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.cc, i64 %i.ce) ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.gh = sub nsw i64 %i.cc, %i.gg                ; 9 uses
  %.not105.not.i.i.i = icmp ugt i32 %.val.i, %i.cd ; 2 uses
  %sext.i.i.i = shl i64 %i.gh, 32
  %i.gi = ashr exact i64 %sext.i.i.i, 32          ; 11 uses
  %i.gj = icmp ult i64 %i.gi, %i.cc
  %i.gk = shl nsw i64 %i.cc, 1
  %i.gl = add nsw i64 %i.gk, -2                   ; 4 uses
  %i.gm = shl nsw i64 %i.cc, 4                    ; 12 uses
  br i1 %i.gj, label %.lr.ph96.split.us.i.i.i, label %.lr.ph96.split.i.i.i

.lr.ph96.split.us.i.i.i:                          ; preds = %.lr.ph96.i.i.i
  br i1 %.not105.not.i.i.i, label %.lr.ph.us.us.i.i.i.preheader, label %.lr.ph92.us.i.i.i.preheader

.lr.ph92.us.i.i.i.preheader:                      ; preds = %.lr.ph96.split.us.i.i.i
  %i.gn = sub nsw i64 %i.cc, %i.gi                ; 3 uses
  %min.iters.check174 = icmp ult i64 %i.gn, 4
  %n.vec176 = and i64 %i.gn, -4                   ; 3 uses
  %i.go = add nsw i64 %i.gi, %n.vec176
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %i.gi, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction181 = add nuw nsw <4 x i64> %broadcast.splat180, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n217 = icmp eq i64 %i.gn, %n.vec176
  br label %.lr.ph92.us.i.i.i

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %.lr.ph96.split.us.i.i.i
  %min.iters.check135 = icmp ult i64 %i.gh, 4
  %n.vec137 = and i64 %i.gh, -4                   ; 3 uses
  %broadcast.splatinsert138 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat139 = shufflevector <4 x i64> %broadcast.splatinsert138, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n171 = icmp eq i64 %i.gh, %n.vec137
  %i.gp = sub nsw i64 %i.cc, %i.gi                ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.gp, 4
  %n.vec98 = and i64 %i.gp, -4                    ; 3 uses
  %i.gq = add nsw i64 %i.gi, %n.vec98
  %broadcast.splatinsert99 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat100 = shufflevector <4 x i64> %broadcast.splatinsert99, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <4 x i64> poison, i64 %i.gi, i64 0
  %broadcast.splat102 = shufflevector <4 x i64> %broadcast.splatinsert101, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat102, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n132 = icmp eq i64 %i.gp, %n.vec98
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader, %._crit_edge93.us.us.i.i.i
  %indvars.iv136.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i, %._crit_edge93.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %i.gr = mul i64 %indvars.iv136.i.i.i, %i.ci     ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gr ; 4 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.gr ; 13 uses
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.body140

vector.body140:                                   ; preds = %.lr.ph.us.us.i.i.i, %vector.body140
  %index141 = phi i64 [ %index.next168, %vector.body140 ], [ 0, %.lr.ph.us.us.i.i.i ] ; 3 uses
  %vec.ind142 = phi <4 x i64> [ %vec.ind.next169, %vector.body140 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.gu = sub nsw <4 x i64> %vec.ind142, %broadcast.splat139
  %i.gv = trunc nsw <4 x i64> %i.gu to <4 x i32>
  %i.gw = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.gv, i1 true)
  %i.gx = zext nneg <4 x i32> %i.gw to <4 x i64>
  %i.gy = add nsw i64 %index141, %i.gg
  %i.gz = shl nuw nsw <4 x i64> %i.gx, splat (i64 4)
  %wide.gep143 = getelementptr inbounds nuw i8, ptr %i.gt, <4 x i64> %i.gz ; 4 uses
  %i.ha = shl nsw i64 %i.gy, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ha
  %i.hc = shl nuw nsw i64 %index141, 2            ; 3 uses
  %wide.masked.gather144 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep143, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %wide.vec145 = load <16 x float>, ptr %i.hb, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec146 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec147 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec148 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec149 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hc
  %wide.vec150 = load <16 x float>, ptr %i.hd, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec151 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec152 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec153 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec154 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec151, splat (float 2.000000e+00)
  %i.hf = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather144, %i.he
  %i.hg = fadd reassoc nsz arcp contract afn <4 x float> %i.hf, %strided.vec146
  %i.hh = fmul reassoc nsz arcp contract afn <4 x float> %i.hg, splat (float 6.250000e-02) ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.hc
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.hc ; 2 uses
  %wide.vec155 = load <16 x float>, ptr %i.hj, align 4, !tbaa !49, !alias.scope !62, !noalias !61 ; 4 uses
  %strided.vec156 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec157 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec158 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec159 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec156, %i.hh
  %wide.gep160 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 4
  %wide.masked.gather161 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep160, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.hl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec152, splat (float 2.000000e+00)
  %i.hm = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather161, %i.hl
  %i.hn = fadd reassoc nsz arcp contract afn <4 x float> %i.hm, %strided.vec147
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %i.hn, splat (float 6.250000e-02) ; 2 uses
  %i.hp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec157, %i.ho
  %wide.gep162 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 8
  %wide.masked.gather163 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep162, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec153, splat (float 2.000000e+00)
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather163, %i.hq
  %i.hs = fadd reassoc nsz arcp contract afn <4 x float> %i.hr, %strided.vec148
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hs, splat (float 6.250000e-02) ; 2 uses
  %i.hu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec158, %i.ht
  %wide.gep164 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 12
  %wide.masked.gather165 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep164, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.hv = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec154, splat (float 2.000000e+00)
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather165, %i.hv
  %i.hx = fadd reassoc nsz arcp contract afn <4 x float> %i.hw, %strided.vec149
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %i.hx, splat (float 6.250000e-02) ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hh, <4 x float> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ia = shufflevector <4 x float> %i.ht, <4 x float> %i.hy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec166 = shufflevector <8 x float> %i.hz, <8 x float> %i.ia, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec166, ptr %i.hi, align 64, !tbaa !49, !noalias !63
  %i.ib = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec159, %i.hy
  %i.ic = shufflevector <4 x float> %i.hk, <4 x float> %i.hp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.id = shufflevector <4 x float> %i.hu, <4 x float> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec167 = shufflevector <8 x float> %i.ic, <8 x float> %i.id, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec167, ptr %i.hj, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %index.next168 = add nuw i64 %index141, 4       ; 2 uses
  %vec.ind.next169 = add nuw nsw <4 x i64> %vec.ind142, splat (i64 4)
  %i.ie = icmp eq i64 %index.next168, %n.vec137
  br i1 %i.ie, label %middle.block170, label %vector.body140, !llvm.loop !64

middle.block170:                                  ; preds = %vector.body140
  br i1 %cmp.n171, label %._crit_edge.us.us.i15.i.i.preheader, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph.us.us.i.i.i, %middle.block170
  %indvars.iv128.i.i.i.ph = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ %n.vec137, %middle.block170 ]
  br label %scalar.ph134

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %indvars.iv128.i.i.i = phi i64 [ %indvars.iv.next129.i.i.i, %scalar.ph134 ], [ %indvars.iv128.i.i.i.ph, %scalar.ph134.preheader ] ; 4 uses
  %i.if = sub nsw i64 %indvars.iv128.i.i.i, %i.gg
  %i.ig = trunc nsw i64 %i.if to i32
  %i.ih = call i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = add nsw i64 %indvars.iv128.i.i.i, %i.gg
  %.idx85.us.us.i.i.i = shl nuw nsw i64 %i.ii, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx85.us.us.i.i.i
  %.idx86.us.us.i.i.i = shl nsw i64 %i.ij, 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx86.us.us.i.i.i
  %i.im = shl nuw nsw i64 %indvars.iv128.i.i.i, 2 ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.im
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.im ; 2 uses
  %i.iq = load <4 x float>, ptr %i.ik, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.ir = load <4 x float>, ptr %i.il, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.is = load <4 x float>, ptr %i.in, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.is, splat (float 2.000000e+00)
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.iq, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.ir
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, splat (float 6.250000e-02) ; 2 uses
  store <4 x float> %i.iw, ptr %i.io, align 16, !tbaa !49, !noalias !63
  %i.ix = load <4 x float>, ptr %i.ip, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %i.iy = fsub reassoc nsz arcp contract afn <4 x float> %i.ix, %i.iw
  store <4 x float> %i.iy, ptr %i.ip, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %indvars.iv.next129.i.i.i = add nuw nsw i64 %indvars.iv128.i.i.i, 1 ; 2 uses
  %exitcond131.not.i.i.i = icmp eq i64 %indvars.iv.next129.i.i.i, %i.gh
  br i1 %exitcond131.not.i.i.i, label %._crit_edge.us.us.i15.i.i.preheader, label %scalar.ph134, !llvm.loop !65

._crit_edge.us.us.i15.i.i.preheader:              ; preds = %scalar.ph134, %middle.block170
  br i1 %min.iters.check96, label %._crit_edge.us.us.i15.i.i.preheader310, label %vector.body103

vector.body103:                                   ; preds = %._crit_edge.us.us.i15.i.i.preheader, %vector.body103
  %index104 = phi i64 [ %index.next129, %vector.body103 ], [ 0, %._crit_edge.us.us.i15.i.i.preheader ] ; 2 uses
  %vec.ind105 = phi <4 x i64> [ %vec.ind.next130, %vector.body103 ], [ %induction, %._crit_edge.us.us.i15.i.i.preheader ] ; 2 uses
  %i.iz = add nuw i64 %i.gi, %index104            ; 2 uses
  %i.ja = sub nsw <4 x i64> %vec.ind105, %broadcast.splat100
  %i.jb = trunc nsw <4 x i64> %i.ja to <4 x i32>
  %i.jc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.jb, i1 true)
  %i.jd = zext nneg <4 x i32> %i.jc to <4 x i64>
  %i.je = add i64 %i.gg, %i.iz
  %i.jf = sub i64 %i.gl, %i.je
  %i.jg = shl nuw nsw <4 x i64> %i.jd, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.gt, <4 x i64> %i.jg ; 4 uses
  %i.jh = shl nsw i64 %i.jf, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.jh
  %i.jj = shl nsw i64 %i.iz, 2                    ; 3 uses
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -48
  %wide.vec = load <16 x float>, ptr %i.jk, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %reverse = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 12, i32 8, i32 4, i32 0>
  %reverse107 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 13, i32 9, i32 5, i32 1>
  %reverse109 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 14, i32 10, i32 6, i32 2>
  %reverse111 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 15, i32 11, i32 7, i32 3>
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.jj
  %wide.vec112 = load <16 x float>, ptr %i.jl, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec113 = shufflevector <16 x float> %wide.vec112, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec114 = shufflevector <16 x float> %wide.vec112, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec115 = shufflevector <16 x float> %wide.vec112, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec116 = shufflevector <16 x float> %wide.vec112, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec113, splat (float 2.000000e+00)
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather, %i.jm
  %i.jo = fadd reassoc nsz arcp contract afn <4 x float> %i.jn, %reverse
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %i.jo, splat (float 6.250000e-02) ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.jj
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.jj ; 2 uses
  %wide.vec117 = load <16 x float>, ptr %i.jr, align 4, !tbaa !49, !alias.scope !62, !noalias !61 ; 4 uses
  %strided.vec118 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec119 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec120 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec121 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.js = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec118, %i.jp
  %wide.gep122 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4
  %wide.masked.gather123 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep122, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.jt = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec114, splat (float 2.000000e+00)
  %i.ju = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather123, %i.jt
  %i.jv = fadd reassoc nsz arcp contract afn <4 x float> %i.ju, %reverse107
  %i.jw = fmul reassoc nsz arcp contract afn <4 x float> %i.jv, splat (float 6.250000e-02) ; 2 uses
  %i.jx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec119, %i.jw
  %wide.gep124 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather125 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep124, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.jy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec115, splat (float 2.000000e+00)
  %i.jz = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather125, %i.jy
  %i.ka = fadd reassoc nsz arcp contract afn <4 x float> %i.jz, %reverse109
  %i.kb = fmul reassoc nsz arcp contract afn <4 x float> %i.ka, splat (float 6.250000e-02) ; 2 uses
  %i.kc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec120, %i.kb
  %wide.gep126 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 12
  %wide.masked.gather127 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep126, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.kd = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec116, splat (float 2.000000e+00)
  %i.ke = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather127, %i.kd
  %i.kf = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, %reverse111
  %i.kg = fmul reassoc nsz arcp contract afn <4 x float> %i.kf, splat (float 6.250000e-02) ; 2 uses
  %i.kh = shufflevector <4 x float> %i.jp, <4 x float> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ki = shufflevector <4 x float> %i.kb, <4 x float> %i.kg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.kh, <8 x float> %i.ki, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.jq, align 16, !tbaa !49, !noalias !63
  %i.kj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec121, %i.kg
  %i.kk = shufflevector <4 x float> %i.js, <4 x float> %i.jx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kl = shufflevector <4 x float> %i.kc, <4 x float> %i.kj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec128 = shufflevector <8 x float> %i.kk, <8 x float> %i.kl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec128, ptr %i.jr, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %index.next129 = add nuw i64 %index104, 4       ; 2 uses
  %vec.ind.next130 = add nuw nsw <4 x i64> %vec.ind105, splat (i64 4)
  %i.km = icmp eq i64 %index.next129, %n.vec98
  br i1 %i.km, label %middle.block131, label %vector.body103, !llvm.loop !66

middle.block131:                                  ; preds = %vector.body103
  br i1 %cmp.n132, label %._crit_edge93.us.us.i.i.i, label %._crit_edge.us.us.i15.i.i.preheader310

._crit_edge.us.us.i15.i.i.preheader310:           ; preds = %._crit_edge.us.us.i15.i.i.preheader, %middle.block131
  %indvars.iv133.i.i.i.ph = phi i64 [ %i.gi, %._crit_edge.us.us.i15.i.i.preheader ], [ %i.gq, %middle.block131 ]
  br label %._crit_edge.us.us.i15.i.i

._crit_edge.us.us.i15.i.i:                        ; preds = %._crit_edge.us.us.i15.i.i.preheader310, %._crit_edge.us.us.i15.i.i
  %indvars.iv133.i.i.i = phi i64 [ %indvars.iv.next134.i.i.i, %._crit_edge.us.us.i15.i.i ], [ %indvars.iv133.i.i.i.ph, %._crit_edge.us.us.i15.i.i.preheader310 ] ; 4 uses
  %i.kn = sub nsw i64 %indvars.iv133.i.i.i, %i.gg
  %i.ko = trunc nsw i64 %i.kn to i32
  %i.kp = call i32 @llvm.abs.i32(i32 %i.ko, i1 true)
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = add i64 %i.gg, %indvars.iv133.i.i.i
  %i.ks = sub i64 %i.gl, %i.kr
  %.idx.us.us.i.i.i = shl nuw nsw i64 %i.kq, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.us.us.i.i.i
  %.idx84.us.us.i.i.i = shl nsw i64 %i.ks, 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx84.us.us.i.i.i
  %i.kv = shl nsw i64 %indvars.iv133.i.i.i, 2     ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.kv
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.kv ; 2 uses
  %i.kz = load <4 x float>, ptr %i.kt, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.la = load <4 x float>, ptr %i.ku, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.lb = load <4 x float>, ptr %i.kw, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.lb, splat (float 2.000000e+00)
  %i.ld = fadd reassoc nsz arcp contract afn <4 x float> %i.kz, %i.lc
  %i.le = fadd reassoc nsz arcp contract afn <4 x float> %i.ld, %i.la
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %i.le, splat (float 6.250000e-02) ; 2 uses
  store <4 x float> %i.lf, ptr %i.kx, align 16, !tbaa !49, !noalias !63
  %i.lg = load <4 x float>, ptr %i.ky, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %i.lh = fsub reassoc nsz arcp contract afn <4 x float> %i.lg, %i.lf
  store <4 x float> %i.lh, ptr %i.ky, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %indvars.iv.next134.i.i.i = add nuw nsw i64 %indvars.iv133.i.i.i, 1 ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %indvars.iv.next134.i.i.i, %i.cc
  br i1 %exitcond11.not.i.i, label %._crit_edge93.us.us.i.i.i, label %._crit_edge.us.us.i15.i.i, !llvm.loop !67

._crit_edge93.us.us.i.i.i:                        ; preds = %._crit_edge.us.us.i15.i.i, %middle.block131
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gt, ptr nonnull align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next137.i.i.i = add nuw nsw i64 %indvars.iv136.i.i.i, 1 ; 2 uses
  %exitcond139.not.i.i.i = icmp eq i64 %indvars.iv.next137.i.i.i, %i.cb
  br i1 %exitcond139.not.i.i.i, label %dwt_decompose_layer.exit.i, label %.lr.ph.us.us.i.i.i

.lr.ph92.us.i.i.i:                                ; preds = %.lr.ph92.us.i.i.i.preheader, %._crit_edge93.us.i.i.i
  %indvars.iv123.i.i.i = phi i64 [ %indvars.iv.next124.i.i.i, %._crit_edge93.us.i.i.i ], [ 0, %.lr.ph92.us.i.i.i.preheader ] ; 2 uses
  %i.li = mul i64 %indvars.iv123.i.i.i, %i.ci     ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.li ; 7 uses
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.body182

vector.body182:                                   ; preds = %.lr.ph92.us.i.i.i, %vector.body182
  %index183 = phi i64 [ %index.next214, %vector.body182 ], [ 0, %.lr.ph92.us.i.i.i ] ; 2 uses
  %vec.ind184 = phi <4 x i64> [ %vec.ind.next215, %vector.body182 ], [ %induction181, %.lr.ph92.us.i.i.i ] ; 2 uses
  %i.ll = add nuw i64 %i.gi, %index183            ; 2 uses
  %i.lm = sub nsw <4 x i64> %vec.ind184, %broadcast.splat178
  %i.ln = trunc nsw <4 x i64> %i.lm to <4 x i32>
  %i.lo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ln, i1 true)
  %i.lp = zext nneg <4 x i32> %i.lo to <4 x i64>
  %i.lq = add i64 %i.gg, %i.ll
  %i.lr = sub i64 %i.gl, %i.lq
  %i.ls = shl nuw nsw <4 x i64> %i.lp, splat (i64 4)
  %wide.gep185 = getelementptr inbounds nuw i8, ptr %i.lk, <4 x i64> %i.ls ; 4 uses
  %i.lt = shl nsw i64 %i.lr, 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lt
  %i.lv = shl nsw i64 %i.ll, 2                    ; 3 uses
  %wide.masked.gather186 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep185, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 -48
  %wide.vec187 = load <16 x float>, ptr %i.lw, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %reverse189 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 12, i32 8, i32 4, i32 0>
  %reverse191 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 13, i32 9, i32 5, i32 1>
  %reverse193 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 14, i32 10, i32 6, i32 2>
  %reverse195 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 15, i32 11, i32 7, i32 3>
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lv
  %wide.vec196 = load <16 x float>, ptr %i.lx, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec197 = shufflevector <16 x float> %wide.vec196, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec198 = shufflevector <16 x float> %wide.vec196, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec199 = shufflevector <16 x float> %wide.vec196, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec200 = shufflevector <16 x float> %wide.vec196, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ly = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec197, splat (float 2.000000e+00)
  %i.lz = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather186, %i.ly
  %i.ma = fadd reassoc nsz arcp contract afn <4 x float> %i.lz, %reverse189
  %i.mb = fmul reassoc nsz arcp contract afn <4 x float> %i.ma, splat (float 6.250000e-02) ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.lv
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lv ; 2 uses
  %wide.vec201 = load <16 x float>, ptr %i.md, align 4, !tbaa !49, !alias.scope !62, !noalias !61 ; 4 uses
  %strided.vec202 = shufflevector <16 x float> %wide.vec201, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec203 = shufflevector <16 x float> %wide.vec201, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec204 = shufflevector <16 x float> %wide.vec201, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec205 = shufflevector <16 x float> %wide.vec201, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.me = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec202, %i.mb
  %wide.gep206 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep185, i64 4
  %wide.masked.gather207 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep206, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec198, splat (float 2.000000e+00)
  %i.mg = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather207, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %reverse191
  %i.mi = fmul reassoc nsz arcp contract afn <4 x float> %i.mh, splat (float 6.250000e-02) ; 2 uses
  %i.mj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec203, %i.mi
  %wide.gep208 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep185, i64 8
  %wide.masked.gather209 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep208, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.mk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec199, splat (float 2.000000e+00)
  %i.ml = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather209, %i.mk
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.ml, %reverse193
  %i.mn = fmul reassoc nsz arcp contract afn <4 x float> %i.mm, splat (float 6.250000e-02) ; 2 uses
  %i.mo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec204, %i.mn
  %wide.gep210 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep185, i64 12
  %wide.masked.gather211 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep210, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec200, splat (float 2.000000e+00)
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather211, %i.mp
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %reverse195
  %i.ms = fmul reassoc nsz arcp contract afn <4 x float> %i.mr, splat (float 6.250000e-02) ; 2 uses
  %i.mt = shufflevector <4 x float> %i.mb, <4 x float> %i.mi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mu = shufflevector <4 x float> %i.mn, <4 x float> %i.ms, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec212 = shufflevector <8 x float> %i.mt, <8 x float> %i.mu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec212, ptr %i.mc, align 16, !tbaa !49, !noalias !63
  %i.mv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec205, %i.ms
  %i.mw = shufflevector <4 x float> %i.me, <4 x float> %i.mj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mx = shufflevector <4 x float> %i.mo, <4 x float> %i.mv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec213 = shufflevector <8 x float> %i.mw, <8 x float> %i.mx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec213, ptr %i.md, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %index.next214 = add nuw i64 %index183, 4       ; 2 uses
  %vec.ind.next215 = add nuw nsw <4 x i64> %vec.ind184, splat (i64 4)
  %i.my = icmp eq i64 %index.next214, %n.vec176
  br i1 %i.my, label %middle.block216, label %vector.body182, !llvm.loop !68

middle.block216:                                  ; preds = %vector.body182
  br i1 %cmp.n217, label %._crit_edge93.us.i.i.i, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph92.us.i.i.i, %middle.block216
  %indvars.iv120.i.i.i.ph = phi i64 [ %i.gi, %.lr.ph92.us.i.i.i ], [ %i.go, %middle.block216 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv120.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i, %scalar.ph173 ], [ %indvars.iv120.i.i.i.ph, %scalar.ph173.preheader ] ; 4 uses
  %i.mz = sub nsw i64 %indvars.iv120.i.i.i, %i.gg
  %i.na = trunc nsw i64 %i.mz to i32
  %i.nb = call i32 @llvm.abs.i32(i32 %i.na, i1 true)
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = add i64 %i.gg, %indvars.iv120.i.i.i
  %i.ne = sub i64 %i.gl, %i.nd
  %.idx.us.i.i.i = shl nuw nsw i64 %i.nc, 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx.us.i.i.i
  %.idx84.us.i.i.i = shl nsw i64 %i.ne, 4
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx84.us.i.i.i
  %i.nh = shl nsw i64 %indvars.iv120.i.i.i, 2     ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.nh
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.nh ; 2 uses
  %i.nl = load <4 x float>, ptr %i.nf, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.nm = load <4 x float>, ptr %i.ng, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.nn = load <4 x float>, ptr %i.ni, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.no = fmul reassoc nsz arcp contract afn <4 x float> %i.nn, splat (float 2.000000e+00)
  %i.np = fadd reassoc nsz arcp contract afn <4 x float> %i.nl, %i.no
  %i.nq = fadd reassoc nsz arcp contract afn <4 x float> %i.np, %i.nm
  %i.nr = fmul reassoc nsz arcp contract afn <4 x float> %i.nq, splat (float 6.250000e-02) ; 2 uses
  store <4 x float> %i.nr, ptr %i.nj, align 16, !tbaa !49, !noalias !63
  %i.ns = load <4 x float>, ptr %i.nk, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %i.nt = fsub reassoc nsz arcp contract afn <4 x float> %i.ns, %i.nr
  store <4 x float> %i.nt, ptr %i.nk, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %indvars.iv.next121.i.i.i = add nuw nsw i64 %indvars.iv120.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next121.i.i.i, %i.cc
  br i1 %exitcond.not.i.i, label %._crit_edge93.us.i.i.i, label %scalar.ph173, !llvm.loop !69

._crit_edge93.us.i.i.i:                           ; preds = %scalar.ph173, %middle.block216
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr nonnull align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next124.i.i.i = add nuw nsw i64 %indvars.iv123.i.i.i, 1 ; 2 uses
  %exitcond126.not.i.i.i = icmp eq i64 %indvars.iv.next124.i.i.i, %i.cb
  br i1 %exitcond126.not.i.i.i, label %dwt_decompose_layer.exit.i, label %.lr.ph92.us.i.i.i

.lr.ph96.split.i.i.i:                             ; preds = %.lr.ph96.i.i.i
  br i1 %.not105.not.i.i.i, label %.lr.ph.us103.i.i.i.preheader, label %.lr.ph96.split.split.i.i.i.preheader

.lr.ph96.split.split.i.i.i.preheader:             ; preds = %.lr.ph96.split.i.i.i
  %xtraiter = and i64 %i.cb, 7
  %i.nu = icmp ult i32 %.val82.i, 8
  br i1 %i.nu, label %.lr.ph96.split.split.i.i.i.epil.preheader, label %.lr.ph96.split.split.i.i.i.preheader.new

.lr.ph96.split.split.i.i.i.preheader.new:         ; preds = %.lr.ph96.split.split.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, -8
  br label %.lr.ph96.split.split.i.i.i

.lr.ph.us103.i.i.i.preheader:                     ; preds = %.lr.ph96.split.i.i.i
  %min.iters.check220 = icmp ult i64 %i.gh, 4
  %n.vec222 = and i64 %i.gh, -4                   ; 3 uses
  %broadcast.splatinsert223 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat224 = shufflevector <4 x i64> %broadcast.splatinsert223, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n256 = icmp eq i64 %i.gh, %n.vec222
  br label %.lr.ph.us103.i.i.i

.lr.ph.us103.i.i.i:                               ; preds = %.lr.ph.us103.i.i.i.preheader, %._crit_edge.us104.i.i.i
  %indvars.iv115.i.i.i = phi i64 [ %indvars.iv.next116.i.i.i, %._crit_edge.us104.i.i.i ], [ 0, %.lr.ph.us103.i.i.i.preheader ] ; 2 uses
  %i.nv = mul i64 %indvars.iv115.i.i.i, %i.ci     ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.nv ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.nv ; 7 uses
  br i1 %min.iters.check220, label %scalar.ph219.preheader, label %vector.body225

vector.body225:                                   ; preds = %.lr.ph.us103.i.i.i, %vector.body225
  %index226 = phi i64 [ %index.next253, %vector.body225 ], [ 0, %.lr.ph.us103.i.i.i ] ; 3 uses
  %vec.ind227 = phi <4 x i64> [ %vec.ind.next254, %vector.body225 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph.us103.i.i.i ] ; 2 uses
  %i.ny = sub nsw <4 x i64> %vec.ind227, %broadcast.splat224
  %i.nz = trunc nsw <4 x i64> %i.ny to <4 x i32>
  %i.oa = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nz, i1 true)
  %i.ob = zext nneg <4 x i32> %i.oa to <4 x i64>
  %i.oc = add nsw i64 %index226, %i.gg
  %i.od = shl nuw nsw <4 x i64> %i.ob, splat (i64 4)
  %wide.gep228 = getelementptr inbounds nuw i8, ptr %i.nx, <4 x i64> %i.od ; 4 uses
  %i.oe = shl nsw i64 %i.oc, 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oe
  %i.og = shl nuw nsw i64 %index226, 2            ; 3 uses
  %wide.masked.gather229 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep228, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %wide.vec230 = load <16 x float>, ptr %i.of, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec231 = shufflevector <16 x float> %wide.vec230, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec232 = shufflevector <16 x float> %wide.vec230, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec233 = shufflevector <16 x float> %wide.vec230, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec234 = shufflevector <16 x float> %wide.vec230, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.og
  %wide.vec235 = load <16 x float>, ptr %i.oh, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec236 = shufflevector <16 x float> %wide.vec235, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec237 = shufflevector <16 x float> %wide.vec235, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec238 = shufflevector <16 x float> %wide.vec235, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec239 = shufflevector <16 x float> %wide.vec235, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.oi = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec236, splat (float 2.000000e+00)
  %i.oj = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather229, %i.oi
  %i.ok = fadd reassoc nsz arcp contract afn <4 x float> %i.oj, %strided.vec231
  %i.ol = fmul reassoc nsz arcp contract afn <4 x float> %i.ok, splat (float 6.250000e-02) ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.og
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.og ; 2 uses
  %wide.vec240 = load <16 x float>, ptr %i.on, align 4, !tbaa !49, !alias.scope !62, !noalias !61 ; 4 uses
  %strided.vec241 = shufflevector <16 x float> %wide.vec240, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec242 = shufflevector <16 x float> %wide.vec240, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec243 = shufflevector <16 x float> %wide.vec240, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec244 = shufflevector <16 x float> %wide.vec240, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.oo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec241, %i.ol
  %wide.gep245 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep228, i64 4
  %wide.masked.gather246 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep245, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.op = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec237, splat (float 2.000000e+00)
  %i.oq = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather246, %i.op
  %i.or = fadd reassoc nsz arcp contract afn <4 x float> %i.oq, %strided.vec232
  %i.os = fmul reassoc nsz arcp contract afn <4 x float> %i.or, splat (float 6.250000e-02) ; 2 uses
  %i.ot = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec242, %i.os
  %wide.gep247 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep228, i64 8
  %wide.masked.gather248 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep247, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.ou = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec238, splat (float 2.000000e+00)
  %i.ov = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather248, %i.ou
  %i.ow = fadd reassoc nsz arcp contract afn <4 x float> %i.ov, %strided.vec233
  %i.ox = fmul reassoc nsz arcp contract afn <4 x float> %i.ow, splat (float 6.250000e-02) ; 2 uses
  %i.oy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec243, %i.ox
  %wide.gep249 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep228, i64 12
  %wide.masked.gather250 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep249, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.oz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec239, splat (float 2.000000e+00)
  %i.pa = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather250, %i.oz
  %i.pb = fadd reassoc nsz arcp contract afn <4 x float> %i.pa, %strided.vec234
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, splat (float 6.250000e-02) ; 2 uses
  %i.pd = shufflevector <4 x float> %i.ol, <4 x float> %i.os, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pe = shufflevector <4 x float> %i.ox, <4 x float> %i.pc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec251 = shufflevector <8 x float> %i.pd, <8 x float> %i.pe, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec251, ptr %i.om, align 64, !tbaa !49, !noalias !63
  %i.pf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec244, %i.pc
  %i.pg = shufflevector <4 x float> %i.oo, <4 x float> %i.ot, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ph = shufflevector <4 x float> %i.oy, <4 x float> %i.pf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec252 = shufflevector <8 x float> %i.pg, <8 x float> %i.ph, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec252, ptr %i.on, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %index.next253 = add nuw i64 %index226, 4       ; 2 uses
  %vec.ind.next254 = add nuw nsw <4 x i64> %vec.ind227, splat (i64 4)
  %i.pi = icmp eq i64 %index.next253, %n.vec222
  br i1 %i.pi, label %middle.block255, label %vector.body225, !llvm.loop !70

middle.block255:                                  ; preds = %vector.body225
  br i1 %cmp.n256, label %._crit_edge.us104.i.i.i, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %.lr.ph.us103.i.i.i, %middle.block255
  %indvars.iv111.i.i.i.ph = phi i64 [ 0, %.lr.ph.us103.i.i.i ], [ %n.vec222, %middle.block255 ]
  br label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219.preheader, %scalar.ph219
  %indvars.iv111.i.i.i = phi i64 [ %indvars.iv.next112.i.i.i, %scalar.ph219 ], [ %indvars.iv111.i.i.i.ph, %scalar.ph219.preheader ] ; 4 uses
  %i.pj = sub nsw i64 %indvars.iv111.i.i.i, %i.gg
  %i.pk = trunc nsw i64 %i.pj to i32
  %i.pl = call i32 @llvm.abs.i32(i32 %i.pk, i1 true)
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = add nsw i64 %indvars.iv111.i.i.i, %i.gg
  %.idx85.us100.i.i.i = shl nuw nsw i64 %i.pm, 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx85.us100.i.i.i
  %.idx86.us101.i.i.i = shl nsw i64 %i.pn, 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx86.us101.i.i.i
  %i.pq = shl nuw nsw i64 %indvars.iv111.i.i.i, 2 ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.pq
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.pq ; 2 uses
  %i.pu = load <4 x float>, ptr %i.po, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.pv = load <4 x float>, ptr %i.pp, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.pw = load <4 x float>, ptr %i.pr, align 4, !tbaa !49, !alias.scope !61, !noalias !62
  %i.px = fmul reassoc nsz arcp contract afn <4 x float> %i.pw, splat (float 2.000000e+00)
  %i.py = fadd reassoc nsz arcp contract afn <4 x float> %i.pu, %i.px
  %i.pz = fadd reassoc nsz arcp contract afn <4 x float> %i.py, %i.pv
  %i.qa = fmul reassoc nsz arcp contract afn <4 x float> %i.pz, splat (float 6.250000e-02) ; 2 uses
  store <4 x float> %i.qa, ptr %i.ps, align 16, !tbaa !49, !noalias !63
  %i.qb = load <4 x float>, ptr %i.pt, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %i.qc = fsub reassoc nsz arcp contract afn <4 x float> %i.qb, %i.qa
  store <4 x float> %i.qc, ptr %i.pt, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %indvars.iv.next112.i.i.i = add nuw nsw i64 %indvars.iv111.i.i.i, 1 ; 2 uses
  %exitcond114.not.i.i.i = icmp eq i64 %indvars.iv.next112.i.i.i, %i.gh
  br i1 %exitcond114.not.i.i.i, label %._crit_edge.us104.i.i.i, label %scalar.ph219, !llvm.loop !71

._crit_edge.us104.i.i.i:                          ; preds = %scalar.ph219, %middle.block255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nx, ptr nonnull align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next116.i.i.i = add nuw nsw i64 %indvars.iv115.i.i.i, 1 ; 2 uses
  %exitcond118.not.i.i.i = icmp eq i64 %indvars.iv.next116.i.i.i, %i.cb
  br i1 %exitcond118.not.i.i.i, label %dwt_decompose_layer.exit.i, label %.lr.ph.us103.i.i.i

.lr.ph96.split.split.i.i.i:                       ; preds = %.lr.ph96.split.split.i.i.i, %.lr.ph96.split.split.i.i.i.preheader.new
  %indvars.iv.i12.i.i = phi i64 [ 0, %.lr.ph96.split.split.i.i.i.preheader.new ], [ %indvars.iv.next.i13.i.i.7, %.lr.ph96.split.split.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph96.split.split.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph96.split.split.i.i.i ]
  %i.qd = mul i64 %indvars.iv.i12.i.i, %i.ci
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qd
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qe, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i = or disjoint i64 %indvars.iv.i12.i.i, 1
  %i.qf = mul i64 %indvars.iv.next.i13.i.i, %i.ci
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qf
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qg, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.1 = or disjoint i64 %indvars.iv.i12.i.i, 2
  %i.qh = mul i64 %indvars.iv.next.i13.i.i.1, %i.ci
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qi, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.2 = or disjoint i64 %indvars.iv.i12.i.i, 3
  %i.qj = mul i64 %indvars.iv.next.i13.i.i.2, %i.ci
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qj
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qk, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.3 = or disjoint i64 %indvars.iv.i12.i.i, 4
  %i.ql = mul i64 %indvars.iv.next.i13.i.i.3, %i.ci
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ql
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qm, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.4 = or disjoint i64 %indvars.iv.i12.i.i, 5
  %i.qn = mul i64 %indvars.iv.next.i13.i.i.4, %i.ci
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qn
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qo, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.5 = or disjoint i64 %indvars.iv.i12.i.i, 6
  %i.qp = mul i64 %indvars.iv.next.i13.i.i.5, %i.ci
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qp
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qq, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.6 = or disjoint i64 %indvars.iv.i12.i.i, 7
  %i.qr = mul i64 %indvars.iv.next.i13.i.i.6, %i.ci
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qr
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qs, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.7 = add nuw nsw i64 %indvars.iv.i12.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %dwt_decompose_layer.exit.i.loopexit313.unr-lcssa, label %.lr.ph96.split.split.i.i.i

dwt_decompose_layer.exit.i.loopexit313.unr-lcssa: ; preds = %.lr.ph96.split.split.i.i.i
  %i.qt = and i32 %.val82.i, 7
  %lcmp.mod.not = icmp eq i32 %i.qt, 0
  br i1 %lcmp.mod.not, label %dwt_decompose_layer.exit.i, label %.lr.ph96.split.split.i.i.i.epil.preheader

.lr.ph96.split.split.i.i.i.epil.preheader:        ; preds = %dwt_decompose_layer.exit.i.loopexit313.unr-lcssa, %.lr.ph96.split.split.i.i.i.preheader
  %indvars.iv.i12.i.i.epil.init = phi i64 [ 0, %.lr.ph96.split.split.i.i.i.preheader ], [ %indvars.iv.next.i13.i.i.7, %dwt_decompose_layer.exit.i.loopexit313.unr-lcssa ]
  %i.qu = and i32 %.val82.i, 7
  %lcmp.mod323 = icmp ne i32 %i.qu, 0
  call void @llvm.assume(i1 %lcmp.mod323)
  br label %.lr.ph96.split.split.i.i.i.epil

.lr.ph96.split.split.i.i.i.epil:                  ; preds = %.lr.ph96.split.split.i.i.i.epil, %.lr.ph96.split.split.i.i.i.epil.preheader
  %indvars.iv.i12.i.i.epil = phi i64 [ %indvars.iv.next.i13.i.i.epil, %.lr.ph96.split.split.i.i.i.epil ], [ %indvars.iv.i12.i.i.epil.init, %.lr.ph96.split.split.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph96.split.split.i.i.i.epil ], [ 0, %.lr.ph96.split.split.i.i.i.epil.preheader ]
  %i.qv = mul i64 %indvars.iv.i12.i.i.epil, %i.ci
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.qv
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qw, ptr align 64 %i.ca, i64 %i.gm, i1 false), !noalias !62
  %indvars.iv.next.i13.i.i.epil = add nuw nsw i64 %indvars.iv.i12.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %dwt_decompose_layer.exit.i, label %.lr.ph96.split.split.i.i.i.epil, !llvm.loop !72

dwt_decompose_layer.exit.i:                       ; preds = %dwt_decompose_layer.exit.i.loopexit313.unr-lcssa, %.lr.ph96.split.split.i.i.i.epil, %._crit_edge.us104.i.i.i, %._crit_edge93.us.i.i.i, %._crit_edge93.us.us.i.i.i, %dwt_decompose_vert.exit.i.i
  %i.qx = load i32, ptr %i.bk, align 4, !tbaa !21 ; 2 uses
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %dwt_decompose_layer.exit.i
  %i.qz = add nuw i32 %.097.i, 1                  ; 4 uses
  %i.ra = icmp ugt i32 %i.qx, %i.qz
  br i1 %i.ra, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t, %dwt_decompose_layer.exit.i
  br i1 %.not.i, label %._crit_edge112.i, label %bb.v

._crit_edge112.i:                                 ; preds = %bb.u
  %.pre113.i = add nuw i32 %.097.i, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.rb = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.rc = add nuw i32 %.097.i, 1                  ; 2 uses
  call void %1(ptr noundef %i.rb, ptr noundef nonnull %0, i32 noundef %i.rc) #15, !inline_history !34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge112.i
  %.pre-phi114.i = phi i32 [ %.pre113.i, %._crit_edge112.i ], [ %i.rc, %bb.v ] ; 3 uses
  %i.rd = load i32, ptr %i.j, align 8, !tbaa !20  ; 2 uses
  %i.re = icmp eq i32 %i.rd, %.pre-phi114.i
  br i1 %i.re, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.rf = load ptr, ptr %i.by, align 8, !tbaa !33 ; 2 uses
  %i.rg = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.rg, %i.rf
  br i1 %.not.i.i24, label %dwt_get_image_layer.exit86.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.rh = load i32, ptr %i.q, align 4, !tbaa !17
  %i.ri = sext i32 %i.rh to i64
  %i.rj = load i32, ptr %i.r, align 8, !tbaa !18
  %i.rk = sext i32 %i.rj to i64
  %i.rl = load i32, ptr %i.br, align 8, !tbaa !16
  %i.rm = sext i32 %i.rl to i64
  %i.rn = mul nsw i64 %i.rk, %i.ri
  %i.ro = mul i64 %i.rn, %i.rm
  call void @dt_iop_image_copy(ptr noundef %i.rg, ptr noundef %i.rf, i64 noundef %i.ro) #15
  br label %dwt_get_image_layer.exit86.i

bb.z:                                             ; preds = %bb.w
  %i.rp = icmp eq i32 %i.rd, 0
  br i1 %i.rp, label %bb.aa, label %dwt_get_image_layer.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.rq = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.rr = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.rs = load i32, ptr %i.q, align 4, !tbaa !17
  %i.rt = sext i32 %i.rs to i64
  %i.ru = load i32, ptr %i.r, align 8, !tbaa !18
  %i.rv = sext i32 %i.ru to i64
  %i.rw = load i32, ptr %i.br, align 8, !tbaa !16
  %i.rx = sext i32 %i.rw to i64
  call void @dt_iop_image_add_image(ptr noundef %i.rq, ptr noundef %i.rr, i64 noundef %i.rt, i64 noundef %i.rv, i64 noundef %i.rx) #15
  br label %dwt_get_image_layer.exit.i

bb.ab:                                            ; preds = %bb.t
  %i.ry = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.rz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.sa = load i32, ptr %i.q, align 4, !tbaa !17
  %i.sb = sext i32 %i.sa to i64
  %i.sc = load i32, ptr %i.r, align 8, !tbaa !18
  %i.sd = sext i32 %i.sc to i64
  %i.se = load i32, ptr %i.br, align 8, !tbaa !16
  %i.sf = sext i32 %i.se to i64
  call void @dt_iop_image_add_image(ptr noundef %i.ry, ptr noundef %i.rz, i64 noundef %i.sb, i64 noundef %i.sd, i64 noundef %i.sf) #15
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sg = load ptr, ptr %i.c, align 8, !tbaa !33
  call void %1(ptr noundef %i.sg, ptr noundef nonnull %0, i32 noundef %i.qz) #15, !inline_history !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.sh = load i32, ptr %i.j, align 8, !tbaa !20
  %i.si = icmp eq i32 %i.sh, %i.qz
  br i1 %i.si, label %bb.ae, label %dwt_get_image_layer.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.sj = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.sk = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %.not.i83.i = icmp eq ptr %i.sk, %i.sj
  br i1 %.not.i83.i, label %dwt_get_image_layer.exit86.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sl = load i32, ptr %i.q, align 4, !tbaa !17
  %i.sm = sext i32 %i.sl to i64
  %i.sn = load i32, ptr %i.r, align 8, !tbaa !18
  %i.so = sext i32 %i.sn to i64
  %i.sp = load i32, ptr %i.br, align 8, !tbaa !16
  %i.sq = sext i32 %i.sp to i64
  %i.sr = mul nsw i64 %i.so, %i.sm
  %i.ss = mul i64 %i.sr, %i.sq
  call void @dt_iop_image_copy(ptr noundef %i.sk, ptr noundef %i.sj, i64 noundef %i.ss) #15
  br label %dwt_get_image_layer.exit86.i

dwt_get_image_layer.exit.i:                       ; preds = %bb.ad, %bb.aa, %bb.z
  %.pre-phi.i = phi i32 [ %.pre-phi114.i, %bb.z ], [ %i.qz, %bb.ad ], [ %.pre-phi114.i, %bb.aa ] ; 2 uses
  %i.st = load i32, ptr %i.l, align 4, !tbaa !19  ; 2 uses
  %i.su = icmp ult i32 %.pre-phi.i, %i.st
  br i1 %i.su, label %bb.q, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %dwt_get_image_layer.exit.i, %.preheader.i
  %.072.lcssa134.i = phi i64 [ 0, %.preheader.i ], [ %i.bu, %dwt_get_image_layer.exit.i ] ; 3 uses
  %i.sv = phi i32 [ 0, %.preheader.i ], [ %i.st, %dwt_get_image_layer.exit.i ] ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread.i
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.072.lcssa134.i
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !33
  %i.sy = add nsw i32 %i.sv, 1
  call void %1(ptr noundef %i.sx, ptr noundef nonnull %0, i32 noundef %i.sy) #15, !inline_history !34
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.thread.i
end_hunk_0
begin_hunk_1_@dwt_denoise:bb.a
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !49, !alias.scope !77, !noalias !74
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, 2.000000e+00
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !49, !alias.scope !77, !noalias !74
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hs, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !49, !alias.scope !77, !noalias !74
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i
  store float %i.hy, ptr %i.hz, align 4, !tbaa !49, !alias.scope !74, !noalias !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph226, !llvm.loop !88

.lr.ph133.i:                                      ; preds = %._crit_edge.i, %._crit_edge.us.us56.i, %._crit_edge.us.us.i, %.lr.ph48.split.us.split.us.i, %.lr.ph48.split.us.split.i, %.lr.ph48.split.i
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !49 ; 9 uses
  %i.ic = tail call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i64 %i.u) ; 18 uses
  %i.id = icmp sgt i64 %i.ic, 0
  %i.ie = sub i64 %i.a, %i.ic                     ; 3 uses
  %i.if = icmp ugt i64 %i.ie, %i.ic
  %sext.i = shl i64 %i.ie, 32
  %i.ig = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.ih = icmp ult i64 %i.ig, %i.a
  %wide.trip.count.i = and i64 %i.ic, 4294967295  ; 3 uses
  %brmerge.i = or i1 %.not57.i, %i.r
  %min.iters.check106 = icmp samesign ult i64 %wide.trip.count.i, 8
  %n.vec108 = and i64 %i.ic, 4294967288           ; 3 uses
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n121 = icmp eq i64 %wide.trip.count.i, %n.vec108
  %i.ii = shl i64 %i.ic, 1
  %i.ij = sub i64 %i.a, %i.ii                     ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ij, 8
  %n.vec91 = and i64 %i.ij, -8                    ; 3 uses
  %i.ik = add i64 %i.ic, %n.vec91
  %broadcast.splatinsert92 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat93 = shufflevector <8 x float> %broadcast.splatinsert92, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n103 = icmp eq i64 %i.ij, %n.vec91
  %i.il = sub nuw nsw i64 %i.a, %i.ig             ; 3 uses
  %min.iters.check74 = icmp ult i64 %i.il, 8
  %n.vec76 = and i64 %i.il, -8                    ; 3 uses
  %i.im = add nsw i64 %i.ig, %n.vec76
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n86 = icmp eq i64 %i.il, %n.vec76
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph133.i
  %indvars.iv149.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next150.i, %.loopexit.i ] ; 2 uses
  %i.in = mul nsw i64 %indvars.iv149.i, %i.a      ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.in ; 9 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.in ; 16 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.in ; 9 uses
  br i1 %i.id, label %.lr.ph.preheader.i, label %.preheader121.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ic ; 2 uses
  br i1 %min.iters.check106, label %.lr.ph.i.preheader, label %vector.body111

vector.body111:                                   ; preds = %.lr.ph.preheader.i, %vector.body111
  %index112 = phi i64 [ %index.next119, %vector.body111 ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index112
  %wide.load113 = load <8 x float>, ptr %i.ir, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %wide.load113, splat (float 2.000000e+00)
  %i.it = sub nsw i64 %i.ic, %index112
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -28
  %wide.load114 = load <8 x float>, ptr %i.iv, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %reverse115 = shufflevector <8 x float> %wide.load114, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %reverse115
  %i.ix = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index112
  %wide.load116 = load <8 x float>, ptr %i.ix, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iw, %wide.load116
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, splat (float 6.250000e-02) ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index112 ; 2 uses
  %wide.load117 = load <8 x float>, ptr %i.ja, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load117, %i.iz ; 2 uses
  store <8 x float> %i.iz, ptr %i.ja, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jc = fsub reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jc, zeroinitializer
  %i.je = select reassoc nsz arcp contract afn <8 x i1> %i.jd, <8 x float> %i.jc, <8 x float> zeroinitializer
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jf, zeroinitializer
  %i.jh = select reassoc nsz arcp contract afn <8 x i1> %i.jg, <8 x float> %i.jf, <8 x float> zeroinitializer
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index112 ; 2 uses
  %wide.load118 = load <8 x float>, ptr %i.ji, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %wide.load118
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, %i.je
  store <8 x float> %i.jk, ptr %i.ji, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next119 = add nuw i64 %index112, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next119, %n.vec108
  br i1 %i.jl, label %middle.block120, label %vector.body111, !llvm.loop !99

middle.block120:                                  ; preds = %vector.body111
  br i1 %cmp.n121, label %.preheader121.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block120
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec108, %middle.block120 ]
  br label %.lr.ph.i

.preheader121.i:                                  ; preds = %.lr.ph.i, %middle.block120, %bb.f
  br i1 %i.if, label %.lr.ph124.preheader.i, label %._crit_edge.i31

.lr.ph124.preheader.i:                            ; preds = %.preheader121.i
  %invariant.gep157.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ic ; 2 uses
  br i1 %min.iters.check89, label %.lr.ph124.i.preheader, label %vector.body94

vector.body94:                                    ; preds = %.lr.ph124.preheader.i, %vector.body94
  %index95 = phi i64 [ %index.next101, %vector.body94 ], [ 0, %.lr.ph124.preheader.i ] ; 3 uses
  %i.jm = add nuw i64 %i.ic, %index95             ; 4 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.jm
  %wide.load96 = load <8 x float>, ptr %i.jn, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load96, splat (float 2.000000e+00)
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %index95
  %wide.load97 = load <8 x float>, ptr %i.jp, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %i.jo, %wide.load97
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %i.jm
  %wide.load98 = load <8 x float>, ptr %i.jr, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %i.jq, %wide.load98
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %i.js, splat (float 6.250000e-02) ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.jm ; 2 uses
  %wide.load99 = load <8 x float>, ptr %i.ju, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load99, %i.jt ; 2 uses
  store <8 x float> %i.jt, ptr %i.ju, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.jx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jw, zeroinitializer
  %i.jy = select reassoc nsz arcp contract afn <8 x i1> %i.jx, <8 x float> %i.jw, <8 x float> zeroinitializer
  %i.jz = fadd reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jz, zeroinitializer
  %i.kb = select reassoc nsz arcp contract afn <8 x i1> %i.ka, <8 x float> %i.jz, <8 x float> zeroinitializer
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jm ; 2 uses
  %wide.load100 = load <8 x float>, ptr %i.kc, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %wide.load100
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, %i.jy
  store <8 x float> %i.ke, ptr %i.kc, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next101 = add nuw i64 %index95, 8        ; 2 uses
  %i.kf = icmp eq i64 %index.next101, %n.vec91
  br i1 %i.kf, label %middle.block102, label %vector.body94, !llvm.loop !100

middle.block102:                                  ; preds = %vector.body94
  br i1 %cmp.n103, label %._crit_edge.i31, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %.lr.ph124.preheader.i, %middle.block102
  %indvars.iv139.i.ph = phi i64 [ %i.ic, %.lr.ph124.preheader.i ], [ %i.ik, %middle.block102 ]
  br label %.lr.ph124.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i ], [ %indvars.iv.i32.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i32
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, 2.000000e+00
  %i.kj = sub nsw i64 %i.ic, %indvars.iv.i32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kj
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.km = fadd reassoc nsz arcp contract afn float %i.ki, %i.kl
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i32
  %i.kn = load float, ptr %gep.i, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.ko = fadd reassoc nsz arcp contract afn float %i.km, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, 6.250000e-02 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i32 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ks = fsub reassoc nsz arcp contract afn float %i.kr, %i.kp ; 2 uses
  store float %i.kp, ptr %i.kq, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.kt = fsub reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ogt float %i.kt, 0.000000e+00
  %i.kv = select reassoc nsz arcp contract afn i1 %i.ku, float %i.kt, float 0.000000e+00
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.kx = fcmp reassoc nsz arcp contract afn olt float %i.kw, 0.000000e+00
  %i.ky = select reassoc nsz arcp contract afn i1 %i.kx, float %i.kw, float 0.000000e+00
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i32 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.lb = fadd reassoc nsz arcp contract afn float %i.ky, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kv
  store float %i.lc, ptr %i.kz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i
  br i1 %exitcond.not.i34, label %.preheader121.i, label %.lr.ph.i, !llvm.loop !101

._crit_edge.i31:                                  ; preds = %.lr.ph124.i, %middle.block102, %.preheader121.i
  br i1 %i.ih, label %.lr.ph127.i.preheader, label %._crit_edge128.i

.lr.ph127.i.preheader:                            ; preds = %._crit_edge.i31
  br i1 %min.iters.check74, label %.lr.ph127.i.preheader240, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph127.i.preheader, %vector.body77
  %index78 = phi i64 [ %index.next84, %vector.body77 ], [ 0, %.lr.ph127.i.preheader ] ; 2 uses
  %i.ld = add nuw i64 %i.ig, %index78             ; 5 uses
  %i.le = add i64 %i.ic, %i.ld
  %i.lf = sub i64 %.neg35, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -28
  %wide.load79 = load <8 x float>, ptr %i.lh, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %reverse = shufflevector <8 x float> %wide.load79, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.li = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ld
  %wide.load80 = load <8 x float>, ptr %i.li, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load80, splat (float 2.000000e+00)
  %i.lk = sub nsw i64 %i.ld, %i.ic
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.lk
  %wide.load81 = load <8 x float>, ptr %i.ll, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.lm = fadd reassoc nsz arcp contract afn <8 x float> %i.lj, %wide.load81
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %i.lm, %reverse
  %i.lo = fmul reassoc nsz arcp contract afn <8 x float> %i.ln, splat (float 6.250000e-02) ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ld ; 2 uses
  %wide.load82 = load <8 x float>, ptr %i.lp, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.lq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load82, %i.lo ; 2 uses
  store <8 x float> %i.lo, ptr %i.lp, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.lr = fsub reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lr, zeroinitializer
  %i.lt = select reassoc nsz arcp contract afn <8 x i1> %i.ls, <8 x float> %i.lr, <8 x float> zeroinitializer
  %i.lu = fadd reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.lv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lu, zeroinitializer
  %i.lw = select reassoc nsz arcp contract afn <8 x i1> %i.lv, <8 x float> %i.lu, <8 x float> zeroinitializer
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ld ; 2 uses
  %wide.load83 = load <8 x float>, ptr %i.lx, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.ly = fadd reassoc nsz arcp contract afn <8 x float> %i.lw, %wide.load83
  %i.lz = fadd reassoc nsz arcp contract afn <8 x float> %i.ly, %i.lt
  store <8 x float> %i.lz, ptr %i.lx, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.ma = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.ma, label %middle.block85, label %vector.body77, !llvm.loop !102

middle.block85:                                   ; preds = %vector.body77
  br i1 %cmp.n86, label %._crit_edge128.i, label %.lr.ph127.i.preheader240

.lr.ph127.i.preheader240:                         ; preds = %.lr.ph127.i.preheader, %middle.block85
  %indvars.iv142.i.ph = phi i64 [ %i.ig, %.lr.ph127.i.preheader ], [ %i.im, %middle.block85 ]
  br label %.lr.ph127.i

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.preheader, %.lr.ph124.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.lr.ph124.i ], [ %indvars.iv139.i.ph, %.lr.ph124.i.preheader ] ; 6 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv139.i
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 2.000000e+00
  %i.me = sub nuw nsw i64 %indvars.iv139.i, %i.ic
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.me
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.mh = fadd reassoc nsz arcp contract afn float %i.md, %i.mg
  %gep158.i = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %indvars.iv139.i
  %i.mi = load float, ptr %gep158.i, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mh, %i.mi
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, 6.250000e-02 ; 2 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv139.i ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mm, %i.mk ; 2 uses
  store float %i.mk, ptr %i.ml, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.mo = fsub reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mo, 0.000000e+00
  %i.mq = select reassoc nsz arcp contract afn i1 %i.mp, float %i.mo, float 0.000000e+00
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.ms = fcmp reassoc nsz arcp contract afn olt float %i.mr, 0.000000e+00
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mr, float 0.000000e+00
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv139.i ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mt, %i.mv
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %i.mq
  store float %i.mx, ptr %i.mu, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next140.i, %i.ie
  br i1 %exitcond.not, label %._crit_edge.i31, label %.lr.ph124.i, !llvm.loop !103

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %middle.block85, %._crit_edge.i31
  br i1 %brmerge.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge128.i
  br i1 %min.iters.check, label %.lr.ph130.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %wide.load = load <8 x float>, ptr %i.my, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load61 = load <8 x float>, ptr %i.mz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load62 = load <8 x float>, ptr %i.na, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load63 = load <8 x float>, ptr %i.nb, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96 ; 2 uses
  %wide.load64 = load <8 x float>, ptr %i.nc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load65 = load <8 x float>, ptr %i.nd, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load66 = load <8 x float>, ptr %i.ne, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load67 = load <8 x float>, ptr %i.nf, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ng = fadd reassoc nsz arcp contract afn <8 x float> %wide.load64, %wide.load
  %i.nh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load65, %wide.load61
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %wide.load66, %wide.load62
  %i.nj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load67, %wide.load63
  store <8 x float> %i.ng, ptr %i.nc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.nh, ptr %i.nd, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.ni, ptr %i.ne, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.nj, ptr %i.nf, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nk = icmp eq i64 %index.next, %n.vec
  br i1 %i.nk, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph130.i.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index69
  %wide.load70 = load <4 x float>, ptr %i.nl, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index69 ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.nm, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %wide.load71, %wide.load70
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.no = icmp eq i64 %index.next72, %n.vec68
  br i1 %i.no, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n73, label %.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv145.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ]
  br label %.lr.ph130.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader240, %.lr.ph127.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph127.i ], [ %indvars.iv142.i.ph, %.lr.ph127.i.preheader240 ] ; 6 uses
  %i.np = add i64 %i.ic, %indvars.iv142.i
  %i.nq = sub i64 %.neg35, %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv142.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, 2.000000e+00
  %i.nw = sub nsw i64 %indvars.iv142.i, %i.ic
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nv, %i.ny
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.ns
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, 6.250000e-02 ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv142.i ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.oe = fsub reassoc nsz arcp contract afn float %i.od, %i.ob ; 2 uses
  store float %i.ob, ptr %i.oc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.of = fsub reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ogt float %i.of, 0.000000e+00
  %i.oh = select reassoc nsz arcp contract afn i1 %i.og, float %i.of, float 0.000000e+00
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn olt float %i.oi, 0.000000e+00
  %i.ok = select reassoc nsz arcp contract afn i1 %i.oj, float %i.oi, float 0.000000e+00
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv142.i ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.on = fadd reassoc nsz arcp contract afn float %i.ok, %i.om
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, %i.oh
  store float %i.oo, ptr %i.ol, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next143.i, %i.a
  br i1 %exitcond42.not, label %._crit_edge128.i, label %.lr.ph127.i, !llvm.loop !106

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %.lr.ph130.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph130.i ], [ %indvars.iv145.i.ph, %.lr.ph130.i.preheader ] ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv145.i
  %i.oq = load float, ptr %i.op, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv145.i ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, %i.oq
  store float %i.ot, ptr %i.or, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next146.i, %i.a
  br i1 %exitcond148.not.i, label %.loopexit.i, label %.lr.ph130.i, !llvm.loop !107

.loopexit.i:                                      ; preds = %.lr.ph130.i, %middle.block, %vec.epilog.middle.block, %._crit_edge128.i
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next150.i, %i.c
  br i1 %exitcond152.not.i, label %dwt_denoise_horiz_1ch.exit.loopexit, label %bb.f

dwt_denoise_horiz_1ch.exit.loopexit:              ; preds = %.loopexit.i
  br i1 %i.r, label %.lr.ph48.i, label %._crit_edge

bb.g:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @dt_iop_image_add_image(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"dwt_params_t", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !14, i64 32, !15, i64 40}
!13 = !{!"p1 float", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = !{!12, !8, i64 8}
!17 = !{!12, !8, i64 12}
!18 = !{!12, !8, i64 16}
!19 = !{!12, !8, i64 20}
!20 = !{!12, !8, i64 24}
!21 = !{!12, !8, i64 28}
!22 = !{!12, !14, i64 32}
!23 = !{!12, !15, i64 40}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !27, !26}
!29 = distinct !{!29, !26, !27}
!30 = distinct !{!30, !27, !26}
!31 = distinct !{!31, !26, !27}
!32 = distinct !{!32, !27, !26}
!33 = !{!13, !13, i64 0}
!34 = distinct !{null}
!35 = !{!36, !8, i64 0}
!36 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !15, i64 16}
!37 = !{!36, !8, i64 4}
!38 = !{!36, !15, i64 16}
!39 = !{!40}
!40 = distinct !{!40, !41, !"dwt_decompose_layer: argument 0"}
!41 = distinct !{!41, !"dwt_decompose_layer"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"dwt_decompose_layer: argument 1"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"dwt_decompose_vert: argument 0"}
!46 = distinct !{!46, !"dwt_decompose_vert"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"dwt_decompose_vert: argument 1"}
!49 = !{!15, !15, i64 0}
!50 = !{!48, !43}
!51 = !{!45, !40}
!52 = distinct !{!52, !26, !27}
!53 = distinct !{!53, !27, !26}
!54 = distinct !{!54, !26, !27}
!55 = distinct !{!55, !27, !26}
!56 = !{!57}
!57 = distinct !{!57, !58, !"dwt_decompose_horiz: argument 0"}
!58 = distinct !{!58, !"dwt_decompose_horiz"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"dwt_decompose_horiz: argument 1"}
!61 = !{!57, !40}
!62 = !{!60, !43}
!63 = !{!57, !60, !40, !43}
!64 = distinct !{!64, !26, !27}
!65 = distinct !{!65, !27, !26}
!66 = distinct !{!66, !26, !27}
!67 = distinct !{!67, !27, !26}
!68 = distinct !{!68, !26, !27}
!69 = distinct !{!69, !27, !26}
!70 = distinct !{!70, !26, !27}
!71 = distinct !{!71, !27, !26}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"dwt_denoise_vert_1ch: argument 0"}
!76 = distinct !{!76, !"dwt_denoise_vert_1ch"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"dwt_denoise_vert_1ch: argument 1"}
!79 = distinct !{!79, !26, !27}
!80 = !{!"branch_weights", i32 4, i32 28}
!81 = distinct !{!81, !26, !27}
!82 = distinct !{!82, !27, !26}
!83 = distinct !{!83, !26, !27}
!84 = distinct !{!84, !26, !27}
!85 = distinct !{!85, !27, !26}
!86 = distinct !{!86, !26, !27}
!87 = distinct !{!87, !26, !27}
!88 = distinct !{!88, !27, !26}
!89 = !{!90}
end_hunk_1
