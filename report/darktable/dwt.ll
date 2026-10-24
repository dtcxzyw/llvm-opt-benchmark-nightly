Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_decompose:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !23
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
  %i.ci = shl nsw i64 %i.cc, 2                    ; 20 uses
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
  %i.di = shl nsw i64 %i.dh, 2
  %i.dj = mul i64 %i.di, %i.cc                    ; 2 uses
  %3 = icmp ult i64 %..i.i.i, %i.dh
  %4 = sub nuw nsw i64 %i.dh, %..i.i.i
  %i.dk = sub nuw nsw i64 %..i.i.i, %i.dh
  %5 = select i1 %3, i64 %4, i64 %i.dk
  %i.dl = add nsw i64 %..i.i.i, %i.dh             ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.cb
  %i.dn = sub nsw i64 %i.ch, %i.dl
  %i.do = select i1 %i.dm, i64 %i.dl, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dj ; 2 uses
  %i.dq = mul i64 %5, %i.ci
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dq ; 2 uses
  %i.ds = mul i64 %i.do, %i.ci
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dj ; 2 uses
  br i1 %min.iters.check259, label %.preheader.us.us.i.i.i.preheader, label %vector.body262

vector.body262:                                   ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %vector.body262
  %index263 = phi i64 [ %index.next280, %vector.body262 ], [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ] ; 2 uses
  %i.dv = shl nuw i64 %index263, 2                ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dv
  %wide.vec264 = load <16 x float>, ptr %i.dw, align 4, !tbaa !26, !alias.scope !66
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dv
  %wide.vec269 = load <16 x float>, ptr %i.dx, align 4, !tbaa !26, !alias.scope !66
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dv
  %wide.vec274 = load <16 x float>, ptr %i.dy, align 4, !tbaa !26, !alias.scope !66
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  %i.ea = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec264, splat (float 2.000000e+00)
  %i.eb = fadd reassoc nsz arcp contract afn <16 x float> %i.ea, %wide.vec269
  %interleaved.vec279 = fadd reassoc nsz arcp contract afn <16 x float> %i.eb, %wide.vec274
  store <16 x float> %interleaved.vec279, ptr %i.dz, align 4, !tbaa !26, !alias.scope !67
  %index.next280 = add nuw i64 %index263, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next280, %n.vec261
  br i1 %i.ec, label %middle.block281, label %vector.body262, !llvm.loop !41

middle.block281:                                  ; preds = %vector.body262
  br i1 %cmp.n282, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader

.preheader.us.us.i.i.i.preheader:                 ; preds = %dwt_interleave_rows.exit.us.us.i.i.i, %middle.block281
  %.05263.us.us.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.us.us.i.i.i ], [ %i.cu, %middle.block281 ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader, %.preheader.us.us.i.i.i
  %.05263.us.us.i.i.i = phi i64 [ %i.en, %.preheader.us.us.i.i.i ], [ %.05263.us.us.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.05263.us.us.i.i.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05263.us.us.i.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.05263.us.us.i.i.i
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05263.us.us.i.i.i
  %i.eh = load <4 x float>, ptr %i.ed, align 4, !tbaa !26, !alias.scope !66
  %i.ei = fmul reassoc nsz arcp contract afn <4 x float> %i.eh, splat (float 2.000000e+00)
  %i.ej = load <4 x float>, ptr %i.ee, align 4, !tbaa !26, !alias.scope !66
  %i.ek = fadd reassoc nsz arcp contract afn <4 x float> %i.ei, %i.ej
  %i.el = load <4 x float>, ptr %i.ef, align 4, !tbaa !26, !alias.scope !66
  %i.em = fadd reassoc nsz arcp contract afn <4 x float> %i.ek, %i.el
  store <4 x float> %i.em, ptr %i.eg, align 4, !tbaa !26, !alias.scope !67
  %i.en = add nuw i64 %.05263.us.us.i.i.i, 4      ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.ci
  br i1 %i.eo, label %.preheader.us.us.i.i.i, label %._crit_edge.us.us.i.i.i, !llvm.loop !42

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader.us.us.i.i.i, %middle.block281
  %indvars.iv.next76.i.i.i = add nuw nsw i64 %indvars.iv75.i.i.i, 1 ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i64 %indvars.iv.next76.i.i.i, %i.cb
  br i1 %exitcond78.not.i.i.i, label %.lr.ph96.i.i.i, label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  br i1 %.not69.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i.preheader

dwt_interleave_rows.exit.i.i.i.preheader:         ; preds = %.lr.ph.split.i.i.i
  %i.ep = call i64 @llvm.usub.sat.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.eq = lshr exact i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.ep, 12
  %n.vec287 = and i64 %i.er, 9223372036854775804  ; 3 uses
  %i.es = shl i64 %n.vec287, 2
  %cmp.n308 = icmp eq i64 %i.er, %n.vec287
  br label %dwt_interleave_rows.exit.i.i.i

dwt_interleave_rows.exit.i.i.i:                   ; preds = %dwt_interleave_rows.exit.i.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ], [ 0, %dwt_interleave_rows.exit.i.i.i.preheader ] ; 6 uses
  %i.et = shl nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.eu = mul i64 %i.et, %i.cc                    ; 2 uses
  %6 = icmp ult i64 %..i.i.i, %indvars.iv.i.i.i
  %7 = sub nuw i64 %indvars.iv.i.i.i, %..i.i.i
  %i.ev = sub nuw i64 %..i.i.i, %indvars.iv.i.i.i
  %8 = select i1 %6, i64 %7, i64 %i.ev
  %i.ew = add i64 %indvars.iv.i.i.i, %..i.i.i     ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %i.cb
  %i.ey = sub i64 %i.ch, %i.ew
  %i.ez = select i1 %i.ex, i64 %i.ew, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.eu ; 2 uses
  %i.fb = mul i64 %8, %i.ci
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fb ; 2 uses
  %i.fd = mul i64 %i.ez, %i.ci
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.eu ; 2 uses
  br i1 %min.iters.check285, label %.preheader.i.i.i.preheader, label %vector.body288

vector.body288:                                   ; preds = %dwt_interleave_rows.exit.i.i.i, %vector.body288
  %index289 = phi i64 [ %index.next306, %vector.body288 ], [ 0, %dwt_interleave_rows.exit.i.i.i ] ; 2 uses
  %i.fg = shl nuw i64 %index289, 2                ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fg
  %wide.vec290 = load <16 x float>, ptr %i.fh, align 4, !tbaa !26, !alias.scope !66
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fg
  %wide.vec295 = load <16 x float>, ptr %i.fi, align 4, !tbaa !26, !alias.scope !66
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fg
  %wide.vec300 = load <16 x float>, ptr %i.fj, align 4, !tbaa !26, !alias.scope !66
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fg
  %i.fl = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec290, splat (float 2.000000e+00)
  %i.fm = fadd reassoc nsz arcp contract afn <16 x float> %i.fl, %wide.vec295
  %interleaved.vec305 = fadd reassoc nsz arcp contract afn <16 x float> %i.fm, %wide.vec300
  store <16 x float> %interleaved.vec305, ptr %i.fk, align 4, !tbaa !26, !alias.scope !67
  %index.next306 = add nuw i64 %index289, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next306, %n.vec287
  br i1 %i.fn, label %middle.block307, label %vector.body288, !llvm.loop !43

middle.block307:                                  ; preds = %vector.body288
  br i1 %cmp.n308, label %._crit_edge.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %dwt_interleave_rows.exit.i.i.i, %middle.block307
  %.05263.i.i.i.ph = phi i64 [ 0, %dwt_interleave_rows.exit.i.i.i ], [ %i.es, %middle.block307 ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.05263.i.i.i = phi i64 [ %i.fy, %.preheader.i.i.i ], [ %.05263.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 5 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.05263.i.i.i
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.05263.i.i.i
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.05263.i.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.05263.i.i.i
  %i.fs = load <4 x float>, ptr %i.fo, align 4, !tbaa !26, !alias.scope !66
  %i.ft = fmul reassoc nsz arcp contract afn <4 x float> %i.fs, splat (float 2.000000e+00)
  %i.fu = load <4 x float>, ptr %i.fp, align 4, !tbaa !26, !alias.scope !66
  %i.fv = fadd reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fu
  %i.fw = load <4 x float>, ptr %i.fq, align 4, !tbaa !26, !alias.scope !66
  %i.fx = fadd reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fw
  store <4 x float> %i.fx, ptr %i.fr, align 4, !tbaa !26, !alias.scope !67
  %i.fy = add nuw i64 %.05263.i.i.i, 4            ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.ci
  br i1 %i.fz, label %.preheader.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !44

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i, %middle.block307
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.cb
  br i1 %exitcond.not.i.i.i, label %.lr.ph96.i.i.i, label %dwt_interleave_rows.exit.i.i.i

dwt_decompose_vert.exit.i.i:                      ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  br label %dwt_decompose_layer.exit.i

.lr.ph96.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %._crit_edge.us.us.i.i.i, %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %i.ga = call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.cc, i64 %i.ce) ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.gb = sub nuw nsw i64 %i.cc, %i.ga            ; 9 uses
  %.not105.not.i.i.i = icmp ugt i32 %.val.i, %i.cd ; 2 uses
  %sext.i.i.i = shl i64 %i.gb, 32
  %i.gc = ashr exact i64 %sext.i.i.i, 32          ; 11 uses
  %i.gd = icmp ult i64 %i.gc, %i.cc
  %i.ge = shl nsw i64 %i.cc, 1
  %i.gf = add nsw i64 %i.ge, -2                   ; 4 uses
  %i.gg = shl nsw i64 %i.cc, 4                    ; 12 uses
  br i1 %i.gd, label %.lr.ph96.split.us.i.i.i, label %.lr.ph96.split.i.i.i

.lr.ph96.split.us.i.i.i:                          ; preds = %.lr.ph96.i.i.i
  br i1 %.not105.not.i.i.i, label %.lr.ph.us.us.i.i.i.preheader, label %.lr.ph92.us.i.i.i.preheader

.lr.ph92.us.i.i.i.preheader:                      ; preds = %.lr.ph96.split.us.i.i.i
  %i.gh = sub nsw i64 %i.cc, %i.gc                ; 3 uses
  %min.iters.check174 = icmp ult i64 %i.gh, 4
  %n.vec176 = and i64 %i.gh, -4                   ; 3 uses
  %i.gi = add nsw i64 %i.gc, %n.vec176
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %i.gc, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction181 = add nuw nsw <4 x i64> %broadcast.splat180, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n217 = icmp eq i64 %i.gh, %n.vec176
  br label %.lr.ph92.us.i.i.i

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %.lr.ph96.split.us.i.i.i
  %min.iters.check135 = icmp ult i64 %i.gb, 4
  %n.vec137 = and i64 %i.gb, -4                   ; 3 uses
  %broadcast.splatinsert138 = insertelement <4 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat139 = shufflevector <4 x i64> %broadcast.splatinsert138, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n171 = icmp eq i64 %i.gb, %n.vec137
  %i.gj = sub nsw i64 %i.cc, %i.gc                ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.gj, 4
  %n.vec98 = and i64 %i.gj, -4                    ; 3 uses
  %i.gk = add nsw i64 %i.gc, %n.vec98
  %broadcast.splatinsert99 = insertelement <4 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat100 = shufflevector <4 x i64> %broadcast.splatinsert99, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <4 x i64> poison, i64 %i.gc, i64 0
  %broadcast.splat102 = shufflevector <4 x i64> %broadcast.splatinsert101, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat102, <i64 0, i64 1, i64 2, i64 3>
  %cmp.n132 = icmp eq i64 %i.gj, %n.vec98
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader, %._crit_edge93.us.us.i.i.i
  %indvars.iv136.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i, %._crit_edge93.us.us.i.i.i ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %i.gl = mul i64 %indvars.iv136.i.i.i, %i.ci     ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.gl ; 13 uses
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.body140

vector.body140:                                   ; preds = %.lr.ph.us.us.i.i.i, %vector.body140
  %index141 = phi i64 [ %index.next168, %vector.body140 ], [ 0, %.lr.ph.us.us.i.i.i ] ; 3 uses
  %vec.ind142 = phi <4 x i64> [ %vec.ind.next169, %vector.body140 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.go = sub nsw <4 x i64> %vec.ind142, %broadcast.splat139
  %i.gp = trunc nsw <4 x i64> %i.go to <4 x i32>
  %i.gq = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.gp, i1 true)
  %i.gr = zext nneg <4 x i32> %i.gq to <4 x i64>
  %i.gs = add nsw i64 %index141, %i.ga
  %i.gt = shl nuw nsw <4 x i64> %i.gr, splat (i64 4)
  %wide.gep143 = getelementptr inbounds nuw i8, ptr %i.gn, <4 x i64> %i.gt ; 4 uses
  %i.gu = shl nsw i64 %i.gs, 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gu
  %i.gw = shl nuw nsw i64 %index141, 2            ; 3 uses
  %wide.masked.gather144 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep143, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %wide.vec145 = load <16 x float>, ptr %i.gv, align 4, !tbaa !26, !alias.scope !70 ; 4 uses
  %strided.vec146 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec147 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec148 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec149 = shufflevector <16 x float> %wide.vec145, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gw
  %wide.vec150 = load <16 x float>, ptr %i.gx, align 4, !tbaa !26, !alias.scope !70 ; 4 uses
  %strided.vec151 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec152 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec153 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec154 = shufflevector <16 x float> %wide.vec150, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec151, splat (float 2.000000e+00)
  %i.gz = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather144, %i.gy
  %i.ha = fadd reassoc nsz arcp contract afn <4 x float> %i.gz, %strided.vec146
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.ha, splat (float 6.250000e-02) ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gw
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gw ; 2 uses
  %wide.vec155 = load <16 x float>, ptr %i.hd, align 4, !tbaa !26, !alias.scope !71 ; 4 uses
  %strided.vec156 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec157 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec158 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec159 = shufflevector <16 x float> %wide.vec155, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.he = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec156, %i.hb
  %wide.gep160 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 4
  %wide.masked.gather161 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep160, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec152, splat (float 2.000000e+00)
  %i.hg = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather161, %i.hf
  %i.hh = fadd reassoc nsz arcp contract afn <4 x float> %i.hg, %strided.vec147
  %i.hi = fmul reassoc nsz arcp contract afn <4 x float> %i.hh, splat (float 6.250000e-02) ; 2 uses
  %i.hj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec157, %i.hi
  %wide.gep162 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 8
  %wide.masked.gather163 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep162, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec153, splat (float 2.000000e+00)
  %i.hl = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather163, %i.hk
  %i.hm = fadd reassoc nsz arcp contract afn <4 x float> %i.hl, %strided.vec148
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hm, splat (float 6.250000e-02) ; 2 uses
  %i.ho = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec158, %i.hn
  %wide.gep164 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep143, i64 12
  %wide.masked.gather165 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep164, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !26, !alias.scope !70
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec154, splat (float 2.000000e+00)
  %i.hq = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather165, %i.hp
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %i.hq, %strided.vec149
  %i.hs = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, splat (float 6.250000e-02) ; 2 uses
  %i.ht = shufflevector <4 x float> %i.hb, <4 x float> %i.hi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hu = shufflevector <4 x float> %i.hn, <4 x float> %i.hs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec166 = shufflevector <8 x float> %i.ht, <8 x float> %i.hu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec166, ptr %i.hc, align 64, !tbaa !26, !noalias !72
  %i.hv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec159, %i.hs
  %i.hw = shufflevector <4 x float> %i.he, <4 x float> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hx = shufflevector <4 x float> %i.ho, <4 x float> %i.hv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec167 = shufflevector <8 x float> %i.hw, <8 x float> %i.hx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec167, ptr %i.hd, align 4, !tbaa !26, !alias.scope !71
  %index.next168 = add nuw i64 %index141, 4       ; 2 uses
  %vec.ind.next169 = add nuw nsw <4 x i64> %vec.ind142, splat (i64 4)
  %i.hy = icmp eq i64 %index.next168, %n.vec137
  br i1 %i.hy, label %middle.block170, label %vector.body140, !llvm.loop !48

middle.block170:                                  ; preds = %vector.body140
  br i1 %cmp.n171, label %._crit_edge.us.us.i15.i.i.preheader, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph.us.us.i.i.i, %middle.block170
  %indvars.iv128.i.i.i.ph = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ %n.vec137, %middle.block170 ]
  br label %scalar.ph134

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %indvars.iv128.i.i.i = phi i64 [ %indvars.iv.next129.i.i.i, %scalar.ph134 ], [ %indvars.iv128.i.i.i.ph, %scalar.ph134.preheader ] ; 4 uses
  %i.hz = sub nsw i64 %indvars.iv128.i.i.i, %i.ga
  %i.ia = trunc nsw i64 %i.hz to i32
  %i.ib = call i32 @llvm.abs.i32(i32 %i.ia, i1 true)
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = add nsw i64 %indvars.iv128.i.i.i, %i.ga
  %.idx85.us.us.i.i.i = shl nuw nsw i64 %i.ic, 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx85.us.us.i.i.i
  %.idx86.us.us.i.i.i = shl nsw i64 %i.id, 4
end_hunk_0
begin_hunk_1_@dwt_denoise:bb.a
  store <8 x float> %i.ji, ptr %i.jg, align 4, !tbaa !26, !alias.scope !101
  %index.next80 = add nuw i64 %index74, 8         ; 2 uses
  %i.jj = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.jj, label %middle.block81, label %vector.body73, !llvm.loop !90

middle.block81:                                   ; preds = %vector.body73
  br i1 %cmp.n82, label %._crit_edge128.i, label %.lr.ph127.i.preheader197

.lr.ph127.i.preheader197:                         ; preds = %.lr.ph127.i.preheader, %middle.block81
  %indvars.iv142.i.ph = phi i64 [ %i.fp, %.lr.ph127.i.preheader ], [ %i.fv, %middle.block81 ]
  br label %.lr.ph127.i

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.preheader, %.lr.ph124.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.lr.ph124.i ], [ %indvars.iv139.i.ph, %.lr.ph124.i.preheader ] ; 6 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv139.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !26, !alias.scope !99
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, 2.000000e+00
  %i.jn = sub nuw nsw i64 %indvars.iv139.i, %i.fl
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.jn
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !26, !alias.scope !99
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jm, %i.jp
  %gep158.i = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %indvars.iv139.i
  %i.jr = load float, ptr %gep158.i, align 4, !tbaa !26, !alias.scope !99
  %i.js = fadd reassoc nsz arcp contract afn float %i.jq, %i.jr
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, 6.250000e-02 ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv139.i ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !26, !alias.scope !100
  %i.jw = fsub reassoc nsz arcp contract afn float %i.jv, %i.jt ; 2 uses
  store float %i.jt, ptr %i.ju, align 4, !tbaa !26, !alias.scope !100
  %i.jx = fsub reassoc nsz arcp contract afn float %i.jw, %i.fk ; 2 uses
  %i.jy = fcmp reassoc nsz arcp contract afn ogt float %i.jx, 0.000000e+00
  %i.jz = select reassoc nsz arcp contract afn i1 %i.jy, float %i.jx, float 0.000000e+00
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jw, %i.fk ; 2 uses
  %i.kb = fcmp reassoc nsz arcp contract afn olt float %i.ka, 0.000000e+00
  %i.kc = select reassoc nsz arcp contract afn i1 %i.kb, float %i.ka, float 0.000000e+00
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %indvars.iv139.i ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !26, !alias.scope !101
  %i.kf = fadd reassoc nsz arcp contract afn float %i.kc, %i.ke
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %i.jz
  store float %i.kg, ptr %i.kd, align 4, !tbaa !26, !alias.scope !101
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next140.i, %i.fn
  br i1 %exitcond.not, label %._crit_edge.i31, label %.lr.ph124.i, !llvm.loop !91

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %middle.block81, %._crit_edge.i31
  br i1 %brmerge.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge128.i
  br i1 %min.iters.check, label %.lr.ph130.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 96
  %wide.load = load <8 x float>, ptr %i.kh, align 4, !tbaa !26, !alias.scope !101
  %wide.load57 = load <8 x float>, ptr %i.ki, align 4, !tbaa !26, !alias.scope !101
  %wide.load58 = load <8 x float>, ptr %i.kj, align 4, !tbaa !26, !alias.scope !101
  %wide.load59 = load <8 x float>, ptr %i.kk, align 4, !tbaa !26, !alias.scope !101
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 64 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 96 ; 2 uses
  %wide.load60 = load <8 x float>, ptr %i.kl, align 4, !tbaa !26, !alias.scope !100
  %wide.load61 = load <8 x float>, ptr %i.km, align 4, !tbaa !26, !alias.scope !100
  %wide.load62 = load <8 x float>, ptr %i.kn, align 4, !tbaa !26, !alias.scope !100
  %wide.load63 = load <8 x float>, ptr %i.ko, align 4, !tbaa !26, !alias.scope !100
  %i.kp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load60, %wide.load
  %i.kq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load61, %wide.load57
  %i.kr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load62, %wide.load58
  %i.ks = fadd reassoc nsz arcp contract afn <8 x float> %wide.load63, %wide.load59
  store <8 x float> %i.kp, ptr %i.kl, align 4, !tbaa !26, !alias.scope !100
  store <8 x float> %i.kq, ptr %i.km, align 4, !tbaa !26, !alias.scope !100
  store <8 x float> %i.kr, ptr %i.kn, align 4, !tbaa !26, !alias.scope !100
  store <8 x float> %i.ks, ptr %i.ko, align 4, !tbaa !26, !alias.scope !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph130.i.preheader, label %vec.epilog.ph, !prof !98

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index65
  %wide.load66 = load <4 x float>, ptr %i.ku, align 4, !tbaa !26, !alias.scope !101
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index65 ; 2 uses
  %wide.load67 = load <4 x float>, ptr %i.kv, align 4, !tbaa !26, !alias.scope !100
  %i.kw = fadd reassoc nsz arcp contract afn <4 x float> %wide.load67, %wide.load66
  store <4 x float> %i.kw, ptr %i.kv, align 4, !tbaa !26, !alias.scope !100
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.kx = icmp eq i64 %index.next68, %n.vec64
  br i1 %i.kx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n69, label %.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv145.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ]
  br label %.lr.ph130.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader197, %.lr.ph127.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph127.i ], [ %indvars.iv142.i.ph, %.lr.ph127.i.preheader197 ] ; 6 uses
  %i.ky = add i64 %i.fl, %indvars.iv142.i
  %i.kz = sub i64 %.neg35, %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !26, !alias.scope !99
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv142.i
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !26, !alias.scope !99
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, 2.000000e+00
  %i.lf = sub nsw i64 %indvars.iv142.i, %i.fl
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !26, !alias.scope !99
  %i.li = fadd reassoc nsz arcp contract afn float %i.le, %i.lh
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.lb
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lj, 6.250000e-02 ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv142.i ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !26, !alias.scope !100
  %i.ln = fsub reassoc nsz arcp contract afn float %i.lm, %i.lk ; 2 uses
  store float %i.lk, ptr %i.ll, align 4, !tbaa !26, !alias.scope !100
  %i.lo = fsub reassoc nsz arcp contract afn float %i.ln, %i.fk ; 2 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ogt float %i.lo, 0.000000e+00
  %i.lq = select reassoc nsz arcp contract afn i1 %i.lp, float %i.lo, float 0.000000e+00
  %i.lr = fadd reassoc nsz arcp contract afn float %i.ln, %i.fk ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn olt float %i.lr, 0.000000e+00
  %i.lt = select reassoc nsz arcp contract afn i1 %i.ls, float %i.lr, float 0.000000e+00
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %indvars.iv142.i ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !26, !alias.scope !101
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lt, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.lq
  store float %i.lx, ptr %i.lu, align 4, !tbaa !26, !alias.scope !101
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next143.i, %i.a
  br i1 %exitcond40.not, label %._crit_edge128.i, label %.lr.ph127.i, !llvm.loop !94

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %.lr.ph130.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph130.i ], [ %indvars.iv145.i.ph, %.lr.ph130.i.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv145.i
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !26, !alias.scope !101
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv145.i ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !26, !alias.scope !100
  %i.mc = fadd reassoc nsz arcp contract afn float %i.mb, %i.lz
  store float %i.mc, ptr %i.ma, align 4, !tbaa !26, !alias.scope !100
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next146.i, %i.a
  br i1 %exitcond148.not.i, label %.loopexit.i, label %.lr.ph130.i, !llvm.loop !95

.loopexit.i:                                      ; preds = %.lr.ph130.i, %middle.block, %vec.epilog.middle.block, %._crit_edge128.i
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next150.i, %i.c
  br i1 %exitcond152.not.i, label %dwt_denoise_horiz_1ch.exit.loopexit, label %bb.f

dwt_denoise_horiz_1ch.exit.loopexit:              ; preds = %.loopexit.i
  br i1 %i.q, label %.lr.ph48.i, label %._crit_edge

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
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!"dwt_params_t", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !13, i64 40}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !8, i64 8}
!17 = !{!14, !8, i64 12}
!18 = !{!14, !8, i64 16}
!19 = !{!14, !8, i64 20}
!20 = !{!14, !8, i64 24}
!21 = !{!14, !8, i64 28}
!22 = !{!14, !13, i64 40}
!23 = !{!8, !8, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!13, !13, i64 0}
!27 = !{!14, !11, i64 32}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !25, !24}
!30 = distinct !{!30, !24, !25}
!31 = distinct !{!31, !25, !24}
!32 = distinct !{!32, !24, !25}
!33 = distinct !{!33, !25, !24}
!34 = distinct !{null}
!35 = distinct !{!35, i1 true, !"dwt_decompose_layer"}
!36 = distinct !{!36, !35, !"dwt_decompose_layer: argument 0"}
!37 = distinct !{!37, !35, !"dwt_decompose_layer: argument 1"}
!38 = distinct !{!38, i1 true, !"dwt_decompose_vert"}
!39 = distinct !{!39, !38, !"dwt_decompose_vert: argument 0"}
!40 = distinct !{!40, !38, !"dwt_decompose_vert: argument 1"}
!41 = distinct !{!41, !24, !25}
!42 = distinct !{!42, !25, !24}
!43 = distinct !{!43, !24, !25}
!44 = distinct !{!44, !25, !24}
!45 = distinct !{!45, i1 true, !"dwt_decompose_horiz"}
!46 = distinct !{!46, !45, !"dwt_decompose_horiz: argument 0"}
!47 = distinct !{!47, !45, !"dwt_decompose_horiz: argument 1"}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !25, !24}
!50 = distinct !{!50, !24, !25}
!51 = distinct !{!51, !25, !24}
!52 = distinct !{!52, !24, !25}
!53 = distinct !{!53, !25, !24}
!54 = distinct !{!54, !24, !25}
!55 = distinct !{!55, !25, !24}
!56 = distinct !{!56, !73}
!57 = !{!12, !12, i64 0}
!58 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16}
!59 = !{!58, !8, i64 0}
!60 = !{!58, !8, i64 4}
!61 = !{!58, !13, i64 16}
!62 = !{!36}
!63 = !{!37}
!64 = !{!39}
!65 = !{!40}
!66 = !{!40, !37}
!67 = !{!39, !36}
!68 = !{!46}
!69 = !{!47}
!70 = !{!46, !36}
!71 = !{!47, !37}
!72 = !{!46, !47, !36, !37}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, i1 true, !"dwt_denoise_vert_1ch"}
!75 = distinct !{!75, !74, !"dwt_denoise_vert_1ch: argument 0"}
!76 = distinct !{!76, !74, !"dwt_denoise_vert_1ch: argument 1"}
!77 = distinct !{!77, !24, !25}
!78 = distinct !{!78, !24, !25}
!79 = distinct !{!79, !25, !24}
!80 = distinct !{!80, !24, !25}
!81 = distinct !{!81, !24, !25}
!82 = distinct !{!82, !25, !24}
!83 = distinct !{!83, i1 true, !"dwt_denoise_horiz_1ch"}
!84 = distinct !{!84, !83, !"dwt_denoise_horiz_1ch: argument 0"}
!85 = distinct !{!85, !83, !"dwt_denoise_horiz_1ch: argument 1"}
!86 = distinct !{!86, !83, !"dwt_denoise_horiz_1ch: argument 2"}
!87 = distinct !{!87, !24, !25}
!88 = distinct !{!88, !24, !25}
!89 = distinct !{!89, !25, !24}
!90 = distinct !{!90, !24, !25}
!91 = distinct !{!91, !25, !24}
!92 = distinct !{!92, !24, !25}
!93 = distinct !{!93, !24, !25}
!94 = distinct !{!94, !25, !24}
!95 = distinct !{!95, !25, !24}
!96 = !{!75}
!97 = !{!76}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = !{!84}
!100 = !{!85}
!101 = !{!86}
end_hunk_1
