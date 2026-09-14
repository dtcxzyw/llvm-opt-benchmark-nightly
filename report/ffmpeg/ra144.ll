Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ra144?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 28
begin_hunk_0_@ff_irms:bb.a
  %i.y = add nuw nsw i32 %i.x, 2
  %i.z = lshr i32 %i.r, %i.y                      ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, 8
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = zext nneg i32 %i.z to i64
  %i.ah = zext i8 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ag, %i.ak
  %i.am = lshr i64 %i.al, 32
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = shl i32 %i.af, %i.x
  %i.ap = add i32 %i.ao, %i.an                    ; 3 uses
  %i.aq = mul i32 %i.ap, %i.ap
  %i.ar = icmp ult i32 %i.r, %i.aq
  %.neg.i.i = sext i1 %i.ar to i32
  %i.as = add i32 %i.ap, %.neg.i.i
  br label %ff_t_sqrt.exit

ff_t_sqrt.exit:                                   ; preds = %bb.c, %bb.d
  %.0.lcssa.i9 = phi i32 [ %i.f, %bb.c ], [ %.0.lcssa.i10, %bb.d ]
  %.0.i.i = phi i32 [ %i.q, %bb.c ], [ %i.as, %bb.d ]
  %i.at = shl i32 %.0.i.i, %.0.lcssa.i9
  %i.au = ashr i32 %i.at, 8
  %i.av = sdiv i32 536870912, %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ff_t_sqrt.exit
  %.0 = phi i32 [ %i.av, %ff_t_sqrt.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ff_subblock_synthesis(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 9 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, 19                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 38640 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38340
  %i.f = sub nsw i32 127, %2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = icmp slt i32 %2, 21
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.c, i32 40)
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.d, ptr nonnull readonly align 2 %i.h, i64 %i.l, i1 false)
  br i1 %i.i, label %bb.c, label %ff_copy_and_dup.exit

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.m
  %i.o = shl i32 %i.c, 1
  %i.p = sub i32 80, %i.o
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.n, ptr nonnull readonly align 2 %i.h, i64 %i.q, i1 false)
  br label %ff_copy_and_dup.exit

ff_copy_and_dup.exit:                             ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i32 noundef 40) #9, !inline_history !38 ; 5 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %ff_irms.exit, label %bb.d

bb.d:                                             ; preds = %ff_copy_and_dup.exit
  %i.v = icmp ugt i32 %i.t, 4095
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %bb.d
  %i.w = shl nuw i32 %i.t, 20
  br label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ 2, %bb.d ]
  %.056.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = add nuw nsw i32 %.07.i.i, 1              ; 3 uses
  %i.y = lshr i32 %.056.i.i, 2                    ; 4 uses
  %i.z = icmp ugt i32 %.056.i.i, 16383
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = shl nuw i32 %i.y, 20                    ; 2 uses
  %i.ab = icmp eq i32 %i.y, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = ashr i32 %i.ah, 4
  br label %ff_t_sqrt.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i, %._crit_edge.i.thread.i
  %i.aj = phi i32 [ %i.w, %._crit_edge.i.thread.i ], [ %i.aa, %._crit_edge.i.i ] ; 3 uses
  %.0.lcssa.i10.i = phi i32 [ 2, %._crit_edge.i.thread.i ], [ %i.x, %._crit_edge.i.i ]
  %.05.lcssa.i8.i = phi i32 [ %i.t, %._crit_edge.i.thread.i ], [ %i.y, %._crit_edge.i.i ]
  %.not.i.i.i.i = icmp samesign ult i32 %.05.lcssa.i8.i, 16 ; 2 uses
  %spec.select.i.v.i.i.i = select i1 %.not.i.i.i.i, i32 16, i32 24
  %spec.select.i.i.i.i = lshr i32 %i.aj, %spec.select.i.v.i.i.i
  %spec.select7.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 8
  %i.ak = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %spec.select7.i.i.i.i, %i.an
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  %i.aq = add nuw nsw i32 %i.ap, 2
  %i.ar = lshr i32 %i.aj, %i.aq                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ap, 8
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = zext i8 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw nsw i64 %i.ay, %i.bc
  %i.be = lshr i64 %i.bd, 32
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = shl i32 %i.ax, %i.ap
  %i.bh = add i32 %i.bg, %i.bf                    ; 3 uses
  %i.bi = mul i32 %i.bh, %i.bh
  %i.bj = icmp ult i32 %i.aj, %i.bi
  %.neg.i.i.i = sext i1 %i.bj to i32
  %i.bk = add i32 %i.bh, %.neg.i.i.i
  br label %ff_t_sqrt.exit.i

ff_t_sqrt.exit.i:                                 ; preds = %bb.f, %bb.e
  %.0.lcssa.i9.i = phi i32 [ %i.x, %bb.e ], [ %.0.lcssa.i10.i, %bb.f ]
  %.0.i.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.bk, %bb.f ]
  %i.bl = shl i32 %.0.i.i.i, %.0.lcssa.i9.i
  %i.bm = ashr i32 %i.bl, 8
  %i.bn = sdiv i32 536870912, %i.bm
  %i.bo = mul i32 %i.bn, %5
  %i.bp = lshr i32 %i.bo, 12
  br label %ff_irms.exit

ff_irms.exit:                                     ; preds = %ff_copy_and_dup.exit, %ff_t_sqrt.exit.i
  %.0.i = phi i32 [ %i.bp, %ff_t_sqrt.exit.i ], [ 0, %ff_copy_and_dup.exit ]
  %i.bq = icmp eq i32 %i.c, 0
  %i.br = zext i1 %i.bq to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %ff_irms.exit
  %storemerge = phi i32 [ %.0.i, %ff_irms.exit ], [ 0, %bb.a ]
  %.0 = phi i64 [ %i.br, %ff_irms.exit ], [ 1, %bb.a ] ; 6 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !12
  %i.bs = sext i32 %3 to i64                      ; 3 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr @ff_cb1_base, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !11
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nsw i32 %5, %i.bv
  %i.bx = ashr i32 %i.bw, 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !12
  %i.bz = sext i32 %4 to i64                      ; 3 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr @ff_cb2_base, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !11
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul nsw i32 %5, %i.cc
  %i.ce = ashr i32 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 38340
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 38420
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.cg, ptr noundef nonnull align 4 dereferenceable(212) %i.ch, i64 212, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.ci = sext i32 %6 to i64                      ; 2 uses
  %i.cj = getelementptr inbounds [6 x i8], ptr @ff_gain_val_tab, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr @ff_gain_exp_tab, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %.0
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !11
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12
  %i.cs = mul i32 %i.cr, %i.cp
  %i.ct = lshr i32 %i.cs, %i.cm
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %.0, 1     ; 3 uses
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.next.i
  %8 = load i16, ptr %7, align 2, !tbaa !11
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = mul i32 %11, %9
  %13 = lshr i32 %12, %i.cm
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i32 %13, ptr %14, align 4, !tbaa !12
  %exitcond.not.i = icmp eq i64 %.0, 0
  br i1 %exitcond.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.1 = or disjoint i64 %.0, 2   ; 3 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.next.i.1
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !11
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  %i.da = mul i32 %i.cz, %i.cx
  %i.db = lshr i32 %i.da, %i.cm
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dd = getelementptr i8, ptr %0, i64 38552     ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 38640 ; 3 uses
  %i.df = getelementptr [40 x i8], ptr @ff_cb1_vects, i64 %i.bs ; 16 uses
  %i.dg = getelementptr [40 x i8], ptr @ff_cb2_vects, i64 %i.bz ; 16 uses
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %.not26.i = icmp eq i32 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12 ; 6 uses
  %i.dm = mul nsw i64 %i.bs, 40
  %i.dn = getelementptr i8, ptr @ff_cb1_vects, i64 %i.dm
  %scevgep55 = getelementptr i8, ptr %i.dn, i64 40
  %i.do = mul nsw i64 %i.bz, 40
  %i.dp = getelementptr i8, ptr @ff_cb2_vects, i64 %i.do
  %scevgep56 = getelementptr i8, ptr %i.dp, i64 40
  %bound057 = icmp ult ptr %i.dd, %scevgep55      ; 2 uses
  %bound060 = icmp ult ptr %i.dd, %scevgep56      ; 2 uses
  br i1 %.not26.i, label %vector.memcheck53, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.i
  %scevgep = getelementptr i8, ptr %0, i64 38720  ; 2 uses
  %bound1 = icmp ult ptr %i.df, %scevgep
  %found.conflict = and i1 %bound057, %bound1
  %bound145 = icmp ult ptr %i.dg, %scevgep
  %found.conflict46 = and i1 %bound060, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.preheader27.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert49 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat50 = shufflevector <8 x i32> %broadcast.splatinsert49, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert47 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat48 = shufflevector <8 x i32> %broadcast.splatinsert47, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load = load <8 x i16>, ptr %i.de, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.dq = sext <8 x i16> %wide.load to <8 x i32>
  %i.dr = mul <8 x i32> %broadcast.splat, %i.dq
  %wide.load51 = load <8 x i8>, ptr %i.df, align 8, !tbaa !14, !alias.scope !41
  %i.ds = sext <8 x i8> %wide.load51 to <8 x i32>
  %i.dt = mul nsw <8 x i32> %broadcast.splat48, %i.ds
  %i.du = add <8 x i32> %i.dt, %i.dr
  %wide.load52 = load <8 x i8>, ptr %i.dg, align 8, !tbaa !14, !alias.scope !42
  %i.dv = sext <8 x i8> %wide.load52 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %broadcast.splat50, %i.dv
  %i.dx = add <8 x i32> %i.du, %i.dw
  %i.dy = lshr <8 x i32> %i.dx, splat (i32 12)
  %i.dz = trunc <8 x i32> %i.dy to <8 x i16>
  store <8 x i16> %i.dz, ptr %i.dd, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 38656
  %wide.load.1 = load <8 x i16>, ptr %i.ea, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.eb = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.ec = mul <8 x i32> %broadcast.splat, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %wide.load51.1 = load <8 x i8>, ptr %i.ed, align 8, !tbaa !14, !alias.scope !41
  %i.ee = sext <8 x i8> %wide.load51.1 to <8 x i32>
  %i.ef = mul nsw <8 x i32> %broadcast.splat48, %i.ee
  %i.eg = add <8 x i32> %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %wide.load52.1 = load <8 x i8>, ptr %i.eh, align 8, !tbaa !14, !alias.scope !42
  %i.ei = sext <8 x i8> %wide.load52.1 to <8 x i32>
  %i.ej = mul nsw <8 x i32> %broadcast.splat50, %i.ei
  %i.ek = add <8 x i32> %i.eg, %i.ej
  %i.el = lshr <8 x i32> %i.ek, splat (i32 12)
  %i.em = trunc <8 x i32> %i.el to <8 x i16>
  %i.en = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.em, ptr %i.en, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 38672
  %wide.load.2 = load <8 x i16>, ptr %i.eo, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ep = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.eq = mul <8 x i32> %broadcast.splat, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load51.2 = load <8 x i8>, ptr %i.er, align 8, !tbaa !14, !alias.scope !41
  %i.es = sext <8 x i8> %wide.load51.2 to <8 x i32>
  %i.et = mul nsw <8 x i32> %broadcast.splat48, %i.es
  %i.eu = add <8 x i32> %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load52.2 = load <8 x i8>, ptr %i.ev, align 8, !tbaa !14, !alias.scope !42
  %i.ew = sext <8 x i8> %wide.load52.2 to <8 x i32>
  %i.ex = mul nsw <8 x i32> %broadcast.splat50, %i.ew
  %i.ey = add <8 x i32> %i.eu, %i.ex
  %i.ez = lshr <8 x i32> %i.ey, splat (i32 12)
  %i.fa = trunc <8 x i32> %i.ez to <8 x i16>
  %i.fb = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.fa, ptr %i.fb, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 38688
  %wide.load.3 = load <8 x i16>, ptr %i.fc, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fd = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.fe = mul <8 x i32> %broadcast.splat, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %wide.load51.3 = load <8 x i8>, ptr %i.ff, align 8, !tbaa !14, !alias.scope !41
  %i.fg = sext <8 x i8> %wide.load51.3 to <8 x i32>
  %i.fh = mul nsw <8 x i32> %broadcast.splat48, %i.fg
  %i.fi = add <8 x i32> %i.fh, %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %wide.load52.3 = load <8 x i8>, ptr %i.fj, align 8, !tbaa !14, !alias.scope !42
  %i.fk = sext <8 x i8> %wide.load52.3 to <8 x i32>
  %i.fl = mul nsw <8 x i32> %broadcast.splat50, %i.fk
  %i.fm = add <8 x i32> %i.fi, %i.fl
  %i.fn = lshr <8 x i32> %i.fm, splat (i32 12)
  %i.fo = trunc <8 x i32> %i.fn to <8 x i16>
  %i.fp = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.fo, ptr %i.fp, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 38704
  %wide.load.4 = load <8 x i16>, ptr %i.fq, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fr = sext <8 x i16> %wide.load.4 to <8 x i32>
  %i.fs = mul <8 x i32> %broadcast.splat, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %wide.load51.4 = load <8 x i8>, ptr %i.ft, align 8, !tbaa !14, !alias.scope !41
  %i.fu = sext <8 x i8> %wide.load51.4 to <8 x i32>
  %i.fv = mul nsw <8 x i32> %broadcast.splat48, %i.fu
  %i.fw = add <8 x i32> %i.fv, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %wide.load52.4 = load <8 x i8>, ptr %i.fx, align 8, !tbaa !14, !alias.scope !42
  %i.fy = sext <8 x i8> %wide.load52.4 to <8 x i32>
  %i.fz = mul nsw <8 x i32> %broadcast.splat50, %i.fy
  %i.ga = add <8 x i32> %i.fw, %i.fz
  %i.gb = lshr <8 x i32> %i.ga, splat (i32 12)
  %i.gc = trunc <8 x i32> %i.gb to <8 x i16>
  %i.gd = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.gc, ptr %i.gd, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  br label %add_wav.exit

vector.memcheck53:                                ; preds = %bb.i
  %scevgep54 = getelementptr i8, ptr %0, i64 38632 ; 2 uses
  %bound158 = icmp ult ptr %i.df, %scevgep54
  %found.conflict59 = and i1 %bound057, %bound158
  %bound161 = icmp ult ptr %i.dg, %scevgep54
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %found.conflict59, %found.conflict62
  br i1 %conflict.rdx63, label %.preheader.i, label %vector.body70

vector.body70:                                    ; preds = %vector.memcheck53
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert66 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load72 = load <8 x i8>, ptr %i.df, align 8, !tbaa !14, !alias.scope !43
  %i.ge = sext <8 x i8> %wide.load72 to <8 x i32>
  %i.gf = mul nsw <8 x i32> %broadcast.splat67, %i.ge
  %wide.load73 = load <8 x i8>, ptr %i.dg, align 8, !tbaa !14, !alias.scope !44
  %i.gg = sext <8 x i8> %wide.load73 to <8 x i32>
  %i.gh = mul nsw <8 x i32> %broadcast.splat69, %i.gg
  %i.gi = add nsw <8 x i32> %i.gh, %i.gf
  %i.gj = lshr <8 x i32> %i.gi, splat (i32 12)
  %i.gk = trunc <8 x i32> %i.gj to <8 x i16>
  store <8 x i16> %i.gk, ptr %i.dd, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.gl = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %wide.load72.1 = load <8 x i8>, ptr %i.gl, align 8, !tbaa !14, !alias.scope !43
  %i.gm = sext <8 x i8> %wide.load72.1 to <8 x i32>
  %i.gn = mul nsw <8 x i32> %broadcast.splat67, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %wide.load73.1 = load <8 x i8>, ptr %i.go, align 8, !tbaa !14, !alias.scope !44
  %i.gp = sext <8 x i8> %wide.load73.1 to <8 x i32>
  %i.gq = mul nsw <8 x i32> %broadcast.splat69, %i.gp
  %i.gr = add nsw <8 x i32> %i.gq, %i.gn
  %i.gs = lshr <8 x i32> %i.gr, splat (i32 12)
  %i.gt = trunc <8 x i32> %i.gs to <8 x i16>
  %i.gu = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.gt, ptr %i.gu, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.gv = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load72.2 = load <8 x i8>, ptr %i.gv, align 8, !tbaa !14, !alias.scope !43
  %i.gw = sext <8 x i8> %wide.load72.2 to <8 x i32>
  %i.gx = mul nsw <8 x i32> %broadcast.splat67, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load73.2 = load <8 x i8>, ptr %i.gy, align 8, !tbaa !14, !alias.scope !44
  %i.gz = sext <8 x i8> %wide.load73.2 to <8 x i32>
  %i.ha = mul nsw <8 x i32> %broadcast.splat69, %i.gz
  %i.hb = add nsw <8 x i32> %i.ha, %i.gx
  %i.hc = lshr <8 x i32> %i.hb, splat (i32 12)
  %i.hd = trunc <8 x i32> %i.hc to <8 x i16>
  %i.he = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.hd, ptr %i.he, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %wide.load72.3 = load <8 x i8>, ptr %i.hf, align 8, !tbaa !14, !alias.scope !43
  %i.hg = sext <8 x i8> %wide.load72.3 to <8 x i32>
  %i.hh = mul nsw <8 x i32> %broadcast.splat67, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %wide.load73.3 = load <8 x i8>, ptr %i.hi, align 8, !tbaa !14, !alias.scope !44
  %i.hj = sext <8 x i8> %wide.load73.3 to <8 x i32>
  %i.hk = mul nsw <8 x i32> %broadcast.splat69, %i.hj
  %i.hl = add nsw <8 x i32> %i.hk, %i.hh
  %i.hm = lshr <8 x i32> %i.hl, splat (i32 12)
  %i.hn = trunc <8 x i32> %i.hm to <8 x i16>
  %i.ho = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.hn, ptr %i.ho, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hp = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %wide.load72.4 = load <8 x i8>, ptr %i.hp, align 8, !tbaa !14, !alias.scope !43
  %i.hq = sext <8 x i8> %wide.load72.4 to <8 x i32>
  %i.hr = mul nsw <8 x i32> %broadcast.splat67, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %wide.load73.4 = load <8 x i8>, ptr %i.hs, align 8, !tbaa !14, !alias.scope !44
  %i.ht = sext <8 x i8> %wide.load73.4 to <8 x i32>
  %i.hu = mul nsw <8 x i32> %broadcast.splat69, %i.ht
  %i.hv = add nsw <8 x i32> %i.hu, %i.hr
  %i.hw = lshr <8 x i32> %i.hv, splat (i32 12)
  %i.hx = trunc <8 x i32> %i.hw to <8 x i16>
  %i.hy = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.hx, ptr %i.hy, align 4, !tbaa !11, !alias.scope !45, !noalias !46
end_hunk_0
