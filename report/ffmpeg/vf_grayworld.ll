Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_grayworld?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@correct_frame:bb.a
  %i.bi = getelementptr i8, ptr %i.x, i64 %i.bh
  %scevgep78 = getelementptr i8, ptr %i.bi, i64 %i.bb ; 3 uses
  %i.bj = mul nsw i64 %i.ar, %wide.trip.count
  %i.bk = shl i64 %i.bj, 2                        ; 3 uses
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
  %i.en = load float, ptr %i.al, align 4, !tbaa !60, !alias.scope !61
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = load float, ptr %i.am, align 8, !tbaa !64, !alias.scope !61
  %broadcast.splatinsert162 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat163 = shufflevector <4 x float> %broadcast.splatinsert162, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ep = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.ep
  %next.gep158 = getelementptr i8, ptr %i.ei, i64 %i.ep
  %next.gep159 = getelementptr i8, ptr %i.eh, i64 %i.ep
  %wide.load = load <4 x float>, ptr %next.gep159, align 4, !tbaa !52, !alias.scope !65 ; 2 uses
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !52, !alias.scope !67
  %wide.load161 = load <4 x float>, ptr %next.gep, align 4, !tbaa !52, !alias.scope !69
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
  store <4 x float> %i.fe, ptr %i.fl, align 4, !tbaa !52, !alias.scope !71, !noalias !73
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index
  store <4 x float> %i.fh, ptr %i.fm, align 4, !tbaa !52, !alias.scope !76, !noalias !77
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index
  store <4 x float> %i.fk, ptr %i.fn, align 4, !tbaa !52, !alias.scope !78, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !80

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
  br i1 %exitcond70.not, label %._crit_edge64.split, label %.lr.ph, !llvm.loop !83

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.04959 = phi ptr [ %i.ft, %scalar.ph ], [ %.04959.ph, %scalar.ph.preheader ] ; 2 uses
  %.05058 = phi ptr [ %i.fr, %scalar.ph ], [ %.05058.ph, %scalar.ph.preheader ] ; 2 uses
  %.05157 = phi ptr [ %i.fp, %scalar.ph ], [ %.05157.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05157, i64 4
  %i.fq = load float, ptr %.05157, align 4, !tbaa !52 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05058, i64 4
  %i.fs = load float, ptr %.05058, align 4, !tbaa !52
  %i.ft = getelementptr inbounds nuw i8, ptr %.04959, i64 4
  %i.fu = load float, ptr %.04959, align 4, !tbaa !52
  %i.fv = load float, ptr %i.al, align 4, !tbaa !60
  %i.fw = fsub nsz float %i.fs, %i.fv             ; 2 uses
  %i.fx = load float, ptr %i.am, align 8, !tbaa !64
  %i.fy = fmul nsz float %i.fw, 4.082500e-01
  %i.fz = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float 5.773500e-01, float %i.fy) ; 2 uses
  %4 = fmul nsz float %i.fw, -8.165000e-01
  %i.ga = fsub nsz float %i.fu, %i.fx             ; 3 uses
  %i.gb = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float 7.070000e-01, float %i.fz)
  %i.gc = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float -7.070000e-01, float %i.fz)
  %5 = tail call nsz float @llvm.exp.f32(float %i.gb)
  %i.gd = tail call nsz float @llvm.exp.f32(float %i.gc)
  %6 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fq, i64 0
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = insertelement <2 x float> %7, float %i.gd, i64 1
  %9 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> <float 5.773500e-01, float 0.000000e+00>, <2 x float> %8)
  %i.ge = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gf = fmul nsz <4 x float> %i.ge, <float 1.000000e+00, float -3.587300e+00, float 2.380900e+00, float -2.439000e-01>
  %i.gg = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %5, i64 1
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> <float 0.000000e+00, float 4.467900e+00, float -1.218600e+00, float 4.970000e-02>, <4 x float> %i.gf) ; 4 uses
  %i.gk = extractelement <4 x float> %i.gj, i64 0
  %i.gl = tail call nsz float @llvm.exp.f32(float %i.gk) ; 3 uses
  %i.gm = extractelement <4 x float> %i.gj, i64 1
  %i.gn = tail call nsz float @llvm.fmuladd.f32(float %i.gl, float 1.193000e-01, float %i.gm)
  %i.go = extractelement <4 x float> %i.gj, i64 2
  %i.gp = tail call nsz float @llvm.fmuladd.f32(float %i.gl, float -1.624000e-01, float %i.go)
  %i.gq = extractelement <4 x float> %i.gj, i64 3
  %i.gr = tail call nsz float @llvm.fmuladd.f32(float %i.gl, float 1.204500e+00, float %i.gq)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  store float %i.gn, ptr %i.gs, align 4, !tbaa !52
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  store float %i.gp, ptr %i.gt, align 4, !tbaa !52
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  store float %i.gr, ptr %i.gu, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !84
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
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!22 = !{!23, !24, i64 16}
!23 = !{!"AVFilterLink", !24, i64 0, !15, i64 8, !24, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !25, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !26, i64 72, !25, i64 96, !27, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!24 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!25 = !{!"AVRational", !6, i64 0, !6, i64 4}
!26 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!27 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!28 = !{!"AVFilterFormatsConfig", !29, i64 0, !29, i64 8, !30, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!29 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!31 = !{!10, !16, i64 56}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!34 = !{!23, !6, i64 40}
!35 = !{!23, !6, i64 44}
!36 = !{!37, !6, i64 288}
!37 = !{!"AVFrame", !7, i64 0, !7, i64 64, !38, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !25, i64 124, !39, i64 136, !39, i64 144, !25, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !40, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !39, i64 304, !41, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !12, i64 376, !26, i64 384, !39, i64 408, !6, i64 416}
!38 = !{!"p2 omnipotent char", !17, i64 0}
!39 = !{!"long", !7, i64 0}
!40 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!41 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!42 = !{!43, !21, i64 0}
!43 = !{!"ThreadData", !21, i64 0, !21, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!44 = !{!"float", !7, i64 0}
!45 = !{!43, !21, i64 8}
!46 = !{!37, !6, i64 108}
!47 = !{!48, !49, i64 16}
!48 = !{!"GrayWorldContext", !49, i64 0, !50, i64 8, !49, i64 16}
!49 = !{!"p1 float", !12, i64 0}
!50 = !{!"p1 int", !12, i64 0}
!51 = !{!48, !50, i64 8}
!52 = !{!44, !44, i64 0}
!53 = !{!6, !6, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!14, !14, i64 0}
!57 = !{!48, !49, i64 0}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !55}
!60 = !{!43, !44, i64 20}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!43, !44, i64 24}
!65 = !{!66}
!66 = distinct !{!66, !63}
!67 = !{!68}
!68 = distinct !{!68, !63}
!69 = !{!70}
!70 = distinct !{!70, !63}
!71 = !{!72}
!72 = distinct !{!72, !63}
!73 = !{!74, !75, !70, !68, !66, !62}
!74 = distinct !{!74, !63}
!75 = distinct !{!75, !63}
!76 = !{!74}
!77 = !{!75, !70, !68, !66, !62}
!78 = !{!75}
!79 = !{!70, !68, !66, !62}
!80 = distinct !{!80, !55, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !55}
!84 = distinct !{!84, !55, !81}
end_hunk_0
