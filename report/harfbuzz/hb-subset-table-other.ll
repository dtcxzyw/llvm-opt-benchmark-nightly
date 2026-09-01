Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNK2OT9glyf_impl20CompositeGlyphRecord16transform_pointsE10hb_array_tI15contour_point_tERA4_KfRKS3_:bb.a
  br i1 %i.ar, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.02946.i = phi ptr [ %i.bh, %.lr.ph47.i ], [ %.02946.i.unr, %.lr.ph47.i.prol.loopexit ] ; 6 uses
  %i.as = load float, ptr %4, align 4, !tbaa !561
  %i.at = load float, ptr %.02946.i, align 4, !tbaa !561
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %.02946.i, align 4, !tbaa !561
  %i.av = getelementptr inbounds nuw i8, ptr %.02946.i, i64 12 ; 2 uses
  %i.aw = load float, ptr %4, align 4, !tbaa !561
  %i.ax = load float, ptr %i.av, align 4, !tbaa !561
  %i.ay = fadd float %i.aw, %i.ax
  store float %i.ay, ptr %i.av, align 4, !tbaa !561
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i, i64 24 ; 2 uses
  %i.ba = load float, ptr %4, align 4, !tbaa !561
  %i.bb = load float, ptr %i.az, align 4, !tbaa !561
  %i.bc = fadd float %i.ba, %i.bb
  store float %i.bc, ptr %i.az, align 4, !tbaa !561
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i, i64 36 ; 2 uses
  %i.be = load float, ptr %4, align 4, !tbaa !561
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !561
  %i.bg = fadd float %i.be, %i.bf
  store float %i.bg, ptr %i.bd, align 4, !tbaa !561
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i, i64 48 ; 2 uses
  %.not30.i.3 = icmp eq ptr %i.bh, %i.aj
  br i1 %.not30.i.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit

bb.g:                                             ; preds = %bb.f
  %i.bi = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bi, 12             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not43.i = icmp eq i64 %i.bi, 0
  br i1 %.not43.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.bk = add nsw i64 %.idx.i, -12                ; 2 uses
  %i.bl = udiv i64 %i.bk, 12
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter118 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.044.i.prol = phi ptr [ %i.br, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bn = load float, ptr %i.f, align 4, !tbaa !563
  %i.bo = getelementptr inbounds nuw i8, ptr %.044.i.prol, i64 4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !563
  %i.bq = fadd float %i.bn, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !563
  %i.br = getelementptr inbounds nuw i8, ptr %.044.i.prol, i64 12 ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !698

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.br, %.lr.ph.i.prol ]
  %i.bs = icmp ult i64 %i.bk, 36
  br i1 %i.bs, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bt = load float, ptr %i.f, align 4, !tbaa !563
  %i.bu = getelementptr inbounds nuw i8, ptr %.044.i, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !563
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !563
  %i.bx = load float, ptr %i.f, align 4, !tbaa !563
  %i.by = getelementptr inbounds nuw i8, ptr %.044.i, i64 16 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !563
  %i.ca = fadd float %i.bx, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !563
  %i.cb = load float, ptr %i.f, align 4, !tbaa !563
  %i.cc = getelementptr inbounds nuw i8, ptr %.044.i, i64 28 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !563
  %i.ce = fadd float %i.cb, %i.cd
  store float %i.ce, ptr %i.cc, align 4, !tbaa !563
  %i.cf = load float, ptr %i.f, align 4, !tbaa !563
  %i.cg = getelementptr inbounds nuw i8, ptr %.044.i, i64 40 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !563
  %i.ci = fadd float %i.cf, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !563
  %i.cj = getelementptr inbounds nuw i8, ptr %.044.i, i64 48 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.cj, %i.bj
  br i1 %.not.i.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph47.i.prol.loopexit, %.lr.ph47.i, %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %bb.c, %bb.e, %bb.f, %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cn = load <4 x float>, ptr %3, align 4
  %.fr103 = freeze <4 x float> %i.cn
  %i.co = fcmp une <4 x float> %.fr103, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.cp = bitcast <4 x i1> %i.co to i4
  %.not104 = icmp eq i4 %i.cp, 0
  br i1 %.not104, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  %i.cq = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %i.cq, 12           ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i16
  %.not21.i = icmp eq i64 %i.cq, 0
  br i1 %.not21.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.h
  %i.cs = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.ct = udiv i64 %i.cs, 12
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check82 = icmp ult i64 %i.cs, 96
  br i1 %min.iters.check82, label %.lr.ph.i17.preheader105, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i17.preheader
  %i.cv = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.cw = urem i64 %i.cv, 12
  %i.cx = sub nuw nsw i64 %i.cv, %i.cw
  %i.cy = getelementptr i8, ptr %1, i64 %i.cx
  %scevgep76 = getelementptr i8, ptr %i.cy, i64 8
  %scevgep77 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound078 = icmp ult ptr %1, %scevgep77
  %bound179 = icmp ult ptr %3, %scevgep76
  %found.conflict80 = and i1 %bound078, %bound179
  br i1 %found.conflict80, label %.lr.ph.i17.preheader105, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck75
  %i.cz = and i64 %i.cu, 3                        ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 4, i64 %i.cz
  %n.vec84 = sub nsw i64 %i.cu, %i.db             ; 2 uses
  %i.dc = mul i64 %n.vec84, 12
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = load float, ptr %3, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load float, ptr %i.cl, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = load float, ptr %i.ck, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next99, %vector.body85 ] ; 2 uses
  %i.di = mul i64 %index86, 12                    ; 4 uses
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.di ; 3 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.dj, i64 12 ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %i.di     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.dk, i64 24 ; 2 uses
  %i.dl = getelementptr i8, ptr %1, i64 %i.di     ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.dl, i64 36 ; 2 uses
  %i.dm = load float, ptr %next.gep87, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dn = load float, ptr %next.gep88, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.do = load float, ptr %next.gep89, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dp = load float, ptr %next.gep90, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep87, i64 4 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dj, i64 16
  %i.dw = getelementptr i8, ptr %i.dk, i64 28
  %i.dx = getelementptr i8, ptr %i.dl, i64 40
  %i.dy = load float, ptr %i.du, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.ec = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %i.ea, i64 2
  %i.ef = insertelement <4 x float> %i.ee, float %i.eb, i64 3 ; 2 uses
  %i.eg = fmul <4 x float> %i.ef, %broadcast.splat92
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %broadcast.splat94, <4 x float> %i.eg) ; 4 uses
  %i.ei = fmul <4 x float> %i.ef, %broadcast.splat96
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %broadcast.splat98, <4 x float> %i.ei) ; 4 uses
  %i.ek = extractelement <4 x float> %i.ej, i64 0
  store float %i.ek, ptr %i.du, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.el = extractelement <4 x float> %i.eh, i64 0
  store float %i.el, ptr %next.gep87, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.em = shufflevector <4 x float> %i.eh, <4 x float> %i.ej, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.em, ptr %next.gep88, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %i.en = shufflevector <4 x float> %i.eh, <4 x float> %i.ej, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.en, ptr %next.gep89, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %i.eo = shufflevector <4 x float> %i.eh, <4 x float> %i.ej, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.eo, ptr %next.gep90, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %index.next99 = add nuw i64 %index86, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next99, %n.vec84
  br i1 %i.ep, label %.lr.ph.i17.preheader105, label %vector.body85, !llvm.loop !704

.lr.ph.i17.preheader105:                          ; preds = %vector.body85, %vector.memcheck75, %.lr.ph.i17.preheader
  %.022.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i17.preheader ], [ %i.dd, %vector.body85 ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader105, %.lr.ph.i17
  %.022.i = phi ptr [ %i.ev, %.lr.ph.i17 ], [ %.022.i.ph, %.lr.ph.i17.preheader105 ] ; 3 uses
  %5 = load <2 x float>, ptr %.022.i, align 4, !tbaa !546 ; 2 uses
  %i.eq = load <2 x float>, ptr %3, align 4, !tbaa !546
  %i.er = load <2 x float>, ptr %i.cl, align 4, !tbaa !546
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x float> %6, %i.er
  %i.et = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.eq, <2 x float> %i.es)
  store <2 x float> %i.eu, ptr %.022.i, align 4, !tbaa !546
  %i.ev = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ev, %i.cr
  br i1 %.not.i18, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17, !llvm.loop !705

bb.i:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ez = load <4 x float>, ptr %3, align 4
  %.fr = freeze <4 x float> %i.ez
  %i.fa = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.fb = bitcast <4 x i1> %i.fa to i4
  %.not = icmp eq i4 %i.fb, 0
  br i1 %.not, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fc = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i22 = mul nuw nsw i64 %i.fc, 12           ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i22
  %.not21.i23 = icmp eq i64 %i.fc, 0
  br i1 %.not21.i23, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.j
  %i.fe = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.ff = udiv i64 %i.fe, 12
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fe, 96
  br i1 %min.iters.check, label %.lr.ph.i24.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24.preheader
  %i.fh = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.fi = urem i64 %i.fh, 12
  %i.fj = sub nuw nsw i64 %i.fh, %i.fi
  %i.fk = getelementptr i8, ptr %1, i64 %i.fj
  %scevgep = getelementptr i8, ptr %i.fk, i64 8
  %scevgep65 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound0 = icmp ult ptr %1, %scevgep65
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fl = and i64 %i.fg, 3                        ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 4, i64 %i.fl
  %n.vec = sub nsw i64 %i.fg, %i.fn               ; 2 uses
  %i.fo = mul i64 %n.vec, 12
  %i.fp = getelementptr i8, ptr %1, i64 %i.fo
  %i.fq = load float, ptr %3, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %i.fq, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = load float, ptr %i.ex, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fs = load float, ptr %i.ew, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %i.fs, i64 0
  %broadcast.splat74 = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = load float, ptr %i.ey, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fu = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.fu ; 3 uses
  %i.fv = getelementptr i8, ptr %1, i64 %i.fu     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.fv, i64 12 ; 2 uses
  %i.fw = getelementptr i8, ptr %1, i64 %i.fu     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.fw, i64 24 ; 2 uses
  %i.fx = getelementptr i8, ptr %1, i64 %i.fu     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.fx, i64 36 ; 2 uses
  %i.fy = load float, ptr %next.gep, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.fz = load float, ptr %next.gep66, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.ga = load float, ptr %next.gep67, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.gb = load float, ptr %next.gep68, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.gc = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fv, i64 16
  %i.gi = getelementptr i8, ptr %i.fw, i64 28
  %i.gj = getelementptr i8, ptr %i.fx, i64 40
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gn = load float, ptr %i.gj, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.go = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.gn, i64 3 ; 2 uses
  %i.gs = fmul <4 x float> %i.gr, %broadcast.splat
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %broadcast.splat70, <4 x float> %i.gs) ; 4 uses
  %i.gu = fmul <4 x float> %i.gr, %broadcast.splat72
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %broadcast.splat74, <4 x float> %i.gu) ; 4 uses
  %i.gw = extractelement <4 x float> %i.gv, i64 0
  store float %i.gw, ptr %i.gg, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gx = extractelement <4 x float> %i.gt, i64 0
  store float %i.gx, ptr %next.gep, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.gy = shufflevector <4 x float> %i.gt, <4 x float> %i.gv, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.gy, ptr %next.gep66, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %i.gz = shufflevector <4 x float> %i.gt, <4 x float> %i.gv, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.gz, ptr %next.gep67, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %i.ha = shufflevector <4 x float> %i.gt, <4 x float> %i.gv, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ha, ptr %next.gep68, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %.lr.ph.i24.preheader111, label %vector.body, !llvm.loop !711

.lr.ph.i24.preheader111:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph.i24.preheader
  %.022.i25.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i24.preheader ], [ %i.fp, %vector.body ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader111, %.lr.ph.i24
  %.022.i25 = phi ptr [ %i.hh, %.lr.ph.i24 ], [ %.022.i25.ph, %.lr.ph.i24.preheader111 ] ; 3 uses
  %7 = load <2 x float>, ptr %.022.i25, align 4, !tbaa !546 ; 2 uses
  %i.hc = load <2 x float>, ptr %3, align 4, !tbaa !546
  %i.hd = load <2 x float>, ptr %i.ex, align 4, !tbaa !546
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.he = fmul <2 x float> %8, %i.hd
  %i.hf = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hc, <2 x float> %i.he)
  store <2 x float> %i.hg, ptr %.022.i25, align 4, !tbaa !546
  %i.hh = getelementptr inbounds nuw i8, ptr %.022.i25, i64 12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.hh, %i.fd
  br i1 %.not.i26, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24, !llvm.loop !712

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27: ; preds = %.lr.ph.i24, %bb.i, %bb.j
  %i.hi = load float, ptr %4, align 4, !tbaa !561
  %i.hj = fcmp une float %i.hi, 0.000000e+00      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = fcmp une float %i.hl, 0.000000e+00      ; 2 uses
  %or.cond.i28 = select i1 %i.hj, i1 %i.hm, i1 false
  br i1 %or.cond.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  %i.hn = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx52.i39 = mul nuw nsw i64 %i.hn, 12         ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i39
  %.not3148.i40 = icmp eq i64 %i.hn, 0
  br i1 %.not3148.i40, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41.preheader

.lr.ph50.i41.preheader:                           ; preds = %bb.k
  %i.hp = add nsw i64 %.idx52.i39, -12            ; 2 uses
  %i.hq = udiv i64 %i.hp, 12
  %i.hr = add nuw nsw i64 %i.hq, 1
  %xtraiter115 = and i64 %i.hr, 3                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph50.i41.prol.loopexit, label %.lr.ph50.i41.prol

.lr.ph50.i41.prol:                                ; preds = %.lr.ph50.i41.preheader, %.lr.ph50.i41.prol
  %.02849.i42.prol = phi ptr [ %i.hv, %.lr.ph50.i41.prol ], [ %1, %.lr.ph50.i41.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph50.i41.prol ], [ 0, %.lr.ph50.i41.preheader ]
  %i.hs = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ht = load <2 x float>, ptr %.02849.i42.prol, align 4, !tbaa !546
  %i.hu = fadd <2 x float> %i.hs, %i.ht
  store <2 x float> %i.hu, ptr %.02849.i42.prol, align 4, !tbaa !546
  %i.hv = getelementptr inbounds nuw i8, ptr %.02849.i42.prol, i64 12 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph50.i41.prol.loopexit, label %.lr.ph50.i41.prol, !llvm.loop !713

.lr.ph50.i41.prol.loopexit:                       ; preds = %.lr.ph50.i41.prol, %.lr.ph50.i41.preheader
  %.02849.i42.unr = phi ptr [ %1, %.lr.ph50.i41.preheader ], [ %i.hv, %.lr.ph50.i41.prol ]
  %i.hw = icmp ult i64 %i.hp, 36
  br i1 %i.hw, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

.lr.ph50.i41:                                     ; preds = %.lr.ph50.i41.prol.loopexit, %.lr.ph50.i41
  %.02849.i42 = phi ptr [ %i.im, %.lr.ph50.i41 ], [ %.02849.i42.unr, %.lr.ph50.i41.prol.loopexit ] ; 6 uses
  %i.hx = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.hy = load <2 x float>, ptr %.02849.i42, align 4, !tbaa !546
  %i.hz = fadd <2 x float> %i.hx, %i.hy
  store <2 x float> %i.hz, ptr %.02849.i42, align 4, !tbaa !546
  %i.ia = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 12 ; 2 uses
  %i.ib = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ic = load <2 x float>, ptr %i.ia, align 4, !tbaa !546
  %i.id = fadd <2 x float> %i.ib, %i.ic
  store <2 x float> %i.id, ptr %i.ia, align 4, !tbaa !546
  %i.ie = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 24 ; 2 uses
  %i.if = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ig = load <2 x float>, ptr %i.ie, align 4, !tbaa !546
  %i.ih = fadd <2 x float> %i.if, %i.ig
  store <2 x float> %i.ih, ptr %i.ie, align 4, !tbaa !546
  %i.ii = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 36 ; 2 uses
  %i.ij = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ik = load <2 x float>, ptr %i.ii, align 4, !tbaa !546
  %i.il = fadd <2 x float> %i.ij, %i.ik
  store <2 x float> %i.il, ptr %i.ii, align 4, !tbaa !546
  %i.im = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 48 ; 2 uses
  %.not31.i43.3 = icmp eq ptr %i.im, %i.ho
  br i1 %.not31.i43.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

bb.l:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  br i1 %i.hj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.in = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx51.i34 = mul nuw nsw i64 %i.in, 12         ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i34
  %.not3045.i35 = icmp eq i64 %i.in, 0
  br i1 %.not3045.i35, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36.preheader

.lr.ph47.i36.preheader:                           ; preds = %bb.m
  %i.ip = add nsw i64 %.idx51.i34, -12            ; 2 uses
  %i.iq = udiv i64 %i.ip, 12
  %i.ir = add nuw nsw i64 %i.iq, 1
  %xtraiter112 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph47.i36.prol.loopexit, label %.lr.ph47.i36.prol

.lr.ph47.i36.prol:                                ; preds = %.lr.ph47.i36.preheader, %.lr.ph47.i36.prol
  %.02946.i37.prol = phi ptr [ %i.iv, %.lr.ph47.i36.prol ], [ %1, %.lr.ph47.i36.preheader ] ; 3 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph47.i36.prol ], [ 0, %.lr.ph47.i36.preheader ]
  %i.is = load float, ptr %4, align 4, !tbaa !561
  %i.it = load float, ptr %.02946.i37.prol, align 4, !tbaa !561
  %i.iu = fadd float %i.is, %i.it
  store float %i.iu, ptr %.02946.i37.prol, align 4, !tbaa !561
  %i.iv = getelementptr inbounds nuw i8, ptr %.02946.i37.prol, i64 12 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph47.i36.prol.loopexit, label %.lr.ph47.i36.prol, !llvm.loop !714

.lr.ph47.i36.prol.loopexit:                       ; preds = %.lr.ph47.i36.prol, %.lr.ph47.i36.preheader
  %.02946.i37.unr = phi ptr [ %1, %.lr.ph47.i36.preheader ], [ %i.iv, %.lr.ph47.i36.prol ]
  %i.iw = icmp ult i64 %i.ip, 36
  br i1 %i.iw, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

.lr.ph47.i36:                                     ; preds = %.lr.ph47.i36.prol.loopexit, %.lr.ph47.i36
  %.02946.i37 = phi ptr [ %i.jm, %.lr.ph47.i36 ], [ %.02946.i37.unr, %.lr.ph47.i36.prol.loopexit ] ; 6 uses
  %i.ix = load float, ptr %4, align 4, !tbaa !561
  %i.iy = load float, ptr %.02946.i37, align 4, !tbaa !561
  %i.iz = fadd float %i.ix, %i.iy
  store float %i.iz, ptr %.02946.i37, align 4, !tbaa !561
  %i.ja = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 12 ; 2 uses
  %i.jb = load float, ptr %4, align 4, !tbaa !561
  %i.jc = load float, ptr %i.ja, align 4, !tbaa !561
  %i.jd = fadd float %i.jb, %i.jc
  store float %i.jd, ptr %i.ja, align 4, !tbaa !561
  %i.je = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 24 ; 2 uses
  %i.jf = load float, ptr %4, align 4, !tbaa !561
  %i.jg = load float, ptr %i.je, align 4, !tbaa !561
  %i.jh = fadd float %i.jf, %i.jg
  store float %i.jh, ptr %i.je, align 4, !tbaa !561
  %i.ji = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 36 ; 2 uses
  %i.jj = load float, ptr %4, align 4, !tbaa !561
  %i.jk = load float, ptr %i.ji, align 4, !tbaa !561
  %i.jl = fadd float %i.jj, %i.jk
  store float %i.jl, ptr %i.ji, align 4, !tbaa !561
  %i.jm = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 48 ; 2 uses
  %.not30.i38.3 = icmp eq ptr %i.jm, %i.io
  br i1 %.not30.i38.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

bb.n:                                             ; preds = %bb.l
  br i1 %i.hm, label %bb.o, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit

bb.o:                                             ; preds = %bb.n
  %i.jn = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i29 = mul nuw nsw i64 %i.jn, 12           ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i29
  %.not43.i30 = icmp eq i64 %i.jn, 0
  br i1 %.not43.i30, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.o
  %i.jp = add nsw i64 %.idx.i29, -12              ; 2 uses
  %i.jq = udiv i64 %i.jp, 12
  %i.jr = add nuw nsw i64 %i.jq, 1
  %xtraiter = and i64 %i.jr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.044.i32.prol = phi ptr [ %i.jw, %.lr.ph.i31.prol ], [ %1, %.lr.ph.i31.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.js = load float, ptr %i.hk, align 4, !tbaa !563
  %i.jt = getelementptr inbounds nuw i8, ptr %.044.i32.prol, i64 4 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !563
  %i.jv = fadd float %i.js, %i.ju
  store float %i.jv, ptr %i.jt, align 4, !tbaa !563
  %i.jw = getelementptr inbounds nuw i8, ptr %.044.i32.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !715

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.044.i32.unr = phi ptr [ %1, %.lr.ph.i31.preheader ], [ %i.jw, %.lr.ph.i31.prol ]
  %i.jx = icmp ult i64 %i.jp, 36
  br i1 %i.jx, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.044.i32 = phi ptr [ %i.ko, %.lr.ph.i31 ], [ %.044.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 5 uses
  %i.jy = load float, ptr %i.hk, align 4, !tbaa !563
  %i.jz = getelementptr inbounds nuw i8, ptr %.044.i32, i64 4 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !563
  %i.kb = fadd float %i.jy, %i.ka
  store float %i.kb, ptr %i.jz, align 4, !tbaa !563
  %i.kc = load float, ptr %i.hk, align 4, !tbaa !563
  %i.kd = getelementptr inbounds nuw i8, ptr %.044.i32, i64 16 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !563
  %i.kf = fadd float %i.kc, %i.ke
  store float %i.kf, ptr %i.kd, align 4, !tbaa !563
  %i.kg = load float, ptr %i.hk, align 4, !tbaa !563
  %i.kh = getelementptr inbounds nuw i8, ptr %.044.i32, i64 28 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !563
  %i.kj = fadd float %i.kg, %i.ki
  store float %i.kj, ptr %i.kh, align 4, !tbaa !563
  %i.kk = load float, ptr %i.hk, align 4, !tbaa !563
  %i.kl = getelementptr inbounds nuw i8, ptr %.044.i32, i64 40 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !563
  %i.kn = fadd float %i.kk, %i.km
  store float %i.kn, ptr %i.kl, align 4, !tbaa !563
  %i.ko = getelementptr inbounds nuw i8, ptr %.044.i32, i64 48 ; 2 uses
  %.not.i33.3 = icmp eq ptr %i.ko, %i.jo
  br i1 %.not.i33.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit: ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31, %.lr.ph47.i36.prol.loopexit, %.lr.ph47.i36, %.lr.ph50.i41.prol.loopexit, %.lr.ph50.i41, %.lr.ph.i17, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
