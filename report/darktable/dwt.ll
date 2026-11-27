Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_decompose:bb.a
  %i.w = fdiv reassoc nsz arcp contract afn <2 x float> %i.t, %i.v ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fptosi float %i.z to i32
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.aa) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i.i = phi i32 [ 0, %bb.e ], [ %i.ad, %bb.f ] ; 9 uses
  %.019.in.i.i = phi i32 [ %i.ab, %bb.e ], [ %.019.i.i, %bb.f ]
  %.019.i.i = lshr i32 %.019.in.i.i, 1            ; 2 uses
  %.pn.i.i = uitofp nneg i32 %.019.i.i to float
  %.0.i.i = fmul reassoc nsz arcp contract afn float %i.i, %.pn.i.i
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %.0.i.i, 0.000000e+00
  %i.ad = add nuw nsw i32 %.020.i.i, 1
  br i1 %i.ac, label %bb.f, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.020.i.i, 0
  br i1 %.not.i.i, label %dwt_get_max_scale.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ae = uitofp reassoc nsz arcp contract afn i32 %i.ab to float ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.020.i.i, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i32 %.020.i.i, 2147483616          ; 2 uses
  %i.af = and i32 %.020.i.i, 31
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <32 x float> poison, float %i.i, i64 0
  %broadcast.splat92 = shufflevector <32 x float> %broadcast.splatinsert91, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <32 x i32> poison, i32 %.020.i.i, i64 0
  %broadcast.splat94 = shufflevector <32 x i32> %broadcast.splatinsert93, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ag = add nsw <32 x i32> %broadcast.splat94, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15, i32 -16, i32 -17, i32 -18, i32 -19, i32 -20, i32 -21, i32 -22, i32 -23, i32 -24, i32 -25, i32 -26, i32 -27, i32 -28, i32 -29, i32 -30, i32 -31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.ag, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ah = shl nuw <32 x i32> splat (i32 1), %vec.ind
  %i.ai = sitofp reassoc nsz arcp contract afn <32 x i32> %i.ah to <32 x float>
  %i.aj = fmul reassoc nsz arcp contract afn <32 x float> %broadcast.splat92, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn ult <32 x float> %i.aj, %broadcast.splat
  %i.al = freeze <32 x i1> %i.ak                  ; 2 uses
  %i.am = bitcast <32 x i1> %i.al to i32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.an = icmp eq i32 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %.020.i.i, %n.vec
  br i1 %cmp.n, label %dwt_get_max_scale.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.121.i.i.ph = phi i32 [ %.020.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.ao = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.al, i1 false)
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %index, %i.ap
  %i.ar = sub i32 %.020.i.i, %i.aq
  br label %dwt_get_max_scale.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %.121.i.i = phi i32 [ %i.aw, %bb.g ], [ %.121.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.as = shl nuw i32 1, %.121.i.i
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.au = fmul reassoc nsz arcp contract afn float %i.i, %i.at
  %i.av = fcmp reassoc nsz arcp contract afn ult float %i.au, %i.ae
  br i1 %i.av, label %dwt_get_max_scale.exit, label %bb.g

bb.g:                                             ; preds = %scalar.ph
  %i.aw = add nsw i32 %.121.i.i, -1
  %i.ax = icmp sgt i32 %.121.i.i, 1
  br i1 %i.ax, label %scalar.ph, label %dwt_get_max_scale.exit, !llvm.loop !33

dwt_get_max_scale.exit:                           ; preds = %scalar.ph, %bb.g, %middle.block, %vector.early.exit, %.preheader.i.i
  %.1.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ 0, %middle.block ], [ %i.ar, %vector.early.exit ], [ %.121.i.i, %scalar.ph ], [ 0, %bb.g ] ; 6 uses
  %i.ay = icmp sgt i32 %i.m, %.1.lcssa.i.i
  br i1 %i.ay, label %bb.h, label %bb.l

bb.h:                                             ; preds = %dwt_get_max_scale.exit
  %i.az = icmp sgt i32 %i.p, %i.m
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %.1.lcssa.i.i, 1
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp sgt i32 %i.p, %.1.lcssa.i.i
  br i1 %i.bb, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.1.lcssa.i.i.sink = phi i32 [ %i.ba, %bb.i ], [ %.1.lcssa.i.i, %bb.j ]
  store i32 %.1.lcssa.i.i.sink, ptr %i.j, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  store i32 %.1.lcssa.i.i, ptr %i.l, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %dwt_get_max_scale.exit
  %i.bc = phi i32 [ %.1.lcssa.i.i, %bb.k ], [ %i.m, %dwt_get_max_scale.exit ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %1, null                  ; 5 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %1(ptr noundef %i.bd, ptr noundef nonnull %0, i32 noundef 0) #15, !inline_history !34
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi i32 [ %.pre, %bb.m ], [ %i.bc, %bb.l ]
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %dwt_wavelet_decompose.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bd, ptr %i.d, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load <2 x i32>, ptr %i.q, align 4, !tbaa !23
  store <2 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bo = select i1 %i.bm, i32 5242884, i32 0
  %i.bp = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef 1048580, ptr noundef nonnull %i.bn, i32 noundef 5242884, ptr noundef nonnull %i.b, i32 noundef 2228228, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.bo, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null) #15
  %.not80.i = icmp eq i32 %i.bp, 0
  br i1 %.not80.i, label %bb.p, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.bq = load i32, ptr %i.l, align 4, !tbaa !19
  %.not100.i = icmp eq i32 %i.bq, 0
  br i1 %.not100.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1) #15
  br label %bb.as

bb.q:                                             ; preds = %dwt_get_image_layer.exit.i, %.lr.ph.i
  %.097.i = phi i32 [ 0, %.lr.ph.i ], [ %.pre-phi.i, %dwt_get_image_layer.exit.i ] ; 5 uses
  %.07296.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bt, %dwt_get_image_layer.exit.i ]
  %i.bs = and i32 %.097.i, 1
  %i.bt = xor i32 %i.bs, 1                        ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57 ; 14 uses
  %i.bx = zext nneg i32 %.07296.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bx ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57 ; 9 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !57  ; 21 uses
  %.val.i = load i32, ptr %i.q, align 4, !tbaa !17 ; 3 uses
  %.val82.i = load i32, ptr %i.r, align 8, !tbaa !18 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.cb = sext i32 %.val82.i to i64               ; 10 uses
  %i.cc = sext i32 %.val.i to i64                 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.cd = shl nuw i32 1, %.097.i                  ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = add nsw i64 %i.cb, -1                   ; 2 uses
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 9 uses
  %.not.i.i.i = icmp eq i32 %.val82.i, 0
  br i1 %.not.i.i.i, label %dwt_decompose_vert.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.cg = trunc i64 %..i.i.i to i32               ; 6 uses
  %.not.i.i.i.i = icmp sgt i32 %.val82.i, %i.cg
  %i.ch = shl nsw i64 %i.cf, 1                    ; 2 uses
  %i.ci = shl nsw i64 %i.cc, 2                    ; 22 uses
  %.not69.i.i.i = icmp eq i32 %.val.i, 0          ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.cj = add nsw i32 %.val82.i, -1
  %i.ck = add i32 %i.cj, %i.cg
  %i.cl = sdiv i32 %i.ck, %i.cg                   ; 4 uses
  %i.cm = srem i32 %.val82.i, %i.cg               ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = add nsw i32 %i.cl, -1                   ; 2 uses
  br i1 %.not69.i.i.i, label %.lr.ph96.i.i.i, label %.lr.ph.split.us.split.us.preheader.i.i.i

.lr.ph.split.us.split.us.preheader.i.i.i:         ; preds = %.lr.ph.split.us.i.i.i
  %i.cp = mul nsw i32 %i.cm, %i.cl                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4)
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ci, 16
  %n.vec259 = and i64 %i.ct, 9223372036854775804  ; 3 uses
  %i.cu = shl i64 %n.vec259, 2
  %cmp.n280 = icmp eq i64 %i.ct, %n.vec259
  br label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %._crit_edge.us.us.i.i.i, %.lr.ph.split.us.split.us.preheader.i.i.i
  %indvars.iv75.i.i.i = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.i.i.i ], [ %indvars.iv.next76.i.i.i, %._crit_edge.us.us.i.i.i ] ; 3 uses
  %i.cv = icmp slt i64 %indvars.iv75.i.i.i, %i.cq
  %or.cond.i.i.i = select i1 %i.cn, i1 true, i1 %i.cv
  %i.cw = trunc i64 %indvars.iv75.i.i.i to i32    ; 3 uses
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.cx = sub i32 %i.cw, %i.cp                    ; 2 uses
  %i.cy = sdiv i32 %i.cx, %i.co
  %i.cz = add nsw i32 %i.cy, %i.cm
  %i.da = srem i32 %i.cx, %i.co
  %i.db = mul nsw i32 %i.da, %i.cg
  %i.dc = add nsw i32 %i.cz, %i.db
  br label %dwt_interleave_rows.exit.us.us.i.i.i

bb.s:                                             ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.dd = sdiv i32 %i.cw, %i.cl
  %i.de = srem i32 %i.cw, %i.cl
  %i.df = mul nsw i32 %i.de, %i.cg
  %i.dg = add nsw i32 %i.df, %i.dd
  br label %dwt_interleave_rows.exit.us.us.i.i.i

dwt_interleave_rows.exit.us.us.i.i.i:             ; preds = %bb.s, %bb.r
  %.1.i.us.us.i.i.i = phi i32 [ %i.dc, %bb.r ], [ %i.dg, %bb.s ]
  %i.dh = sext i32 %.1.i.us.us.i.i.i to i64       ; 5 uses
  %i.di = shl nsw i64 %i.dh, 2
  %i.dj = mul i64 %i.di, %i.cc                    ; 2 uses
  %i.dk = icmp ult i64 %..i.i.i, %i.dh
  %i.dl = sub nuw nsw i64 %i.dh, %..i.i.i
  %i.dm = sub nuw nsw i64 %..i.i.i, %i.dh
  %i.dn = select i1 %i.dk, i64 %i.dl, i64 %i.dm
  %i.do = add nsw i64 %..i.i.i, %i.dh             ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.cb
  %i.dq = sub nsw i64 %i.ch, %i.do
  %i.dr = select i1 %i.dp, i64 %i.do, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dj ; 2 uses
  %i.dt = mul i64 %i.dn, %i.ci
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dt ; 2 uses
  %i.dv = mul i64 %i.dr, %i.ci
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dj ; 2 uses
  br i1 %min.iters.check257, label %.preheader.us.us.i.i.i.preheader, label %vector.body260

vector.body260:                                   ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %vector.body260
  %index261 = phi i64 [ %index.next278, %vector.body260 ], [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ] ; 2 uses
  %i.dy = shl nuw i64 %index261, 2                ; 4 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dy
  %wide.vec262 = load <16 x float>, ptr %i.dz, align 4, !tbaa !26, !alias.scope !66
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dy
  %wide.vec267 = load <16 x float>, ptr %i.ea, align 4, !tbaa !26, !alias.scope !66
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy
  %wide.vec272 = load <16 x float>, ptr %i.eb, align 4, !tbaa !26, !alias.scope !66
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  %i.ed = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec262, splat (float 2.000000e+00)
  %i.ee = fadd reassoc nsz arcp contract afn <16 x float> %i.ed, %wide.vec267
  %interleaved.vec277 = fadd reassoc nsz arcp contract afn <16 x float> %i.ee, %wide.vec272
  store <16 x float> %interleaved.vec277, ptr %i.ec, align 4, !tbaa !26, !alias.scope !67
  %index.next278 = add nuw i64 %index261, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next278, %n.vec259
  br i1 %i.ef, label %middle.block279, label %vector.body260, !llvm.loop !41

middle.block279:                                  ; preds = %vector.body260
  br i1 %cmp.n280, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader

.preheader.us.us.i.i.i.preheader:                 ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %middle.block279
  %.05263.us.us.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ], [ %i.cu, %middle.block279 ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader, %.preheader.us.us.i.i.i
  %.05263.us.us.i.i.i = phi i64 [ %i.eq, %.preheader.us.us.i.i.i ], [ %.05263.us.us.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.05263.us.us.i.i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05263.us.us.i.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.05263.us.us.i.i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05263.us.us.i.i.i
  %i.ek = load <4 x float>, ptr %i.eg, align 4, !tbaa !26, !alias.scope !66
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, splat (float 2.000000e+00)
  %i.em = load <4 x float>, ptr %i.eh, align 4, !tbaa !26, !alias.scope !66
  %i.en = fadd reassoc nsz arcp contract afn <4 x float> %i.el, %i.em
  %i.eo = load <4 x float>, ptr %i.ei, align 4, !tbaa !26, !alias.scope !66
  %i.ep = fadd reassoc nsz arcp contract afn <4 x float> %i.en, %i.eo
  store <4 x float> %i.ep, ptr %i.ej, align 4, !tbaa !26, !alias.scope !67
  %i.eq = add nuw i64 %.05263.us.us.i.i.i, 4      ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ci
  br i1 %i.er, label %.preheader.us.us.i.i.i, label %._crit_edge.us.us.i.i.i, !llvm.loop !42

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader.us.us.i.i.i, %middle.block279
  %indvars.iv.next76.i.i.i = add nuw nsw i64 %indvars.iv75.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next76.i.i.i, %i.cb
  br i1 %exitcond78.not.i.i.i, label %.lr.ph96.i.i.i, label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  br i1 %.not69.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i.preheader

dwt_interleave_rows.exit.i.i.i.preheader:         ; preds = %.lr.ph.split.i.i.i
  %i.es = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4)
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %i.ci, 16
  %n.vec285 = and i64 %i.eu, 9223372036854775804  ; 3 uses
  %i.ev = shl i64 %n.vec285, 2
  %cmp.n306 = icmp eq i64 %i.eu, %n.vec285
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
  br i1 %min.iters.check283, label %.preheader.i.i.i.preheader, label %vector.body286

vector.body286:                                   ; preds = %dwt_interleave_rows.exit.i.i.i, %vector.body286
  %index287 = phi i64 [ %index.next304, %vector.body286 ], [ 0, %dwt_interleave_rows.exit.i.i.i ] ; 2 uses
  %i.fm = shl nuw i64 %index287, 2                ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fm
  %wide.vec288 = load <16 x float>, ptr %i.fn, align 4, !tbaa !26, !alias.scope !66
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fm
  %wide.vec293 = load <16 x float>, ptr %i.fo, align 4, !tbaa !26, !alias.scope !66
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fm
  %wide.vec298 = load <16 x float>, ptr %i.fp, align 4, !tbaa !26, !alias.scope !66
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fm
  %i.fr = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec288, splat (float 2.000000e+00)
  %i.fs = fadd reassoc nsz arcp contract afn <16 x float> %i.fr, %wide.vec293
  %interleaved.vec303 = fadd reassoc nsz arcp contract afn <16 x float> %i.fs, %wide.vec298
  store <16 x float> %interleaved.vec303, ptr %i.fq, align 4, !tbaa !26, !alias.scope !67
  %index.next304 = add nuw i64 %index287, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next304, %n.vec285
  br i1 %i.ft, label %middle.block305, label %vector.body286, !llvm.loop !43

middle.block305:                                  ; preds = %vector.body286
  br i1 %cmp.n306, label %._crit_edge.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %dwt_interleave_rows.exit.i.i.i, %middle.block305
  %.05263.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.i.i.i ], [ %i.ev, %middle.block305 ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.05263.i.i.i = phi i64 [ %i.ge, %.preheader.i.i.i ], [ %.05263.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.05263.i.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.05263.i.i.i
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.05263.i.i.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.05263.i.i.i
  %i.fy = load <4 x float>, ptr %i.fu, align 4, !tbaa !26, !alias.scope !66
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fy, splat (float 2.000000e+00)
  %i.ga = load <4 x float>, ptr %i.fv, align 4, !tbaa !26, !alias.scope !66
  %i.gb = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, %i.ga
  %i.gc = load <4 x float>, ptr %i.fw, align 4, !tbaa !26, !alias.scope !66
  %i.gd = fadd reassoc nsz arcp contract afn <4 x float> %i.gb, %i.gc
  store <4 x float> %i.gd, ptr %i.fx, align 4, !tbaa !26, !alias.scope !67
  %i.ge = add nuw i64 %.05263.i.i.i, 4            ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.ci
  br i1 %i.gf, label %.preheader.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !44

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i, %middle.block305
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.cb
  br i1 %exitcond.not.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i

dwt_decompose_vert.exit.i.i:                      ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  br label %dwt_decompose_layer.exit.i

.lr.ph96.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %._crit_edge.us.us.i.i.i, %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %i.gg = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.cc, i64 %i.ce) ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.gh = sub nuw nsw i64 %i.cc, %i.gg            ; 11 uses
  %.not105.not.i.i.i = icmp ugt i32 %.val.i, %i.cd ; 2 uses
  %sext.i.i.i = shl i64 %i.gh, 32
  %i.gi = ashr exact i64 %sext.i.i.i, 32          ; 9 uses
  %i.gj = icmp ult i64 %i.gi, %i.cc
  %i.gk = shl nsw i64 %i.cc, 1
  %i.gl = add nsw i64 %i.gk, -2                   ; 4 uses
  %i.gm = shl nsw i64 %i.cc, 4                    ; 12 uses
  br i1 %i.gj, label %.lr.ph96.split.us.i.i.i, label %.lr.ph96.split.i.i.i

.lr.ph96.split.us.i.i.i:                          ; preds = %.lr.ph96.i.i.i
  br i1 %.not105.not.i.i.i, label %.lr.ph.us.us.i.i.i.preheader, label %.lr.ph92.us.i.i.i.preheader

.lr.ph92.us.i.i.i.preheader:                      ; preds = %.lr.ph96.split.us.i.i.i
  %i.gn = sub nsw i64 %i.cc, %i.gi                ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.gn, 8
  %n.vec175 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add nsw i64 %i.gi, %n.vec175
  %i.gp = sub i64 %i.gh, %i.gg
  %i.gq = trunc i64 %i.gp to i32
  %broadcast.splatinsert176 = insertelement <8 x i32> poison, i32 %i.gq, i64 0
  %broadcast.splat177 = shufflevector <8 x i32> %broadcast.splatinsert176, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction178 = add <8 x i32> %broadcast.splat177, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n214 = icmp eq i64 %i.gn, %n.vec175
  br label %.lr.ph92.us.i.i.i

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %.lr.ph96.split.us.i.i.i
  %min.iters.check133 = icmp ult i64 %i.gh, 4
  %n.vec135 = and i64 %i.gh, -4                   ; 3 uses
  %i.gr = trunc i64 %i.gg to i32
  %i.gs = sub i32 0, %i.gr
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %i.gs, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction138 = add <4 x i32> %broadcast.splat137, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n170 = icmp eq i64 %i.gh, %n.vec135
  %i.gt = sub nsw i64 %i.cc, %i.gi                ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.gt, 8
  %n.vec98 = and i64 %i.gt, -8                    ; 3 uses
  %i.gu = add nsw i64 %i.gi, %n.vec98
  %i.gv = sub i64 %i.gh, %i.gg
  %i.gw = trunc i64 %i.gv to i32
  %broadcast.splatinsert99 = insertelement <8 x i32> poison, i32 %i.gw, i64 0
  %broadcast.splat100 = shufflevector <8 x i32> %broadcast.splatinsert99, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat100, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n130 = icmp eq i64 %i.gt, %n.vec98
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader, %._crit_edge93.us.us.i.i.i
  %indvars.iv136.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i, %._crit_edge93.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %i.gx = mul i64 %indvars.iv136.i.i.i, %i.ci     ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gx ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.gx ; 13 uses
  br i1 %min.iters.check133, label %scalar.ph132.preheader, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph.us.us.i.i.i, %vector.body139
  %index140 = phi i64 [ %index.next167, %vector.body139 ], [ 0, %.lr.ph.us.us.i.i.i ] ; 3 uses
  %vec.ind141 = phi <4 x i32> [ %vec.ind.next168, %vector.body139 ], [ %induction138, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.ha = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %vec.ind141, i1 true)
  %i.hb = zext nneg <4 x i32> %i.ha to <4 x i64>
  %i.hc = add nsw i64 %index140, %i.gg
  %i.hd = shl nuw nsw <4 x i64> %i.hb, splat (i64 4)
  %wide.gep142 = getelementptr inbounds nuw i8, ptr %i.gz, <4 x i64> %i.hd ; 4 uses
  %i.he = shl nsw i64 %i.hc, 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  %i.hg = shl nuw nsw i64 %index140, 2            ; 3 uses
  %wide.masked.gather143 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep142, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %wide.vec144 = load <16 x float>, ptr %i.hf, align 4, !tbaa !26, !alias.scope !70 ; 4 uses
  %strided.vec145 = shufflevector <16 x float> %wide.vec144, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec146 = shufflevector <16 x float> %wide.vec144, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec147 = shufflevector <16 x float> %wide.vec144, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec148 = shufflevector <16 x float> %wide.vec144, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hg
  %wide.vec149 = load <16 x float>, ptr %i.hh, align 4, !tbaa !26, !alias.scope !70 ; 4 uses
  %strided.vec150 = shufflevector <16 x float> %wide.vec149, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec151 = shufflevector <16 x float> %wide.vec149, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec152 = shufflevector <16 x float> %wide.vec149, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec153 = shufflevector <16 x float> %wide.vec149, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hi = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec150, splat (float 2.000000e+00)
  %i.hj = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather143, %i.hi
  %i.hk = fadd reassoc nsz arcp contract afn <4 x float> %i.hj, %strided.vec145
  %i.hl = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, splat (float 6.250000e-02) ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.hg
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hg ; 2 uses
  %wide.vec154 = load <16 x float>, ptr %i.hn, align 4, !tbaa !26, !alias.scope !71 ; 4 uses
  %strided.vec155 = shufflevector <16 x float> %wide.vec154, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec156 = shufflevector <16 x float> %wide.vec154, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec157 = shufflevector <16 x float> %wide.vec154, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec158 = shufflevector <16 x float> %wide.vec154, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ho = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec155, %i.hl
  %wide.gep159 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep142, i64 4
  %wide.masked.gather160 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep159, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec151, splat (float 2.000000e+00)
  %i.hq = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather160, %i.hp
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %i.hq, %strided.vec146
  %i.hs = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, splat (float 6.250000e-02) ; 2 uses
  %i.ht = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec156, %i.hs
  %wide.gep161 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep142, i64 8
  %wide.masked.gather162 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep161, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hu = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec152, splat (float 2.000000e+00)
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather162, %i.hu
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %i.hv, %strided.vec147
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.hw, splat (float 6.250000e-02) ; 2 uses
  %i.hy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec157, %i.hx
  %wide.gep163 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep142, i64 12
  %wide.masked.gather164 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep163, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec153, splat (float 2.000000e+00)
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather164, %i.hz
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, %strided.vec148
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, splat (float 6.250000e-02) ; 2 uses
  %i.id = shufflevector <4 x float> %i.hl, <4 x float> %i.hs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ie = shufflevector <4 x float> %i.hx, <4 x float> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec165 = shufflevector <8 x float> %i.id, <8 x float> %i.ie, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec165, ptr %i.hm, align 64, !tbaa !26, !noalias !72
  %i.if = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec158, %i.ic
  %i.ig = shufflevector <4 x float> %i.ho, <4 x float> %i.ht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ih = shufflevector <4 x float> %i.hy, <4 x float> %i.if, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec166 = shufflevector <8 x float> %i.ig, <8 x float> %i.ih, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec166, ptr %i.hn, align 4, !tbaa !26, !alias.scope !71
  %index.next167 = add nuw i64 %index140, 4       ; 2 uses
  %vec.ind.next168 = add <4 x i32> %vec.ind141, splat (i32 4)
end_hunk_0
