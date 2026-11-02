Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pshinter?download=true
inline.NumInlined: 100
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ps_hints_apply:bb.a
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !74
  call void @ft_mem_free(ptr noundef %i.zx, ptr noundef %i.aah) #13
  %i.aai = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !61
  call void @ft_mem_free(ptr noundef %i.zx, ptr noundef %i.aaj) #13
  %i.aak = load ptr, ptr %i.k, align 8, !tbaa !22
  call void @ft_mem_free(ptr noundef %i.zx, ptr noundef %i.aak) #13
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !23
  call void @ft_mem_free(ptr noundef %i.zx, ptr noundef %i.aam) #13
  br label %bb.de

bb.de:                                            ; preds = %bb.a, %bb.b, %.loopexit
  %.073 = phi i32 [ %i.zw, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @psh_globals_set_scale(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87
  %.not22 = icmp eq i64 %3, %i.d
  br i1 %.not22, label %psh_globals_scale_widths.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %3, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %psh_globals_scale_widths.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !89
  %i.j = sext i32 %i.i to i64
  %i.k = shl i64 %1, 32
  %i.l = ashr exact i64 %i.k, 32                  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.j                   ; 2 uses
  %i.n = ashr i64 %i.m, 63
  %i.o = add nsw i64 %i.m, 32768
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = shl i64 %i.p, 16
  %i.r = ashr i64 %i.q, 32                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !90
  %i.t = add nsw i64 %i.r, 32
  %i.u = and i64 %i.t, -64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.v, align 8, !tbaa !187
  %.03136.i = add i32 %i.g, -1                    ; 2 uses
  %.not3437.i = icmp eq i32 %.03136.i, 0
  br i1 %.not3437.i, label %psh_globals_scale_widths.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03139.i = phi i32 [ %.031.i, %.lr.ph.i ], [ %.03136.i, %.lr.ph.preheader.i ]
  %.03038.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.w, %.lr.ph.preheader.i ] ; 4 uses
  %i.x = load i32, ptr %.03038.i, align 8, !tbaa !89
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.l, %i.y                   ; 2 uses
  %i.aa = ashr i64 %i.z, 63
  %i.ab = add nsw i64 %i.z, 32768
  %i.ac = add nsw i64 %i.ab, %i.aa
  %i.ad = shl i64 %i.ac, 16
  %i.ae = ashr i64 %i.ad, 32                      ; 2 uses
  %i.af = load i64, ptr %i.s, align 8, !tbaa !90  ; 2 uses
  %reass.sub = sub i64 %i.ae, %i.af
  %i.ag = add i64 %reass.sub, 127
  %i.ah = icmp ult i64 %i.ag, 255
  %spec.select35.i = select i1 %i.ah, i64 %i.af, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03038.i, i64 8
  store i64 %spec.select35.i, ptr %i.ai, align 8, !tbaa !90
  %i.aj = add nsw i64 %spec.select35.i, 32
  %i.ak = and i64 %i.aj, -64
  %i.al = getelementptr inbounds nuw i8, ptr %.03038.i, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %.03038.i, i64 24
  %.031.i = add i32 %.03139.i, -1                 ; 2 uses
  %.not34.i = icmp eq i32 %.031.i, 0
  br i1 %.not34.i, label %psh_globals_scale_widths.exit, label %.lr.ph.i, !llvm.loop !180

psh_globals_scale_widths.exit:                    ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !46
  %.not23 = icmp eq i64 %2, %i.ao
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %psh_globals_scale_widths.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !87
  %.not24 = icmp eq i64 %4, %i.aq
  br i1 %.not24, label %psh_blues_scale_zones.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %psh_globals_scale_widths.exit
  store i64 %2, ptr %i.an, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i64 %4, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.at = load i32, ptr %i.as, align 8, !tbaa !186 ; 2 uses
  %.not.i25 = icmp eq i32 %i.at, 0
  br i1 %.not.i25, label %psh_globals_scale_widths.exit36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.av = load i32, ptr %i.au, align 8, !tbaa !89
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl i64 %2, 32
  %i.ay = ashr exact i64 %i.ax, 32                ; 2 uses
  %i.az = mul nsw i64 %i.ay, %i.aw                ; 2 uses
  %i.ba = ashr i64 %i.az, 63
  %i.bb = add nsw i64 %i.az, 32768
  %i.bc = add nsw i64 %i.bb, %i.ba
  %i.bd = shl i64 %i.bc, 16
  %i.be = ashr i64 %i.bd, 32                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !90
  %i.bg = add nsw i64 %i.be, 32
  %i.bh = and i64 %i.bg, -64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !187
  %.03136.i26 = add i32 %i.at, -1                 ; 2 uses
  %.not3437.i27 = icmp eq i32 %.03136.i26, 0
  br i1 %.not3437.i27, label %psh_globals_scale_widths.exit36, label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.preheader.i28
  %.03139.i30 = phi i32 [ %.031.i34, %.lr.ph.i29 ], [ %.03136.i26, %.lr.ph.preheader.i28 ]
  %.03038.i31 = phi ptr [ %i.bz, %.lr.ph.i29 ], [ %i.bj, %.lr.ph.preheader.i28 ] ; 4 uses
  %i.bk = load i32, ptr %.03038.i31, align 8, !tbaa !89
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.ay, %i.bl                ; 2 uses
  %i.bn = ashr i64 %i.bm, 63
  %i.bo = add nsw i64 %i.bm, 32768
  %i.bp = add nsw i64 %i.bo, %i.bn
  %i.bq = shl i64 %i.bp, 16
  %i.br = ashr i64 %i.bq, 32                      ; 2 uses
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !90 ; 2 uses
  %reass.sub42 = sub i64 %i.br, %i.bs
  %i.bt = add i64 %reass.sub42, 127
  %i.bu = icmp ult i64 %i.bt, 255
  %spec.select35.i33 = select i1 %i.bu, i64 %i.bs, i64 %i.br ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 8
  store i64 %spec.select35.i33, ptr %i.bv, align 8, !tbaa !90
  %i.bw = add nsw i64 %spec.select35.i33, 32
  %i.bx = and i64 %i.bw, -64
  %i.by = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !187
  %i.bz = getelementptr inbounds nuw i8, ptr %.03038.i31, i64 24
  %.031.i34 = add i32 %.03139.i30, -1             ; 2 uses
  %.not34.i35 = icmp eq i32 %.031.i34, 0
  br i1 %.not34.i35, label %psh_globals_scale_widths.exit36, label %.lr.ph.i29, !llvm.loop !180

psh_globals_scale_widths.exit36:                  ; preds = %.lr.ph.i29, %bb.f, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cb = icmp sgt i64 %2, 34359737
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %psh_globals_scale_widths.exit36
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !188
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = sdiv i64 %i.ce, 125
  %i.cg = icmp slt i64 %2, %i.cf
  br label %bb.j

bb.i:                                             ; preds = %psh_globals_scale_widths.exit36
  %i.ch = mul nsw i64 %2, 125
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !188
  %i.ck = shl nsw i64 %i.cj, 3
  %i.cl = icmp slt i64 %i.ch, %i.ck
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.in.i = phi i1 [ %i.cg, %bb.h ], [ %i.cl, %bb.i ]
  %.sink.i = zext i1 %.sink.in.i to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3948
  store i8 %.sink.i, ptr %i.cm, align 4, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !189 ; 4 uses
  %i.cp = icmp sgt i32 %i.co, 0
  %i.cq = shl i64 %2, 32
  %i.cr = ashr exact i64 %i.cq, 32                ; 20 uses
  br i1 %i.cp, label %.lr.ph.i38.preheader, label %..critedge_crit_edge.i

.lr.ph.i38.preheader:                             ; preds = %bb.j
  %5 = zext nneg i32 %i.co to i64                 ; 6 uses
  %min.iters.check = icmp ult i32 %i.co, 32
  br i1 %min.iters.check, label %.lr.ph.i38.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i38.preheader
  %n.vec = and i64 %5, 2147483632                 ; 2 uses
  %6 = and i64 %5, 15
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <16 x i64> poison, i64 %5, i64 0
  %broadcast.splat70 = shufflevector <16 x i64> %broadcast.splatinsert69, <16 x i64> poison, <16 x i32> zeroinitializer
  %7 = add nsw <16 x i64> %broadcast.splat70, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %7, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.cs = mul nsw <16 x i64> %vec.ind, %broadcast.splat ; 2 uses
  %i.ct = ashr <16 x i64> %i.cs, splat (i64 63)
  %i.cu = add nsw <16 x i64> %i.cs, splat (i64 32768)
  %i.cv = add nsw <16 x i64> %i.cu, %i.ct
  %.fr = freeze <16 x i64> %i.cv
  %i.cw = lshr <16 x i64> %.fr, splat (i64 16)
  %i.cx = trunc <16 x i64> %i.cw to <16 x i32>
  %i.cy = icmp slt <16 x i32> %i.cx, splat (i32 33) ; 2 uses
  %i.cz = bitcast <16 x i1> %i.cy to i16
  %.not68 = icmp eq i16 %i.cz, 0
  br i1 %.not68, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %..critedge_crit_edge.i, label %.lr.ph.i38.preheader71

.lr.ph.i38.preheader71:                           ; preds = %.lr.ph.i38.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %5, %.lr.ph.i38.preheader ], [ %6, %middle.block ]
  br label %.lr.ph.i38

vector.early.exit:                                ; preds = %vector.body
  %i.db = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cy, i1 false)
  %8 = add i64 %index, %i.db
  %9 = sub i64 %5, %8
  br label %.loopexit.split.loop.exit.i

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader71, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.i.ph, %.lr.ph.i38.preheader71 ] ; 4 uses
  %i.dc = mul nsw i64 %indvars.iv.i, %i.cr        ; 2 uses
  %i.dd = ashr i64 %i.dc, 63
  %i.de = add nsw i64 %i.dc, 32768
  %i.df = add nsw i64 %i.de, %i.dd
  %i.dg = lshr i64 %i.df, 16
  %i.dh = trunc i64 %i.dg to i32
  %i.di = icmp sgt i32 %i.dh, 32
  br i1 %i.di, label %bb.k, label %.loopexit.split.loop.exit.i

bb.k:                                             ; preds = %.lr.ph.i38
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.dj = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.dj, label %.lr.ph.i38, label %..critedge_crit_edge.i, !llvm.loop !182

.loopexit.split.loop.exit.i:                      ; preds = %.lr.ph.i38, %vector.early.exit
  %indvars.iv.i.lcssa = phi i64 [ %9, %vector.early.exit ], [ %indvars.iv.i, %.lr.ph.i38 ]
  %10 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.k, %middle.block, %.loopexit.split.loop.exit.i, %bb.j
  %.082.lcssa.i = phi i32 [ %i.co, %bb.j ], [ %10, %.loopexit.split.loop.exit.i ], [ 0, %middle.block ], [ 0, %bb.k ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3940
  store i32 %.082.lcssa.i, ptr %i.dk, align 4, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.do = load i32, ptr %i.ca, align 8, !tbaa !78 ; 3 uses
  %.not9197.i = icmp eq i32 %i.do, 0              ; 2 uses
  br i1 %.not9197.i, label %._crit_edge.i, label %.lr.ph100.preheader.i

.lr.ph100.preheader.i:                            ; preds = %..critedge_crit_edge.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 832
  %invariant.op.i = add i64 %4, 32
  br label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %.lr.ph100.i, %.lr.ph100.preheader.i
  %.08199.i = phi ptr [ %i.fh, %.lr.ph100.i ], [ %i.dp, %.lr.ph100.preheader.i ] ; 9 uses
  %.08598.i = phi i32 [ %i.fg, %.lr.ph100.i ], [ %i.do, %.lr.ph100.preheader.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.08199.i, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !81
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.cr, %i.ds                ; 2 uses
  %i.du = ashr i64 %i.dt, 63
  %i.dv = add nsw i64 %i.dt, 32768
  %i.dw = add nsw i64 %i.dv, %i.du
  %i.dx = shl i64 %i.dw, 16
  %i.dy = ashr i64 %i.dx, 32
  %i.dz = add nsw i64 %i.dy, %4
  %i.ea = getelementptr inbounds nuw i8, ptr %.08199.i, i64 40
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !85
  %i.eb = getelementptr inbounds nuw i8, ptr %.08199.i, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !80
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul nsw i64 %i.cr, %i.ed                ; 2 uses
  %i.ef = ashr i64 %i.ee, 63
  %i.eg = add nsw i64 %i.ee, 32768
  %i.eh = add nsw i64 %i.eg, %i.ef
  %i.ei = shl i64 %i.eh, 16
  %i.ej = ashr i64 %i.ei, 32
  %i.ek = add nsw i64 %i.ej, %4
  %i.el = getelementptr inbounds nuw i8, ptr %.08199.i, i64 32
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !84
  %i.em = load i32, ptr %.08199.i, align 8, !tbaa !49
  %i.en = sext i32 %i.em to i64
  %i.eo = mul nsw i64 %i.cr, %i.en                ; 2 uses
  %i.ep = ashr i64 %i.eo, 63
  %i.eq = add nsw i64 %i.eo, 32768
  %i.er = add nsw i64 %i.eq, %i.ep
  %i.es = shl i64 %i.er, 16
  %i.et = ashr i64 %i.es, 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.08199.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.08199.i, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !93
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul nsw i64 %i.cr, %i.ex                ; 2 uses
  %i.ez = ashr i64 %i.ey, 63
  %i.fa = add nsw i64 %i.ey, 32768
  %i.fb = add nsw i64 %i.fa, %i.ez
  %i.fc = shl i64 %i.fb, 16
  %i.fd = ashr i64 %i.fc, 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.08199.i, i64 24
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !190
  %.reass.i = add i64 %invariant.op.i, %i.et
  %i.ff = and i64 %.reass.i, -64
  store i64 %i.ff, ptr %i.eu, align 8, !tbaa !94
  %i.fg = add i32 %.08598.i, -1                   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.08199.i, i64 48
  %.not91.i = icmp eq i32 %i.fg, 0
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph100.i, !llvm.loop !183

._crit_edge.i:                                    ; preds = %.lr.ph100.i, %..critedge_crit_edge.i
  %i.fi = load i32, ptr %i.dm, align 8, !tbaa !78 ; 3 uses
  %.not9197.1.i = icmp eq i32 %i.fi, 0            ; 2 uses
  br i1 %.not9197.1.i, label %._crit_edge.1.i, label %.lr.ph100.preheader.1.i

.lr.ph100.preheader.1.i:                          ; preds = %._crit_edge.i
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %invariant.op134.i = add i64 %4, 32
  br label %.lr.ph100.1.i

.lr.ph100.1.i:                                    ; preds = %.lr.ph100.1.i, %.lr.ph100.preheader.1.i
  %.08199.1.i = phi ptr [ %i.hb, %.lr.ph100.1.i ], [ %i.fj, %.lr.ph100.preheader.1.i ] ; 9 uses
  %.08598.1.i = phi i32 [ %i.ha, %.lr.ph100.1.i ], [ %i.fi, %.lr.ph100.preheader.1.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !81
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul nsw i64 %i.cr, %i.fm                ; 2 uses
  %i.fo = ashr i64 %i.fn, 63
  %i.fp = add nsw i64 %i.fn, 32768
  %i.fq = add nsw i64 %i.fp, %i.fo
  %i.fr = shl i64 %i.fq, 16
  %i.fs = ashr i64 %i.fr, 32
  %i.ft = add nsw i64 %i.fs, %4
  %i.fu = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 40
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !85
  %i.fv = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !80
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul nsw i64 %i.cr, %i.fx                ; 2 uses
  %i.fz = ashr i64 %i.fy, 63
  %i.ga = add nsw i64 %i.fy, 32768
  %i.gb = add nsw i64 %i.ga, %i.fz
  %i.gc = shl i64 %i.gb, 16
  %i.gd = ashr i64 %i.gc, 32
  %i.ge = add nsw i64 %i.gd, %4
  %i.gf = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 32
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !84
  %i.gg = load i32, ptr %.08199.1.i, align 8, !tbaa !49
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul nsw i64 %i.cr, %i.gh                ; 2 uses
  %i.gj = ashr i64 %i.gi, 63
  %i.gk = add nsw i64 %i.gi, 32768
  %i.gl = add nsw i64 %i.gk, %i.gj
  %i.gm = shl i64 %i.gl, 16
  %i.gn = ashr i64 %i.gm, 32
  %i.go = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !93
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul nsw i64 %i.cr, %i.gr                ; 2 uses
  %i.gt = ashr i64 %i.gs, 63
  %i.gu = add nsw i64 %i.gs, 32768
  %i.gv = add nsw i64 %i.gu, %i.gt
  %i.gw = shl i64 %i.gv, 16
  %i.gx = ashr i64 %i.gw, 32
  %i.gy = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 24
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !190
  %.reass135.i = add i64 %invariant.op134.i, %i.gn
  %i.gz = and i64 %.reass135.i, -64
  store i64 %i.gz, ptr %i.go, align 8, !tbaa !94
  %i.ha = add i32 %.08598.1.i, -1                 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.08199.1.i, i64 48
  %.not91.1.i = icmp eq i32 %i.ha, 0
  br i1 %.not91.1.i, label %._crit_edge.1.i, label %.lr.ph100.1.i, !llvm.loop !183

._crit_edge.1.i:                                  ; preds = %.lr.ph100.1.i, %._crit_edge.i
  %i.hc = load i32, ptr %i.dl, align 8, !tbaa !78 ; 3 uses
  %.not9197.2.i = icmp eq i32 %i.hc, 0            ; 2 uses
  br i1 %.not9197.2.i, label %._crit_edge.2.i, label %.lr.ph100.preheader.2.i

.lr.ph100.preheader.2.i:                          ; preds = %._crit_edge.1.i
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %invariant.op136.i = add i64 %4, 32
  br label %.lr.ph100.2.i

.lr.ph100.2.i:                                    ; preds = %.lr.ph100.2.i, %.lr.ph100.preheader.2.i
  %.08199.2.i = phi ptr [ %i.iv, %.lr.ph100.2.i ], [ %i.hd, %.lr.ph100.preheader.2.i ] ; 9 uses
  %.08598.2.i = phi i32 [ %i.iu, %.lr.ph100.2.i ], [ %i.hc, %.lr.ph100.preheader.2.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !81
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul nsw i64 %i.cr, %i.hg                ; 2 uses
  %i.hi = ashr i64 %i.hh, 63
  %i.hj = add nsw i64 %i.hh, 32768
  %i.hk = add nsw i64 %i.hj, %i.hi
  %i.hl = shl i64 %i.hk, 16
  %i.hm = ashr i64 %i.hl, 32
  %i.hn = add nsw i64 %i.hm, %4
  %i.ho = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 40
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !85
  %i.hp = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !80
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul nsw i64 %i.cr, %i.hr                ; 2 uses
  %i.ht = ashr i64 %i.hs, 63
  %i.hu = add nsw i64 %i.hs, 32768
  %i.hv = add nsw i64 %i.hu, %i.ht
  %i.hw = shl i64 %i.hv, 16
  %i.hx = ashr i64 %i.hw, 32
  %i.hy = add nsw i64 %i.hx, %4
  %i.hz = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 32
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !84
  %i.ia = load i32, ptr %.08199.2.i, align 8, !tbaa !49
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i64 %i.cr, %i.ib                ; 2 uses
  %i.id = ashr i64 %i.ic, 63
  %i.ie = add nsw i64 %i.ic, 32768
  %i.if = add nsw i64 %i.ie, %i.id
  %i.ig = shl i64 %i.if, 16
  %i.ih = ashr i64 %i.ig, 32
  %i.ii = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !93
  %i.il = sext i32 %i.ik to i64
  %i.im = mul nsw i64 %i.cr, %i.il                ; 2 uses
  %i.in = ashr i64 %i.im, 63
  %i.io = add nsw i64 %i.im, 32768
  %i.ip = add nsw i64 %i.io, %i.in
  %i.iq = shl i64 %i.ip, 16
  %i.ir = ashr i64 %i.iq, 32
  %i.is = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 24
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !190
  %.reass137.i = add i64 %invariant.op136.i, %i.ih
  %i.it = and i64 %.reass137.i, -64
  store i64 %i.it, ptr %i.ii, align 8, !tbaa !94
  %i.iu = add i32 %.08598.2.i, -1                 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.08199.2.i, i64 48
  %.not91.2.i = icmp eq i32 %i.iu, 0
  br i1 %.not91.2.i, label %._crit_edge.2.i, label %.lr.ph100.2.i, !llvm.loop !183

._crit_edge.2.i:                                  ; preds = %.lr.ph100.2.i, %._crit_edge.1.i
end_hunk_0
