Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pshinter?download=true
inline.NumInlined: 100
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ps_hints_apply:bb.a
  call void @ft_mem_free(ptr noundef %i.aao, ptr noundef %i.abf) #12
  %i.abg = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr null, ptr %i.abg, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aap, i8 0, i64 16, i1 false)
  %i.abh = load ptr, ptr %i.k, align 8, !tbaa !27
  call void @ft_mem_free(ptr noundef %i.aao, ptr noundef %i.abh) #12
  store ptr null, ptr %i.k, align 8, !tbaa !27
  %i.abi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !28
  call void @ft_mem_free(ptr noundef %i.aao, ptr noundef %i.abj) #12
  br label %bb.de

bb.de:                                            ; preds = %bb.a, %bb.b, %.loopexit
  %.073 = phi i32 [ %i.aan, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @psh_globals_set_scale(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.not = icmp eq i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141
  %.not22 = icmp eq i64 %3, %i.d
  br i1 %.not22, label %psh_globals_scale_widths.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %3, ptr %i.e, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %psh_globals_scale_widths.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !143
  %i.j = sext i32 %i.i to i64
  %sext.i = shl i64 %1, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.j                   ; 2 uses
  %i.m = ashr i64 %i.l, 63
  %i.n = add nsw i64 %i.l, 32768
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = shl i64 %i.o, 16
  %i.q = ashr i64 %i.p, 32                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !145
  %i.s = add nsw i64 %i.q, 32
  %i.t = and i64 %i.s, -64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !146
  %.03138.i = add i32 %i.g, -1                    ; 2 uses
  %.not3439.i = icmp eq i32 %.03138.i, 0
  br i1 %.not3439.i, label %psh_globals_scale_widths.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03141.i = phi i32 [ %.031.i, %.lr.ph.i ], [ %.03138.i, %.lr.ph.preheader.i ]
  %.03040.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  %i.w = load i32, ptr %.03040.i, align 8, !tbaa !143
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.k, %i.x                   ; 2 uses
  %i.z = ashr i64 %i.y, 63
  %i.aa = add nsw i64 %i.y, 32768
  %i.ab = add nsw i64 %i.aa, %i.z
  %i.ac = shl i64 %i.ab, 16
  %i.ad = ashr i64 %i.ac, 32                      ; 2 uses
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !145 ; 2 uses
  %reass.sub = sub i64 %i.ad, %i.ae
  %i.af = add i64 %reass.sub, 127
  %i.ag = icmp ult i64 %i.af, 255
  %spec.select35.i = select i1 %i.ag, i64 %i.ae, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03040.i, i64 8
  store i64 %spec.select35.i, ptr %i.ah, align 8, !tbaa !145
  %i.ai = add nsw i64 %spec.select35.i, 32
  %i.aj = and i64 %i.ai, -64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03040.i, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !146
  %i.al = getelementptr inbounds nuw i8, ptr %.03040.i, i64 24
  %.031.i = add i32 %.03141.i, -1                 ; 2 uses
  %.not34.i = icmp eq i32 %.031.i, 0
  br i1 %.not34.i, label %psh_globals_scale_widths.exit, label %.lr.ph.i, !llvm.loop !147

psh_globals_scale_widths.exit:                    ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !72
  %.not23 = icmp eq i64 %2, %i.an
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psh_globals_scale_widths.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !141
  %.not24 = icmp eq i64 %4, %i.ap
  br i1 %.not24, label %psh_blues_scale_zones.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %psh_globals_scale_widths.exit
  store i64 %2, ptr %i.am, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i64 %4, ptr %i.aq, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !142 ; 2 uses
  %.not.i25 = icmp eq i32 %i.as, 0
  br i1 %.not.i25, label %psh_globals_scale_widths.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.au = load i32, ptr %i.at, align 8, !tbaa !143
  %i.av = sext i32 %i.au to i64
  %sext.i26 = shl i64 %2, 32
  %i.aw = ashr exact i64 %sext.i26, 32            ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.av                ; 2 uses
  %i.ay = ashr i64 %i.ax, 63
  %i.az = add nsw i64 %i.ax, 32768
  %i.ba = add nsw i64 %i.az, %i.ay
  %i.bb = shl i64 %i.ba, 16
  %i.bc = ashr i64 %i.bb, 32                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !145
  %i.be = add nsw i64 %i.bc, 32
  %i.bf = and i64 %i.be, -64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !146
  %.03138.i27 = add i32 %i.as, -1                 ; 2 uses
  %.not3439.i28 = icmp eq i32 %.03138.i27, 0
  br i1 %.not3439.i28, label %psh_globals_scale_widths.exit37, label %.lr.ph.preheader.i29

.lr.ph.preheader.i29:                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30, %.lr.ph.preheader.i29
  %.03141.i31 = phi i32 [ %.031.i35, %.lr.ph.i30 ], [ %.03138.i27, %.lr.ph.preheader.i29 ]
  %.03040.i32 = phi ptr [ %i.bx, %.lr.ph.i30 ], [ %i.bh, %.lr.ph.preheader.i29 ] ; 4 uses
  %i.bi = load i32, ptr %.03040.i32, align 8, !tbaa !143
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.aw, %i.bj                ; 2 uses
  %i.bl = ashr i64 %i.bk, 63
  %i.bm = add nsw i64 %i.bk, 32768
  %i.bn = add nsw i64 %i.bm, %i.bl
  %i.bo = shl i64 %i.bn, 16
  %i.bp = ashr i64 %i.bo, 32                      ; 2 uses
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !145 ; 2 uses
  %reass.sub44 = sub i64 %i.bp, %i.bq
  %i.br = add i64 %reass.sub44, 127
  %i.bs = icmp ult i64 %i.br, 255
  %spec.select35.i34 = select i1 %i.bs, i64 %i.bq, i64 %i.bp ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03040.i32, i64 8
  store i64 %spec.select35.i34, ptr %i.bt, align 8, !tbaa !145
  %i.bu = add nsw i64 %spec.select35.i34, 32
  %i.bv = and i64 %i.bu, -64
  %i.bw = getelementptr inbounds nuw i8, ptr %.03040.i32, i64 16
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !146
  %i.bx = getelementptr inbounds nuw i8, ptr %.03040.i32, i64 24
  %.031.i35 = add i32 %.03141.i31, -1             ; 2 uses
  %.not34.i36 = icmp eq i32 %.031.i35, 0
  br i1 %.not34.i36, label %psh_globals_scale_widths.exit37, label %.lr.ph.i30, !llvm.loop !147

psh_globals_scale_widths.exit37:                  ; preds = %.lr.ph.i30, %bb.f, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bz = icmp sgt i64 %2, 34359737
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %psh_globals_scale_widths.exit37
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !148
  %i.cc = shl nsw i64 %i.cb, 3
  %i.cd = sdiv i64 %i.cc, 125
  %i.ce = icmp slt i64 %2, %i.cd
  br label %bb.j

bb.i:                                             ; preds = %psh_globals_scale_widths.exit37
  %i.cf = mul nsw i64 %2, 125
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !148
  %i.ci = shl nsw i64 %i.ch, 3
  %i.cj = icmp slt i64 %i.cf, %i.ci
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.in.i = phi i1 [ %i.ce, %bb.h ], [ %i.cj, %bb.i ]
  %.sink.i = zext i1 %.sink.in.i to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3948
  store i8 %.sink.i, ptr %i.ck, align 4, !tbaa !130
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !149 ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %sext.i38 = shl i64 %2, 32
  %i.co = ashr exact i64 %sext.i38, 32            ; 20 uses
  br i1 %i.cn, label %.lr.ph.i40.preheader, label %..critedge_crit_edge.i

.lr.ph.i40.preheader:                             ; preds = %bb.j
  %5 = zext nneg i32 %i.cm to i64                 ; 6 uses
  %min.iters.check = icmp ult i32 %i.cm, 32
  br i1 %min.iters.check, label %.lr.ph.i40.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.preheader
  %n.vec = and i64 %5, 2147483632                 ; 2 uses
  %6 = and i64 %5, 15
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <16 x i64> poison, i64 %5, i64 0
  %broadcast.splat72 = shufflevector <16 x i64> %broadcast.splatinsert71, <16 x i64> poison, <16 x i32> zeroinitializer
  %7 = add nsw <16 x i64> %broadcast.splat72, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %7, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.cp = mul nsw <16 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.cq = ashr <16 x i64> %i.cp, splat (i64 63)
  %i.cr = add nsw <16 x i64> %i.cp, splat (i64 32768)
  %i.cs = add nsw <16 x i64> %i.cr, %i.cq
  %.fr = freeze <16 x i64> %i.cs
  %i.ct = lshr <16 x i64> %.fr, splat (i64 16)
  %i.cu = trunc <16 x i64> %i.ct to <16 x i32>
  %i.cv = icmp slt <16 x i32> %i.cu, splat (i32 33) ; 2 uses
  %i.cw = bitcast <16 x i1> %i.cv to i16
  %.not70 = icmp eq i16 %i.cw, 0
  br i1 %.not70, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %..critedge_crit_edge.i, label %.lr.ph.i40.preheader73

.lr.ph.i40.preheader73:                           ; preds = %.lr.ph.i40.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %5, %.lr.ph.i40.preheader ], [ %6, %middle.block ]
  br label %.lr.ph.i40

vector.early.exit:                                ; preds = %vector.body
  %i.cy = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cv, i1 false)
  %8 = add i64 %index, %i.cy
  %9 = sub i64 %5, %8
  br label %.loopexit.split.loop.exit.i

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader73, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.i.ph, %.lr.ph.i40.preheader73 ] ; 4 uses
  %i.cz = mul nsw i64 %indvars.iv.i, %i.co        ; 2 uses
  %i.da = ashr i64 %i.cz, 63
  %i.db = add nsw i64 %i.cz, 32768
  %i.dc = add nsw i64 %i.db, %i.da
  %i.dd = lshr i64 %i.dc, 16
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp sgt i32 %i.de, 32
  br i1 %i.df, label %bb.k, label %.loopexit.split.loop.exit.i

bb.k:                                             ; preds = %.lr.ph.i40
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.dg = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.dg, label %.lr.ph.i40, label %..critedge_crit_edge.i, !llvm.loop !153

.loopexit.split.loop.exit.i:                      ; preds = %.lr.ph.i40, %vector.early.exit
  %indvars.iv.i.lcssa = phi i64 [ %9, %vector.early.exit ], [ %indvars.iv.i, %.lr.ph.i40 ]
  %10 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.k, %middle.block, %.loopexit.split.loop.exit.i, %bb.j
  %.082.lcssa.i = phi i32 [ %i.cm, %bb.j ], [ %10, %.loopexit.split.loop.exit.i ], [ 0, %middle.block ], [ 0, %bb.k ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 3940
  store i32 %.082.lcssa.i, ptr %i.dh, align 4, !tbaa !131
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.dl = load i32, ptr %i.by, align 8, !tbaa !126 ; 3 uses
  %.not91103.i = icmp eq i32 %i.dl, 0             ; 2 uses
  br i1 %.not91103.i, label %._crit_edge.i, label %.lr.ph106.preheader.i

.lr.ph106.preheader.i:                            ; preds = %..critedge_crit_edge.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 832
  %invariant.op.i = add i64 %4, 32
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i, %.lr.ph106.preheader.i
  %.081105.i = phi ptr [ %i.fe, %.lr.ph106.i ], [ %i.dm, %.lr.ph106.preheader.i ] ; 9 uses
  %.085104.i = phi i32 [ %i.fd, %.lr.ph106.i ], [ %i.dl, %.lr.ph106.preheader.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.081105.i, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !129
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %i.co, %i.dp                ; 2 uses
  %i.dr = ashr i64 %i.dq, 63
  %i.ds = add nsw i64 %i.dq, 32768
  %i.dt = add nsw i64 %i.ds, %i.dr
  %i.du = shl i64 %i.dt, 16
  %i.dv = ashr i64 %i.du, 32
  %i.dw = add nsw i64 %i.dv, %4
  %i.dx = getelementptr inbounds nuw i8, ptr %.081105.i, i64 40
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !134
  %i.dy = getelementptr inbounds nuw i8, ptr %.081105.i, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !128
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.co, %i.ea                ; 2 uses
  %i.ec = ashr i64 %i.eb, 63
  %i.ed = add nsw i64 %i.eb, 32768
  %i.ee = add nsw i64 %i.ed, %i.ec
  %i.ef = shl i64 %i.ee, 16
  %i.eg = ashr i64 %i.ef, 32
  %i.eh = add nsw i64 %i.eg, %4
  %i.ei = getelementptr inbounds nuw i8, ptr %.081105.i, i64 32
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !132
  %i.ej = load i32, ptr %.081105.i, align 8, !tbaa !76
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.co, %i.ek                ; 2 uses
  %i.em = ashr i64 %i.el, 63
  %i.en = add nsw i64 %i.el, 32768
  %i.eo = add nsw i64 %i.en, %i.em
  %i.ep = shl i64 %i.eo, 16
  %i.eq = ashr i64 %i.ep, 32
  %i.er = getelementptr inbounds nuw i8, ptr %.081105.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.081105.i, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !154
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul nsw i64 %i.co, %i.eu                ; 2 uses
  %i.ew = ashr i64 %i.ev, 63
  %i.ex = add nsw i64 %i.ev, 32768
  %i.ey = add nsw i64 %i.ex, %i.ew
  %i.ez = shl i64 %i.ey, 16
  %i.fa = ashr i64 %i.ez, 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.081105.i, i64 24
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !155
  %.reass.i = add i64 %invariant.op.i, %i.eq
  %i.fc = and i64 %.reass.i, -64
  store i64 %i.fc, ptr %i.er, align 8, !tbaa !156
  %i.fd = add i32 %.085104.i, -1                  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.081105.i, i64 48
  %.not91.i = icmp eq i32 %i.fd, 0
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph106.i, !llvm.loop !157

._crit_edge.i:                                    ; preds = %.lr.ph106.i, %..critedge_crit_edge.i
  %i.ff = load i32, ptr %i.dj, align 8, !tbaa !126 ; 3 uses
  %.not91103.1.i = icmp eq i32 %i.ff, 0           ; 2 uses
  br i1 %.not91103.1.i, label %._crit_edge.1.i, label %.lr.ph106.preheader.1.i

.lr.ph106.preheader.1.i:                          ; preds = %._crit_edge.i
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %invariant.op139.i = add i64 %4, 32
  br label %.lr.ph106.1.i

.lr.ph106.1.i:                                    ; preds = %.lr.ph106.1.i, %.lr.ph106.preheader.1.i
  %.081105.1.i = phi ptr [ %i.gy, %.lr.ph106.1.i ], [ %i.fg, %.lr.ph106.preheader.1.i ] ; 9 uses
  %.085104.1.i = phi i32 [ %i.gx, %.lr.ph106.1.i ], [ %i.ff, %.lr.ph106.preheader.1.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !129
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul nsw i64 %i.co, %i.fj                ; 2 uses
  %i.fl = ashr i64 %i.fk, 63
  %i.fm = add nsw i64 %i.fk, 32768
  %i.fn = add nsw i64 %i.fm, %i.fl
  %i.fo = shl i64 %i.fn, 16
  %i.fp = ashr i64 %i.fo, 32
  %i.fq = add nsw i64 %i.fp, %4
  %i.fr = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 40
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !134
  %i.fs = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !128
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul nsw i64 %i.co, %i.fu                ; 2 uses
  %i.fw = ashr i64 %i.fv, 63
  %i.fx = add nsw i64 %i.fv, 32768
  %i.fy = add nsw i64 %i.fx, %i.fw
  %i.fz = shl i64 %i.fy, 16
  %i.ga = ashr i64 %i.fz, 32
  %i.gb = add nsw i64 %i.ga, %4
  %i.gc = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 32
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !132
  %i.gd = load i32, ptr %.081105.1.i, align 8, !tbaa !76
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul nsw i64 %i.co, %i.ge                ; 2 uses
  %i.gg = ashr i64 %i.gf, 63
  %i.gh = add nsw i64 %i.gf, 32768
  %i.gi = add nsw i64 %i.gh, %i.gg
  %i.gj = shl i64 %i.gi, 16
  %i.gk = ashr i64 %i.gj, 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !154
  %i.go = sext i32 %i.gn to i64
  %i.gp = mul nsw i64 %i.co, %i.go                ; 2 uses
  %i.gq = ashr i64 %i.gp, 63
  %i.gr = add nsw i64 %i.gp, 32768
  %i.gs = add nsw i64 %i.gr, %i.gq
  %i.gt = shl i64 %i.gs, 16
  %i.gu = ashr i64 %i.gt, 32
  %i.gv = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 24
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !155
  %.reass140.i = add i64 %invariant.op139.i, %i.gk
  %i.gw = and i64 %.reass140.i, -64
  store i64 %i.gw, ptr %i.gl, align 8, !tbaa !156
  %i.gx = add i32 %.085104.1.i, -1                ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.081105.1.i, i64 48
  %.not91.1.i = icmp eq i32 %i.gx, 0
  br i1 %.not91.1.i, label %._crit_edge.1.i, label %.lr.ph106.1.i, !llvm.loop !157

._crit_edge.1.i:                                  ; preds = %.lr.ph106.1.i, %._crit_edge.i
  %i.gz = load i32, ptr %i.di, align 8, !tbaa !126 ; 3 uses
  %.not91103.2.i = icmp eq i32 %i.gz, 0           ; 2 uses
  br i1 %.not91103.2.i, label %._crit_edge.2.i, label %.lr.ph106.preheader.2.i

.lr.ph106.preheader.2.i:                          ; preds = %._crit_edge.1.i
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %invariant.op141.i = add i64 %4, 32
  br label %.lr.ph106.2.i

.lr.ph106.2.i:                                    ; preds = %.lr.ph106.2.i, %.lr.ph106.preheader.2.i
  %.081105.2.i = phi ptr [ %i.is, %.lr.ph106.2.i ], [ %i.ha, %.lr.ph106.preheader.2.i ] ; 9 uses
  %.085104.2.i = phi i32 [ %i.ir, %.lr.ph106.2.i ], [ %i.gz, %.lr.ph106.preheader.2.i ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !129
  %i.hd = sext i32 %i.hc to i64
  %i.he = mul nsw i64 %i.co, %i.hd                ; 2 uses
  %i.hf = ashr i64 %i.he, 63
  %i.hg = add nsw i64 %i.he, 32768
  %i.hh = add nsw i64 %i.hg, %i.hf
  %i.hi = shl i64 %i.hh, 16
  %i.hj = ashr i64 %i.hi, 32
  %i.hk = add nsw i64 %i.hj, %4
  %i.hl = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 40
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !134
  %i.hm = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !128
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul nsw i64 %i.co, %i.ho                ; 2 uses
  %i.hq = ashr i64 %i.hp, 63
  %i.hr = add nsw i64 %i.hp, 32768
  %i.hs = add nsw i64 %i.hr, %i.hq
  %i.ht = shl i64 %i.hs, 16
  %i.hu = ashr i64 %i.ht, 32
  %i.hv = add nsw i64 %i.hu, %4
  %i.hw = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 32
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !132
  %i.hx = load i32, ptr %.081105.2.i, align 8, !tbaa !76
  %i.hy = sext i32 %i.hx to i64
  %i.hz = mul nsw i64 %i.co, %i.hy                ; 2 uses
  %i.ia = ashr i64 %i.hz, 63
  %i.ib = add nsw i64 %i.hz, 32768
  %i.ic = add nsw i64 %i.ib, %i.ia
  %i.id = shl i64 %i.ic, 16
  %i.ie = ashr i64 %i.id, 32
  %i.if = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !154
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.co, %i.ii                ; 2 uses
  %i.ik = ashr i64 %i.ij, 63
  %i.il = add nsw i64 %i.ij, 32768
  %i.im = add nsw i64 %i.il, %i.ik
  %i.in = shl i64 %i.im, 16
  %i.io = ashr i64 %i.in, 32
  %i.ip = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 24
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !155
  %.reass142.i = add i64 %invariant.op141.i, %i.ie
  %i.iq = and i64 %.reass142.i, -64
  store i64 %i.iq, ptr %i.if, align 8, !tbaa !156
  %i.ir = add i32 %.085104.2.i, -1                ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.081105.2.i, i64 48
  %.not91.2.i = icmp eq i32 %i.ir, 0
  br i1 %.not91.2.i, label %._crit_edge.2.i, label %.lr.ph106.2.i, !llvm.loop !157

._crit_edge.2.i:                                  ; preds = %.lr.ph106.2.i, %._crit_edge.1.i
end_hunk_0
