inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_blur_2D_Bspline:bb.a
  %i.ax = sext <8 x i32> %i.aw to <8 x i64>       ; 5 uses
  %wide.gep65 = getelementptr [4 x i8], ptr %i.ac, <8 x i64> %i.ax
  %wide.masked.gather66 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep65, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather66, splat (float 1.562500e-02)
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.as
  %i.ba = icmp slt <8 x i32> %vec.ind, %broadcast.splat
  %i.bb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.ind, <8 x i32> zeroinitializer)
  %i.bc = select <8 x i1> %i.ba, <8 x i32> %i.bb, <8 x i32> %broadcast.splat64
  %i.bd = sext <8 x i32> %i.bc to <8 x i64>       ; 5 uses
  %wide.gep67 = getelementptr [4 x i8], ptr %i.ac, <8 x i64> %i.bd
  %wide.masked.gather68 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep67, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather68, splat (float 2.343750e-02)
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.az
  %i.bg = add <8 x i32> %vec.ind, splat (i32 1)   ; 2 uses
  %i.bh = icmp slt <8 x i32> %i.bg, %broadcast.splat
  %i.bi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bg, <8 x i32> zeroinitializer)
  %i.bj = select <8 x i1> %i.bh, <8 x i32> %i.bi, <8 x i32> %broadcast.splat64
  %i.bk = sext <8 x i32> %i.bj to <8 x i64>       ; 5 uses
  %wide.gep69 = getelementptr [4 x i8], ptr %i.ac, <8 x i64> %i.bk
  %wide.masked.gather70 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep69, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather70, splat (float 1.562500e-02)
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bf
  %i.bn = add <8 x i32> %vec.ind, splat (i32 2)   ; 2 uses
  %i.bo = icmp slt <8 x i32> %i.bn, %broadcast.splat
  %i.bp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bn, <8 x i32> zeroinitializer)
  %i.bq = select <8 x i1> %i.bo, <8 x i32> %i.bp, <8 x i32> %broadcast.splat64
  %i.br = sext <8 x i32> %i.bq to <8 x i64>       ; 5 uses
  %wide.gep71 = getelementptr [4 x i8], ptr %i.ac, <8 x i64> %i.br
  %wide.masked.gather72 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep71, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather72, splat (float 3.906250e-03)
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bm
  %wide.gep73 = getelementptr [4 x i8], ptr %i.ae, <8 x i64> %i.ar
  %wide.masked.gather74 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep73, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather74, splat (float 1.562500e-02)
  %i.bv = fadd reassoc nsz arcp contract afn <8 x float> %i.bu, %i.bt
  %wide.gep75 = getelementptr [4 x i8], ptr %i.ae, <8 x i64> %i.ax
  %wide.masked.gather76 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep75, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather76, splat (float 6.250000e-02)
  %i.bx = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, %i.bv
  %wide.gep77 = getelementptr [4 x i8], ptr %i.ae, <8 x i64> %i.bd
  %wide.masked.gather78 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.by = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather78, splat (float 9.375000e-02)
  %i.bz = fadd reassoc nsz arcp contract afn <8 x float> %i.by, %i.bx
  %wide.gep79 = getelementptr [4 x i8], ptr %i.ae, <8 x i64> %i.bk
  %wide.masked.gather80 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather80, splat (float 6.250000e-02)
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %i.ca, %i.bz
  %wide.gep81 = getelementptr [4 x i8], ptr %i.ae, <8 x i64> %i.br
  %wide.masked.gather82 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep81, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather82, splat (float 1.562500e-02)
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %i.cb
  %wide.gep83 = getelementptr [4 x i8], ptr %i.ag, <8 x i64> %i.ar
  %wide.masked.gather84 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep83, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather84, splat (float 2.343750e-02)
  %i.cf = fadd reassoc nsz arcp contract afn <8 x float> %i.ce, %i.cd
  %wide.gep85 = getelementptr [4 x i8], ptr %i.ag, <8 x i64> %i.ax
  %wide.masked.gather86 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep85, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather86, splat (float 9.375000e-02)
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, %i.cf
  %wide.gep87 = getelementptr [4 x i8], ptr %i.ag, <8 x i64> %i.bd
  %wide.masked.gather88 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep87, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather88, splat (float 1.406250e-01)
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %i.ci, %i.ch
  %wide.gep89 = getelementptr [4 x i8], ptr %i.ag, <8 x i64> %i.bk
  %wide.masked.gather90 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather90, splat (float 9.375000e-02)
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %i.cj
  %wide.gep91 = getelementptr [4 x i8], ptr %i.ag, <8 x i64> %i.br
  %wide.masked.gather92 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather92, splat (float 2.343750e-02)
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cl
  %wide.gep93 = getelementptr [4 x i8], ptr %i.am, <8 x i64> %i.ar
  %wide.masked.gather94 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep93, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather94, splat (float 1.562500e-02)
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.cn
  %wide.gep95 = getelementptr [4 x i8], ptr %i.am, <8 x i64> %i.ax
  %wide.masked.gather96 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather96, splat (float 6.250000e-02)
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cp
  %wide.gep97 = getelementptr [4 x i8], ptr %i.am, <8 x i64> %i.bd
  %wide.masked.gather98 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather98, splat (float 9.375000e-02)
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cr
  %wide.gep99 = getelementptr [4 x i8], ptr %i.am, <8 x i64> %i.bk
  %wide.masked.gather100 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep99, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather100, splat (float 6.250000e-02)
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cu, %i.ct
  %wide.gep101 = getelementptr [4 x i8], ptr %i.am, <8 x i64> %i.br
  %wide.masked.gather102 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep101, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather102, splat (float 1.562500e-02)
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %i.cv
  %wide.gep103 = getelementptr [4 x i8], ptr %i.aa, <8 x i64> %i.ar
  %wide.masked.gather104 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep103, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather104, splat (float 3.906250e-03)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cx
  %wide.gep105 = getelementptr [4 x i8], ptr %i.aa, <8 x i64> %i.ax
  %wide.masked.gather106 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep105, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather106, splat (float 1.562500e-02)
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %i.cz
  %wide.gep107 = getelementptr [4 x i8], ptr %i.aa, <8 x i64> %i.bd
  %wide.masked.gather108 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep107, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather108, splat (float 2.343750e-02)
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %i.dc, %i.db
  %wide.gep109 = getelementptr [4 x i8], ptr %i.aa, <8 x i64> %i.bk
  %wide.masked.gather110 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep109, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather110, splat (float 1.562500e-02)
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %i.de, %i.dd
  %wide.gep111 = getelementptr [4 x i8], ptr %i.aa, <8 x i64> %i.br
  %wide.masked.gather112 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep111, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !46
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather112, splat (float 3.906250e-03)
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, %i.df
  %i.di = getelementptr [4 x i8], ptr %i.p, i64 %index
  store <8 x float> %i.dh, ptr %i.di, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader50, %middle.block
  %.03955.ph = phi i64 [ 0, %.preheader50 ], [ %n.vec, %middle.block ]
  br label %.preheader

._crit_edge57.split:                              ; preds = %._crit_edge, %.preheader50.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.dk = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond60.not = icmp eq i64 %i.dk, %3
  br i1 %exitcond60.not, label %._crit_edge57.split, label %.preheader50

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.03955 = phi i64 [ %i.fc, %.preheader ], [ %.03955.ph, %.preheader.preheader ] ; 3 uses
  %i.dl = trunc i64 %.03955 to i32                ; 2 uses
  %i.dm = insertelement <4 x i32> poison, i32 %i.dl, i64 0
  %i.dn = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.do = add <4 x i32> %i.dn, <i32 -1, i32 -2, i32 0, i32 1> ; 2 uses
  %i.dp = icmp slt <4 x i32> %i.do, %i.l
  %i.dq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.do, <4 x i32> zeroinitializer)
  %i.dr = select <4 x i1> %i.dp, <4 x i32> %i.dq, <4 x i32> %i.n
  %i.ds = sext <4 x i32> %i.dr to <4 x i64>       ; 5 uses
  %i.dt = getelementptr [4 x i8], ptr %i.ac, <4 x i64> %i.ds
  %i.du = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.dt, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !46
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.du, <float 1.562500e-02, float 3.906250e-03, float 2.343750e-02, float 1.562500e-02>
  %i.dw = add i32 %i.dl, 2                        ; 2 uses
  %.not49.4 = icmp slt i32 %i.dw, %i.c
  %i.dx = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0)
  %i.dy = select i1 %.not49.4, i32 %i.dx, i32 %i.d
  %i.dz = sext i32 %i.dy to i64                   ; 5 uses
  %i.ea = getelementptr [4 x i8], ptr %i.ac, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !46
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 3.906250e-03
  %i.ed = getelementptr [4 x i8], ptr %i.ae, <4 x i64> %i.ds
  %i.ee = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ed, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !46
  %i.ef = fmul reassoc nsz arcp contract afn <4 x float> %i.ee, <float 6.250000e-02, float 1.562500e-02, float 9.375000e-02, float 6.250000e-02>
  %i.eg = getelementptr [4 x i8], ptr %i.ae, i64 %i.dz
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !46
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, 1.562500e-02
  %i.ej = getelementptr [4 x i8], ptr %i.ag, <4 x i64> %i.ds
  %i.ek = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ej, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !46
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, <float 9.375000e-02, float 2.343750e-02, float 1.406250e-01, float 9.375000e-02>
  %i.em = getelementptr [4 x i8], ptr %i.ag, i64 %i.dz
  %i.en = load float, ptr %i.em, align 4, !tbaa !46
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.343750e-02
  %i.ep = getelementptr [4 x i8], ptr %i.am, <4 x i64> %i.ds
  %i.eq = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !46
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.eq, <float 6.250000e-02, float 1.562500e-02, float 9.375000e-02, float 6.250000e-02>
  %i.es = getelementptr [4 x i8], ptr %i.am, i64 %i.dz
  %i.et = load float, ptr %i.es, align 4, !tbaa !46
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, 1.562500e-02
  %i.ev = getelementptr [4 x i8], ptr %i.aa, <4 x i64> %i.ds
  %i.ew = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ev, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !46
  %i.ex = fmul reassoc nsz arcp contract afn <4 x float> %i.ew, <float 1.562500e-02, float 3.906250e-03, float 2.343750e-02, float 1.562500e-02>
  %i.ey = getelementptr [4 x i8], ptr %i.aa, i64 %i.dz
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !46
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, 3.906250e-03
  %rdx.op = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.ef
  %rdx.op113 = fadd reassoc nsz arcp contract afn <4 x float> %rdx.op, %i.el
  %rdx.op114 = fadd reassoc nsz arcp contract afn <4 x float> %rdx.op113, %i.er
  %rdx.op115 = fadd reassoc nsz arcp contract afn <4 x float> %rdx.op114, %i.ex
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.ec, <4 x float> %rdx.op115)
  %op.rdx116 = fadd reassoc nsz arcp contract afn float %i.ei, %i.eo
  %op.rdx117 = fadd reassoc nsz arcp contract afn float %i.eu, %i.fa
  %op.rdx118 = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx116
  %op.rdx119 = fadd reassoc nsz arcp contract afn float %op.rdx118, %op.rdx117
  %i.fb = getelementptr [4 x i8], ptr %i.p, i64 %.03955
  store float %op.rdx119, ptr %i.fb, align 4, !tbaa !46
  %i.fc = add nuw i64 %.03955, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %2
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !141
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_create_motion_kernel(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #17 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %3, 5.000000e-01 ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn float %4, %4
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, %i.a
  %5 = fsub reassoc nsz arcp contract afn float %4, %i.c
  %i.d = uitofp reassoc nsz arcp contract afn i64 %1 to float
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.d
  %i.f = add i64 %1, -1                           ; 7 uses
  %i.g = uitofp reassoc nsz arcp contract afn i64 %i.f to float
  %i.h = fmul reassoc nnan nsz arcp contract afn float %i.g, 5.000000e-01
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, -1.000000e+00 ; 3 uses
  %i.j = fsub reassoc nsz arcp contract afn float f0xBF490FDB, %2
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.j) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.k = shl i64 %1, 3                            ; 2 uses
  %.not65 = icmp eq i64 %i.k, 0
  br i1 %.not65, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.l = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.i
  %i.m = insertelement <4 x float> poison, float %i.e, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

._crit_edge:                                      ; preds = %.split.1, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.split.1
  %.05463 = phi i64 [ %i.bl, %.split.1 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.o = uitofp reassoc nsz arcp contract afn i64 %.05463 to float
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.o, 1.250000e-01
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00 ; 3 uses
  %i.t = fsub reassoc nsz arcp contract afn float %i.s, %4 ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.a
  %6 = fadd reassoc nsz arcp contract afn float %i.t, %i.v
  %i.w = fadd reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, %cos
  %i.y = fmul reassoc nsz arcp contract afn float %i.s, %sin
  %i.z = fadd reassoc nsz arcp contract afn float %i.x, 1.000000e+00
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, 1.000000e+00
  %i.ab = fmul reassoc nsz arcp contract afn float %sin, %i.w
  %i.ac = fmul reassoc nsz arcp contract afn float %i.w, %cos
  %i.ad = fsub reassoc nsz arcp contract afn float %i.z, %i.ab
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, %i.ac
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.i
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, %i.i
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.af, i64 1
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ak = fsub reassoc nsz arcp contract afn <4 x float> %i.aj, %i.n
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.n
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.an = tail call reassoc nsz arcp contract afn <4 x float> @llvm.round.v4f32(<4 x float> %i.am) ; 4 uses
  %i.ao = extractelement <4 x float> %i.an, i64 0
  %i.ap = fptosi float %i.ao to i32               ; 4 uses
  %i.aq = extractelement <4 x float> %i.an, i64 1
  %i.ar = fptosi float %i.aq to i32               ; 4 uses
  %i.as = extractelement <4 x float> %i.an, i64 2
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = extractelement <4 x float> %i.an, i64 3
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = icmp slt i32 %i.at, 1
  %i.ax = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ay = icmp ule i64 %i.f, %i.ax
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %brmerge = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %brmerge, label %.split, label %.preheader.split.split.preheader

.preheader.split.split.preheader:                 ; preds = %.preheader
  %i.az = icmp sgt i32 %i.ap, 0
  br i1 %i.az, label %bb.f, label %.preheader.split.split.1

.split:                                           ; preds = %.preheader.split.split.1, %bb.h, %bb.i, %.preheader
  %i.ba = icmp slt i32 %i.av, 1
  %i.bb = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bc = icmp ule i64 %i.f, %i.bb
  %invariant.gep.1 = getelementptr [4 x i8], ptr %0, i64 %i.bb ; 2 uses
  %brmerge.1 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %brmerge.1, label %.split.1, label %.preheader.split.split.preheader.1

.preheader.split.split.preheader.1:               ; preds = %.split
  %i.bd = icmp sgt i32 %i.ap, 0
  br i1 %i.bd, label %bb.b, label %.preheader.split.split.1.1

bb.b:                                             ; preds = %.preheader.split.split.preheader.1
  %i.be = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.bf = icmp ugt i64 %i.f, %i.be
  br i1 %i.bf, label %bb.c, label %.preheader.split.split.1.1

bb.c:                                             ; preds = %bb.b
  %i.bg = mul i64 %1, %i.be
  %gep.169 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bg
  store float 1.000000e+00, ptr %gep.169, align 4, !tbaa !46
  br label %.preheader.split.split.1.1

.preheader.split.split.1.1:                       ; preds = %bb.c, %bb.b, %.preheader.split.split.preheader.1
  %i.bh = icmp sgt i32 %i.ar, 0
  br i1 %i.bh, label %bb.d, label %.split.1

bb.d:                                             ; preds = %.preheader.split.split.1.1
  %i.bi = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.bj = icmp ugt i64 %i.f, %i.bi
  br i1 %i.bj, label %bb.e, label %.split.1

bb.e:                                             ; preds = %bb.d
  %i.bk = mul i64 %1, %i.bi
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bk
  store float 1.000000e+00, ptr %gep.1.1, align 4, !tbaa !46
  br label %.split.1

.split.1:                                         ; preds = %.preheader.split.split.1.1, %bb.d, %bb.e, %.split
  %i.bl = add nuw i64 %.05463, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.preheader

bb.f:                                             ; preds = %.preheader.split.split.preheader
  %i.bm = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.bn = icmp ugt i64 %i.f, %i.bm
  br i1 %i.bn, label %bb.g, label %.preheader.split.split.1

bb.g:                                             ; preds = %bb.f
  %i.bo = mul i64 %1, %i.bm
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float 1.000000e+00, ptr %gep, align 4, !tbaa !46
  br label %.preheader.split.split.1

.preheader.split.split.1:                         ; preds = %.preheader.split.split.preheader, %bb.f, %bb.g
  %i.bp = icmp sgt i32 %i.ar, 0
  br i1 %i.bp, label %bb.h, label %.split

bb.h:                                             ; preds = %.preheader.split.split.1
  %i.bq = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.br = icmp ugt i64 %i.f, %i.bq
  br i1 %i.br, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  %i.bs = mul i64 %1, %i.bq
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bs
  store float 1.000000e+00, ptr %gep.1, align 4, !tbaa !46
  br label %.split
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

end_hunk_0
