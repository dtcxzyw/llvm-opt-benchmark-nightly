Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ra144?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 28
begin_hunk_0_@ff_subblock_synthesis:bb.a
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
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = tail call i32 @llvm.umulh.i32(i32 %i.ar, i32 %i.ba)
  %i.bc = shl i32 %i.ax, %i.ap
  %i.bd = add i32 %i.bb, %i.bc                    ; 3 uses
  %i.be = mul i32 %i.bd, %i.bd
  %i.bf = icmp ult i32 %i.aj, %i.be
  %.neg.i.i.i = sext i1 %i.bf to i32
  %i.bg = add i32 %i.bd, %.neg.i.i.i
  br label %ff_t_sqrt.exit.i

ff_t_sqrt.exit.i:                                 ; preds = %bb.f, %bb.e
  %.0.lcssa.i9.i = phi i32 [ %i.x, %bb.e ], [ %.0.lcssa.i10.i, %bb.f ]
  %.0.i.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.bg, %bb.f ]
  %i.bh = shl i32 %.0.i.i.i, %.0.lcssa.i9.i
  %i.bi = ashr i32 %i.bh, 8
  %i.bj = sdiv i32 536870912, %i.bi
  %i.bk = mul i32 %i.bj, %5
  %i.bl = lshr i32 %i.bk, 12
  br label %ff_irms.exit

ff_irms.exit:                                     ; preds = %ff_copy_and_dup.exit, %ff_t_sqrt.exit.i
  %.0.i = phi i32 [ %i.bl, %ff_t_sqrt.exit.i ], [ 0, %ff_copy_and_dup.exit ]
  %i.bm = icmp eq i32 %i.c, 0
  %i.bn = zext i1 %i.bm to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %ff_irms.exit
  %storemerge = phi i32 [ %.0.i, %ff_irms.exit ], [ 0, %bb.a ]
  %.0 = phi i64 [ %i.bn, %ff_irms.exit ], [ 1, %bb.a ] ; 6 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !12
  %i.bo = sext i32 %3 to i64                      ; 3 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr @ff_cb1_base, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !11
  %i.br = zext i16 %i.bq to i32
  %i.bs = mul nsw i32 %5, %i.br
  %i.bt = ashr i32 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !12
  %i.bv = sext i32 %4 to i64                      ; 3 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @ff_cb2_base, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !11
  %i.by = zext i16 %i.bx to i32
  %i.bz = mul nsw i32 %5, %i.by
  %i.ca = ashr i32 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 38340
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 38420
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.cc, ptr noundef nonnull align 4 dereferenceable(212) %i.cd, i64 212, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.ce = sext i32 %6 to i64                      ; 2 uses
  %i.cf = getelementptr inbounds [6 x i8], ptr @ff_gain_val_tab, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr @ff_gain_exp_tab, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext nneg i8 %i.ch to i32               ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %.0
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !11
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %i.co = mul i32 %i.cn, %i.cl
  %i.cp = lshr i32 %i.co, %i.ci
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %.0, 1     ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !11
  %i.ct = sext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = mul i32 %i.cv, %i.ct
  %i.cx = lshr i32 %i.cw, %i.ci
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !12
  %exitcond.not.i.1.not = icmp eq i64 %.0, 0
  br i1 %exitcond.not.i.1.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.1 = or disjoint i64 %.0, 2   ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.next.i.1
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !11
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.de = mul i32 %i.dd, %i.db
  %i.df = lshr i32 %i.de, %i.ci
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.dh = getelementptr i8, ptr %0, i64 38552     ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 38640 ; 3 uses
  %i.dj = getelementptr [40 x i8], ptr @ff_cb1_vects, i64 %i.bo ; 16 uses
  %i.dk = getelementptr [40 x i8], ptr @ff_cb2_vects, i64 %i.bv ; 16 uses
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %.not26.i = icmp eq i32 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !12 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !12 ; 6 uses
  %i.dq = mul nsw i64 %i.bo, 40
  %i.dr = getelementptr i8, ptr @ff_cb1_vects, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 40
  %i.dt = mul nsw i64 %i.bv, 40
  %i.du = getelementptr i8, ptr @ff_cb2_vects, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 40
  %bound068 = icmp ult ptr %i.dh, %i.ds           ; 2 uses
  %bound071 = icmp ult ptr %i.dh, %i.dv           ; 2 uses
  br i1 %.not26.i, label %vector.memcheck67, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %i.dw = getelementptr i8, ptr %0, i64 38720     ; 2 uses
  %bound1 = icmp ult ptr %i.dj, %i.dw
  %found.conflict = and i1 %bound068, %bound1
  %bound148 = icmp ult ptr %i.dk, %i.dw
  %found.conflict49 = and i1 %bound071, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  br i1 %conflict.rdx, label %.preheader27.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert52 = insertelement <8 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat53 = shufflevector <8 x i32> %broadcast.splatinsert52, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert50 = insertelement <8 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat51 = shufflevector <8 x i32> %broadcast.splatinsert50, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load = load <8 x i16>, ptr %i.di, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.dx = sext <8 x i16> %wide.load to <8 x i32>
  %i.dy = mul <8 x i32> %broadcast.splat, %i.dx
  %wide.load54 = load <8 x i8>, ptr %i.dj, align 8, !tbaa !14, !alias.scope !41
  %i.dz = sext <8 x i8> %wide.load54 to <8 x i32>
  %i.ea = mul nsw <8 x i32> %broadcast.splat51, %i.dz
  %i.eb = add <8 x i32> %i.ea, %i.dy
  %wide.load55 = load <8 x i8>, ptr %i.dk, align 8, !tbaa !14, !alias.scope !42
  %i.ec = sext <8 x i8> %wide.load55 to <8 x i32>
  %i.ed = mul nsw <8 x i32> %broadcast.splat53, %i.ec
  %i.ee = add <8 x i32> %i.eb, %i.ed
  %i.ef = lshr <8 x i32> %i.ee, splat (i32 12)
  %i.eg = trunc <8 x i32> %i.ef to <8 x i16>
  store <8 x i16> %i.eg, ptr %i.dh, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 38656
  %wide.load.1 = load <8 x i16>, ptr %i.eh, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ei = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.ej = mul <8 x i32> %broadcast.splat, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %wide.load54.1 = load <8 x i8>, ptr %i.ek, align 8, !tbaa !14, !alias.scope !41
  %i.el = sext <8 x i8> %wide.load54.1 to <8 x i32>
  %i.em = mul nsw <8 x i32> %broadcast.splat51, %i.el
  %i.en = add <8 x i32> %i.em, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.load55.1 = load <8 x i8>, ptr %i.eo, align 8, !tbaa !14, !alias.scope !42
  %i.ep = sext <8 x i8> %wide.load55.1 to <8 x i32>
  %i.eq = mul nsw <8 x i32> %broadcast.splat53, %i.ep
  %i.er = add <8 x i32> %i.en, %i.eq
  %i.es = lshr <8 x i32> %i.er, splat (i32 12)
  %i.et = trunc <8 x i32> %i.es to <8 x i16>
  %i.eu = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.et, ptr %i.eu, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 38672
  %wide.load.2 = load <8 x i16>, ptr %i.ev, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ew = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.ex = mul <8 x i32> %broadcast.splat, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load54.2 = load <8 x i8>, ptr %i.ey, align 8, !tbaa !14, !alias.scope !41
  %i.ez = sext <8 x i8> %wide.load54.2 to <8 x i32>
  %i.fa = mul nsw <8 x i32> %broadcast.splat51, %i.ez
  %i.fb = add <8 x i32> %i.fa, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load55.2 = load <8 x i8>, ptr %i.fc, align 8, !tbaa !14, !alias.scope !42
  %i.fd = sext <8 x i8> %wide.load55.2 to <8 x i32>
  %i.fe = mul nsw <8 x i32> %broadcast.splat53, %i.fd
  %i.ff = add <8 x i32> %i.fb, %i.fe
  %i.fg = lshr <8 x i32> %i.ff, splat (i32 12)
  %i.fh = trunc <8 x i32> %i.fg to <8 x i16>
  %i.fi = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.fh, ptr %i.fi, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 38688
  %wide.load.3 = load <8 x i16>, ptr %i.fj, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fk = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.fl = mul <8 x i32> %broadcast.splat, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %wide.load54.3 = load <8 x i8>, ptr %i.fm, align 8, !tbaa !14, !alias.scope !41
  %i.fn = sext <8 x i8> %wide.load54.3 to <8 x i32>
  %i.fo = mul nsw <8 x i32> %broadcast.splat51, %i.fn
  %i.fp = add <8 x i32> %i.fo, %i.fl
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %wide.load55.3 = load <8 x i8>, ptr %i.fq, align 8, !tbaa !14, !alias.scope !42
  %i.fr = sext <8 x i8> %wide.load55.3 to <8 x i32>
  %i.fs = mul nsw <8 x i32> %broadcast.splat53, %i.fr
  %i.ft = add <8 x i32> %i.fp, %i.fs
  %i.fu = lshr <8 x i32> %i.ft, splat (i32 12)
  %i.fv = trunc <8 x i32> %i.fu to <8 x i16>
  %i.fw = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.fv, ptr %i.fw, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 38704
  %wide.load.4 = load <8 x i16>, ptr %i.fx, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fy = sext <8 x i16> %wide.load.4 to <8 x i32>
  %i.fz = mul <8 x i32> %broadcast.splat, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %wide.load54.4 = load <8 x i8>, ptr %i.ga, align 8, !tbaa !14, !alias.scope !41
  %i.gb = sext <8 x i8> %wide.load54.4 to <8 x i32>
  %i.gc = mul nsw <8 x i32> %broadcast.splat51, %i.gb
  %i.gd = add <8 x i32> %i.gc, %i.fz
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %wide.load55.4 = load <8 x i8>, ptr %i.ge, align 8, !tbaa !14, !alias.scope !42
  %i.gf = sext <8 x i8> %wide.load55.4 to <8 x i32>
  %i.gg = mul nsw <8 x i32> %broadcast.splat53, %i.gf
  %i.gh = add <8 x i32> %i.gd, %i.gg
  %i.gi = lshr <8 x i32> %i.gh, splat (i32 12)
  %i.gj = trunc <8 x i32> %i.gi to <8 x i16>
  %i.gk = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.gj, ptr %i.gk, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  br label %add_wav.exit

vector.memcheck67:                                ; preds = %bb.j
  %i.gl = getelementptr i8, ptr %0, i64 38632     ; 2 uses
  %bound169 = icmp ult ptr %i.dj, %i.gl
  %found.conflict70 = and i1 %bound068, %bound169
  %bound172 = icmp ult ptr %i.dk, %i.gl
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %found.conflict70, %found.conflict73
  br i1 %conflict.rdx74, label %.preheader.i, label %vector.body80

vector.body80:                                    ; preds = %vector.memcheck67
  %broadcast.splatinsert78 = insertelement <8 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat79 = shufflevector <8 x i32> %broadcast.splatinsert78, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert76 = insertelement <8 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat77 = shufflevector <8 x i32> %broadcast.splatinsert76, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load82 = load <8 x i8>, ptr %i.dj, align 8, !tbaa !14, !alias.scope !43
  %i.gm = sext <8 x i8> %wide.load82 to <8 x i32>
  %i.gn = mul nsw <8 x i32> %broadcast.splat77, %i.gm
  %wide.load83 = load <8 x i8>, ptr %i.dk, align 8, !tbaa !14, !alias.scope !44
  %i.go = sext <8 x i8> %wide.load83 to <8 x i32>
  %i.gp = mul nsw <8 x i32> %broadcast.splat79, %i.go
  %i.gq = add nsw <8 x i32> %i.gp, %i.gn
  %i.gr = lshr <8 x i32> %i.gq, splat (i32 12)
  %i.gs = trunc <8 x i32> %i.gr to <8 x i16>
  store <8 x i16> %i.gs, ptr %i.dh, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %wide.load82.1 = load <8 x i8>, ptr %i.gt, align 8, !tbaa !14, !alias.scope !43
  %i.gu = sext <8 x i8> %wide.load82.1 to <8 x i32>
  %i.gv = mul nsw <8 x i32> %broadcast.splat77, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.load83.1 = load <8 x i8>, ptr %i.gw, align 8, !tbaa !14, !alias.scope !44
  %i.gx = sext <8 x i8> %wide.load83.1 to <8 x i32>
  %i.gy = mul nsw <8 x i32> %broadcast.splat79, %i.gx
  %i.gz = add nsw <8 x i32> %i.gy, %i.gv
  %i.ha = lshr <8 x i32> %i.gz, splat (i32 12)
  %i.hb = trunc <8 x i32> %i.ha to <8 x i16>
  %i.hc = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.hb, ptr %i.hc, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load82.2 = load <8 x i8>, ptr %i.hd, align 8, !tbaa !14, !alias.scope !43
  %i.he = sext <8 x i8> %wide.load82.2 to <8 x i32>
  %i.hf = mul nsw <8 x i32> %broadcast.splat77, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load83.2 = load <8 x i8>, ptr %i.hg, align 8, !tbaa !14, !alias.scope !44
  %i.hh = sext <8 x i8> %wide.load83.2 to <8 x i32>
  %i.hi = mul nsw <8 x i32> %broadcast.splat79, %i.hh
  %i.hj = add nsw <8 x i32> %i.hi, %i.hf
  %i.hk = lshr <8 x i32> %i.hj, splat (i32 12)
  %i.hl = trunc <8 x i32> %i.hk to <8 x i16>
  %i.hm = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.hl, ptr %i.hm, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %wide.load82.3 = load <8 x i8>, ptr %i.hn, align 8, !tbaa !14, !alias.scope !43
  %i.ho = sext <8 x i8> %wide.load82.3 to <8 x i32>
  %i.hp = mul nsw <8 x i32> %broadcast.splat77, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %wide.load83.3 = load <8 x i8>, ptr %i.hq, align 8, !tbaa !14, !alias.scope !44
  %i.hr = sext <8 x i8> %wide.load83.3 to <8 x i32>
  %i.hs = mul nsw <8 x i32> %broadcast.splat79, %i.hr
  %i.ht = add nsw <8 x i32> %i.hs, %i.hp
  %i.hu = lshr <8 x i32> %i.ht, splat (i32 12)
  %i.hv = trunc <8 x i32> %i.hu to <8 x i16>
  %i.hw = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.hv, ptr %i.hw, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %wide.load82.4 = load <8 x i8>, ptr %i.hx, align 8, !tbaa !14, !alias.scope !43
  %i.hy = sext <8 x i8> %wide.load82.4 to <8 x i32>
  %i.hz = mul nsw <8 x i32> %broadcast.splat77, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %wide.load83.4 = load <8 x i8>, ptr %i.ia, align 8, !tbaa !14, !alias.scope !44
  %i.ib = sext <8 x i8> %wide.load83.4 to <8 x i32>
  %i.ic = mul nsw <8 x i32> %broadcast.splat79, %i.ib
  %i.id = add nsw <8 x i32> %i.ic, %i.hz
  %i.ie = lshr <8 x i32> %i.id, splat (i32 12)
  %i.if = trunc <8 x i32> %i.ie to <8 x i16>
  %i.ig = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.if, ptr %i.ig, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  br label %add_wav.exit

.preheader27.i:                                   ; preds = %vector.memcheck, %.preheader27.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.1, %.preheader27.i ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv34.i
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !11
  %i.ij = sext i16 %i.ii to i32
  %i.ik = mul i32 %i.dl, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv34.i
  %i.im = load i8, ptr %i.il, align 2, !tbaa !14
  %i.in = sext i8 %i.im to i32
  %i.io = mul nsw i32 %i.dn, %i.in
  %i.ip = add i32 %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv34.i
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !14
  %i.is = sext i8 %i.ir to i32
  %i.it = mul nsw i32 %i.dp, %i.is
end_hunk_0
