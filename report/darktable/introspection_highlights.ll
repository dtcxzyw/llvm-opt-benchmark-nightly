Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@interpolate_bilinear:bb.a
  %i.n = fptoui float %i.m to i64                 ; 3 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = icmp ugt i64 %2, %i.n
  %i.q = select i1 %i.p, i64 %i.n, i64 %i.c
  %i.r = icmp ult i64 %i.o, %2
  %i.s = select i1 %i.r, i64 %i.o, i64 %i.c       ; 2 uses
  %i.t = mul i64 %i.q, %1                         ; 3 uses
  %i.u = mul i64 %i.s, %1                         ; 3 uses
  %i.v = uitofp reassoc nsz arcp contract afn i64 %i.s to float
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.l ; 2 uses
  %i.x = mul i64 %.08493, %4                      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat2 = shufflevector <8 x i64> %broadcast.splatinsert1, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x float> poison, float %i.w, i64 0 ; 2 uses
  %i.y = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <16 x i32> zeroinitializer
  %i.z = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = uitofp <8 x i64> %vec.ind to <8 x float>
  %i.ab = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat6, %i.aa
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.h ; 2 uses
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ac)
  %i.ae = fptoui <8 x float> %i.ad to <8 x i64>   ; 3 uses
  %i.af = add <8 x i64> %i.ae, splat (i64 1)      ; 2 uses
  %i.ag = icmp ugt <8 x i64> %broadcast.splat10, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x i64> %i.ae, <8 x i64> %broadcast.splat12 ; 2 uses
  %i.ai = icmp ult <8 x i64> %i.af, %broadcast.splat10
  %i.aj = select <8 x i1> %i.ai, <8 x i64> %i.af, <8 x i64> %broadcast.splat12 ; 3 uses
  %i.ak = add <8 x i64> %i.ah, %broadcast.splat
  %i.al = shl <8 x i64> %i.ak, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.al ; 4 uses
  %i.am = add <8 x i64> %i.aj, %broadcast.splat
  %i.an = shl <8 x i64> %i.am, splat (i64 4)
  %wide.gep13 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.an ; 4 uses
  %i.ao = add <8 x i64> %i.aj, %broadcast.splat2
  %i.ap = shl <8 x i64> %i.ao, splat (i64 4)
  %wide.gep14 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ap ; 4 uses
  %i.aq = add <8 x i64> %i.ah, %broadcast.splat2
  %i.ar = shl <8 x i64> %i.aq, splat (i64 4)
  %wide.gep15 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ar ; 4 uses
  %i.as = uitofp <8 x i64> %i.aj to <8 x float>
  %i.at = fsub reassoc nsz arcp contract afn <8 x float> %i.as, %i.ac ; 7 uses
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.at ; 6 uses
  %i.av = add i64 %index, %i.x
  %i.aw = shl i64 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep15, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.at
  %wide.masked.gather16 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep14, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.az = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather16, %i.au
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %i.az, %i.ay ; 2 uses
  %wide.masked.gather17 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather18 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep13, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 4
  %wide.masked.gather20 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep19, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather20, %i.at
  %wide.gep21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 4
  %wide.masked.gather22 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep21, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather22, %i.au
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bb ; 2 uses
  %wide.gep23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather24 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep23, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 4
  %wide.masked.gather26 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 8
  %wide.masked.gather28 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather28, %i.at
  %wide.gep29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 8
  %wide.masked.gather30 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather30, %i.au
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %i.bf, %i.be ; 2 uses
  %wide.gep31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather32 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep31, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep33 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 8
  %wide.masked.gather34 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep33, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep35 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 12
  %wide.masked.gather36 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep35, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather36, %i.at
  %wide.gep37 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 12
  %wide.masked.gather38 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep37, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather38, %i.au
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %i.bi, %i.bh ; 2 uses
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather40 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep39, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 12
  %wide.masked.gather42 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep41, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bk = shufflevector <8 x float> %wide.masked.gather17, <8 x float> %wide.masked.gather24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bl = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fmul reassoc nsz arcp contract afn <16 x float> %i.bk, %i.bl
  %i.bn = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = fsub reassoc nsz arcp contract afn <16 x float> %i.bm, %i.bn
  %i.bp = shufflevector <8 x float> %wide.masked.gather18, <8 x float> %wide.masked.gather26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = fmul reassoc nsz arcp contract afn <16 x float> %i.bp, %i.bq
  %i.bs = fadd reassoc nsz arcp contract afn <16 x float> %i.bo, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn <16 x float> %i.bs, %i.y
  %i.bu = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bv = fadd reassoc nsz arcp contract afn <16 x float> %i.bt, %i.bu
  %i.bw = shufflevector <8 x float> %wide.masked.gather32, <8 x float> %wide.masked.gather40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fmul reassoc nsz arcp contract afn <16 x float> %i.bw, %i.bx
  %i.bz = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = fsub reassoc nsz arcp contract afn <16 x float> %i.by, %i.bz
  %i.cb = shufflevector <8 x float> %wide.masked.gather34, <8 x float> %wide.masked.gather42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fmul reassoc nsz arcp contract afn <16 x float> %i.cb, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn <16 x float> %i.ca, %i.cd
  %i.cf = fmul reassoc nsz arcp contract afn <16 x float> %i.ce, %i.z
  %i.cg = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ch = fadd reassoc nsz arcp contract afn <16 x float> %i.cf, %i.cg
  %interleaved.vec = shufflevector <16 x float> %i.bv, <16 x float> %i.ch, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ax, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !596

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.08392.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %i.cj = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge94.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cl = add nuw i64 %.08493, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.cl, %5
  br i1 %exitcond96.not, label %._crit_edge94.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08392 = phi i64 [ %i.ea, %scalar.ph ], [ %.08392.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = uitofp reassoc nsz arcp contract afn i64 %.08392 to float
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.cm, %i.a
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.i ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.co)
  %i.cq = fptoui float %i.cp to i64               ; 3 uses
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = icmp ugt i64 %1, %i.cq
  %i.ct = select i1 %i.cs, i64 %i.cq, i64 %i.b    ; 2 uses
  %i.cu = icmp ult i64 %i.cr, %1
  %i.cv = select i1 %i.cu, i64 %i.cr, i64 %i.b    ; 3 uses
  %i.cw = add i64 %i.ct, %i.t
  %.idx = shl i64 %i.cw, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cy = add i64 %i.cv, %i.t
  %.idx87 = shl i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx87
  %i.da = add i64 %i.cv, %i.u
  %.idx88 = shl i64 %i.da, 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.idx88
  %i.dc = add i64 %i.ct, %i.u
  %.idx89 = shl i64 %i.dc, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx89
  %i.de = uitofp reassoc nsz arcp contract afn i64 %i.cv to float
  %i.df = fsub reassoc nsz arcp contract afn float %i.de, %i.co ; 2 uses
  %i.dg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.df
  %i.dh = add i64 %.08392, %i.x
  %.idx90 = shl i64 %i.dh, 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %.idx90
  %i.dj = load <4 x float>, ptr %i.dd, align 4, !tbaa !12
  %i.dk = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %i.dj, %i.dl
  %i.dn = load <4 x float>, ptr %i.db, align 4, !tbaa !12
  %i.do = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dm ; 2 uses
  %i.ds = load <4 x float>, ptr %i.cx, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dl
  %i.du = load <4 x float>, ptr %i.cz, align 4, !tbaa !12
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.du, %i.dp
  %i.dw = fsub reassoc nsz arcp contract afn <4 x float> %i.dt, %i.dr
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dv
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.ck
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dr
  store <4 x float> %i.dz, ptr %i.di, align 4, !tbaa !12
  %i.ea = add nuw i64 %.08392, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !597
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @wavelets_process(ptr noalias noundef %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef range(i64 0, 4611686018427387904) %4, i32 noundef range(i32 1, 13) %5, ptr noalias nofree noundef captures(none) %6, ptr noalias noundef %7, ptr noalias noundef %8, i32 noundef range(i32 0, 2) %9, float noundef %10, i32 noundef range(i32 0, 2) %11, float noundef %12) unnamed_addr #26 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [9 x [4 x float]], align 16       ; 13 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = shl nuw i64 %3, 2                        ; 5 uses
  %i.g = shl i64 %3, 4
  %i.h = add i64 %i.g, 48
  %i.i = and i64 %i.h, -64
  %i.j = tail call ptr @dt_alloc_aligned(i64 noundef %i.i) #33 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 64) ]
  %.not.i = icmp eq i64 %4, 0                     ; 3 uses
  %i.k = add nsw i32 %5, -1
  %i.l = trunc i64 %4 to i32                      ; 9 uses
  %invariant.op.i = add i32 %i.l, -1              ; 5 uses
  %i.m = add nsw i64 %4, -1                       ; 2 uses
  %.not.i40.i = icmp eq i64 %3, 0                 ; 3 uses
  %i.n = add nsw i64 %3, -1                       ; 3 uses
  %i.o = icmp eq i32 %9, 0
  %i.p = trunc i64 %3 to i32                      ; 3 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %reass.add105 = fsub reassoc nsz arcp contract afn float -3.000000e+00, %12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.ac = icmp ne i32 %11, 0
  %i.ad = shl i64 %3, 4
  %min.iters.check162 = icmp samesign ult i64 %3, 4
  %n.vec164 = and i64 %3, 4611686018427387900     ; 3 uses
  %cmp.n195 = icmp eq i64 %3, %n.vec164
  %min.iters.check = icmp samesign ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %broadcast.splatinsert116 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat117 = shufflevector <8 x i64> %broadcast.splatinsert116, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %i.ae = insertelement <2 x float> poison, float %reass.add105, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %10, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.aa
  call void @free(ptr noundef %i.j) #33
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aa
  %.054119 = phi i32 [ 0, %bb.a ], [ %i.aev, %bb.aa ] ; 15 uses
  %i.ai = shl nuw nsw i32 1, %.054119             ; 24 uses
  %.not147.not = icmp eq i32 %.054119, 0          ; 3 uses
  %i.aj = and i32 %.054119, 1
  %.not = icmp eq i32 %i.aj, 0                    ; 2 uses
  %. = select i1 %.not, ptr %8, ptr %7
  %.053 = select i1 %.not147.not, ptr %0, ptr %.  ; 13 uses
  %.0 = select i1 %.not, ptr %7, ptr %8           ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  br i1 %.not.i, label %decompose_2D_Bspline.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.c
  %.not.i.i = icmp slt i32 %i.ai, %i.l
  %.reass.i = add nuw i32 %invariant.op.i, %i.ai
  %i.ak = shl nuw nsw i32 2, %.054119             ; 4 uses
  %i.al = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.am = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.an = add nsw i32 %i.ai, -1
  %i.ao = and i32 %i.an, %i.l                     ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %scevgep2 = getelementptr i8, ptr %.0, i64 -12
  %scevgep4 = getelementptr i8, ptr %.0, i64 4
  %scevgep6 = getelementptr i8, ptr %.0, i64 -8
  %scevgep8 = getelementptr i8, ptr %.0, i64 8
  %scevgep10 = getelementptr i8, ptr %.0, i64 -4
  %scevgep12 = getelementptr i8, ptr %.0, i64 12
  %scevgep16 = getelementptr i8, ptr %.053, i64 -12
  %scevgep18 = getelementptr i8, ptr %.053, i64 4
  %scevgep20 = getelementptr i8, ptr %.053, i64 -8
  %scevgep22 = getelementptr i8, ptr %.053, i64 8
  %scevgep24 = getelementptr i8, ptr %.053, i64 -4
  %scevgep26 = getelementptr i8, ptr %.053, i64 12
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat113 = shufflevector <8 x i32> %broadcast.splatinsert112, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat115 = shufflevector <8 x i64> %broadcast.splatinsert114, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <8 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat119 = shufflevector <8 x i64> %broadcast.splatinsert118, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph66.i
  %.03764.i = phi i64 [ 0, %.lr.ph66.i ], [ %i.hd, %._crit_edge.i ] ; 2 uses
  %i.aq = trunc i64 %.03764.i to i32              ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %dwt_interleave_rows.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ar = sdiv i32 %.reass.i, %i.ai               ; 4 uses
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = mul nsw i32 %i.ao, %i.ar                ; 2 uses
  %i.at = icmp sgt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = sdiv i32 %i.aq, %i.ar
  %i.av = srem i32 %i.aq, %i.ar
  %i.aw = shl nsw i32 %i.av, %.054119
  %i.ax = add nsw i32 %i.aw, %i.au
  br label %dwt_interleave_rows.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ay = sub nsw i32 %i.aq, %i.as                ; 2 uses
  %i.az = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.ba = sdiv i32 %i.ay, %i.az
  %i.bb = add nsw i32 %i.ba, %i.ao
  %i.bc = srem i32 %i.ay, %i.az
  %i.bd = shl nsw i32 %i.bc, %.054119
  %i.be = add nsw i32 %i.bb, %i.bd
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.h, %bb.g, %bb.d
  %.1.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.ax, %bb.g ], [ %i.be, %bb.h ] ; 3 uses
  %i.bf = sext i32 %.1.i.i to i64                 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bg = sub nsw i32 %.1.i.i, %i.ak
  %i.bh = call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul i64 %i.f, %i.bi                     ; 2 uses
  %i.bk = sub nsw i32 %.1.i.i, %i.ai
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = mul i64 %i.f, %i.bm                     ; 2 uses
  %i.bo = mul i64 %i.f, %i.bf                     ; 2 uses
  %i.bp = add nsw i64 %i.bf, %i.al
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.m)
  %i.bq = mul i64 %..i.i, %i.f                    ; 2 uses
  %i.br = add nsw i64 %i.bf, %i.am
  %i.bs = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.m)
  %i.bt = mul i64 %i.bs, %i.f                     ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check162, label %.lr.ph.i.i.preheader208, label %vector.body165

vector.body165:                                   ; preds = %.lr.ph.i.i.preheader, %vector.body165
  %index166 = phi i64 [ %index.next193, %vector.body165 ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bu = shl nuw i64 %index166, 2                ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bu
  %i.bx = getelementptr [4 x i8], ptr %i.bv, i64 %i.bj
  %i.by = getelementptr [4 x i8], ptr %i.bv, i64 %i.bn
  %i.bz = getelementptr [4 x i8], ptr %i.bv, i64 %i.bo
  %i.ca = getelementptr [4 x i8], ptr %i.bv, i64 %i.bq
  %i.cb = getelementptr [4 x i8], ptr %i.bv, i64 %i.bt
  %wide.vec167 = load <16 x float>, ptr %i.bx, align 4, !tbaa !12, !alias.scope !623, !noalias !625 ; 4 uses
  %strided.vec168 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec169 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec170 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec171 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec172 = load <16 x float>, ptr %i.by, align 4, !tbaa !12, !alias.scope !623, !noalias !625 ; 4 uses
  %strided.vec173 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec174 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec175 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec176 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec177 = load <16 x float>, ptr %i.bz, align 4, !tbaa !12, !alias.scope !623, !noalias !625 ; 4 uses
  %strided.vec178 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec179 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec180 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec181 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec178, splat (float 3.750000e-01)
  %wide.vec182 = load <16 x float>, ptr %i.ca, align 4, !tbaa !12, !alias.scope !623, !noalias !625 ; 4 uses
  %strided.vec183 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec184 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec185 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec186 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec187 = load <16 x float>, ptr %i.cb, align 4, !tbaa !12, !alias.scope !623, !noalias !625 ; 4 uses
  %strided.vec188 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec189 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec190 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec191 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec183, %strided.vec173
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, splat (float 2.500000e-01)
  %i.cf = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec188, %strided.vec168
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, splat (float 6.250000e-02)
  %i.ch = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.cc
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cg ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec179, splat (float 3.750000e-01)
  %i.ck = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec184, %strided.vec174
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, splat (float 2.500000e-01)
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec189, %strided.vec169
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 6.250000e-02)
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cj
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.cn ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec180, splat (float 3.750000e-01)
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec185, %strided.vec175
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, splat (float 2.500000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec190, %strided.vec170
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.ct, splat (float 6.250000e-02)
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cq
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, %i.cu ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec181, splat (float 3.750000e-01)
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec186, %strided.vec176
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %i.cy, splat (float 2.500000e-01)
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec191, %strided.vec171
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.da, splat (float 6.250000e-02)
  %i.dc = fadd reassoc nsz arcp contract afn <4 x float> %i.cz, %i.cx
  %i.dd = fadd reassoc nsz arcp contract afn <4 x float> %i.dc, %i.db ; 2 uses
  %i.de = shufflevector <4 x float> %i.ci, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.de, zeroinitializer
  %i.dg = shufflevector <4 x float> %i.ci, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = select reassoc nsz arcp contract afn <8 x i1> %i.df, <8 x float> zeroinitializer, <8 x float> %i.dg
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.di, zeroinitializer
  %i.dk = shufflevector <4 x float> %i.cw, <4 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = select reassoc nsz arcp contract afn <8 x i1> %i.dj, <8 x float> zeroinitializer, <8 x float> %i.dk
  %interleaved.vec192 = shufflevector <8 x float> %i.dh, <8 x float> %i.dl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec192, ptr %i.bw, align 64, !tbaa !12, !alias.scope !624, !noalias !626
  %index.next193 = add nuw i64 %index166, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next193, %n.vec164
  br i1 %i.dm, label %middle.block194, label %vector.body165, !llvm.loop !603

middle.block194:                                  ; preds = %vector.body165
  br i1 %cmp.n195, label %.lr.ph.i, label %.lr.ph.i.i.preheader208

.lr.ph.i.i.preheader208:                          ; preds = %.lr.ph.i.i.preheader, %middle.block194
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec164, %middle.block194 ]
end_hunk_0
begin_hunk_1_@wavelets_process:bb.a
  %wide.masked.gather147 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !627, !noalias !629
  %wide.gep148 = getelementptr i8, <8 x ptr> %wide.gep121, i64 12
  %wide.masked.gather149 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !627, !noalias !629
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec127, splat (float 3.750000e-01)
  %wide.gep150 = getelementptr i8, <8 x ptr> %wide.gep122, i64 12
  %wide.masked.gather151 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep150, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !627, !noalias !629
  %wide.gep152 = getelementptr i8, <8 x ptr> %wide.gep123, i64 12
  %wide.masked.gather153 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep152, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !627, !noalias !629
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather151, %wide.masked.gather149
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float 2.500000e-01)
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather153, %wide.masked.gather147
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float 6.250000e-02)
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %i.gj
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gn ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gp, zeroinitializer
  %i.gr = select reassoc nsz arcp contract afn <8 x i1> %i.gq, <8 x float> zeroinitializer, <8 x float> %i.gp ; 2 uses
  %i.gs = shufflevector <8 x float> %i.fq, <8 x float> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gi, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gs, <16 x float> %i.gt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.er, align 4, !tbaa !12, !alias.scope !629, !noalias !627
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.eq
  %wide.vec154 = load <32 x float>, ptr %i.gu, align 4, !tbaa !12, !noalias !622 ; 4 uses
  %strided.vec155 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec156 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec157 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec158 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec155, %i.fq
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.eq
  %i.gx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec156, %i.fz
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec157, %i.gi
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec158, %i.gr
  %i.ha = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec159 = shufflevector <16 x float> %i.ha, <16 x float> %i.hb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec159, ptr %i.gw, align 4, !tbaa !12, !alias.scope !630, !noalias !622
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next160 = add <8 x i32> %vec.ind120, splat (i32 8)
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03663.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %dwt_interleave_rows.exit.i
  %i.hd = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.hd, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03663.i = phi i64 [ %i.iq, %scalar.ph ], [ %.03663.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.he = add i64 %.03663.i, %i.ek
  %i.hf = shl i64 %i.he, 2                        ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.hh = trunc i64 %.03663.i to i32              ; 2 uses
  %i.hi = sub nsw i32 %i.hh, %i.ak
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = sub nsw i32 %i.hh, %i.ai
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.ho = shl nuw nsw i32 %i.hn, 2
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %.03663.i, %i.al
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.n)
  %i.hr = add nuw nsw i64 %.03663.i, %i.am
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.n)
  %i.ht = getelementptr [4 x i8], ptr %i.j, i64 %i.hl
  %i.hu = getelementptr [4 x i8], ptr %i.j, i64 %i.hp
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.hv = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.hw = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.hs, 4
  %i.hx = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.hy = load <4 x float>, ptr %i.ht, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.hz = load <4 x float>, ptr %i.hu, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ia = load <4 x float>, ptr %i.hv, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float 3.750000e-01)
  %i.ic = load <4 x float>, ptr %i.hw, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.id = load <4 x float>, ptr %i.hx, align 16, !tbaa !12, !alias.scope !627, !noalias !629
  %i.ie = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.hz
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ie, splat (float 2.500000e-01)
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.id, %i.hy
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.ig, splat (float 6.250000e-02)
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.ib
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ih ; 2 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ij, zeroinitializer
  %i.il = select <4 x i1> %i.ik, <4 x float> zeroinitializer, <4 x float> %i.ij ; 2 uses
  store <4 x float> %i.il, ptr %i.hg, align 4, !tbaa !12, !alias.scope !629, !noalias !627
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.hf
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hf
  %i.io = load <4 x float>, ptr %i.im, align 4, !tbaa !12, !noalias !622
  %i.ip = fsub reassoc nsz arcp contract afn <4 x float> %i.io, %i.il
  store <4 x float> %i.ip, ptr %i.in, align 4, !tbaa !12, !noalias !622
  %i.iq = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !611

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not80 = icmp eq i32 %.054119, %i.k            ; 2 uses
  %i.ir = shl nuw nsw i32 %.054119, 2
  %i.is = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.ir) ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.is ; 4 uses
  br i1 %i.o, label %bb.i, label %bb.s

bb.i:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.i
  %.not.i.i59 = icmp slt i32 %i.ai, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.ai
  %i.iu = add nsw i32 %i.ai, -1
  %i.iv = and i32 %i.iu, %i.l                     ; 3 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.ja = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.kb, %._crit_edge.i65 ] ; 2 uses
  %i.jb = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.k, label %dwt_interleave_rows.exit.i61

bb.k:                                             ; preds = %bb.j
  %i.jc = sdiv i32 %.reass318.i, %i.ai            ; 4 uses
  br i1 %i.iw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jd = mul nsw i32 %i.iv, %i.jc                ; 2 uses
  %i.je = icmp sgt i32 %i.jd, %i.jb
  br i1 %i.je, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.jf = sdiv i32 %i.jb, %i.jc
  %i.jg = srem i32 %i.jb, %i.jc
  %i.jh = shl nsw i32 %i.jg, %.054119
  %i.ji = add nsw i32 %i.jh, %i.jf
  br label %dwt_interleave_rows.exit.i61

bb.n:                                             ; preds = %bb.l
  %i.jj = sub nsw i32 %i.jb, %i.jd                ; 2 uses
  %i.jk = add nsw i32 %i.jc, -1                   ; 2 uses
  %i.jl = sdiv i32 %i.jj, %i.jk
  %i.jm = add nsw i32 %i.jl, %i.iv
  %i.jn = srem i32 %i.jj, %i.jk
  %i.jo = shl nsw i32 %i.jn, %.054119
  %i.jp = add nsw i32 %i.jm, %i.jo
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.n, %bb.m, %bb.j
  %.1.i.i62 = phi i32 [ %i.jb, %bb.j ], [ %i.ji, %bb.m ], [ %i.jp, %bb.n ] ; 4 uses
  %i.jq = sub nsw i32 %.1.i.i62, %i.ai
  %i.jr = call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = mul i64 %3, %i.js                       ; 3 uses
  %i.ju = sext i32 %.1.i.i62 to i64
  %i.jv = mul i64 %3, %i.ju                       ; 3 uses
  %i.jw = add i32 %.1.i.i62, %i.ai
  %..i = call i32 @llvm.smin.i32(i32 %i.jw, i32 %invariant.op.i)
  %i.jx = sext i32 %..i to i64
  %i.jy = mul i64 %3, %i.jx                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.jz = add nsw i32 %.1.i.i62, 3
  %i.ka = sext i32 %i.jz to i64
  br label %bb.o

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.kb = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond330.not.i = icmp eq i64 %i.kb, %4
  br i1 %exitcond330.not.i, label %guide_laplacians.exit, label %bb.j

bb.o:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.kc = add i64 %indvars.iv.i, %i.jv
  %i.kd = shl i64 %i.kc, 2                        ; 7 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12, !alias.scope !633, !noalias !635 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !636
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kd ; 2 uses
  %i.ki = or disjoint i64 %i.kd, 1                ; 2 uses
  %i.kj = or disjoint i64 %i.kd, 2                ; 3 uses
  %i.kk = load <4 x float>, ptr %i.kh, align 16, !tbaa !12, !alias.scope !631, !noalias !637 ; 10 uses
  store <4 x float> %i.kk, ptr %i.a, align 16, !tbaa !12, !noalias !636
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 0.000000e+00 ; 2 uses
  br i1 %i.kl, label %.preheader294.i, label %bb.p

.preheader294.i:                                  ; preds = %bb.o
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.kn = sub i32 %i.km, %i.ai
  %i.ko = call i32 @llvm.smax.i32(i32 %i.kn, i32 0)
  %i.kp = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kq = add i32 %i.ai, %i.km
  %.269.i = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.q)
  %i.kr = sext i32 %.269.i to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !636
  %i.ks = add i64 %i.jt, %i.kp
  %.idx.i = shl i64 %i.ks, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.ku = add i64 %indvars.iv.i, %i.jt
  %.idx262.i = shl i64 %i.ku, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.kw = add i64 %i.jt, %i.kr
  %.idx263.i = shl i64 %i.kw, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.ky = add i64 %i.jv, %i.kp
  %.idx264.i = shl i64 %i.ky, 4
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.la = add i64 %i.jv, %i.kr
  %.idx265.i = shl i64 %i.la, 4
  %i.lb = getelementptr i8, ptr %6, i64 %.idx265.i
  %i.lc = add i64 %i.jy, %i.kp
  %.idx266.i = shl i64 %i.lc, 4
  %i.ld = getelementptr i8, ptr %6, i64 %.idx266.i
  %i.le = add i64 %indvars.iv.i, %i.jy
  %.idx267.i = shl i64 %i.le, 4
  %i.lf = getelementptr i8, ptr %6, i64 %.idx267.i
  %i.lg = add i64 %i.jy, %i.kr
  %.idx268.i = shl i64 %i.lg, 4
  %i.lh = getelementptr i8, ptr %6, i64 %.idx268.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kz, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kh, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lf, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lh, i64 16, i1 false), !tbaa !12, !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !636
  %i.li = load <4 x float>, ptr %i.b, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lj = load <4 x float>, ptr %i.u, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lk = load <4 x float>, ptr %i.v, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.ll = load <4 x float>, ptr %i.w, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lm = load <4 x float>, ptr %i.x, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.ln = load <4 x float>, ptr %i.y, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lo = load <4 x float>, ptr %i.z, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lp = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !noalias !636 ; 3 uses
  %i.lq = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !noalias !636 ; 2 uses
  %i.lr = shufflevector <4 x float> %i.lj, <4 x float> %i.li, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ls = shufflevector <4 x float> %i.lk, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = shufflevector <8 x float> %i.lr, <8 x float> %i.ls, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <4 x float> %i.ll, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lv = shufflevector <8 x float> %i.lt, <8 x float> %i.lu, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lw = shufflevector <4 x float> %i.lm, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <8 x float> %i.lv, <8 x float> %i.lw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> %i.ln, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <8 x float> %i.lx, <8 x float> %i.ly, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.lo, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mb = shufflevector <8 x float> %i.lz, <8 x float> %i.ma, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.mc = shufflevector <4 x float> %i.lp, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.md = shufflevector <8 x float> %i.mb, <8 x float> %i.mc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %i.me = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.md)
  %i.mf = insertelement <4 x float> %i.lj, float %i.me, i64 3
  %i.mg = insertelement <4 x float> %i.li, float -0.000000e+00, i64 3
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mg
  %i.mi = insertelement <4 x float> %i.lk, float -0.000000e+00, i64 3
  %i.mj = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mi
  %i.mk = insertelement <4 x float> %i.ll, float -0.000000e+00, i64 3
  %i.ml = fadd reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mk
  %i.mm = insertelement <4 x float> %i.lm, float -0.000000e+00, i64 3
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.ml, %i.mm
  %i.mo = insertelement <4 x float> %i.ln, float -0.000000e+00, i64 3
  %i.mp = fadd reassoc nsz arcp contract afn <4 x float> %i.mn, %i.mo
  %i.mq = insertelement <4 x float> %i.lo, float -0.000000e+00, i64 3
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mp, %i.mq
  %i.ms = insertelement <4 x float> %i.lp, float -0.000000e+00, i64 3
  %i.mt = fadd reassoc nsz arcp contract afn <4 x float> %i.mr, %i.ms
  %i.mu = fadd reassoc nsz arcp contract afn <4 x float> %i.mt, %i.lq
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mu, splat (float f0x3DE38E39) ; 14 uses
  store <4 x float> %i.mv, ptr %i.c, align 16, !tbaa !12, !noalias !636
  %i.mw = fsub reassoc nsz arcp contract afn <4 x float> %i.li, %i.mv ; 3 uses
  %i.mx = fmul reassoc nsz arcp contract afn <4 x float> %i.mw, %i.mw
  %i.my = fsub reassoc nsz arcp contract afn <4 x float> %i.lj, %i.mv ; 3 uses
  %i.mz = fmul reassoc nsz arcp contract afn <4 x float> %i.my, %i.my
  %i.na = fadd reassoc nsz arcp contract afn <4 x float> %i.mz, %i.mx
  %i.nb = fsub reassoc nsz arcp contract afn <4 x float> %i.lk, %i.mv ; 3 uses
  %i.nc = fmul reassoc nsz arcp contract afn <4 x float> %i.nb, %i.nb
  %i.nd = fadd reassoc nsz arcp contract afn <4 x float> %i.na, %i.nc
  %i.ne = fsub reassoc nsz arcp contract afn <4 x float> %i.ll, %i.mv ; 3 uses
  %i.nf = fmul reassoc nsz arcp contract afn <4 x float> %i.ne, %i.ne
  %i.ng = fadd reassoc nsz arcp contract afn <4 x float> %i.nd, %i.nf
  %i.nh = fsub reassoc nsz arcp contract afn <4 x float> %i.lm, %i.mv ; 3 uses
  %i.ni = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nh
  %i.nj = fadd reassoc nsz arcp contract afn <4 x float> %i.ng, %i.ni
  %i.nk = fsub reassoc nsz arcp contract afn <4 x float> %i.ln, %i.mv ; 3 uses
  %i.nl = fmul reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nk
  %i.nm = fadd reassoc nsz arcp contract afn <4 x float> %i.nj, %i.nl
  %i.nn = fsub reassoc nsz arcp contract afn <4 x float> %i.lo, %i.mv ; 3 uses
  %i.no = fmul reassoc nsz arcp contract afn <4 x float> %i.nn, %i.nn
  %i.np = fadd reassoc nsz arcp contract afn <4 x float> %i.nm, %i.no
  %i.nq = fsub reassoc nsz arcp contract afn <4 x float> %i.lp, %i.mv ; 3 uses
  %i.nr = fmul reassoc nsz arcp contract afn <4 x float> %i.nq, %i.nq
  %i.ns = fadd reassoc nsz arcp contract afn <4 x float> %i.np, %i.nr
  %i.nt = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.mv ; 3 uses
  %i.nu = fmul reassoc nsz arcp contract afn <4 x float> %i.nt, %i.nt
  %i.nv = fadd reassoc nsz arcp contract afn <4 x float> %i.ns, %i.nu
  %i.nw = fmul reassoc nsz arcp contract afn <4 x float> %i.nv, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.nw, ptr %i.d, align 16, !tbaa !12, !noalias !636
  %i.nx = extractelement <4 x float> %i.nw, i64 0 ; 2 uses
  %i.ny = fcmp reassoc nsz arcp contract afn ogt float %i.nx, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.ny, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.ny, float %i.nx, float 0.000000e+00 ; 2 uses
  %i.nz = extractelement <4 x float> %i.nw, i64 1 ; 2 uses
  %i.oa = fcmp reassoc nsz arcp contract afn ogt float %i.nz, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.oa, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.oa, float %i.nz, float %spec.select270.i
  %i.ob = extractelement <4 x float> %i.nw, i64 2
  %i.oc = fcmp reassoc nsz arcp contract afn ogt float %i.ob, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.oc, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !12, !noalias !636 ; 13 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.og = load float, ptr %i.of, align 4, !tbaa !12, !noalias !636
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !12, !noalias !636
  %i.oj = fsub reassoc nsz arcp contract afn float %i.og, %i.oe
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.oj, f0x3DE38E39
  %i.ok = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.om = fmul reassoc nsz arcp contract afn <4 x float> %i.ol, %i.mw
  %i.on = fsub reassoc nsz arcp contract afn float %i.oi, %i.oe
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.on, f0x3DE38E39
  %i.oo = insertelement <4 x float> poison, float %factor.op.fmul.1.i, i64 0
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = fmul reassoc nsz arcp contract afn <4 x float> %i.op, %i.my
  %i.or = fadd reassoc nsz arcp contract afn <4 x float> %i.oq, %i.om
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select.2.i
  %i.ot = load float, ptr %i.os, align 4, !tbaa !12, !noalias !636
  %i.ou = fsub reassoc nsz arcp contract afn float %i.ot, %i.oe
  %factor.op.fmul.2.i = fmul reassoc nsz arcp contract afn float %i.ou, f0x3DE38E39
  %i.ov = insertelement <4 x float> poison, float %factor.op.fmul.2.i, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = fmul reassoc nsz arcp contract afn <4 x float> %i.ow, %i.nb
  %i.oy = fadd reassoc nsz arcp contract afn <4 x float> %i.or, %i.ox
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %spec.select.2.i
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !12, !noalias !636
  %i.pb = fsub reassoc nsz arcp contract afn float %i.pa, %i.oe
  %factor.op.fmul.3.i = fmul reassoc nsz arcp contract afn float %i.pb, f0x3DE38E39
  %i.pc = insertelement <4 x float> poison, float %factor.op.fmul.3.i, i64 0
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %i.ne
  %i.pf = fadd reassoc nsz arcp contract afn <4 x float> %i.oy, %i.pe
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %spec.select.2.i
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !12, !noalias !636
  %i.pi = fsub reassoc nsz arcp contract afn float %i.ph, %i.oe
  %factor.op.fmul.4.i = fmul reassoc nsz arcp contract afn float %i.pi, f0x3DE38E39
  %i.pj = insertelement <4 x float> poison, float %factor.op.fmul.4.i, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pk, %i.nh
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %spec.select.2.i
  %i.po = load float, ptr %i.pn, align 4, !tbaa !12, !noalias !636
  %i.pp = fsub reassoc nsz arcp contract afn float %i.po, %i.oe
  %factor.op.fmul.5.i = fmul reassoc nsz arcp contract afn float %i.pp, f0x3DE38E39
  %i.pq = insertelement <4 x float> poison, float %factor.op.fmul.5.i, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ps = fmul reassoc nsz arcp contract afn <4 x float> %i.pr, %i.nk
  %i.pt = fadd reassoc nsz arcp contract afn <4 x float> %i.pm, %i.ps
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %spec.select.2.i
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !12, !noalias !636
  %i.pw = fsub reassoc nsz arcp contract afn float %i.pv, %i.oe
  %factor.op.fmul.6.i = fmul reassoc nsz arcp contract afn float %i.pw, f0x3DE38E39
  %i.px = insertelement <4 x float> poison, float %factor.op.fmul.6.i, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = fmul reassoc nsz arcp contract afn <4 x float> %i.py, %i.nn
  %i.qa = fadd reassoc nsz arcp contract afn <4 x float> %i.pt, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %spec.select.2.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !12, !noalias !636
  %i.qd = fsub reassoc nsz arcp contract afn float %i.qc, %i.oe
  %factor.op.fmul.7.i = fmul reassoc nsz arcp contract afn float %i.qd, f0x3DE38E39
  %i.qe = insertelement <4 x float> poison, float %factor.op.fmul.7.i, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qg = fmul reassoc nsz arcp contract afn <4 x float> %i.qf, %i.nq
  %i.qh = fadd reassoc nsz arcp contract afn <4 x float> %i.qa, %i.qg
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %spec.select.2.i
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !12, !noalias !636
  %i.qk = fsub reassoc nsz arcp contract afn float %i.qj, %i.oe
  %factor.op.fmul.8.i = fmul reassoc nsz arcp contract afn float %i.qk, f0x3DE38E39
  %i.ql = insertelement <4 x float> poison, float %factor.op.fmul.8.i, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = fmul reassoc nsz arcp contract afn <4 x float> %i.qm, %i.nt
  %i.qo = fadd reassoc nsz arcp contract afn <4 x float> %i.qh, %i.qn
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kd
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !12, !alias.scope !633, !noalias !635
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ki
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !12, !alias.scope !633, !noalias !635
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kj
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !12, !alias.scope !633, !noalias !635
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %spec.select.2.i
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !12, !noalias !636
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.select.2.i ; 4 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !636
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.qy, %i.oe
  %i.qz = extractelement <4 x float> %i.kk, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.kk
  %.neg292.i = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ra = extractelement <4 x float> %i.kk, i64 1
  %foldExtExtBinop198 = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.kk
  %.neg292.1.i = extractelement <4 x float> %foldExtExtBinop198, i64 1
  %i.rb = extractelement <4 x float> %i.kk, i64 2
  %foldExtExtBinop200 = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.kk
  %.neg292.2.i = extractelement <4 x float> %foldExtExtBinop200, i64 2
  %i.rc = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = fdiv reassoc nsz arcp contract afn <4 x float> %i.qo, %i.rd
  %i.rf = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.re, <4 x float> zeroinitializer) ; 4 uses
  %i.rg = extractelement <4 x float> %i.rf, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.rg
  %i.rh = fadd reassoc nsz arcp contract afn float %.neg292.i, %reass.mul.i
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.qq
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, %i.ix
  %i.rk = extractelement <4 x float> %i.kk, i64 3
  %foldExtExtBinop202 = fsub reassoc nsz arcp contract afn <4 x float> %i.mv, %i.kk
  %.neg292.3.i = extractelement <4 x float> %foldExtExtBinop202, i64 3
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rj, %i.qz ; 2 uses
  store float %i.rl, ptr %i.a, align 16, !tbaa !12, !noalias !636
  %i.rm = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !636
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.rm, %i.oe
  %i.rn = extractelement <4 x float> %i.rf, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.rn
  %i.ro = fadd reassoc nsz arcp contract afn float %.neg292.1.i, %reass.mul.1.i
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ro, %i.qs
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.iy
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, %i.ra ; 2 uses
  store float %i.rr, ptr %i.r, align 4, !tbaa !12, !noalias !636
  %i.rs = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !636
  %reass.add.2.i = fsub reassoc nsz arcp contract afn float %i.rs, %i.oe
  %i.rt = extractelement <4 x float> %i.rf, i64 2
  %reass.mul.2.i = fmul reassoc nsz arcp contract afn float %reass.add.2.i, %i.rt
  %i.ru = fadd reassoc nsz arcp contract afn float %.neg292.2.i, %reass.mul.2.i
  %i.rv = fmul reassoc nsz arcp contract afn float %i.ru, %i.qu
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.iz
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rw, %i.rb ; 2 uses
  store float %i.rx, ptr %i.s, align 8, !tbaa !12, !noalias !636
  %i.ry = load float, ptr %i.qx, align 4, !tbaa !12, !noalias !636
  %reass.add.3.i = fsub reassoc nsz arcp contract afn float %i.ry, %i.oe
  %i.rz = extractelement <4 x float> %i.rf, i64 3
  %reass.mul.3.i = fmul reassoc nsz arcp contract afn float %reass.add.3.i, %i.rz
  %i.sa = fadd reassoc nsz arcp contract afn float %.neg292.3.i, %reass.mul.3.i
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.kg
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %i.ja
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sc, %i.rk ; 2 uses
  store float %i.sd, ptr %i.t, align 4, !tbaa !12, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !636
  %i.se = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.sf = insertelement <4 x float> %i.se, float %i.rr, i64 1
  %i.sg = insertelement <4 x float> %i.sf, float %i.rx, i64 2
  %i.sh = insertelement <4 x float> %i.sg, float %i.sd, i64 3
  br label %bb.p

bb.p:                                             ; preds = %.preheader294.i, %bb.o
  %i.si = phi <4 x float> [ %i.sh, %.preheader294.i ], [ %i.kk, %bb.o ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kd ; 7 uses
  br i1 %.not147.not, label %.preheader297.i, label %.preheader296.i

.preheader297.i:                                  ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sj, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !12, !noalias !638
  br label %.loopexit.i

.preheader296.i:                                  ; preds = %bb.p
  %i.sk = load <4 x float>, ptr %i.sj, align 16, !tbaa !12, !alias.scope !634, !noalias !638
  %i.sl = fadd reassoc nsz arcp contract afn <4 x float> %i.sk, %i.si
  store <4 x float> %i.sl, ptr %i.sj, align 16, !tbaa !12, !alias.scope !634, !noalias !638
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader296.i, %.preheader297.i
  br i1 %.not80, label %.preheader295.preheader.i, label %.thread290.i

.preheader295.preheader.i:                        ; preds = %.loopexit.i
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.kd
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ki
  %i.so = load <2 x float>, ptr %i.sj, align 16, !tbaa !12, !alias.scope !634, !noalias !638
  %i.sp = load <2 x float>, ptr %i.sm, align 16, !tbaa !12, !alias.scope !632, !noalias !639
  %i.sq = fadd reassoc nsz arcp contract afn <2 x float> %i.sp, %i.so
  %i.sr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sq, <2 x float> zeroinitializer) ; 5 uses
  %i.ss = extractelement <2 x float> %i.sr, i64 1
  store float %i.ss, ptr %i.sn, align 4, !tbaa !12, !alias.scope !634, !noalias !638
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kj ; 2 uses
  %i.su = load float, ptr %i.st, align 8, !tbaa !12, !alias.scope !634, !noalias !638
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.kj
  %i.sw = load float, ptr %i.sv, align 8, !tbaa !12, !alias.scope !632, !noalias !639
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, %i.su
  %i.sy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sx, float 0.000000e+00) ; 3 uses
  store float %i.sy, ptr %i.st, align 8, !tbaa !12, !alias.scope !634, !noalias !638
  %or.cond3.i = and i1 %i.ac, %i.kl
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader295.preheader.i
  %i.sz = fmul reassoc nsz arcp contract afn <2 x float> %i.sr, %i.ah ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sy, %10 ; 3 uses
  %i.td = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.te = mul i64 %i.td, 7109453100751455733      ; 2 uses
  %i.tf = lshr i64 %i.te, 28
  %i.tg = xor i64 %i.tf, %i.te
  %i.th = mul i64 %i.tg, -3808689974395783757
  %i.ti = lshr i64 %i.th, 32
  %i.tj = trunc nuw i64 %i.ti to i32              ; 2 uses
  %i.tk = mul nsw i64 %i.td, %i.ka                ; 2 uses
  %i.tl = lshr i64 %i.tk, 33
  %i.tm = xor i64 %i.tl, %i.tk
  %i.tn = mul i64 %i.tm, 7109453100751455733      ; 2 uses
  %i.to = lshr i64 %i.tn, 28
  %i.tp = xor i64 %i.to, %i.tn
  %i.tq = mul i64 %i.tp, -3808689974395783757
  %i.tr = lshr i64 %i.tq, 32
  %i.ts = trunc nuw i64 %i.tr to i32              ; 3 uses
  %i.tt = shl i32 %i.ts, 9
  %i.tu = xor i32 %i.tj, 635086878                ; 2 uses
  %i.tv = xor i32 %i.ts, -1171427716              ; 3 uses
  %i.tw = xor i32 %i.tu, %i.ts                    ; 3 uses
  %i.tx = xor i32 %i.tv, %i.tj                    ; 2 uses
  %i.ty = xor i32 %i.tt, %i.tu
  %i.tz = call noundef i32 @llvm.fshl.i32(i32 %i.tv, i32 %i.tv, i32 11)
  %i.ua = shl i32 %i.tw, 9
  %i.ub = xor i32 %i.ty, %i.tx                    ; 2 uses
  %i.uc = xor i32 %i.tz, %i.tw                    ; 3 uses
  %i.ud = xor i32 %i.ub, %i.tw                    ; 3 uses
  %i.ue = xor i32 %i.uc, %i.tx                    ; 2 uses
  %i.uf = xor i32 %i.ub, %i.ua
  %i.ug = call noundef i32 @llvm.fshl.i32(i32 %i.uc, i32 %i.uc, i32 11)
  %i.uh = shl i32 %i.ud, 9
  %i.ui = xor i32 %i.uf, %i.ue                    ; 2 uses
  %i.uj = xor i32 %i.ud, %i.ug                    ; 3 uses
  %i.uk = xor i32 %i.ui, %i.ud                    ; 3 uses
  %i.ul = xor i32 %i.uj, %i.ue                    ; 2 uses
  %i.um = xor i32 %i.ui, %i.uh
  %i.un = call noundef i32 @llvm.fshl.i32(i32 %i.uj, i32 %i.uj, i32 11)
  %i.uo = shl i32 %i.uk, 9
  %i.up = xor i32 %i.um, %i.ul                    ; 2 uses
  %i.uq = xor i32 %i.uk, %i.un                    ; 3 uses
  %i.ur = xor i32 %i.up, %i.uk                    ; 3 uses
  %i.us = xor i32 %i.up, %i.uo
  %i.ut = shl i32 %i.ur, 9
  %i.uu = xor i32 %i.uq, %i.ul                    ; 3 uses
  %i.uv = call noundef i32 @llvm.fshl.i32(i32 %i.uq, i32 %i.uq, i32 11) ; 2 uses
  %i.uw = xor i32 %i.us, %i.uu                    ; 2 uses
  %i.ux = xor i32 %i.ur, %i.uv                    ; 3 uses
  %i.uy = xor i32 %i.uw, %i.ur                    ; 3 uses
  %i.uz = xor i32 %i.ux, %i.uu                    ; 3 uses
  %i.va = xor i32 %i.uw, %i.ut
  %i.vb = call noundef i32 @llvm.fshl.i32(i32 %i.ux, i32 %i.ux, i32 11) ; 2 uses
  %i.vc = add i32 %i.vb, %i.uz
  %i.vd = shl i32 %i.uy, 9
  %i.ve = xor i32 %i.va, %i.uz                    ; 2 uses
  %i.vf = xor i32 %i.uy, %i.vb                    ; 3 uses
  %i.vg = xor i32 %i.ve, %i.uy                    ; 3 uses
  %i.vh = xor i32 %i.vf, %i.uz                    ; 3 uses
  %i.vi = xor i32 %i.ve, %i.vd
  %i.vj = call noundef i32 @llvm.fshl.i32(i32 %i.vf, i32 %i.vf, i32 11) ; 2 uses
  %i.vk = lshr i32 %i.vc, 8
  %i.vl = uitofp reassoc nsz arcp contract afn nneg i32 %i.vk to float
  %i.vm = shl i32 %i.vg, 9
  %i.vn = xor i32 %i.vi, %i.vh                    ; 2 uses
  %i.vo = xor i32 %i.vg, %i.vj                    ; 3 uses
  %i.vp = xor i32 %i.vn, %i.vg                    ; 2 uses
  %i.vq = xor i32 %i.vo, %i.vh                    ; 3 uses
  %i.vr = xor i32 %i.vn, %i.vm
  %i.vs = call noundef i32 @llvm.fshl.i32(i32 %i.vo, i32 %i.vo, i32 11) ; 2 uses
  %i.vt = add i32 %i.vs, %i.vq
  %i.vu = xor i32 %i.vr, %i.vq
  %i.vv = xor i32 %i.vp, %i.vs                    ; 3 uses
  %i.vw = xor i32 %i.vu, %i.vp
  %i.vx = xor i32 %i.vv, %i.vq                    ; 2 uses
  %i.vy = call noundef i32 @llvm.fshl.i32(i32 %i.vv, i32 %i.vv, i32 11) ; 2 uses
  %i.vz = lshr i32 %i.vt, 8
  %i.wa = uitofp reassoc nsz arcp contract afn nneg i32 %i.vz to float
  %i.wb = xor i32 %i.vw, %i.vy                    ; 3 uses
  %i.wc = xor i32 %i.wb, %i.vx
  %i.wd = call noundef i32 @llvm.fshl.i32(i32 %i.wb, i32 %i.wb, i32 11)
  %i.we = add i32 %i.wd, %i.wc
  %i.wf = lshr i32 %i.we, 8
  %i.wg = uitofp reassoc nsz arcp contract afn nneg i32 %i.wf to float
  %i.wh = fmul reassoc nnan nsz arcp contract afn float %i.vl, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wh)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.wi = fmul reassoc nnan nsz arcp contract afn float %i.wa, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wi)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.wj = fmul reassoc nnan nsz arcp contract afn float %i.wg, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wj)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.wk = add i32 %i.vy, %i.vx
  %i.wl = lshr i32 %i.wk, 8
  %i.wm = uitofp reassoc nsz arcp contract afn nneg i32 %i.wl to float
  %i.wn = fmul reassoc nnan nsz arcp contract afn float %i.wm, f0x33800000
  %i.wo = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.wn, float f0x00800000)
  %i.wp = call fast float @llvm.log.f32(float %i.wo)
  %i.wq = fmul reassoc nnan nsz arcp contract afn float %i.wp, -2.000000e+00
  %i.wr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wq)
  %i.ws = add i32 %i.vj, %i.vh
  %i.wt = add i32 %i.uv, %i.uu
  %i.wu = insertelement <2 x i32> poison, i32 %i.wt, i64 0
  %i.wv = insertelement <2 x i32> %i.wu, i32 %i.ws, i64 1
  %i.ww = lshr <2 x i32> %i.wv, splat (i32 8)
  %i.wx = uitofp nneg <2 x i32> %i.ww to <2 x float>
  %i.wy = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wx, splat (float f0x33800000)
  %i.wz = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wy, <2 x float> splat (float f0x00800000))
  %i.xa = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wz)
  %i.xb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.xa, splat (float -2.000000e+00)
  %i.xc = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xb)
  %i.xd = extractelement <2 x float> %i.sr, i64 0
  %i.xe = fadd reassoc nnan nsz arcp contract afn float %i.xd, 3.750000e-01
  %i.xf = load float, ptr %i.ta, align 4, !tbaa !12, !alias.scope !634, !noalias !638 ; 2 uses
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, 3.750000e-01
  %i.xh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xg, float 0.000000e+00)
  %i.xi = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.wr
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, %i.tc
  %i.xk = load float, ptr %i.tb, align 8, !tbaa !12, !alias.scope !634, !noalias !638 ; 3 uses
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xk, 3.750000e-01
  %i.xm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xl, float 0.000000e+00)
end_hunk_1
