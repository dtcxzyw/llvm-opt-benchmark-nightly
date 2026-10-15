Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_grayworld?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@correct_frame:bb.a
  %i.bl = shl nsw i64 %i.aj, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aa, i64 %i.bk
  %scevgep79 = getelementptr i8, ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bn = mul nsw i64 %wide.trip.count69, %wide.trip.count
  %i.bo = shl i64 %i.bn, 2                        ; 3 uses
  %i.bp = getelementptr i8, ptr %i.aa, i64 %i.bo
  %scevgep80 = getelementptr i8, ptr %i.bp, i64 %i.bl ; 2 uses
  %i.bq = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.aa, i64 %i.bk
  %scevgep81 = getelementptr i8, ptr %i.br, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.aa, i64 %i.bo
  %scevgep82 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.aa, i64 %i.bk ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.aa, i64 %i.bo ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 28   ; 2 uses
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep77, i64 0
  %i.bu = shufflevector <4 x ptr> %i.bt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep80, i64 0
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep82, i64 1
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep84, i64 2
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep85, i64 3 ; 2 uses
  %i.bz = shufflevector <4 x i32> %i.ap, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 0>
  %i.ca = insertelement <4 x ptr> poison, ptr %scevgep79, i64 0
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep81, i64 1
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep83, i64 2
  %i.cd = insertelement <4 x ptr> %i.cc, ptr %i.al, i64 3 ; 2 uses
  %i.ce = insertelement <4 x ptr> poison, ptr %scevgep78, i64 0
  %i.cf = shufflevector <4 x ptr> %i.ce, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cg = insertelement <4 x ptr> poison, ptr %scevgep76, i64 0
  %i.ch = shufflevector <4 x ptr> %i.cg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ci = insertelement <2 x ptr> poison, ptr %scevgep81, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %scevgep83, i64 1
  %i.ck = insertelement <2 x ptr> poison, ptr %scevgep74, i64 0 ; 2 uses
  %i.cl = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x ptr> poison, ptr %i.al, i64 0
  %i.cn = insertelement <2 x ptr> %i.cm, ptr %scevgep77, i64 1
  %i.co = insertelement <2 x ptr> %i.ck, ptr %scevgep76, i64 1
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep75, i64 0
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <2 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.cs = shufflevector <2 x ptr> %i.cr, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ct = insertelement <2 x ptr> poison, ptr %scevgep82, i64 0
  %i.cu = insertelement <2 x ptr> %i.ct, ptr %scevgep84, i64 1
  %i.cv = insertelement <2 x ptr> %i.cr, ptr %scevgep75, i64 1
  %i.cw = insertelement <2 x ptr> poison, ptr %scevgep85, i64 0
  %i.cx = insertelement <2 x ptr> %i.cw, ptr %scevgep78, i64 1
  %min.iters.check = icmp ult i32 %i.ac, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep76
  %bound1 = icmp ult ptr %scevgep75, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  %bound087 = icmp ult ptr %scevgep, %scevgep78
  %bound188 = icmp ult ptr %scevgep77, %scevgep74
  %found.conflict89 = and i1 %bound087, %bound188
  %bound092 = icmp ult ptr %scevgep, %scevgep80
  %bound193 = icmp ult ptr %scevgep79, %scevgep74
  %found.conflict94 = and i1 %bound092, %bound193
  %i.cy = icmp ult <2 x ptr> %i.cs, %i.cu
  %i.cz = icmp ult <2 x ptr> %i.cj, %i.cl
  %i.da = icmp ult <2 x ptr> %i.cv, %i.cx
  %i.db = icmp ult <2 x ptr> %i.cn, %i.co
  %i.dc = icmp ult <4 x ptr> %i.cq, %i.by
  %i.dd = icmp ult <4 x ptr> %i.cd, %i.ch
  %i.de = icmp ult <4 x ptr> %i.bu, %i.by
  %i.df = icmp ult <4 x ptr> %i.cd, %i.cf
  %i.dg = or <4 x i32> %i.ap, %i.bz
  %i.dh = icmp slt <4 x i32> %i.dg, zeroinitializer
  %i.di = shufflevector <2 x i1> %i.cy, <2 x i1> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i1> %i.dc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <8 x i1> %i.di, <8 x i1> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dl = shufflevector <4 x i1> %i.de, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <8 x i1> %i.dk, <8 x i1> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x i1> %i.dh, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <16 x i1> %i.dm, <16 x i1> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.dp = shufflevector <2 x i1> %i.cz, <2 x i1> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x i1> %i.dd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <8 x i1> %i.dp, <8 x i1> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <16 x i1> %i.dr, <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true, i1 true>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.dt = shufflevector <4 x i1> %i.df, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <16 x i1> %i.ds, <16 x i1> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.dv = and <16 x i1> %i.do, %i.du
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = icmp ne i16 %i.dw, 0
  %op.rdx = or i1 %i.dx, %found.conflict
  %op.rdx167 = or i1 %found.conflict89, %found.conflict94
  %i.dy = or i32 %i.aq, %i.at
  %op.rdx168 = icmp slt i32 %i.dy, 0
  %op.rdx169 = or i1 %op.rdx, %op.rdx167
  %op.rdx170 = or i1 %op.rdx169, %op.rdx168
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.dz = shl nuw nsw i64 %n.vec, 2               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge64.split:                              ; preds = %._crit_edge, %.lr.ph63, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv66 = phi i64 [ %i.ar, %.lr.ph.preheader ], [ %indvars.iv.next67, %._crit_edge ] ; 5 uses
  %i.ea = mul nsw i64 %indvars.iv66, %i.as
  %i.eb = getelementptr inbounds i8, ptr %i.v, i64 %i.ea ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv66, %i.au
  %i.ed = getelementptr inbounds i8, ptr %i.x, i64 %i.ec ; 2 uses
  %i.ee = mul nsw i64 %indvars.iv66, %i.aw
  %i.ef = getelementptr inbounds i8, ptr %i.z, i64 %i.ee ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv66, %i.ax
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.eg ; 6 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ag ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.aj ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %op.rdx170, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.dz
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.dz
  %i.em = getelementptr i8, ptr %i.eh, i64 %i.dz
  %i.en = load float, ptr %i.al, align 4, !tbaa !71, !alias.scope !72
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = load float, ptr %i.am, align 8, !tbaa !73, !alias.scope !72
  %broadcast.splatinsert162 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat163 = shufflevector <4 x float> %broadcast.splatinsert162, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ep = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.ep
  %next.gep158 = getelementptr i8, ptr %i.ei, i64 %i.ep
  %next.gep159 = getelementptr i8, ptr %i.eh, i64 %i.ep
  %wide.load = load <4 x float>, ptr %next.gep159, align 4, !tbaa !50, !alias.scope !74 ; 2 uses
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !50, !alias.scope !75
  %wide.load161 = load <4 x float>, ptr %next.gep, align 4, !tbaa !50, !alias.scope !76
  %i.eq = fsub nsz <4 x float> %wide.load160, %broadcast.splat ; 2 uses
  %i.er = fsub nsz <4 x float> %wide.load161, %broadcast.splat163 ; 3 uses
  %i.es = fmul nsz <4 x float> %i.eq, splat (float 4.082500e-01)
  %i.et = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.773500e-01), <4 x float> %i.es) ; 2 uses
  %i.eu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float 7.070000e-01), <4 x float> %i.et)
  %i.ev = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float -7.070000e-01), <4 x float> %i.et)
  %i.ew = fmul nsz <4 x float> %i.eq, splat (float -8.165000e-01)
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.773500e-01), <4 x float> %i.ew)
  %i.ey = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> zeroinitializer, <4 x float> %i.ex)
  %i.ez = tail call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.eu) ; 3 uses
  %i.fa = tail call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.ev) ; 3 uses
  %i.fb = tail call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %i.ey) ; 3 uses
  %i.fc = fmul nsz <4 x float> %i.fa, splat (float -3.587300e+00)
  %i.fd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> splat (float 4.467900e+00), <4 x float> %i.fc)
  %i.fe = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> splat (float 1.193000e-01), <4 x float> %i.fd)
  %i.ff = fmul nsz <4 x float> %i.fa, splat (float 2.380900e+00)
  %i.fg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> splat (float -1.218600e+00), <4 x float> %i.ff)
  %i.fh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> splat (float -1.624000e-01), <4 x float> %i.fg)
  %i.fi = fmul nsz <4 x float> %i.fa, splat (float -2.439000e-01)
  %i.fj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> splat (float 4.970000e-02), <4 x float> %i.fi)
  %i.fk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> splat (float 1.204500e+00), <4 x float> %i.fj)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index
  store <4 x float> %i.fe, ptr %i.fl, align 4, !tbaa !50, !alias.scope !77, !noalias !78
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index
  store <4 x float> %i.fh, ptr %i.fm, align 4, !tbaa !50, !alias.scope !79, !noalias !80
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index
  store <4 x float> %i.fk, ptr %i.fn, align 4, !tbaa !50, !alias.scope !81, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.04959.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph ], [ %i.ek, %middle.block ]
  %.05058.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph ], [ %i.el, %middle.block ]
  %.05157.ph = phi ptr [ %i.eh, %vector.memcheck ], [ %i.eh, %.lr.ph ], [ %i.em, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge64.split, label %.lr.ph, !llvm.loop !69

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.04959 = phi ptr [ %i.ft, %scalar.ph ], [ %.04959.ph, %scalar.ph.preheader ] ; 2 uses
  %.05058 = phi ptr [ %i.fr, %scalar.ph ], [ %.05058.ph, %scalar.ph.preheader ] ; 2 uses
  %.05157 = phi ptr [ %i.fp, %scalar.ph ], [ %.05157.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05157, i64 4
  %i.fq = load float, ptr %.05157, align 4, !tbaa !50 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05058, i64 4
  %i.fs = load float, ptr %.05058, align 4, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %.04959, i64 4
  %i.fu = load float, ptr %.04959, align 4, !tbaa !50
  %i.fv = load float, ptr %i.al, align 4, !tbaa !71
  %i.fw = fsub nsz float %i.fs, %i.fv             ; 2 uses
  %i.fx = load float, ptr %i.am, align 8, !tbaa !73
  %i.fy = fmul nsz float %i.fw, 4.082500e-01
  %i.fz = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float 5.773500e-01, float %i.fy) ; 2 uses
  %i.ga = fsub nsz float %i.fu, %i.fx             ; 3 uses
  %i.gb = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float 7.070000e-01, float %i.fz)
  %i.gc = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float -7.070000e-01, float %i.fz)
  %i.gd = fmul nsz float %i.fw, -8.165000e-01
  %4 = tail call nsz float @llvm.exp.f32(float %i.gb)
  %i.ge = tail call nsz float @llvm.exp.f32(float %i.gc)
  %5 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fq, i64 0
  %6 = insertelement <2 x float> poison, float %i.gd, i64 0
  %7 = insertelement <2 x float> %6, float %i.ge, i64 1
  %8 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> <float 5.773500e-01, float 0.000000e+00>, <2 x float> %7)
  %i.gf = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gg = fmul nsz <4 x float> %i.gf, <float 1.000000e+00, float -3.587300e+00, float 2.380900e+00, float -2.439000e-01>
  %i.gh = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %4, i64 1
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> <float 0.000000e+00, float 4.467900e+00, float -1.218600e+00, float 4.970000e-02>, <4 x float> %i.gg) ; 3 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 0
  %i.gm = tail call nsz float @llvm.exp.f32(float %i.gl) ; 2 uses
  %i.gn = extractelement <4 x float> %i.gk, i64 1
  %i.go = tail call nsz float @llvm.fmuladd.f32(float %i.gm, float 1.193000e-01, float %i.gn)
  %9 = insertelement <2 x float> poison, float %i.gm, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %12 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> <float -1.624000e-01, float 1.204500e+00>, <2 x float> %11) ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  store float %i.go, ptr %i.gp, align 4, !tbaa !50
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %13 = extractelement <2 x float> %12, i64 0
  store float %13, ptr %i.gq, align 4, !tbaa !50
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %14 = extractelement <2 x float> %12, i64 1
  store float %14, ptr %i.gr, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !70
}

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!28, !21, i64 16}
!30 = !{!18, !15, i64 56}
!31 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!28, !6, i64 40}
!34 = !{!28, !6, i64 44}
!35 = !{!"p2 omnipotent char", !14, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!38 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!39 = !{!"AVFrame", !5, i64 0, !5, i64 64, !35, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !36, i64 136, !36, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !37, i64 248, !6, i64 256, !24, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !36, i64 304, !38, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !9, i64 376, !23, i64 384, !36, i64 408, !6, i64 416}
!40 = !{!"float", !5, i64 0}
!41 = !{!"ThreadData", !20, i64 0, !20, i64 8, !40, i64 16, !40, i64 20, !40, i64 24}
!42 = !{!41, !20, i64 0}
!43 = !{!41, !20, i64 8}
!44 = !{!39, !6, i64 108}
!45 = !{!"p1 float", !9, i64 0}
!46 = !{!"p1 int", !9, i64 0}
!47 = !{!"GrayWorldContext", !45, i64 0, !46, i64 8, !45, i64 16}
!48 = !{!47, !45, i64 16}
!49 = !{!47, !46, i64 8}
!50 = !{!40, !40, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!12, !12, i64 0}
!54 = !{!47, !45, i64 0}
!55 = distinct !{!55, !52}
!56 = !{!20, !20, i64 0}
!57 = !{!39, !6, i64 288}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = distinct !{!68, !52, !83, !84}
!69 = distinct !{!69, !52}
!70 = distinct !{!70, !52, !83}
!71 = !{!41, !40, i64 20}
!72 = !{!61}
!73 = !{!41, !40, i64 24}
!74 = !{!62}
!75 = !{!63}
!76 = !{!64}
!77 = !{!65}
!78 = !{!67, !66, !64, !63, !62, !61}
!79 = !{!67}
!80 = !{!66, !64, !63, !62, !61}
!81 = !{!66}
!82 = !{!64, !63, !62, !61}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
