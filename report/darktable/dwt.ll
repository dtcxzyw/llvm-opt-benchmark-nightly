Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_decompose:bb.a
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.n, ptr %i.j, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !24
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = insertelement <2 x float> poison, float %i.i, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
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
  %i.ad = add nuw i32 %.020.i.i, 1
  br i1 %i.ac, label %bb.f, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.020.i.i, 0
  br i1 %.not.i.i, label %dwt_get_max_scale.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ae = uitofp reassoc nsz arcp contract afn i32 %i.ab to float ; 2 uses
  %min.iters.check = icmp ult i32 %.020.i.i, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i32 %.020.i.i, -32                 ; 2 uses
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
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !31

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
  br i1 %i.ax, label %scalar.ph, label %dwt_get_max_scale.exit, !llvm.loop !32

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
  %i.bd = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !33
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
  store ptr %i.bd, ptr %i.d, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load <2 x i32>, ptr %i.q, align 4, !tbaa !24
  store <2 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !38
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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 14 uses
  %i.bx = zext nneg i32 %.07296.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bx ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33 ; 9 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !33  ; 21 uses
  %.val.i = load i32, ptr %i.q, align 4, !tbaa !17 ; 3 uses
  %.val82.i = load i32, ptr %i.r, align 8, !tbaa !18 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cb = sext i32 %.val82.i to i64               ; 10 uses
  %i.cc = sext i32 %.val.i to i64                 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
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
  %i.cr = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check259 = icmp ult i64 %i.cr, 12
  %n.vec261 = and i64 %i.ct, 9223372036854775804  ; 3 uses
  %i.cu = shl i64 %n.vec261, 2
  %cmp.n282 = icmp eq i64 %i.ct, %n.vec261
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
  %i.di = mul i64 %i.ci, %i.dh                    ; 2 uses
  %i.dj = icmp ult i64 %..i.i.i, %i.dh
  %i.dk = sub nuw nsw i64 %i.dh, %..i.i.i
  %i.dl = sub nuw nsw i64 %..i.i.i, %i.dh
  %i.dm = select i1 %i.dj, i64 %i.dk, i64 %i.dl
  %i.dn = add nsw i64 %..i.i.i, %i.dh             ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cb
  %i.dp = sub nsw i64 %i.ch, %i.dn
  %i.dq = select i1 %i.do, i64 %i.dn, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.di ; 2 uses
  %i.ds = mul i64 %i.dm, %i.ci
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ds ; 2 uses
  %i.du = mul i64 %i.dq, %i.ci
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.di ; 2 uses
  br i1 %min.iters.check259, label %.preheader.us.us.i.i.i.preheader, label %vector.body262

vector.body262:                                   ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %vector.body262
  %index263 = phi i64 [ %index.next280, %vector.body262 ], [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ] ; 2 uses
  %i.dx = shl nuw i64 %index263, 2                ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dx
  %wide.vec264 = load <16 x float>, ptr %i.dy, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dx
  %wide.vec269 = load <16 x float>, ptr %i.dz, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx
  %wide.vec274 = load <16 x float>, ptr %i.ea, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dx
  %i.ec = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec264, splat (float 2.000000e+00)
  %i.ed = fadd reassoc nsz arcp contract afn <16 x float> %i.ec, %wide.vec269
  %interleaved.vec279 = fadd reassoc nsz arcp contract afn <16 x float> %i.ed, %wide.vec274
  store <16 x float> %interleaved.vec279, ptr %i.eb, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %index.next280 = add nuw i64 %index263, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next280, %n.vec261
  br i1 %i.ee, label %middle.block281, label %vector.body262, !llvm.loop !52

middle.block281:                                  ; preds = %vector.body262
  br i1 %cmp.n282, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader

.preheader.us.us.i.i.i.preheader:                 ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %middle.block281
  %.05263.us.us.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ], [ %i.cu, %middle.block281 ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader, %.preheader.us.us.i.i.i
  %.05263.us.us.i.i.i = phi i64 [ %i.ep, %.preheader.us.us.i.i.i ], [ %.05263.us.us.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05263.us.us.i.i.i
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.05263.us.us.i.i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.05263.us.us.i.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.05263.us.us.i.i.i
  %i.ej = load <4 x float>, ptr %i.ef, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.ek = fmul reassoc nsz arcp contract afn <4 x float> %i.ej, splat (float 2.000000e+00)
  %i.el = load <4 x float>, ptr %i.eg, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.em = fadd reassoc nsz arcp contract afn <4 x float> %i.ek, %i.el
  %i.en = load <4 x float>, ptr %i.eh, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.eo = fadd reassoc nsz arcp contract afn <4 x float> %i.em, %i.en
  store <4 x float> %i.eo, ptr %i.ei, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %i.ep = add nuw i64 %.05263.us.us.i.i.i, 4      ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.ci
  br i1 %i.eq, label %.preheader.us.us.i.i.i, label %._crit_edge.us.us.i.i.i, !llvm.loop !53

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader.us.us.i.i.i, %middle.block281
  %indvars.iv.next76.i.i.i = add nuw nsw i64 %indvars.iv75.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next76.i.i.i, %i.cb
  br i1 %exitcond78.not.i.i.i, label %.lr.ph96.i.i.i, label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  br i1 %.not69.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i.preheader

dwt_interleave_rows.exit.i.i.i.preheader:         ; preds = %.lr.ph.split.i.i.i
  %i.er = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.es = lshr exact i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.er, 12
  %n.vec287 = and i64 %i.et, 9223372036854775804  ; 3 uses
  %i.eu = shl i64 %n.vec287, 2
  %cmp.n308 = icmp eq i64 %i.et, %n.vec287
  br label %dwt_interleave_rows.exit.i.i.i

dwt_interleave_rows.exit.i.i.i:                   ; preds = %dwt_interleave_rows.exit.i.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ], [ 0, %dwt_interleave_rows.exit.i.i.i.preheader ] ; 6 uses
  %i.ev = mul i64 %indvars.iv.i.i.i, %i.ci        ; 2 uses
  %i.ew = icmp ult i64 %..i.i.i, %indvars.iv.i.i.i
  %i.ex = sub nuw i64 %indvars.iv.i.i.i, %..i.i.i
  %i.ey = sub nuw i64 %..i.i.i, %indvars.iv.i.i.i
  %i.ez = select i1 %i.ew, i64 %i.ex, i64 %i.ey
  %i.fa = add i64 %indvars.iv.i.i.i, %..i.i.i     ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.cb
  %i.fc = sub i64 %i.ch, %i.fa
  %i.fd = select i1 %i.fb, i64 %i.fa, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ev ; 2 uses
  %i.ff = mul i64 %i.ez, %i.ci
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ff ; 2 uses
  %i.fh = mul i64 %i.fd, %i.ci
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ev ; 2 uses
  br i1 %min.iters.check285, label %.preheader.i.i.i.preheader, label %vector.body288

vector.body288:                                   ; preds = %dwt_interleave_rows.exit.i.i.i, %vector.body288
  %index289 = phi i64 [ %index.next306, %vector.body288 ], [ 0, %dwt_interleave_rows.exit.i.i.i ] ; 2 uses
  %i.fk = shl nuw i64 %index289, 2                ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fk
  %wide.vec290 = load <16 x float>, ptr %i.fl, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk
  %wide.vec295 = load <16 x float>, ptr %i.fm, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fk
  %wide.vec300 = load <16 x float>, ptr %i.fn, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fk
  %i.fp = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec290, splat (float 2.000000e+00)
  %i.fq = fadd reassoc nsz arcp contract afn <16 x float> %i.fp, %wide.vec295
  %interleaved.vec305 = fadd reassoc nsz arcp contract afn <16 x float> %i.fq, %wide.vec300
  store <16 x float> %interleaved.vec305, ptr %i.fo, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %index.next306 = add nuw i64 %index289, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next306, %n.vec287
  br i1 %i.fr, label %middle.block307, label %vector.body288, !llvm.loop !54

middle.block307:                                  ; preds = %vector.body288
  br i1 %cmp.n308, label %._crit_edge.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %dwt_interleave_rows.exit.i.i.i, %middle.block307
  %.05263.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.i.i.i ], [ %i.eu, %middle.block307 ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.05263.i.i.i = phi i64 [ %i.gc, %.preheader.i.i.i ], [ %.05263.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.05263.i.i.i
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.05263.i.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.05263.i.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.05263.i.i.i
  %i.fw = load <4 x float>, ptr %i.fs, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fx = fmul reassoc nsz arcp contract afn <4 x float> %i.fw, splat (float 2.000000e+00)
  %i.fy = load <4 x float>, ptr %i.ft, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.fz = fadd reassoc nsz arcp contract afn <4 x float> %i.fx, %i.fy
  %i.ga = load <4 x float>, ptr %i.fu, align 4, !tbaa !49, !alias.scope !50, !noalias !51
  %i.gb = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, %i.ga
  store <4 x float> %i.gb, ptr %i.fv, align 4, !tbaa !49, !alias.scope !51, !noalias !50
  %i.gc = add nuw i64 %.05263.i.i.i, 4            ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.ci
  br i1 %i.gd, label %.preheader.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !55

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i, %middle.block307
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.cb
  br i1 %exitcond.not.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i

dwt_decompose_vert.exit.i.i:                      ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  br label %dwt_decompose_layer.exit.i

.lr.ph96.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %._crit_edge.us.us.i.i.i, %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %i.ge = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.cc, i64 %i.ce) ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.gf = sub nuw nsw i64 %i.cc, %i.ge            ; 9 uses
  %.not105.not.i.i.i = icmp ugt i32 %.val.i, %i.cd ; 2 uses
  %sext.i.i.i = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext.i.i.i, 32          ; 11 uses
  %i.gh = icmp ult i64 %i.gg, %i.cc
  %i.gi = shl nsw i64 %i.cc, 1
  %i.gj = add nsw i64 %i.gi, -2                   ; 4 uses
  %i.gk = shl nsw i64 %i.cc, 4                    ; 12 uses
  br i1 %i.gh, label %.lr.ph96.split.us.i.i.i, label %.lr.ph96.split.i.i.i

.lr.ph96.split.us.i.i.i:                          ; preds = %.lr.ph96.i.i.i
  br i1 %.not105.not.i.i.i, label %.lr.ph.us.us.i.i.i.preheader, label %.lr.ph92.us.i.i.i.preheader

.lr.ph92.us.i.i.i.preheader:                      ; preds = %.lr.ph96.split.us.i.i.i
  %i.gl = sub nsw i64 %i.cc, %i.gg                ; 3 uses
  %min.iters.check174 = icmp ult i64 %i.gl, 4
  %n.vec176 = and i64 %i.gl, -4                   ; 3 uses
  %i.gm = add nsw i64 %i.gg, %n.vec176
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.ge, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction181 = add nuw nsw <4 x i64> %broadcast.splat180, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n217 = icmp eq i64 %i.gl, %n.vec176
  br label %.lr.ph92.us.i.i.i

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %.lr.ph96.split.us.i.i.i
  %min.iters.check135 = icmp ult i64 %i.gf, 4
  %n.vec137 = and i64 %i.gf, -4                   ; 3 uses
  %broadcast.splatinsert138 = insertelement <4 x i64> poison, i64 %i.ge, i64 0
  %broadcast.splat139 = shufflevector <4 x i64> %broadcast.splatinsert138, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n171 = icmp eq i64 %i.gf, %n.vec137
  %i.gn = sub nsw i64 %i.cc, %i.gg                ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.gn, 4
  %n.vec98 = and i64 %i.gn, -4                    ; 3 uses
  %i.go = add nsw i64 %i.gg, %n.vec98
  %broadcast.splatinsert99 = insertelement <4 x i64> poison, i64 %i.ge, i64 0
  %broadcast.splat100 = shufflevector <4 x i64> %broadcast.splatinsert99, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <4 x i64> poison, i64 %i.gg, i64 0
  %broadcast.splat102 = shufflevector <4 x i64> %broadcast.splatinsert101, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat102, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n132 = icmp eq i64 %i.gn, %n.vec98
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader, %._crit_edge93.us.us.i.i.i
  %indvars.iv136.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i, %._crit_edge93.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %i.gp = mul i64 %indvars.iv136.i.i.i, %i.ci     ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gp ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.gp ; 13 uses
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.body140

vector.body140:                                   ; preds = %.lr.ph.us.us.i.i.i, %vector.body140
  %index141 = phi i64 [ %index.next168, %vector.body140 ], [ 0, %.lr.ph.us.us.i.i.i ] ; 3 uses
  %vec.ind142 = phi <4 x i64> [ %vec.ind.next169, %vector.body140 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.gs = sub nsw <4 x i64> %vec.ind142, %broadcast.splat139
  %i.gt = trunc nsw <4 x i64> %i.gs to <4 x i32>
  %i.gu = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.gt, i1 true)
  %i.gv = zext nneg <4 x i32> %i.gu to <4 x i64>
  %i.gw = add nsw i64 %index141, %i.ge
  %i.gx = shl nuw nsw <4 x i64> %i.gv, splat (i64 4)
  %wide.gep143 = getelementptr inbounds nuw i8, ptr %i.gr, <4 x i64> %i.gx ; 4 uses
  %i.gy = shl nsw i64 %i.gw, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gy
  %i.ha = shl nuw nsw i64 %index141, 2            ; 3 uses
  %wide.masked.gather144 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep143, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %wide.vec145 = load <16 x float>, ptr %i.gz, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec146 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec147 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec148 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec149 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ha
  %wide.vec150 = load <16 x float>, ptr %i.hb, align 4, !tbaa !49, !alias.scope !61, !noalias !62 ; 4 uses
  %strided.vec151 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec152 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec153 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec154 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec151, splat (float 2.000000e+00)
  %i.hd = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather144, %i.hc
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, %strided.vec146
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, splat (float 6.250000e-02) ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ha
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ha ; 2 uses
  %wide.vec155 = load <16 x float>, ptr %i.hh, align 4, !tbaa !49, !alias.scope !62, !noalias !61 ; 4 uses
  %strided.vec156 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec157 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec158 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec159 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.hi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec156, %i.hf
  %wide.gep160 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 4
  %wide.masked.gather161 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep160, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.hj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec152, splat (float 2.000000e+00)
  %i.hk = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather161, %i.hj
  %i.hl = fadd reassoc nsz arcp contract afn <4 x float> %i.hk, %strided.vec147
  %i.hm = fmul reassoc nsz arcp contract afn <4 x float> %i.hl, splat (float 6.250000e-02) ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec157, %i.hm
  %wide.gep162 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 8
  %wide.masked.gather163 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep162, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec153, splat (float 2.000000e+00)
  %i.hp = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather163, %i.ho
  %i.hq = fadd reassoc nsz arcp contract afn <4 x float> %i.hp, %strided.vec148
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, splat (float 6.250000e-02) ; 2 uses
  %i.hs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec158, %i.hr
  %wide.gep164 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 12
  %wide.masked.gather165 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep164, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !49, !alias.scope !61, !noalias !62
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec154, splat (float 2.000000e+00)
  %i.hu = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather165, %i.ht
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %strided.vec149
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %i.hv, splat (float 6.250000e-02) ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hf, <4 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hy = shufflevector <4 x float> %i.hr, <4 x float> %i.hw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec166 = shufflevector <8 x float> %i.hx, <8 x float> %i.hy, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec166, ptr %i.hg, align 64, !tbaa !49, !noalias !63
  %i.hz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec159, %i.hw
  %i.ia = shufflevector <4 x float> %i.hi, <4 x float> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ib = shufflevector <4 x float> %i.hs, <4 x float> %i.hz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec167 = shufflevector <8 x float> %i.ia, <8 x float> %i.ib, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec167, ptr %i.hh, align 4, !tbaa !49, !alias.scope !62, !noalias !61
  %index.next168 = add nuw i64 %index141, 4       ; 2 uses
  %vec.ind.next169 = add nuw nsw <4 x i64> %vec.ind142, splat (i64 4)
  %i.ic = icmp eq i64 %index.next168, %n.vec137
  br i1 %i.ic, label %middle.block170, label %vector.body140, !llvm.loop !64

middle.block170:                                  ; preds = %vector.body140
  br i1 %cmp.n171, label %._crit_edge.us.us.i15.i.i.preheader, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph.us.us.i.i.i, %middle.block170
  %indvars.iv128.i.i.i.ph = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ %n.vec137, %middle.block170 ]
  br label %scalar.ph134

end_hunk_0
