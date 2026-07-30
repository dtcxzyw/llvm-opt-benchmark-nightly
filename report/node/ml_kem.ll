inline.NumInlined: 100
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@genkey:bb.a
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.067 = phi i8 [ 0, %bb.c ], [ %i.z, %bb.e ]    ; 2 uses
  %.09.i = phi i32 [ %i.n, %bb.c ], [ %i.ab, %bb.e ] ; 2 uses
  %.08.i = phi ptr [ %i.w, %bb.c ], [ %i.aa, %bb.e ] ; 3 uses
  store i8 %.067, ptr %i.x, align 16, !tbaa !45
  %i.y = call i32 %i.l(ptr noundef %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !50, !inline_history !51
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.e

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.z = add i8 %.067, 1                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i)
  %i.ab = add nsw i32 %.09.i, -1
  %i.ac = icmp sgt i32 %.09.i, 1
  br i1 %i.ac, label %bb.d, label %bb.f, !llvm.loop !52

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.1 = phi i8 [ %i.z, %bb.f ], [ %i.ah, %bb.h ]  ; 2 uses
  %.09.i57 = phi i32 [ %i.n, %bb.f ], [ %i.aj, %bb.h ] ; 2 uses
  %.08.i58 = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  store i8 %.1, ptr %i.af, align 16, !tbaa !45
  %i.ag = call i32 %i.l(ptr noundef %.08.i58, ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !50, !inline_history !51
  %.not.i59 = icmp eq i32 %i.ag, 0
  br i1 %.not.i59, label %gencbd_vector_ntt.exit61.thread, label %bb.h

gencbd_vector_ntt.exit61.thread:                  ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.ah = add i8 %.1, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i58, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i58)
  %i.aj = add nsw i32 %.09.i57, -1
  %i.ak = icmp sgt i32 %.09.i57, 1
  br i1 %i.ak, label %bb.g, label %bb.i, !llvm.loop !52

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 9 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !17  ; 7 uses
  %i.an = icmp sgt i32 %i.n, 0
  br i1 %i.an, label %.lr.ph36.i, label %matrix_mult_transpose_add.exit

.lr.ph36.i:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 5 uses
  %.not.i62 = icmp eq i32 %i.n, 1
  %i.aq = zext nneg i32 %i.n to i64               ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %i.ar = sub nsw i32 %i.n, %smin
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 9                ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 512
  %i.av = mul i64 %i.au, %i.aq
  %scevgep82 = getelementptr i8, ptr %i.am, i64 512
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep83 = getelementptr i8, ptr %i.aw, i64 1024
  %i.ax = add nsw i32 %i.n, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 512              ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.al, i64 %i.ba ; 3 uses
  %scevgep102 = getelementptr i8, ptr %i.ap, i64 %i.ba
  %scevgep103 = getelementptr i8, ptr %i.am, i64 512
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.bc = getelementptr i8, ptr %i.bb, i64 512
  %bound0104 = icmp ult ptr %i.al, %scevgep102
  %bound1105 = icmp ult ptr %i.ap, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %i.al, %scevgep103
  %bound1108 = icmp ult ptr %i.am, %scevgep101
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  %bound0111 = icmp ult ptr %i.al, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1112 = icmp ugt ptr %scevgep101, @kModRoots
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br label %vector.memcheck100

vector.memcheck100:                               ; preds = %scalar_mult_add.exit._crit_edge.i, %.lr.ph36.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult_add.exit._crit_edge.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %.in.i = phi i32 [ %i.ey, %scalar_mult_add.exit._crit_edge.i ], [ %i.n, %.lr.ph36.i ] ; 2 uses
  %.01535.i = phi ptr [ %i.ez, %scalar_mult_add.exit._crit_edge.i ], [ %i.ap, %.lr.ph36.i ] ; 4 uses
  %.01634.i = phi ptr [ %i.iv, %scalar_mult_add.exit._crit_edge.i ], [ %i.al, %.lr.ph36.i ] ; 8 uses
  %i.bd = shl nuw nsw i64 %indvar, 9              ; 2 uses
  %i.be = getelementptr i8, ptr %i.al, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 512 ; 3 uses
  %i.bf = add i64 %indvar, %i.aq
  %i.bg = shl i64 %i.bf, 9
  %scevgep80 = getelementptr i8, ptr %i.ap, i64 %i.bg
  %scevgep81 = getelementptr i8, ptr %i.bc, i64 %i.bd
  br i1 %conflict.rdx114, label %scalar.ph115, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck100, %vector.body117
  %index118 = phi i64 [ %index.next133, %vector.body117 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %i.bh = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr @kModRoots, i64 %i.bh
  %i.bi = shl i64 %index118, 2                    ; 3 uses
  %next.gep120 = getelementptr i8, ptr %i.am, i64 %i.bi
  %next.gep121 = getelementptr i8, ptr %.01535.i, i64 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.bi ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %next.gep121, align 2, !tbaa !39, !alias.scope !53
  %i.bk = freeze <8 x i16> %wide.vec122           ; 2 uses
  %i.bl = bitcast <8 x i16> %i.bk to <4 x i32>
  %i.bm = bitcast <8 x i16> %i.bk to <4 x i32>
  %i.bn = and <4 x i32> %i.bm, splat (i32 65535)  ; 2 uses
  %i.bo = lshr <4 x i32> %i.bl, splat (i32 16)    ; 2 uses
  %wide.vec125 = load <8 x i16>, ptr %next.gep120, align 2, !tbaa !39, !alias.scope !56
  %i.bp = freeze <8 x i16> %wide.vec125           ; 2 uses
  %i.bq = bitcast <8 x i16> %i.bp to <4 x i32>
  %i.br = bitcast <8 x i16> %i.bp to <4 x i32>
  %i.bs = and <4 x i32> %i.br, splat (i32 65535)  ; 2 uses
  %i.bt = lshr <4 x i32> %i.bq, splat (i32 16)    ; 2 uses
  %wide.load128 = load <4 x i16>, ptr %next.gep119, align 8, !tbaa !39, !alias.scope !58
  %i.bu = zext <4 x i16> %wide.load128 to <4 x i32>
  %wide.vec129 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !39, !alias.scope !60, !noalias !62
  %i.bv = freeze <8 x i16> %wide.vec129           ; 2 uses
  %i.bw = bitcast <8 x i16> %i.bv to <4 x i32>
  %i.bx = bitcast <8 x i16> %i.bv to <4 x i32>
  %i.by = and <4 x i32> %i.bx, splat (i32 65535)
  %i.bz = lshr <4 x i32> %i.bw, splat (i32 16)
  %i.ca = mul nuw <4 x i32> %i.bs, %i.bn
  %i.cb = add nuw <4 x i32> %i.ca, %i.by
  %i.cc = mul nuw <4 x i32> %i.bt, %i.bo          ; 2 uses
  %i.cd = zext <4 x i32> %i.cc to <4 x i64>
  %i.ce = mul nuw nsw <4 x i64> %i.cd, splat (i64 5039)
  %i.cf = lshr <4 x i64> %i.ce, splat (i64 24)
  %i.cg = trunc nuw nsw <4 x i64> %i.cf to <4 x i32>
  %i.ch = mul <4 x i32> %i.cg, splat (i32 62207)
  %i.ci = add <4 x i32> %i.ch, %i.cc
  %i.cj = trunc <4 x i32> %i.ci to <4 x i16>      ; 2 uses
  %i.ck = add <4 x i16> %i.cj, splat (i16 -3329)  ; 2 uses
  %i.cl = icmp slt <4 x i16> %i.ck, zeroinitializer
  %i.cm = select <4 x i1> %i.cl, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %i.cn = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ck, <4 x i16> zeroinitializer)
  %i.co = or <4 x i16> %i.cm, %i.cn
  %i.cp = zext <4 x i16> %i.co to <4 x i32>
  %i.cq = mul nuw <4 x i32> %i.cp, %i.bu
  %i.cr = add <4 x i32> %i.cb, %i.cq              ; 2 uses
  %i.cs = zext <4 x i32> %i.cr to <4 x i64>
  %i.ct = mul nuw nsw <4 x i64> %i.cs, splat (i64 5039)
  %i.cu = lshr <4 x i64> %i.ct, splat (i64 24)
  %i.cv = trunc nuw nsw <4 x i64> %i.cu to <4 x i32>
  %i.cw = mul <4 x i32> %i.cv, splat (i32 62207)
  %i.cx = add <4 x i32> %i.cw, %i.cr
  %i.cy = trunc <4 x i32> %i.cx to <4 x i16>      ; 2 uses
  %i.cz = add <4 x i16> %i.cy, splat (i16 -3329)  ; 2 uses
  %i.da = icmp slt <4 x i16> %i.cz, zeroinitializer
  %i.db = select <4 x i1> %i.da, <4 x i16> %i.cy, <4 x i16> zeroinitializer
  %i.dc = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cz, <4 x i16> zeroinitializer)
  %i.dd = or <4 x i16> %i.db, %i.dc
  %i.de = mul nuw <4 x i32> %i.bt, %i.bn
  %i.df = mul nuw <4 x i32> %i.bo, %i.bs
  %i.dg = add <4 x i32> %i.de, %i.df
  %i.dh = add <4 x i32> %i.dg, %i.bz              ; 2 uses
  %i.di = zext <4 x i32> %i.dh to <4 x i64>
  %i.dj = mul nuw nsw <4 x i64> %i.di, splat (i64 5039)
  %i.dk = lshr <4 x i64> %i.dj, splat (i64 24)
  %i.dl = trunc nuw nsw <4 x i64> %i.dk to <4 x i32>
  %i.dm = mul <4 x i32> %i.dl, splat (i32 62207)
  %i.dn = add <4 x i32> %i.dm, %i.dh
  %i.do = trunc <4 x i32> %i.dn to <4 x i16>      ; 2 uses
  %i.dp = add <4 x i16> %i.do, splat (i16 -3329)  ; 2 uses
  %i.dq = icmp slt <4 x i16> %i.dp, zeroinitializer
  %i.dr = select <4 x i1> %i.dq, <4 x i16> %i.do, <4 x i16> zeroinitializer
  %i.ds = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.dp, <4 x i16> zeroinitializer)
  %i.dt = or <4 x i16> %i.dr, %i.ds
  %interleaved.vec132 = shufflevector <4 x i16> %i.dd, <4 x i16> %i.dt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec132, ptr %i.bj, align 2, !tbaa !39, !alias.scope !60, !noalias !62
  %index.next133 = add nuw i64 %index118, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next133, 128
  br i1 %i.du, label %scalar_mult_add.exit.preheader.i, label %vector.body117, !llvm.loop !63

scalar.ph115:                                     ; preds = %vector.memcheck100, %scalar.ph115
  %.027.i.i = phi ptr [ %7, %scalar.ph115 ], [ @kModRoots, %vector.memcheck100 ] ; 2 uses
  %.026.i.i = phi ptr [ %i.ed, %scalar.ph115 ], [ %i.am, %vector.memcheck100 ] ; 3 uses
  %.025.i.i = phi ptr [ %i.ec, %scalar.ph115 ], [ %.01535.i, %vector.memcheck100 ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph115 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i.i ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.dx = load i16, ptr %.025.i.i, align 2, !tbaa !39
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ea = load i16, ptr %.026.i.i, align 2, !tbaa !39
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %4 = load i16, ptr %i.dw, align 2, !tbaa !39
  %5 = zext i16 %4 to i32                         ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.ee = load i16, ptr %i.dz, align 2, !tbaa !39
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %7 = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.eg = load i16, ptr %.027.i.i, align 2, !tbaa !39
  %i.eh = zext i16 %i.eg to i32
  %i.ei = load i16, ptr %i.dv, align 2, !tbaa !39
  %8 = zext i16 %i.ei to i32
  %9 = mul nuw i32 %i.eb, %i.dy
  %10 = add nuw i32 %9, %8
  %i.ej = mul nuw i32 %i.ef, %5                   ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = mul nuw nsw i64 %i.ek, 5039
  %i.em = lshr i64 %i.el, 24
  %i.en = trunc nuw nsw i64 %i.em to i32
  %.neg.i.i.i = mul i32 %i.en, 62207
  %i.eo = add i32 %.neg.i.i.i, %i.ej
  %i.ep = trunc i32 %i.eo to i16                  ; 2 uses
  %i.eq = add i16 %i.ep, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.eq, 0
  %i.er = select i1 %isneg.i.i.i.i, i16 %i.ep, i16 0
  %i.es = call i16 @llvm.smax.i16(i16 %i.eq, i16 0)
  %i.et = or i16 %i.er, %i.es
  %i.eu = zext i16 %i.et to i32
  %i.ev = mul nuw i32 %i.eu, %i.eh
  %11 = add i32 %10, %i.ev                        ; 2 uses
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 5039
  %14 = lshr i64 %13, 24
  %15 = trunc nuw nsw i64 %14 to i32
  %.neg.i28.i.i = mul i32 %15, 62207
  %i.ew = add i32 %.neg.i28.i.i, %11
  %16 = trunc i32 %i.ew to i16                    ; 2 uses
  %17 = add i16 %16, -3329                        ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %17, 0
  %18 = select i1 %isneg.i.i29.i.i, i16 %16, i16 0
  %19 = call i16 @llvm.smax.i16(i16 %17, i16 0)
  %20 = or i16 %18, %19
  store i16 %20, ptr %i.dv, align 2, !tbaa !39
  %21 = load i16, ptr %6, align 2, !tbaa !39
  %22 = zext i16 %21 to i32
  %.neg.i30.i.i.a = mul nuw i32 %i.ef, %i.dy
  %.neg.i28.i.i.a = mul nuw i32 %5, %i.eb
  %23 = add i32 %.neg.i30.i.i.a, %.neg.i28.i.i.a
  %24 = add i32 %23, %22                          ; 2 uses
  %25 = zext i32 %24 to i64
  %26 = mul nuw nsw i64 %25, 5039
  %27 = lshr i64 %26, 24
  %28 = trunc nuw nsw i64 %27 to i32
  %.neg.i30.i.i = mul i32 %28, 62207
  %29 = add i32 %.neg.i30.i.i, %24
  %30 = trunc i32 %29 to i16                      ; 2 uses
  %31 = add i16 %30, -3329                        ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %31, 0
  %32 = select i1 %isneg.i.i31.i.i, i16 %30, i16 0
  %33 = call i16 @llvm.smax.i16(i16 %31, i16 0)
  %34 = or i16 %32, %33
  store i16 %34, ptr %6, align 2, !tbaa !39
  %i.ex = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.ex, label %scalar.ph115, label %scalar_mult_add.exit.preheader.i, !llvm.loop !66

scalar_mult_add.exit.preheader.i:                 ; preds = %vector.body117, %scalar.ph115
  %i.ey = add nsw i32 %.in.i, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %.01535.i, i64 512
  br i1 %.not.i62, label %scalar_mult_add.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult_add.exit.preheader.i
  %bound0 = icmp ult ptr %.01634.i, %scevgep81
  %bound1 = icmp ult ptr %scevgep80, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %.01634.i, %scevgep83
  %bound185 = icmp ult ptr %scevgep82, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  %bound087 = icmp ult ptr %.01634.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound188 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx, %found.conflict89
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit30.i
  %.033.i = phi i32 [ %i.it, %scalar_mult_add.exit30.i ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %.01332.i = phi ptr [ %i.fb, %scalar_mult_add.exit30.i ], [ %i.am, %.lr.ph.i.preheader ]
  %.01431.i = phi ptr [ %i.fa, %scalar_mult_add.exit30.i ], [ %.01535.i, %.lr.ph.i.preheader ]
  %i.fa = getelementptr inbounds nuw [512 x i8], ptr %.01431.i, i64 %i.aq ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.01332.i, i64 512 ; 3 uses
  br i1 %conflict.rdx90, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.fc
  %i.fd = shl i64 %index, 2                       ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.fb, i64 %i.fd
  %next.gep92 = getelementptr i8, ptr %i.fa, i64 %i.fd
  %i.fe = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.fd ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !39, !alias.scope !67
  %i.ff = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.fg = bitcast <8 x i16> %i.ff to <4 x i32>
  %i.fh = bitcast <8 x i16> %i.ff to <4 x i32>
  %i.fi = and <4 x i32> %i.fh, splat (i32 65535)  ; 2 uses
  %i.fj = lshr <4 x i32> %i.fg, splat (i32 16)    ; 2 uses
  %wide.vec94 = load <8 x i16>, ptr %next.gep91, align 2, !tbaa !39, !alias.scope !70
  %i.fk = freeze <8 x i16> %wide.vec94            ; 2 uses
  %i.fl = bitcast <8 x i16> %i.fk to <4 x i32>
  %i.fm = bitcast <8 x i16> %i.fk to <4 x i32>
  %i.fn = and <4 x i32> %i.fm, splat (i32 65535)  ; 2 uses
  %i.fo = lshr <4 x i32> %i.fl, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !72
  %i.fp = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec97 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !39, !alias.scope !74, !noalias !76
  %i.fq = freeze <8 x i16> %wide.vec97            ; 2 uses
  %i.fr = bitcast <8 x i16> %i.fq to <4 x i32>
  %i.fs = bitcast <8 x i16> %i.fq to <4 x i32>
  %i.ft = and <4 x i32> %i.fs, splat (i32 65535)
  %i.fu = lshr <4 x i32> %i.fr, splat (i32 16)
  %i.fv = mul nuw <4 x i32> %i.fn, %i.fi
  %i.fw = add nuw <4 x i32> %i.fv, %i.ft
  %i.fx = mul nuw <4 x i32> %i.fo, %i.fj          ; 2 uses
  %i.fy = zext <4 x i32> %i.fx to <4 x i64>
  %i.fz = mul nuw nsw <4 x i64> %i.fy, splat (i64 5039)
  %i.ga = lshr <4 x i64> %i.fz, splat (i64 24)
  %i.gb = trunc nuw nsw <4 x i64> %i.ga to <4 x i32>
  %i.gc = mul <4 x i32> %i.gb, splat (i32 62207)
  %i.gd = add <4 x i32> %i.gc, %i.fx
  %i.ge = trunc <4 x i32> %i.gd to <4 x i16>      ; 2 uses
  %i.gf = add <4 x i16> %i.ge, splat (i16 -3329)  ; 2 uses
  %i.gg = icmp slt <4 x i16> %i.gf, zeroinitializer
  %i.gh = select <4 x i1> %i.gg, <4 x i16> %i.ge, <4 x i16> zeroinitializer
  %i.gi = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gf, <4 x i16> zeroinitializer)
  %i.gj = or <4 x i16> %i.gh, %i.gi
  %i.gk = zext <4 x i16> %i.gj to <4 x i32>
  %i.gl = mul nuw <4 x i32> %i.gk, %i.fp
  %i.gm = add <4 x i32> %i.fw, %i.gl              ; 2 uses
  %i.gn = zext <4 x i32> %i.gm to <4 x i64>
  %i.go = mul nuw nsw <4 x i64> %i.gn, splat (i64 5039)
  %i.gp = lshr <4 x i64> %i.go, splat (i64 24)
  %i.gq = trunc nuw nsw <4 x i64> %i.gp to <4 x i32>
  %i.gr = mul <4 x i32> %i.gq, splat (i32 62207)
  %i.gs = add <4 x i32> %i.gr, %i.gm
  %i.gt = trunc <4 x i32> %i.gs to <4 x i16>      ; 2 uses
  %i.gu = add <4 x i16> %i.gt, splat (i16 -3329)  ; 2 uses
  %i.gv = icmp slt <4 x i16> %i.gu, zeroinitializer
  %i.gw = select <4 x i1> %i.gv, <4 x i16> %i.gt, <4 x i16> zeroinitializer
  %i.gx = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gu, <4 x i16> zeroinitializer)
  %i.gy = or <4 x i16> %i.gw, %i.gx
  %i.gz = mul nuw <4 x i32> %i.fo, %i.fi
  %i.ha = mul nuw <4 x i32> %i.fj, %i.fn
  %i.hb = add <4 x i32> %i.gz, %i.ha
  %i.hc = add <4 x i32> %i.hb, %i.fu              ; 2 uses
  %i.hd = zext <4 x i32> %i.hc to <4 x i64>
  %i.he = mul nuw nsw <4 x i64> %i.hd, splat (i64 5039)
  %i.hf = lshr <4 x i64> %i.he, splat (i64 24)
  %i.hg = trunc nuw nsw <4 x i64> %i.hf to <4 x i32>
  %i.hh = mul <4 x i32> %i.hg, splat (i32 62207)
  %i.hi = add <4 x i32> %i.hh, %i.hc
  %i.hj = trunc <4 x i32> %i.hi to <4 x i16>      ; 2 uses
  %i.hk = add <4 x i16> %i.hj, splat (i16 -3329)  ; 2 uses
  %i.hl = icmp slt <4 x i16> %i.hk, zeroinitializer
  %i.hm = select <4 x i1> %i.hl, <4 x i16> %i.hj, <4 x i16> zeroinitializer
  %i.hn = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hk, <4 x i16> zeroinitializer)
  %i.ho = or <4 x i16> %i.hm, %i.hn
  %interleaved.vec = shufflevector <4 x i16> %i.gy, <4 x i16> %i.ho, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.fe, align 2, !tbaa !39, !alias.scope !74, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, 128
  br i1 %i.hp, label %scalar_mult_add.exit30.i, label %vector.body, !llvm.loop !77

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i18.i = phi ptr [ %38, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i19.i = phi ptr [ %i.hy, %scalar.ph ], [ %i.fb, %.lr.ph.i ] ; 3 uses
  %.025.i20.i = phi ptr [ %i.hx, %scalar.ph ], [ %i.fa, %.lr.ph.i ] ; 3 uses
  %.0.idx.i21.i = phi i64 [ %.0.add.i23.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i21.i ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.025.i20.i, i64 2
  %i.hs = load i16, ptr %.025.i20.i, align 2, !tbaa !39
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.026.i19.i, i64 2
  %i.hv = load i16, ptr %.026.i19.i, align 2, !tbaa !39
  %i.hw = zext i16 %i.hv to i32                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.025.i20.i, i64 4
  %35 = load i16, ptr %i.hr, align 2, !tbaa !39
  %36 = zext i16 %35 to i32                       ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.026.i19.i, i64 4
  %i.hz = load i16, ptr %i.hu, align 2, !tbaa !39
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.hq, i64 2 ; 2 uses
  %.0.add.i23.i = add nuw nsw i64 %.0.idx.i21.i, 4
  %38 = getelementptr inbounds nuw i8, ptr %.027.i18.i, i64 2
  %i.ib = load i16, ptr %.027.i18.i, align 2, !tbaa !39
  %i.ic = zext i16 %i.ib to i32
  %i.id = load i16, ptr %i.hq, align 2, !tbaa !39
  %39 = zext i16 %i.id to i32
  %40 = mul nuw i32 %i.hw, %i.ht
  %41 = add nuw i32 %40, %39
  %i.ie = mul nuw i32 %i.ia, %36                  ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = mul nuw nsw i64 %i.if, 5039
  %i.ih = lshr i64 %i.ig, 24
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %.neg.i.i24.i = mul i32 %i.ii, 62207
  %i.ij = add i32 %.neg.i.i24.i, %i.ie
  %i.ik = trunc i32 %i.ij to i16                  ; 2 uses
  %i.il = add i16 %i.ik, -3329                    ; 2 uses
  %isneg.i.i.i25.i = icmp slt i16 %i.il, 0
  %i.im = select i1 %isneg.i.i.i25.i, i16 %i.ik, i16 0
  %i.in = call i16 @llvm.smax.i16(i16 %i.il, i16 0)
  %i.io = or i16 %i.im, %i.in
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw i32 %i.ip, %i.ic
  %42 = add i32 %41, %i.iq                        ; 2 uses
  %43 = zext i32 %42 to i64
  %44 = mul nuw nsw i64 %43, 5039
  %45 = lshr i64 %44, 24
  %46 = trunc nuw nsw i64 %45 to i32
  %.neg.i28.i26.i = mul i32 %46, 62207
  %i.ir = add i32 %.neg.i28.i26.i, %42
  %47 = trunc i32 %i.ir to i16                    ; 2 uses
  %48 = add i16 %47, -3329                        ; 2 uses
  %isneg.i.i29.i27.i = icmp slt i16 %48, 0
  %49 = select i1 %isneg.i.i29.i27.i, i16 %47, i16 0
  %50 = call i16 @llvm.smax.i16(i16 %48, i16 0)
  %51 = or i16 %49, %50
  store i16 %51, ptr %i.hq, align 2, !tbaa !39
  %52 = load i16, ptr %37, align 2, !tbaa !39
  %53 = zext i16 %52 to i32
  %.neg.i30.i28.i.a = mul nuw i32 %i.ia, %i.ht
  %.neg.i28.i26.i.a = mul nuw i32 %36, %i.hw
  %54 = add i32 %.neg.i30.i28.i.a, %.neg.i28.i26.i.a
  %55 = add i32 %54, %53                          ; 2 uses
  %56 = zext i32 %55 to i64
  %57 = mul nuw nsw i64 %56, 5039
  %58 = lshr i64 %57, 24
  %59 = trunc nuw nsw i64 %58 to i32
  %.neg.i30.i28.i = mul i32 %59, 62207
  %60 = add i32 %.neg.i30.i28.i, %55
  %61 = trunc i32 %60 to i16                      ; 2 uses
  %62 = add i16 %61, -3329                        ; 2 uses
  %isneg.i.i31.i29.i = icmp slt i16 %62, 0
  %63 = select i1 %isneg.i.i31.i29.i, i16 %61, i16 0
  %64 = call i16 @llvm.smax.i16(i16 %62, i16 0)
  %65 = or i16 %63, %64
  store i16 %65, ptr %37, align 2, !tbaa !39
  %i.is = icmp samesign ult i64 %.0.idx.i21.i, 508
  br i1 %i.is, label %scalar.ph, label %scalar_mult_add.exit30.i, !llvm.loop !78

scalar_mult_add.exit30.i:                         ; preds = %vector.body, %scalar.ph
  %i.it = add nsw i32 %.033.i, -1
  %i.iu = icmp sgt i32 %.033.i, 2
  br i1 %i.iu, label %.lr.ph.i, label %scalar_mult_add.exit._crit_edge.i, !llvm.loop !79

scalar_mult_add.exit._crit_edge.i:                ; preds = %scalar_mult_add.exit30.i, %scalar_mult_add.exit.preheader.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.01634.i, i64 512
  %i.iw = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.iw, label %vector.memcheck100, label %matrix_mult_transpose_add.exit, !llvm.loop !80

matrix_mult_transpose_add.exit:                   ; preds = %scalar_mult_add.exit._crit_edge.i, %bb.i
  %i.ix = icmp eq ptr %2, null
  br i1 %i.ix, label %bb.j, label %bb.r

bb.j:                                             ; preds = %matrix_mult_transpose_add.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !35
  %i.ja = load ptr, ptr %3, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !19
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [512 x i8], ptr %i.al, i64 %i.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !26
  %i.jh = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %1, ptr noundef %i.jg, ptr noundef null) #12
  %.not.i63 = icmp eq i32 %i.jh, 0
  br i1 %.not.i63, label %hash_h_pubkey.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.p
  %.016.i = phi ptr [ %i.jz, %bb.p ], [ %i.al, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.preheader.i
  %.029.idx.i.i = phi i64 [ 0, %.preheader.i ], [ %.029.add.i.i, %bb.o ] ; 3 uses
  %.027.i.i64 = phi i64 [ 0, %.preheader.i ], [ %.128.i.i, %bb.o ] ; 2 uses
  %.025.i.i65 = phi ptr [ %i.b, %.preheader.i ], [ %.126.i.i, %bb.o ] ; 3 uses
  %.0.i.i = phi i32 [ 0, %.preheader.i ], [ %.1.i.i, %bb.o ] ; 6 uses
  %.029.ptr.i.i = getelementptr inbounds nuw i8, ptr %.016.i, i64 %.029.idx.i.i
  %.029.add.i.i = add nuw nsw i64 %.029.idx.i.i, 2
  %i.ji = load i16, ptr %.029.ptr.i.i, align 2, !tbaa !39
  %i.jj = zext i16 %i.ji to i64                   ; 3 uses
  %i.jk = add nsw i32 %.0.i.i, 12                 ; 2 uses
  %i.jl = icmp slt i32 %.0.i.i, 52
  br i1 %i.jl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.jm = zext nneg i32 %.0.i.i to i64
  %i.jn = shl i64 %i.jj, %i.jm
  %i.jo = or i64 %i.jn, %.027.i.i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.jk, 64
  %i.jp = zext nneg i32 %.0.i.i to i64
  %i.jq = shl i64 %i.jj, %i.jp
  %i.jr = or i64 %i.jq, %.027.i.i64
  store i64 %i.jr, ptr %.025.i.i65, align 1
  %i.js = getelementptr inbounds nuw i8, ptr %.025.i.i65, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jt = sub nsw i32 64, %.0.i.i
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = lshr i64 %i.jj, %i.ju
  %i.jw = add nsw i32 %.0.i.i, -52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.128.i.i = phi i64 [ %i.jo, %bb.l ], [ %i.jv, %bb.n ], [ 0, %bb.m ]
  %.126.i.i = phi ptr [ %.025.i.i65, %bb.l ], [ %i.js, %bb.n ], [ %i.js, %bb.m ]
  %.1.i.i = phi i32 [ %i.jk, %bb.l ], [ %i.jw, %bb.n ], [ 0, %bb.m ]
  %i.jx = icmp samesign ult i64 %.029.idx.i.i, 510
  br i1 %i.jx, label %bb.k, label %scalar_encode.exit.i, !llvm.loop !41

scalar_encode.exit.i:                             ; preds = %bb.o
  %i.jy = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 384) #12
  %.not18.not.i = icmp eq i32 %i.jy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not18.not.i, label %hash_h_pubkey.exit.thread, label %bb.p

bb.p:                                             ; preds = %scalar_encode.exit.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.016.i, i64 512 ; 2 uses
  %i.ka = icmp ult ptr %i.jz, %i.je
  br i1 %i.ka, label %.preheader.i, label %bb.q, !llvm.loop !81

bb.q:                                             ; preds = %bb.p
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.kc = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef %i.kb, i64 noundef 32) #12
  %.not19.i = icmp eq i32 %i.kc, 0
  br i1 %.not19.i, label %hash_h_pubkey.exit.thread, label %hash_h_pubkey.exit

hash_h_pubkey.exit.thread:                        ; preds = %scalar_encode.exit.i, %bb.j, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aa

hash_h_pubkey.exit:                               ; preds = %bb.q
  %i.kd = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %1, ptr noundef %i.iz, ptr noundef nonnull %i.a) #12
  %.not20.i = icmp eq i32 %i.kd, 0
  %i.ke = load i32, ptr %i.a, align 4
  %i.kf = icmp ne i32 %i.ke, 32
  %narrow.i.not = select i1 %.not20.i, i1 true, i1 %i.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %narrow.i.not, label %bb.aa, label %bb.x

bb.r:                                             ; preds = %matrix_mult_transpose_add.exit
  %i.kg = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.kh = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !19 ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph.i.i, label %encode_pubkey.exit

.lr.ph.i.i:                                       ; preds = %bb.r, %scalar_encode.exit.i.i
  %.010.i.i = phi ptr [ %i.ld, %scalar_encode.exit.i.i ], [ %2, %bb.r ] ; 2 uses
  %.069.i.i = phi i32 [ %i.lb, %scalar_encode.exit.i.i ], [ %i.kj, %bb.r ] ; 2 uses
  %.078.i.i = phi ptr [ %i.lc, %scalar_encode.exit.i.i ], [ %i.al, %bb.r ] ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i
  %.029.idx.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.029.add.i.i.i, %bb.w ] ; 3 uses
  %.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.128.i.i.i, %bb.w ] ; 2 uses
  %.025.i.i.i = phi ptr [ %.010.i.i, %.lr.ph.i.i ], [ %.126.i.i.i, %bb.w ] ; 3 uses
  %.0.i.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i.i, %bb.w ] ; 6 uses
  %.029.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.078.i.i, i64 %.029.idx.i.i.i
  %.029.add.i.i.i = add nuw nsw i64 %.029.idx.i.i.i, 2
  %i.kl = load i16, ptr %.029.ptr.i.i.i, align 2, !tbaa !39
  %i.km = zext i16 %i.kl to i64                   ; 3 uses
  %i.kn = add nsw i32 %.0.i.i.i, 12               ; 2 uses
  %i.ko = icmp slt i32 %.0.i.i.i, 52
  br i1 %i.ko, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kp = zext nneg i32 %.0.i.i.i to i64
  %i.kq = shl i64 %i.km, %i.kp
  %i.kr = or i64 %i.kq, %.027.i.i.i
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.kn, 64
  %i.ks = zext nneg i32 %.0.i.i.i to i64
  %i.kt = shl i64 %i.km, %i.ks
  %i.ku = or i64 %i.kt, %.027.i.i.i
  store i64 %i.ku, ptr %.025.i.i.i, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kw = sub nsw i32 64, %.0.i.i.i
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = lshr i64 %i.km, %i.kx
  %i.kz = add nsw i32 %.0.i.i.i, -52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.128.i.i.i = phi i64 [ %i.kr, %bb.t ], [ %i.ky, %bb.v ], [ 0, %bb.u ]
  %.126.i.i.i = phi ptr [ %.025.i.i.i, %bb.t ], [ %i.kv, %bb.v ], [ %i.kv, %bb.u ]
  %.1.i.i.i = phi i32 [ %i.kn, %bb.t ], [ %i.kz, %bb.v ], [ 0, %bb.u ]
  %i.la = icmp samesign ult i64 %.029.idx.i.i.i, 510
  br i1 %i.la, label %bb.s, label %scalar_encode.exit.i.i, !llvm.loop !41

scalar_encode.exit.i.i:                           ; preds = %bb.w
  %i.lb = add nsw i32 %.069.i.i, -1
  %i.lc = getelementptr inbounds nuw i8, ptr %.078.i.i, i64 512
  %i.ld = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 384
  %i.le = icmp sgt i32 %.069.i.i, 1
  br i1 %i.le, label %.lr.ph.i.i, label %encode_pubkey.exit, !llvm.loop !43

encode_pubkey.exit:                               ; preds = %scalar_encode.exit.i.i, %bb.r
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !44
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lh, ptr noundef nonnull align 1 dereferenceable(32) %i.kg, i64 32, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !35
  %i.lk = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !38
  %i.lm = getelementptr i8, ptr %3, i64 32
  %.val = load ptr, ptr %i.lm, align 8, !tbaa !26
  %i.ln = call fastcc i32 @hash_h(ptr noundef %i.lj, ptr noundef nonnull %2, i64 noundef %i.ll, ptr noundef %1, ptr %.val)
  %.not53 = icmp eq i32 %i.ln, 0
  br i1 %.not53, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %encode_pubkey.exit, %hash_h_pubkey.exit
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lp, ptr noundef nonnull align 1 dereferenceable(32) %i.lq, i64 32, i1 false)
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !30
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !23
  %i.lw = and i32 %i.lv, 8
end_hunk_0
begin_hunk_1_@scalar_ntt:bb.a
  %i.asl = insertelement <8 x i16> %i.ask, i16 %i.asd, i64 5
  %i.asm = insertelement <8 x i16> %i.asl, i16 %i.ase, i64 6
  %i.asn = insertelement <8 x i16> %i.asm, i16 %i.asf, i64 7 ; 2 uses
  %i.aso = load i16, ptr %i.arq, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asp = load i16, ptr %i.arr, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asq = load i16, ptr %i.ars, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asr = load i16, ptr %i.art, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ass = load i16, ptr %i.aru, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ast = load i16, ptr %i.arv, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asu = load i16, ptr %i.arw, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asv = load i16, ptr %i.arx, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asw = insertelement <8 x i16> poison, i16 %i.aso, i64 0
  %i.asx = insertelement <8 x i16> %i.asw, i16 %i.asp, i64 1
  %i.asy = insertelement <8 x i16> %i.asx, i16 %i.asq, i64 2
  %i.asz = insertelement <8 x i16> %i.asy, i16 %i.asr, i64 3
  %i.ata = insertelement <8 x i16> %i.asz, i16 %i.ass, i64 4
  %i.atb = insertelement <8 x i16> %i.ata, i16 %i.ast, i64 5
  %i.atc = insertelement <8 x i16> %i.atb, i16 %i.asu, i64 6
  %i.atd = insertelement <8 x i16> %i.atc, i16 %i.asv, i64 7
  %i.ate = zext <8 x i16> %i.atd to <8 x i32>
  %i.atf = mul nuw <8 x i32> %i.ate, %i.apk       ; 2 uses
  %i.atg = zext <8 x i32> %i.atf to <8 x i64>
  %i.ath = mul nuw nsw <8 x i64> %i.atg, splat (i64 5039)
  %i.ati = lshr <8 x i64> %i.ath, splat (i64 24)
  %i.atj = trunc nuw nsw <8 x i64> %i.ati to <8 x i32>
  %i.atk = mul <8 x i32> %i.atj, splat (i32 62207)
  %i.atl = add <8 x i32> %i.atk, %i.atf
  %i.atm = trunc <8 x i32> %i.atl to <8 x i16>    ; 2 uses
  %i.atn = add <8 x i16> %i.atm, splat (i16 -3329) ; 2 uses
  %i.ato = icmp slt <8 x i16> %i.atn, zeroinitializer
  %i.atp = select <8 x i1> %i.ato, <8 x i16> %i.atm, <8 x i16> zeroinitializer
  %i.atq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.atn, <8 x i16> zeroinitializer)
  %i.atr = or <8 x i16> %i.atp, %i.atq            ; 2 uses
  %i.ats = sub <8 x i16> %i.asn, %i.atr           ; 3 uses
  %i.att = add <8 x i16> %i.atr, %i.asn           ; 2 uses
  %i.atu = add <8 x i16> %i.att, splat (i16 -3329) ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aon, i64 20
  %i.atx = getelementptr inbounds nuw i8, ptr %i.aop, i64 36
  %i.aty = getelementptr inbounds nuw i8, ptr %i.aor, i64 52
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aot, i64 68
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aov, i64 84
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aox, i64 100
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 116
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aom, i64 12
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aon, i64 28
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aop, i64 44
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aor, i64 60
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aot, i64 76
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aov, i64 92
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aox, i64 108
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aoz, i64 124
  %i.aul = load i16, ptr %i.atv, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aum = load i16, ptr %i.atw, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aun = load i16, ptr %i.atx, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.auo = load i16, ptr %i.aty, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aup = load i16, ptr %i.atz, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.auq = load i16, ptr %i.aua, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aur = load i16, ptr %i.aub, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aus = load i16, ptr %i.auc, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aut = insertelement <8 x i16> poison, i16 %i.aul, i64 0
  %i.auu = insertelement <8 x i16> %i.aut, i16 %i.aum, i64 1
  %i.auv = insertelement <8 x i16> %i.auu, i16 %i.aun, i64 2
  %i.auw = insertelement <8 x i16> %i.auv, i16 %i.auo, i64 3
  %i.aux = insertelement <8 x i16> %i.auw, i16 %i.aup, i64 4
  %i.auy = insertelement <8 x i16> %i.aux, i16 %i.auq, i64 5
  %i.auz = insertelement <8 x i16> %i.auy, i16 %i.aur, i64 6
  %i.ava = insertelement <8 x i16> %i.auz, i16 %i.aus, i64 7 ; 2 uses
  %i.avb = load i16, ptr %i.aud, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avc = load i16, ptr %i.aue, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avd = load i16, ptr %i.auf, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ave = load i16, ptr %i.aug, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avf = load i16, ptr %i.auh, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avg = load i16, ptr %i.aui, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avh = load i16, ptr %i.auj, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avi = load i16, ptr %i.auk, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avj = insertelement <8 x i16> poison, i16 %i.avb, i64 0
  %i.avk = insertelement <8 x i16> %i.avj, i16 %i.avc, i64 1
  %i.avl = insertelement <8 x i16> %i.avk, i16 %i.avd, i64 2
  %i.avm = insertelement <8 x i16> %i.avl, i16 %i.ave, i64 3
  %i.avn = insertelement <8 x i16> %i.avm, i16 %i.avf, i64 4
  %i.avo = insertelement <8 x i16> %i.avn, i16 %i.avg, i64 5
  %i.avp = insertelement <8 x i16> %i.avo, i16 %i.avh, i64 6
  %i.avq = insertelement <8 x i16> %i.avp, i16 %i.avi, i64 7
  %i.avr = zext <8 x i16> %i.avq to <8 x i32>
  %i.avs = mul nuw <8 x i32> %i.avr, %i.apk       ; 2 uses
  %i.avt = zext <8 x i32> %i.avs to <8 x i64>
  %i.avu = mul nuw nsw <8 x i64> %i.avt, splat (i64 5039)
  %i.avv = lshr <8 x i64> %i.avu, splat (i64 24)
  %i.avw = trunc nuw nsw <8 x i64> %i.avv to <8 x i32>
  %i.avx = mul <8 x i32> %i.avw, splat (i32 62207)
  %i.avy = add <8 x i32> %i.avx, %i.avs
  %i.avz = trunc <8 x i32> %i.avy to <8 x i16>    ; 2 uses
  %i.awa = add <8 x i16> %i.avz, splat (i16 -3329) ; 2 uses
  %i.awb = icmp slt <8 x i16> %i.awa, zeroinitializer
  %i.awc = select <8 x i1> %i.awb, <8 x i16> %i.avz, <8 x i16> zeroinitializer
  %i.awd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awa, <8 x i16> zeroinitializer)
  %i.awe = or <8 x i16> %i.awc, %i.awd            ; 2 uses
  %i.awf = sub <8 x i16> %i.ava, %i.awe           ; 3 uses
  %i.awg = add <8 x i16> %i.awe, %i.ava           ; 2 uses
  %i.awh = add <8 x i16> %i.awg, splat (i16 -3329) ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aom, i64 6
  %i.awj = getelementptr inbounds nuw i8, ptr %i.aon, i64 22
  %i.awk = getelementptr inbounds nuw i8, ptr %i.aop, i64 38
  %i.awl = getelementptr inbounds nuw i8, ptr %i.aor, i64 54
  %i.awm = getelementptr inbounds nuw i8, ptr %i.aot, i64 70
  %i.awn = getelementptr inbounds nuw i8, ptr %i.aov, i64 86
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aox, i64 102
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aoz, i64 118
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aom, i64 14
  %i.awr = getelementptr inbounds nuw i8, ptr %i.aon, i64 30
  %i.aws = getelementptr inbounds nuw i8, ptr %i.aop, i64 46
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aor, i64 62
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aot, i64 78
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aov, i64 94
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aox, i64 110
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aoz, i64 126
  %i.awy = load i16, ptr %i.awi, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.awz = load i16, ptr %i.awj, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axa = load i16, ptr %i.awk, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axb = load i16, ptr %i.awl, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axc = load i16, ptr %i.awm, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axd = load i16, ptr %i.awn, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axe = load i16, ptr %i.awo, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axf = load i16, ptr %i.awp, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axg = insertelement <8 x i16> poison, i16 %i.awy, i64 0
  %i.axh = insertelement <8 x i16> %i.axg, i16 %i.awz, i64 1
  %i.axi = insertelement <8 x i16> %i.axh, i16 %i.axa, i64 2
  %i.axj = insertelement <8 x i16> %i.axi, i16 %i.axb, i64 3
  %i.axk = insertelement <8 x i16> %i.axj, i16 %i.axc, i64 4
  %i.axl = insertelement <8 x i16> %i.axk, i16 %i.axd, i64 5
  %i.axm = insertelement <8 x i16> %i.axl, i16 %i.axe, i64 6
  %i.axn = insertelement <8 x i16> %i.axm, i16 %i.axf, i64 7 ; 2 uses
  %i.axo = load i16, ptr %i.awq, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axp = load i16, ptr %i.awr, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axq = load i16, ptr %i.aws, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axr = load i16, ptr %i.awt, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axs = load i16, ptr %i.awu, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axt = load i16, ptr %i.awv, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axu = load i16, ptr %i.aww, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axv = load i16, ptr %i.awx, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.axw = insertelement <8 x i16> poison, i16 %i.axo, i64 0
  %i.axx = insertelement <8 x i16> %i.axw, i16 %i.axp, i64 1
  %i.axy = insertelement <8 x i16> %i.axx, i16 %i.axq, i64 2
  %i.axz = insertelement <8 x i16> %i.axy, i16 %i.axr, i64 3
  %i.aya = insertelement <8 x i16> %i.axz, i16 %i.axs, i64 4
  %i.ayb = insertelement <8 x i16> %i.aya, i16 %i.axt, i64 5
  %i.ayc = insertelement <8 x i16> %i.ayb, i16 %i.axu, i64 6
  %i.ayd = insertelement <8 x i16> %i.ayc, i16 %i.axv, i64 7
  %i.aye = zext <8 x i16> %i.ayd to <8 x i32>
  %i.ayf = mul nuw <8 x i32> %i.aye, %i.apk       ; 2 uses
  %i.ayg = zext <8 x i32> %i.ayf to <8 x i64>
  %i.ayh = mul nuw nsw <8 x i64> %i.ayg, splat (i64 5039)
  %i.ayi = lshr <8 x i64> %i.ayh, splat (i64 24)
  %i.ayj = trunc nuw nsw <8 x i64> %i.ayi to <8 x i32>
  %i.ayk = mul <8 x i32> %i.ayj, splat (i32 62207)
  %i.ayl = add <8 x i32> %i.ayk, %i.ayf
  %i.aym = trunc <8 x i32> %i.ayl to <8 x i16>    ; 2 uses
  %i.ayn = add <8 x i16> %i.aym, splat (i16 -3329) ; 2 uses
  %i.ayo = icmp slt <8 x i16> %i.ayn, zeroinitializer
  %i.ayp = select <8 x i1> %i.ayo, <8 x i16> %i.aym, <8 x i16> zeroinitializer
  %i.ayq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ayn, <8 x i16> zeroinitializer)
  %i.ayr = or <8 x i16> %i.ayp, %i.ayq            ; 2 uses
  %i.ays = sub <8 x i16> %i.axn, %i.ayr           ; 3 uses
  %i.ayt = add <8 x i16> %i.ayr, %i.axn           ; 2 uses
  %i.ayu = add <8 x i16> %i.ayt, splat (i16 -3329) ; 2 uses
  %i.ayv = shufflevector <8 x i16> %i.arh, <8 x i16> %i.atu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayw = shufflevector <8 x i16> %i.awh, <8 x i16> %i.ayu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayx = shufflevector <16 x i16> %i.ayv, <16 x i16> %i.ayw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayy = icmp slt <32 x i16> %i.ayx, zeroinitializer
  %i.ayz = shufflevector <8 x i16> %i.arg, <8 x i16> %i.att, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aza = shufflevector <8 x i16> %i.awg, <8 x i16> %i.ayt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azb = shufflevector <16 x i16> %i.ayz, <16 x i16> %i.aza, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azc = select <32 x i1> %i.ayy, <32 x i16> %i.azb, <32 x i16> zeroinitializer
  %i.azd = shufflevector <8 x i16> %i.arh, <8 x i16> %i.atu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aze = shufflevector <8 x i16> %i.awh, <8 x i16> %i.ayu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azf = shufflevector <16 x i16> %i.azd, <16 x i16> %i.aze, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azg = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.azf, <32 x i16> zeroinitializer)
  %i.azh = or <32 x i16> %i.azc, %i.azg
  %i.azi = shufflevector <8 x i16> %i.arf, <8 x i16> %i.ats, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azj = shufflevector <8 x i16> %i.awf, <8 x i16> %i.ays, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azk = shufflevector <16 x i16> %i.azi, <16 x i16> %i.azj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azl = icmp slt <32 x i16> %i.azk, zeroinitializer
  %i.azm = shufflevector <8 x i16> %i.arf, <8 x i16> %i.ats, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azn = shufflevector <8 x i16> %i.awf, <8 x i16> %i.ays, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azo = shufflevector <16 x i16> %i.azm, <16 x i16> %i.azn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azp = add <32 x i16> %i.azo, splat (i16 3329)
  %i.azq = select <32 x i1> %i.azl, <32 x i16> %i.azp, <32 x i16> zeroinitializer
  %i.azr = shufflevector <8 x i16> %i.arf, <8 x i16> %i.ats, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azs = shufflevector <8 x i16> %i.awf, <8 x i16> %i.ays, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azt = shufflevector <16 x i16> %i.azr, <16 x i16> %i.azs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azu = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.azt, <32 x i16> zeroinitializer)
  %i.azv = or <32 x i16> %i.azq, %i.azu
  %interleaved.vec = shufflevector <32 x i16> %i.azh, <32 x i16> %i.azv, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.aom, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %index.next121 = add nuw i64 %index118, 8       ; 2 uses
  %i.azw = icmp eq i64 %index.next121, 32
  br i1 %i.azw, label %vector.memcheck123, label %vector.body117, !llvm.loop !122

scalar.ph115:                                     ; preds = %vector.memcheck108, %scalar.ph115
  %.020.idx.5 = phi i64 [ %.022.add.5.3, %scalar.ph115 ], [ 0, %vector.memcheck108 ] ; 4 uses
  %.1.5 = phi ptr [ %i.azy, %scalar.ph115 ], [ %.lcssa39, %vector.memcheck108 ]
  %.020.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.5
  %.ptr25.5 = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.azy = getelementptr inbounds nuw i8, ptr %.1.5, i64 2 ; 3 uses
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !39
  %i.baa = zext i16 %i.azz to i32
  %.022.add.5.3 = add nuw nsw i64 %.020.idx.5, 16
  %i.bab = load <4 x i16>, ptr %.020.ptr.5, align 2, !tbaa !39 ; 2 uses
  %1 = load <4 x i16>, ptr %.ptr25.5, align 2, !tbaa !39
  %2 = zext <4 x i16> %1 to <4 x i32>
  %i.bac = insertelement <4 x i32> poison, i32 %i.baa, i64 0
  %3 = shufflevector <4 x i32> %i.bac, <4 x i32> poison, <4 x i32> zeroinitializer
  %4 = mul nuw <4 x i32> %3, %2                   ; 2 uses
  %5 = zext <4 x i32> %4 to <4 x i64>
  %6 = mul nuw nsw <4 x i64> %5, splat (i64 5039)
  %7 = lshr <4 x i64> %6, splat (i64 24)
  %8 = trunc nuw nsw <4 x i64> %7 to <4 x i32>
  %9 = mul <4 x i32> %8, splat (i32 62207)
  %i.bad = add <4 x i32> %9, %4
  %i.bae = trunc <4 x i32> %i.bad to <4 x i16>    ; 2 uses
  %i.baf = add <4 x i16> %i.bae, splat (i16 -3329) ; 2 uses
  %i.bag = icmp slt <4 x i16> %i.baf, zeroinitializer
  %i.bah = select <4 x i1> %i.bag, <4 x i16> %i.bae, <4 x i16> zeroinitializer
  %i.bai = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.baf, <4 x i16> zeroinitializer)
  %i.baj = or <4 x i16> %i.bah, %i.bai            ; 2 uses
  %i.bak = add <4 x i16> %i.baj, %i.bab           ; 2 uses
  %i.bal = shufflevector <4 x i16> %i.bak, <4 x i16> %i.bab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bam = shufflevector <4 x i16> %i.baj, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ban = shufflevector <8 x i16> <i16 3329, i16 3329, i16 3329, i16 3329, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bam, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bao = sub <8 x i16> %i.bal, %i.ban           ; 3 uses
  %i.bap = shufflevector <8 x i16> %i.bao, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.baq = add <4 x i16> %i.bap, splat (i16 3329)
  %i.bar = icmp slt <8 x i16> %i.bao, zeroinitializer
  %i.bas = shufflevector <4 x i16> %i.bak, <4 x i16> %i.baq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bat = select <8 x i1> %i.bar, <8 x i16> %i.bas, <8 x i16> zeroinitializer
  %i.bau = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bao, <8 x i16> zeroinitializer)
  %i.bav = or <8 x i16> %i.bat, %i.bau
  store <8 x i16> %i.bav, ptr %.020.ptr.5, align 2, !tbaa !39
  %i.baw = icmp samesign ult i64 %.020.idx.5, 496
  br i1 %i.baw, label %scalar.ph115, label %vector.memcheck123, !llvm.loop !123

vector.memcheck123:                               ; preds = %vector.body117, %scalar.ph115
  %.lcssa = phi ptr [ %i.azy, %scalar.ph115 ], [ %i.aoj, %vector.body117 ] ; 4 uses
  %scevgep124 = getelementptr nuw i8, ptr %.lcssa, i64 2
  %scevgep125 = getelementptr i8, ptr %.lcssa, i64 130
  %bound0126 = icmp ult ptr %0, %scevgep125
  %bound1127 = icmp ult ptr %scevgep124, %scevgep
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %scalar.ph129, label %vector.body131

vector.body131:                                   ; preds = %vector.memcheck123, %vector.body131
  %index132 = phi i64 [ %index.next136, %vector.body131 ], [ 0, %vector.memcheck123 ] ; 3 uses
  %i.bax = shl nuw i64 %index132, 3               ; 8 uses
  %i.bay = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.lcssa, i64 %i.bay
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 5 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 8
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16
  %i.bbe = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 24
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 32
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 40
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 48
  %i.bbm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bax ; 4 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 56
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bba, i64 12
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbc, i64 20
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbe, i64 28
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbg, i64 36
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbi, i64 44
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbk, i64 52
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbm, i64 60
  %i.bbw = getelementptr inbounds nuw i8, ptr %next.gep133, i64 2
  %wide.load134 = load <8 x i16>, ptr %i.bbw, align 2, !tbaa !39, !alias.scope !124
  %i.bbx = zext <8 x i16> %wide.load134 to <8 x i32> ; 2 uses
  %i.bby = load i16, ptr %i.baz, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bbz = load i16, ptr %i.bbb, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bca = load i16, ptr %i.bbd, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcb = load i16, ptr %i.bbf, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcc = load i16, ptr %i.bbh, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcd = load i16, ptr %i.bbj, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bce = load i16, ptr %i.bbl, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcf = load i16, ptr %i.bbn, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcg = insertelement <8 x i16> poison, i16 %i.bby, i64 0
  %i.bch = insertelement <8 x i16> %i.bcg, i16 %i.bbz, i64 1
  %i.bci = insertelement <8 x i16> %i.bch, i16 %i.bca, i64 2
  %i.bcj = insertelement <8 x i16> %i.bci, i16 %i.bcb, i64 3
  %i.bck = insertelement <8 x i16> %i.bcj, i16 %i.bcc, i64 4
  %i.bcl = insertelement <8 x i16> %i.bck, i16 %i.bcd, i64 5
  %i.bcm = insertelement <8 x i16> %i.bcl, i16 %i.bce, i64 6
  %i.bcn = insertelement <8 x i16> %i.bcm, i16 %i.bcf, i64 7 ; 2 uses
  %i.bco = load i16, ptr %i.bbo, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcp = load i16, ptr %i.bbp, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcq = load i16, ptr %i.bbq, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcr = load i16, ptr %i.bbr, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcs = load i16, ptr %i.bbs, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bct = load i16, ptr %i.bbt, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcu = load i16, ptr %i.bbu, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcv = load i16, ptr %i.bbv, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bcw = insertelement <8 x i16> poison, i16 %i.bco, i64 0
  %i.bcx = insertelement <8 x i16> %i.bcw, i16 %i.bcp, i64 1
  %i.bcy = insertelement <8 x i16> %i.bcx, i16 %i.bcq, i64 2
  %i.bcz = insertelement <8 x i16> %i.bcy, i16 %i.bcr, i64 3
  %i.bda = insertelement <8 x i16> %i.bcz, i16 %i.bcs, i64 4
  %i.bdb = insertelement <8 x i16> %i.bda, i16 %i.bct, i64 5
  %i.bdc = insertelement <8 x i16> %i.bdb, i16 %i.bcu, i64 6
  %i.bdd = insertelement <8 x i16> %i.bdc, i16 %i.bcv, i64 7
  %i.bde = zext <8 x i16> %i.bdd to <8 x i32>
  %i.bdf = mul nuw <8 x i32> %i.bde, %i.bbx       ; 2 uses
  %i.bdg = zext <8 x i32> %i.bdf to <8 x i64>
  %i.bdh = mul nuw nsw <8 x i64> %i.bdg, splat (i64 5039)
  %i.bdi = lshr <8 x i64> %i.bdh, splat (i64 24)
  %i.bdj = trunc nuw nsw <8 x i64> %i.bdi to <8 x i32>
  %i.bdk = mul <8 x i32> %i.bdj, splat (i32 62207)
  %i.bdl = add <8 x i32> %i.bdk, %i.bdf
  %i.bdm = trunc <8 x i32> %i.bdl to <8 x i16>    ; 2 uses
  %i.bdn = add <8 x i16> %i.bdm, splat (i16 -3329) ; 2 uses
  %i.bdo = icmp slt <8 x i16> %i.bdn, zeroinitializer
  %i.bdp = select <8 x i1> %i.bdo, <8 x i16> %i.bdm, <8 x i16> zeroinitializer
  %i.bdq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bdn, <8 x i16> zeroinitializer)
  %i.bdr = or <8 x i16> %i.bdp, %i.bdq            ; 2 uses
  %i.bds = sub <8 x i16> %i.bcn, %i.bdr           ; 3 uses
  %i.bdt = add <8 x i16> %i.bdr, %i.bcn           ; 2 uses
  %i.bdu = add <8 x i16> %i.bdt, splat (i16 -3329) ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.baz, i64 2
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bba, i64 10
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bbc, i64 18
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bbe, i64 26
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bbg, i64 34
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bbi, i64 42
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bbk, i64 50
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bbm, i64 58
  %i.bed = getelementptr inbounds nuw i8, ptr %i.baz, i64 6
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bba, i64 14
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bbc, i64 22
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 30
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 38
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bbi, i64 46
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bbk, i64 54
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bbm, i64 62
  %i.bel = load i16, ptr %i.bdv, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bem = load i16, ptr %i.bdw, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.ben = load i16, ptr %i.bdx, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.beo = load i16, ptr %i.bdy, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bep = load i16, ptr %i.bdz, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.beq = load i16, ptr %i.bea, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.ber = load i16, ptr %i.beb, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bes = load i16, ptr %i.bec, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bet = insertelement <8 x i16> poison, i16 %i.bel, i64 0
  %i.beu = insertelement <8 x i16> %i.bet, i16 %i.bem, i64 1
  %i.bev = insertelement <8 x i16> %i.beu, i16 %i.ben, i64 2
  %i.bew = insertelement <8 x i16> %i.bev, i16 %i.beo, i64 3
  %i.bex = insertelement <8 x i16> %i.bew, i16 %i.bep, i64 4
  %i.bey = insertelement <8 x i16> %i.bex, i16 %i.beq, i64 5
  %i.bez = insertelement <8 x i16> %i.bey, i16 %i.ber, i64 6
  %i.bfa = insertelement <8 x i16> %i.bez, i16 %i.bes, i64 7 ; 2 uses
  %i.bfb = load i16, ptr %i.bed, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfc = load i16, ptr %i.bee, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfd = load i16, ptr %i.bef, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfe = load i16, ptr %i.beg, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bff = load i16, ptr %i.beh, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfg = load i16, ptr %i.bei, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfh = load i16, ptr %i.bej, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfi = load i16, ptr %i.bek, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %i.bfj = insertelement <8 x i16> poison, i16 %i.bfb, i64 0
  %i.bfk = insertelement <8 x i16> %i.bfj, i16 %i.bfc, i64 1
  %i.bfl = insertelement <8 x i16> %i.bfk, i16 %i.bfd, i64 2
  %i.bfm = insertelement <8 x i16> %i.bfl, i16 %i.bfe, i64 3
  %i.bfn = insertelement <8 x i16> %i.bfm, i16 %i.bff, i64 4
  %i.bfo = insertelement <8 x i16> %i.bfn, i16 %i.bfg, i64 5
  %i.bfp = insertelement <8 x i16> %i.bfo, i16 %i.bfh, i64 6
  %i.bfq = insertelement <8 x i16> %i.bfp, i16 %i.bfi, i64 7
  %i.bfr = zext <8 x i16> %i.bfq to <8 x i32>
  %i.bfs = mul nuw <8 x i32> %i.bfr, %i.bbx       ; 2 uses
  %i.bft = zext <8 x i32> %i.bfs to <8 x i64>
  %i.bfu = mul nuw nsw <8 x i64> %i.bft, splat (i64 5039)
  %i.bfv = lshr <8 x i64> %i.bfu, splat (i64 24)
  %i.bfw = trunc nuw nsw <8 x i64> %i.bfv to <8 x i32>
  %i.bfx = mul <8 x i32> %i.bfw, splat (i32 62207)
  %i.bfy = add <8 x i32> %i.bfx, %i.bfs
  %i.bfz = trunc <8 x i32> %i.bfy to <8 x i16>    ; 2 uses
  %i.bga = add <8 x i16> %i.bfz, splat (i16 -3329) ; 2 uses
  %i.bgb = icmp slt <8 x i16> %i.bga, zeroinitializer
  %i.bgc = select <8 x i1> %i.bgb, <8 x i16> %i.bfz, <8 x i16> zeroinitializer
  %i.bgd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bga, <8 x i16> zeroinitializer)
  %i.bge = or <8 x i16> %i.bgc, %i.bgd            ; 2 uses
  %i.bgf = sub <8 x i16> %i.bfa, %i.bge           ; 3 uses
  %i.bgg = add <8 x i16> %i.bge, %i.bfa           ; 2 uses
  %i.bgh = add <8 x i16> %i.bgg, splat (i16 -3329) ; 2 uses
  %i.bgi = shufflevector <8 x i16> %i.bdu, <8 x i16> %i.bgh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgj = icmp slt <16 x i16> %i.bgi, zeroinitializer
  %i.bgk = shufflevector <8 x i16> %i.bdt, <8 x i16> %i.bgg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgl = select <16 x i1> %i.bgj, <16 x i16> %i.bgk, <16 x i16> zeroinitializer
  %i.bgm = shufflevector <8 x i16> %i.bdu, <8 x i16> %i.bgh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgn = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bgm, <16 x i16> zeroinitializer)
  %i.bgo = or <16 x i16> %i.bgl, %i.bgn
  %i.bgp = shufflevector <8 x i16> %i.bds, <8 x i16> %i.bgf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgq = icmp slt <16 x i16> %i.bgp, zeroinitializer
  %i.bgr = shufflevector <8 x i16> %i.bds, <8 x i16> %i.bgf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgs = add <16 x i16> %i.bgr, splat (i16 3329)
  %i.bgt = select <16 x i1> %i.bgq, <16 x i16> %i.bgs, <16 x i16> zeroinitializer
  %i.bgu = shufflevector <8 x i16> %i.bds, <8 x i16> %i.bgf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bgu, <16 x i16> zeroinitializer)
  %i.bgw = or <16 x i16> %i.bgt, %i.bgv
  %interleaved.vec135 = shufflevector <16 x i16> %i.bgo, <16 x i16> %i.bgw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec135, ptr %i.baz, align 2, !tbaa !39, !alias.scope !127, !noalias !124
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.bgx = icmp eq i64 %index.next136, 64
  br i1 %i.bgx, label %middle.block137, label %vector.body131, !llvm.loop !129

scalar.ph129:                                     ; preds = %vector.memcheck123, %scalar.ph129
  %.020.idx.6 = phi i64 [ %.022.add.6.1, %scalar.ph129 ], [ 0, %vector.memcheck123 ] ; 5 uses
  %.1.6 = phi ptr [ %i.bgz, %scalar.ph129 ], [ %.lcssa, %vector.memcheck123 ]
end_hunk_1
begin_hunk_2_@encrypt_cpa:bb.a
  %i.n = getelementptr [512 x i8], ptr %3, i64 %i.m ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !84   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.083 = phi i8 [ 0, %bb.a ], [ %i.u, %bb.c ]    ; 2 uses
  %.09.i = phi i32 [ %i.l, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.08.i = phi ptr [ %3, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  store i8 %.083, ptr %i.s, align 16, !tbaa !45
  %i.t = call i32 %i.j(ptr noundef nonnull %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !callees !50, !inline_history !51
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.c

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %scalar_encode.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i8 %.083, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef nonnull %.08.i)
  %i.w = add nsw i32 %.09.i, -1
  %i.x = icmp sgt i32 %.09.i, 1
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !52

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  call fastcc void @inner_product(ptr noundef %6, ptr noundef %i.z, ptr noundef %3, i32 noundef %i.l)
  call fastcc void @scalar_inverse_ntt(ptr noundef %6)
  %i.aa = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.aa, label %.preheader.lr.ph.i, label %matrix_mult_intt.exit

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %.not.i50 = icmp eq i32 %i.l, 1
  %i.ad = shl nuw nsw i64 %i.m, 9                 ; 4 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.l, i32 2)
  %i.ae = sub nsw i32 %i.l, %smin
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 9                ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1024             ; 2 uses
  %i.ai = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep105 = getelementptr i8, ptr %i.ai, i64 1022 ; 2 uses
  %i.aj = getelementptr i8, ptr %3, <2 x i64> <i64 512, i64 514>
  %scevgep107 = getelementptr i8, ptr %3, i64 %i.ah ; 2 uses
  %i.ak = add nsw i32 %i.l, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.m, %i.al
  %i.an = shl nuw nsw i64 %i.am, 9                ; 2 uses
  %i.ao = getelementptr i8, ptr %3, i64 %i.an
  %scevgep149 = getelementptr i8, ptr %i.ao, i64 510 ; 5 uses
  %i.ap = getelementptr i8, ptr %3, i64 %i.ad
  %scevgep150 = getelementptr i8, ptr %i.ap, i64 2 ; 5 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.an
  %scevgep151 = getelementptr i8, ptr %i.aq, i64 512 ; 5 uses
  %scevgep153 = getelementptr i8, ptr %3, i64 510 ; 2 uses
  %scevgep154 = getelementptr i8, ptr %3, i64 2   ; 2 uses
  %scevgep155 = getelementptr i8, ptr %3, i64 512 ; 2 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 510
  %i.at = getelementptr i8, ptr %3, i64 %i.ad
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = getelementptr i8, ptr %3, i64 %i.ad
  %i.aw = getelementptr i8, ptr %i.av, i64 512
  %bound0156 = icmp ult ptr %i.n, %scevgep151
  %bound1157 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict158 = and i1 %bound0156, %bound1157
  %bound0163 = icmp ult ptr %i.n, %scevgep153
  %bound1164 = icmp ult ptr %3, %scevgep149
  %found.conflict165 = and i1 %bound0163, %bound1164
  %invariant.op = or i1 %found.conflict158, %found.conflict165
  %bound0167 = icmp ult ptr %i.n, %scevgep155
  %bound1168 = icmp ult ptr %scevgep154, %scevgep149
  %found.conflict169 = and i1 %bound0167, %bound1168
  %invariant.op289 = or i1 %invariant.op, %found.conflict169
  %bound0171 = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1172 = icmp ugt ptr %scevgep149, @kModRoots
  %found.conflict173 = and i1 %bound0171, %bound1172
  %invariant.op290 = or i1 %invariant.op289, %found.conflict173
  %bound0179 = icmp ult ptr %scevgep150, %scevgep153
  %bound1180 = icmp ult ptr %3, %scevgep151
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep150, %scevgep155
  %bound1184 = icmp ult ptr %scevgep154, %scevgep151
  %found.conflict185 = and i1 %bound0183, %bound1184
  %invariant.op291 = or i1 %found.conflict181, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep150, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1188 = icmp ugt ptr %scevgep151, @kModRoots
  %found.conflict189 = and i1 %bound0187, %bound1188
  %invariant.op292 = or i1 %invariant.op291, %found.conflict189
  %i.ax = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep105, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %scevgep107, i64 2
  %i.az = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.ei, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.jb, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 7 uses
  %i.ba = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ba ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.au, i64 %i.ba
  %scevgep102 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %scevgep152 = getelementptr i8, ptr %.01525.i, i64 512 ; 2 uses
  %bound0159 = icmp ult ptr %i.n, %scevgep152
  %bound1160 = icmp ult ptr %.01525.i, %scevgep149
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx174.reass = or i1 %found.conflict161, %invariant.op290
  %bound0175 = icmp ult ptr %scevgep150, %scevgep152
  %bound1176 = icmp ult ptr %.01525.i, %scevgep151
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174.reass, %found.conflict177
  %conflict.rdx190.reass = or i1 %conflict.rdx178, %invariant.op292
  br i1 %conflict.rdx190.reass, label %scalar.ph191, label %vector.body193

vector.body193:                                   ; preds = %.preheader.i, %vector.body193
  %index194 = phi i64 [ %index.next206, %vector.body193 ], [ 0, %.preheader.i ] ; 3 uses
  %i.bb = shl i64 %index194, 1
  %next.gep195 = getelementptr i8, ptr @kModRoots, i64 %i.bb
  %i.bc = shl i64 %index194, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %3, i64 %i.bc
  %next.gep197 = getelementptr i8, ptr %.01525.i, i64 %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.bc
  %wide.vec198 = load <8 x i16>, ptr %next.gep197, align 2, !tbaa !39, !alias.scope !131
  %i.be = freeze <8 x i16> %wide.vec198           ; 2 uses
  %i.bf = bitcast <8 x i16> %i.be to <4 x i32>
  %i.bg = bitcast <8 x i16> %i.be to <4 x i32>
  %i.bh = and <4 x i32> %i.bg, splat (i32 65535)  ; 2 uses
  %i.bi = lshr <4 x i32> %i.bf, splat (i32 16)    ; 2 uses
  %wide.vec201 = load <8 x i16>, ptr %next.gep196, align 2, !tbaa !39
  %i.bj = freeze <8 x i16> %wide.vec201           ; 2 uses
  %i.bk = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bl = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bm = and <4 x i32> %i.bl, splat (i32 65535)  ; 2 uses
  %i.bn = lshr <4 x i32> %i.bk, splat (i32 16)    ; 2 uses
  %wide.load204 = load <4 x i16>, ptr %next.gep195, align 8, !tbaa !39, !alias.scope !134
  %i.bo = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.bp = mul nuw <4 x i32> %i.bm, %i.bh
  %i.bq = mul nuw <4 x i32> %i.bn, %i.bi          ; 2 uses
  %i.br = zext <4 x i32> %i.bq to <4 x i64>
  %i.bs = mul nuw nsw <4 x i64> %i.br, splat (i64 5039)
  %i.bt = lshr <4 x i64> %i.bs, splat (i64 24)
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = mul <4 x i32> %i.bu, splat (i32 62207)
  %i.bw = add <4 x i32> %i.bv, %i.bq
  %i.bx = trunc <4 x i32> %i.bw to <4 x i16>      ; 2 uses
  %i.by = add <4 x i16> %i.bx, splat (i16 -3329)  ; 2 uses
  %i.bz = icmp slt <4 x i16> %i.by, zeroinitializer
  %i.ca = select <4 x i1> %i.bz, <4 x i16> %i.bx, <4 x i16> zeroinitializer
  %i.cb = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.by, <4 x i16> zeroinitializer)
  %i.cc = or <4 x i16> %i.ca, %i.cb
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  %i.ce = mul nuw <4 x i32> %i.cd, %i.bo
  %i.cf = add <4 x i32> %i.ce, %i.bp              ; 2 uses
  %i.cg = zext <4 x i32> %i.cf to <4 x i64>
  %i.ch = mul nuw nsw <4 x i64> %i.cg, splat (i64 5039)
  %i.ci = lshr <4 x i64> %i.ch, splat (i64 24)
  %i.cj = trunc nuw nsw <4 x i64> %i.ci to <4 x i32>
  %i.ck = mul <4 x i32> %i.cj, splat (i32 62207)
  %i.cl = add <4 x i32> %i.ck, %i.cf
  %i.cm = trunc <4 x i32> %i.cl to <4 x i16>      ; 2 uses
  %i.cn = add <4 x i16> %i.cm, splat (i16 -3329)  ; 2 uses
  %i.co = icmp slt <4 x i16> %i.cn, zeroinitializer
  %i.cp = select <4 x i1> %i.co, <4 x i16> %i.cm, <4 x i16> zeroinitializer
  %i.cq = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cn, <4 x i16> zeroinitializer)
  %i.cr = or <4 x i16> %i.cp, %i.cq
  %i.cs = mul nuw <4 x i32> %i.bn, %i.bh
  %i.ct = mul nuw <4 x i32> %i.bi, %i.bm
  %i.cu = add <4 x i32> %i.cs, %i.ct              ; 2 uses
  %i.cv = zext <4 x i32> %i.cu to <4 x i64>
  %i.cw = mul nuw nsw <4 x i64> %i.cv, splat (i64 5039)
  %i.cx = lshr <4 x i64> %i.cw, splat (i64 24)
  %i.cy = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.cz = mul <4 x i32> %i.cy, splat (i32 62207)
  %i.da = add <4 x i32> %i.cz, %i.cu
  %i.db = trunc <4 x i32> %i.da to <4 x i16>      ; 2 uses
  %i.dc = add <4 x i16> %i.db, splat (i16 -3329)  ; 2 uses
  %i.dd = icmp slt <4 x i16> %i.dc, zeroinitializer
  %i.de = select <4 x i1> %i.dd, <4 x i16> %i.db, <4 x i16> zeroinitializer
  %i.df = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.dc, <4 x i16> zeroinitializer)
  %i.dg = or <4 x i16> %i.de, %i.df
  %interleaved.vec205 = shufflevector <4 x i16> %i.cr, <4 x i16> %i.dg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec205, ptr %i.bd, align 2, !tbaa !39
  %index.next206 = add nuw i64 %index194, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next206, 128
  br i1 %i.dh, label %scalar_mult.exit.preheader.i, label %vector.body193, !llvm.loop !136

scalar.ph191:                                     ; preds = %.preheader.i, %scalar.ph191
  %.023.i.i = phi ptr [ %11, %scalar.ph191 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %10, %scalar.ph191 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.dn, %scalar.ph191 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph191 ], [ 0, %.preheader.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.dk = load i16, ptr %.021.i.i, align 2, !tbaa !39
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %7 = load i16, ptr %.022.i.i, align 2, !tbaa !39
  %8 = zext i16 %7 to i32                         ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.do = load i16, ptr %i.dj, align 2, !tbaa !39
  %9 = zext i16 %i.do to i32                      ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.dp = load i16, ptr %i.dm, align 2, !tbaa !39
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %12 = load i16, ptr %.023.i.i, align 2, !tbaa !39
  %i.dr = zext i16 %12 to i32
  %13 = mul nuw i32 %8, %i.dl
  %i.ds = mul nuw i32 %i.dq, %9                   ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul nuw nsw i64 %i.dt, 5039
  %i.dv = lshr i64 %i.du, 24
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %.neg.i.i.i = mul i32 %i.dw, 62207
  %i.dx = add i32 %.neg.i.i.i, %i.ds
  %i.dy = trunc i32 %i.dx to i16                  ; 2 uses
  %i.dz = add i16 %i.dy, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.dz, 0
  %i.ea = select i1 %isneg.i.i.i.i, i16 %i.dy, i16 0
  %i.eb = call i16 @llvm.smax.i16(i16 %i.dz, i16 0)
  %i.ec = or i16 %i.ea, %i.eb
  %i.ed = zext i16 %i.ec to i32
  %i.ee = mul nuw i32 %i.ed, %i.dr
  %14 = add i32 %i.ee, %13                        ; 2 uses
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, 5039
  %17 = lshr i64 %16, 24
  %18 = trunc nuw nsw i64 %17 to i32
  %i.ef = mul i32 %18, 62207
  %i.eg = add i32 %i.ef, %14
  %19 = trunc i32 %i.eg to i16                    ; 2 uses
  %20 = add i16 %19, -3329                        ; 2 uses
  %isneg.i.i25.i.i = icmp slt i16 %20, 0
  %21 = select i1 %isneg.i.i25.i.i, i16 %19, i16 0
  %22 = call i16 @llvm.smax.i16(i16 %20, i16 0)
  %23 = or i16 %21, %22
  %24 = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %23, ptr %i.di, align 2, !tbaa !39
  %25 = mul nuw i32 %i.dq, %i.dl
  %.neg.i26.i.i.a = mul nuw i32 %9, %8
  %26 = add i32 %25, %.neg.i26.i.i.a              ; 2 uses
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 5039
  %29 = lshr i64 %28, 24
  %30 = trunc nuw nsw i64 %29 to i32
  %.neg.i26.i.i = mul i32 %30, 62207
  %31 = add i32 %.neg.i26.i.i, %26
  %32 = trunc i32 %31 to i16                      ; 2 uses
  %33 = add i16 %32, -3329                        ; 2 uses
  %isneg.i.i27.i.i = icmp slt i16 %33, 0
  %34 = select i1 %isneg.i.i27.i.i, i16 %32, i16 0
  %35 = call i16 @llvm.smax.i16(i16 %33, i16 0)
  %36 = or i16 %34, %35
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  store i16 %36, ptr %24, align 2, !tbaa !39
  %i.eh = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.eh, label %scalar.ph191, label %scalar_mult.exit.preheader.i, !llvm.loop !137

scalar_mult.exit.preheader.i:                     ; preds = %vector.body193, %scalar.ph191
  %i.ei = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 4 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %scevgep103 = getelementptr i8, ptr %.01525.i, i64 %i.ah ; 2 uses
  %i.ej = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.ek = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.el = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0 ; 2 uses
  %i.em = insertelement <4 x ptr> %i.el, ptr %scevgep103, i64 1
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep105, i64 2
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep107, i64 3
  %i.ep = insertelement <4 x ptr> poison, ptr %scevgep101, i64 0 ; 2 uses
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %.121.i, i64 1
  %i.er = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.es = shufflevector <4 x ptr> %i.er, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.et = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eu = insertelement <4 x ptr> %i.ay, ptr %scevgep103, i64 0
  %i.ev = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %i.ew = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ex = shufflevector <4 x ptr> %i.eq, <4 x ptr> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ey = shufflevector <4 x ptr> %i.ev, <4 x ptr> %i.az, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ez = icmp ult <4 x ptr> %i.ek, %i.eo
  %i.fa = icmp ult <4 x ptr> %i.ex, %i.es
  %i.fb = and <4 x i1> %i.ez, %i.fa
  %bound0119 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1120 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.fc = icmp ult <4 x ptr> %i.et, %i.eu
  %i.fd = insertelement <4 x ptr> %i.ey, ptr @kModRoots, i64 3
  %i.fe = icmp ult <4 x ptr> %i.fd, %i.ew
  %i.ff = and <4 x i1> %i.fc, %i.fe
  %rdx.op = or <4 x i1> %i.fb, %i.ff
  %i.fg = bitcast <4 x i1> %rdx.op to i4
  %i.fh = icmp ne i4 %i.fg, 0
  %op.rdx = or i1 %i.fh, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.fi, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.fj
  %i.fk = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.fi, i64 %i.fk
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.fk
  %i.fl = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.fk ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !39, !alias.scope !138
  %i.fm = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.fn = bitcast <8 x i16> %i.fm to <4 x i32>
  %i.fo = bitcast <8 x i16> %i.fm to <4 x i32>
  %i.fp = and <4 x i32> %i.fo, splat (i32 65535)  ; 2 uses
  %i.fq = lshr <4 x i32> %i.fn, splat (i32 16)    ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !39
  %i.fr = freeze <8 x i16> %wide.vec142           ; 2 uses
  %i.fs = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.ft = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.fu = and <4 x i32> %i.ft, splat (i32 65535)  ; 2 uses
  %i.fv = lshr <4 x i32> %i.fs, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !141
  %i.fw = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !39
  %i.fx = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.fy = bitcast <8 x i16> %i.fx to <4 x i32>
  %i.fz = bitcast <8 x i16> %i.fx to <4 x i32>
  %i.ga = and <4 x i32> %i.fz, splat (i32 65535)
  %i.gb = lshr <4 x i32> %i.fy, splat (i32 16)
  %i.gc = mul nuw <4 x i32> %i.fu, %i.fp
  %i.gd = add nuw <4 x i32> %i.gc, %i.ga
  %i.ge = mul nuw <4 x i32> %i.fv, %i.fq          ; 2 uses
  %i.gf = zext <4 x i32> %i.ge to <4 x i64>
  %i.gg = mul nuw nsw <4 x i64> %i.gf, splat (i64 5039)
  %i.gh = lshr <4 x i64> %i.gg, splat (i64 24)
  %i.gi = trunc nuw nsw <4 x i64> %i.gh to <4 x i32>
  %i.gj = mul <4 x i32> %i.gi, splat (i32 62207)
  %i.gk = add <4 x i32> %i.gj, %i.ge
  %i.gl = trunc <4 x i32> %i.gk to <4 x i16>      ; 2 uses
  %i.gm = add <4 x i16> %i.gl, splat (i16 -3329)  ; 2 uses
  %i.gn = icmp slt <4 x i16> %i.gm, zeroinitializer
  %i.go = select <4 x i1> %i.gn, <4 x i16> %i.gl, <4 x i16> zeroinitializer
  %i.gp = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gm, <4 x i16> zeroinitializer)
  %i.gq = or <4 x i16> %i.go, %i.gp
  %i.gr = zext <4 x i16> %i.gq to <4 x i32>
  %i.gs = mul nuw <4 x i32> %i.gr, %i.fw
  %i.gt = add <4 x i32> %i.gd, %i.gs              ; 2 uses
  %i.gu = zext <4 x i32> %i.gt to <4 x i64>
  %i.gv = mul nuw nsw <4 x i64> %i.gu, splat (i64 5039)
  %i.gw = lshr <4 x i64> %i.gv, splat (i64 24)
  %i.gx = trunc nuw nsw <4 x i64> %i.gw to <4 x i32>
  %i.gy = mul <4 x i32> %i.gx, splat (i32 62207)
  %i.gz = add <4 x i32> %i.gy, %i.gt
  %i.ha = trunc <4 x i32> %i.gz to <4 x i16>      ; 2 uses
  %i.hb = add <4 x i16> %i.ha, splat (i16 -3329)  ; 2 uses
  %i.hc = icmp slt <4 x i16> %i.hb, zeroinitializer
  %i.hd = select <4 x i1> %i.hc, <4 x i16> %i.ha, <4 x i16> zeroinitializer
  %i.he = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hb, <4 x i16> zeroinitializer)
  %i.hf = or <4 x i16> %i.hd, %i.he
  %i.hg = mul nuw <4 x i32> %i.fv, %i.fp
  %i.hh = mul nuw <4 x i32> %i.fq, %i.fu
  %i.hi = add <4 x i32> %i.hg, %i.hh
  %i.hj = add <4 x i32> %i.hi, %i.gb              ; 2 uses
  %i.hk = zext <4 x i32> %i.hj to <4 x i64>
  %i.hl = mul nuw nsw <4 x i64> %i.hk, splat (i64 5039)
  %i.hm = lshr <4 x i64> %i.hl, splat (i64 24)
  %i.hn = trunc nuw nsw <4 x i64> %i.hm to <4 x i32>
  %i.ho = mul <4 x i32> %i.hn, splat (i32 62207)
  %i.hp = add <4 x i32> %i.ho, %i.hj
  %i.hq = trunc <4 x i32> %i.hp to <4 x i16>      ; 2 uses
  %i.hr = add <4 x i16> %i.hq, splat (i16 -3329)  ; 2 uses
  %i.hs = icmp slt <4 x i16> %i.hr, zeroinitializer
  %i.ht = select <4 x i1> %i.hs, <4 x i16> %i.hq, <4 x i16> zeroinitializer
  %i.hu = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hr, <4 x i16> zeroinitializer)
  %i.hv = or <4 x i16> %i.ht, %i.hu
  %interleaved.vec = shufflevector <4 x i16> %i.hf, <4 x i16> %i.hv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.fl, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, 128
  br i1 %i.hw, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !143

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %40, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.if, %scalar.ph ], [ %i.fi, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.ie, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.hz = load i16, ptr %.025.i.i, align 2, !tbaa !39
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ic = load i16, ptr %.026.i.i, align 2, !tbaa !39
  %i.id = zext i16 %i.ic to i32                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %37 = load i16, ptr %i.hy, align 2, !tbaa !39
  %38 = zext i16 %37 to i32                       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.ig = load i16, ptr %i.ib, align 2, !tbaa !39
  %i.ih = zext i16 %i.ig to i32                   ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 2 uses
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %40 = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.ii = load i16, ptr %.027.i.i, align 2, !tbaa !39
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i16, ptr %i.hx, align 2, !tbaa !39
  %41 = zext i16 %i.ik to i32
  %42 = mul nuw i32 %i.id, %i.ia
  %43 = add nuw i32 %42, %41
  %i.il = mul nuw i32 %i.ih, %38                  ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw nsw i64 %i.im, 5039
  %i.io = lshr i64 %i.in, 24
  %i.ip = trunc nuw nsw i64 %i.io to i32
  %.neg.i.i19.i = mul i32 %i.ip, 62207
  %i.iq = add i32 %.neg.i.i19.i, %i.il
  %i.ir = trunc i32 %i.iq to i16                  ; 2 uses
  %i.is = add i16 %i.ir, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.is, 0
  %i.it = select i1 %isneg.i.i.i20.i, i16 %i.ir, i16 0
  %i.iu = call i16 @llvm.smax.i16(i16 %i.is, i16 0)
  %i.iv = or i16 %i.it, %i.iu
  %i.iw = zext i16 %i.iv to i32
  %i.ix = mul nuw i32 %i.iw, %i.ij
  %44 = add i32 %43, %i.ix                        ; 2 uses
  %45 = zext i32 %44 to i64
  %46 = mul nuw nsw i64 %45, 5039
  %47 = lshr i64 %46, 24
  %48 = trunc nuw nsw i64 %47 to i32
  %.neg.i28.i.i = mul i32 %48, 62207
  %i.iy = add i32 %.neg.i28.i.i, %44
  %49 = trunc i32 %i.iy to i16                    ; 2 uses
  %50 = add i16 %49, -3329                        ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %50, 0
  %51 = select i1 %isneg.i.i29.i.i, i16 %49, i16 0
  %52 = call i16 @llvm.smax.i16(i16 %50, i16 0)
  %53 = or i16 %51, %52
  store i16 %53, ptr %i.hx, align 2, !tbaa !39
  %54 = load i16, ptr %39, align 2, !tbaa !39
  %55 = zext i16 %54 to i32
  %.neg.i30.i.i.a = mul nuw i32 %i.ih, %i.ia
  %.neg.i28.i.i.a = mul nuw i32 %38, %i.id
  %56 = add i32 %.neg.i30.i.i.a, %.neg.i28.i.i.a
  %57 = add i32 %56, %55                          ; 2 uses
  %58 = zext i32 %57 to i64
  %59 = mul nuw nsw i64 %58, 5039
  %60 = lshr i64 %59, 24
  %61 = trunc nuw nsw i64 %60 to i32
  %.neg.i30.i.i = mul i32 %61, 62207
  %62 = add i32 %.neg.i30.i.i, %57
  %63 = trunc i32 %62 to i16                      ; 2 uses
  %64 = add i16 %63, -3329                        ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %64, 0
  %65 = select i1 %isneg.i.i31.i.i, i16 %63, i16 0
  %66 = call i16 @llvm.smax.i16(i16 %64, i16 0)
  %67 = or i16 %65, %66
  store i16 %67, ptr %39, align 2, !tbaa !39
  %i.iz = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.iz, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !144

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.ja = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.ja, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !145

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.jb = getelementptr i8, ptr %.01426.i, i64 512
  %i.jc = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jc, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !146

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.je = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block215, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.jf, %middle.block215 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.ko, %middle.block215 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.kn, %middle.block215 ] ; 2 uses
  %i.jf = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.jd, align 16, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.val.i.i = load ptr, ptr %i.je, align 8, !tbaa !25
  %i.jg = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body210

vector.body210:                                   ; preds = %bb.e, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %bb.e ] ; 3 uses
  %i.jh = shl nuw i64 %index211, 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %index211
  %i.jj = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.jh
  %wide.load212 = load <4 x i8>, ptr %i.ji, align 4, !tbaa !45
  %i.jk = zext <4 x i8> %wide.load212 to <4 x i32> ; 8 uses
  %i.jl = and <4 x i32> %i.jk, splat (i32 1)
  %i.jm = lshr <4 x i32> %i.jk, splat (i32 1)
  %i.jn = and <4 x i32> %i.jm, splat (i32 1)
  %i.jo = shl <4 x i32> %i.jk, splat (i32 29)
  %i.jp = ashr <4 x i32> %i.jo, splat (i32 31)
  %i.jq = shl <4 x i32> %i.jk, splat (i32 28)
  %i.jr = ashr <4 x i32> %i.jq, splat (i32 31)
  %i.js = add nsw <4 x i32> %i.jr, %i.jl
  %i.jt = add nsw <4 x i32> %i.js, %i.jp
  %i.ju = add nsw <4 x i32> %i.jt, %i.jn          ; 2 uses
  %i.jv = icmp slt <4 x i32> %i.ju, zeroinitializer
  %i.jw = select <4 x i1> %i.jv, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.jx = add nsw <4 x i32> %i.jw, %i.ju
  %i.jy = lshr <4 x i32> %i.jk, splat (i32 4)
  %i.jz = and <4 x i32> %i.jy, splat (i32 1)
  %i.ka = lshr <4 x i32> %i.jk, splat (i32 5)
  %i.kb = and <4 x i32> %i.ka, splat (i32 1)
  %i.kc = shl <4 x i32> %i.jk, splat (i32 25)
  %i.kd = ashr <4 x i32> %i.kc, splat (i32 31)
  %i.ke = lshr <4 x i32> %i.jk, splat (i32 7)
  %i.kf = sub nsw <4 x i32> %i.kb, %i.ke
  %i.kg = add nsw <4 x i32> %i.kf, %i.jz
  %i.kh = add nsw <4 x i32> %i.kg, %i.kd          ; 2 uses
  %i.ki = icmp slt <4 x i32> %i.kh, zeroinitializer
  %i.kj = select <4 x i1> %i.ki, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.kk = add nsw <4 x i32> %i.kj, %i.kh
  %i.kl = shufflevector <4 x i32> %i.jx, <4 x i32> %i.kk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec213 = trunc nsw <8 x i32> %i.kl to <8 x i16>
  store <8 x i16> %interleaved.vec213, ptr %i.jj, align 2, !tbaa !39
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next214, 128
  br i1 %i.km, label %middle.block215, label %vector.body210, !llvm.loop !147

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %scalar_encode.exit

middle.block215:                                  ; preds = %vector.body210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.kn = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.ko = add nsw i32 %.08.i52, -1
  %i.kp = icmp sgt i32 %.08.i52, 1
  br i1 %i.kp, label %bb.e, label %bb.f, !llvm.loop !148

bb.f:                                             ; preds = %middle.block215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %smin217 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %i.kq = sub i32 %i.l, %smin217
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kr, 9
  %i.kt = add nsw i64 %i.m, %i.kr
  %i.ku = shl nsw i64 %i.kt, 9
  %i.kv = getelementptr i8, ptr %3, i64 %i.ku
  %scevgep218 = getelementptr i8, ptr %i.kv, i64 512
  %i.kw = getelementptr i8, ptr %3, i64 %i.ks
  %scevgep219 = getelementptr i8, ptr %i.kw, i64 512
  %bound0220 = icmp ult ptr %i.n, %scevgep219
  %bound1221 = icmp ult ptr %3, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  br label %vector.memcheck216

vector.memcheck216:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.mg, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.mh, %scalar_add.exit.i ] ; 4 uses
  %.0.i54 = phi i32 [ %i.l, %bb.f ], [ %i.mi, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict222, label %scalar.ph223, label %vector.body225

vector.body225:                                   ; preds = %vector.memcheck216, %vector.body225
  %index226 = phi i64 [ %index.next231, %vector.body225 ], [ 0, %vector.memcheck216 ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %index226 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %wide.load227 = load <8 x i16>, ptr %i.kx, align 2, !tbaa !39, !alias.scope !149, !noalias !152
  %wide.load228 = load <8 x i16>, ptr %i.ky, align 2, !tbaa !39, !alias.scope !149, !noalias !152
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %index226 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load229 = load <8 x i16>, ptr %i.kz, align 2, !tbaa !39, !alias.scope !152
  %wide.load230 = load <8 x i16>, ptr %i.la, align 2, !tbaa !39, !alias.scope !152
  %i.lb = add <8 x i16> %wide.load229, %wide.load227 ; 2 uses
  %i.lc = add <8 x i16> %wide.load230, %wide.load228 ; 2 uses
  %i.ld = add <8 x i16> %i.lb, splat (i16 -3329)  ; 2 uses
  %i.le = add <8 x i16> %i.lc, splat (i16 -3329)  ; 2 uses
  %i.lf = icmp slt <8 x i16> %i.ld, zeroinitializer
  %i.lg = icmp slt <8 x i16> %i.le, zeroinitializer
  %i.lh = select <8 x i1> %i.lf, <8 x i16> %i.lb, <8 x i16> zeroinitializer
  %i.li = select <8 x i1> %i.lg, <8 x i16> %i.lc, <8 x i16> zeroinitializer
  %i.lj = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ld, <8 x i16> zeroinitializer)
  %i.lk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.le, <8 x i16> zeroinitializer)
  %i.ll = or <8 x i16> %i.lh, %i.lj
  %i.lm = or <8 x i16> %i.li, %i.lk
  store <8 x i16> %i.ll, ptr %i.kx, align 2, !tbaa !39, !alias.scope !149, !noalias !152
  store <8 x i16> %i.lm, ptr %i.ky, align 2, !tbaa !39, !alias.scope !149, !noalias !152
  %index.next231 = add nuw i64 %index226, 16      ; 2 uses
  %i.ln = icmp eq i64 %index.next231, 256
  br i1 %i.ln, label %scalar_add.exit.i, label %vector.body225, !llvm.loop !154

scalar.ph223:                                     ; preds = %vector.memcheck216, %scalar.ph223
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph223 ], [ 0, %vector.memcheck216 ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.i.i ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !39
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.i.i
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !39
  %i.ls = add i16 %i.lr, %i.lp                    ; 2 uses
  %i.lt = add i16 %i.ls, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.lt, 0
  %i.lu = select i1 %isneg.i.i.i, i16 %i.ls, i16 0
  %i.lv = call i16 @llvm.smax.i16(i16 %i.lt, i16 0)
  %i.lw = or i16 %i.lu, %i.lv
  store i16 %i.lw, ptr %i.lo, align 2, !tbaa !39
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !39
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.next.i.i
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = add i16 %i.ma, %i.ly                    ; 2 uses
  %i.mc = add i16 %i.mb, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.mc, 0
  %i.md = select i1 %isneg.i.i.i.1, i16 %i.mb, i16 0
  %i.me = call i16 @llvm.smax.i16(i16 %i.mc, i16 0)
  %i.mf = or i16 %i.md, %i.me
  store i16 %i.mf, ptr %i.lx, align 2, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i55.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i55.1, label %scalar_add.exit.i, label %scalar.ph223, !llvm.loop !155

scalar_add.exit.i:                                ; preds = %vector.body225, %scalar.ph223
  %i.mg = getelementptr inbounds nuw i8, ptr %.03.i, i64 512
  %i.mh = getelementptr inbounds nuw i8, ptr %.02.i, i64 512
  %i.mi = add nsw i32 %.0.i54, -1
  %i.mj = icmp sgt i32 %.0.i54, 1
  br i1 %i.mj, label %vector.memcheck216, label %vector_add.exit, !llvm.loop !156

vector_add.exit:                                  ; preds = %scalar_add.exit.i
  %notmask.i.i.i = shl nsw i32 -1, %i.p
  %i.mk = xor i32 %notmask.i.i.i, -1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <8 x i32> poison, i32 %i.mk, i64 0
  %broadcast.splat236 = shufflevector <8 x i32> %broadcast.splatinsert235, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.ph234

vector.ph234:                                     ; preds = %vector_add.exit, %scalar_compress.exit.i
  %.02.i56 = phi ptr [ %i.n, %vector_add.exit ], [ %i.nf, %scalar_compress.exit.i ] ; 2 uses
  %.0.i57 = phi i32 [ %i.l, %vector_add.exit ], [ %i.ng, %scalar_compress.exit.i ] ; 2 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph234
  %index238 = phi i64 [ 0, %vector.ph234 ], [ %index.next240, %vector.body237 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.02.i56, i64 %index238 ; 2 uses
  %wide.load239 = load <8 x i16>, ptr %i.ml, align 2, !tbaa !39
  %i.mm = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.mn = shl <8 x i32> %i.mm, %broadcast.splat   ; 2 uses
  %i.mo = zext <8 x i32> %i.mn to <8 x i64>
  %i.mp = mul nuw nsw <8 x i64> %i.mo, splat (i64 5039)
  %i.mq = lshr <8 x i64> %i.mp, splat (i64 24)
  %i.mr = trunc nuw nsw <8 x i64> %i.mq to <8 x i32> ; 2 uses
  %i.ms = mul <8 x i32> %i.mr, splat (i32 -3329)
end_hunk_2
begin_hunk_3_@encrypt_cpa:bb.a
  %i.aak = shufflevector <16 x i16> %i.aai, <16 x i16> %i.aaj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aal = icmp slt <32 x i16> %i.aak, zeroinitializer
  %i.aam = shufflevector <8 x i16> %i.wh, <8 x i16> %i.xm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aan = shufflevector <8 x i16> %i.yr, <8 x i16> %i.zt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aao = shufflevector <16 x i16> %i.aam, <16 x i16> %i.aan, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aap = select <32 x i1> %i.aal, <32 x i16> %i.aao, <32 x i16> zeroinitializer
  %i.aaq = shufflevector <8 x i16> %i.wi, <8 x i16> %i.xn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aar = shufflevector <8 x i16> %i.ys, <8 x i16> %i.zu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aas = shufflevector <16 x i16> %i.aaq, <16 x i16> %i.aar, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aat = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.aas, <32 x i16> zeroinitializer)
  %i.aau = or <32 x i16> %i.aap, %i.aat
  %interleaved.vec266 = shufflevector <32 x i16> %i.aah, <32 x i16> %i.aau, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec266, ptr %i.qe, align 2, !tbaa !39
  %index.next267 = add nuw i64 %index263, 8       ; 2 uses
  %i.aav = icmp eq i64 %index.next267, 32
  br i1 %i.aav, label %vector.ph270, label %vector.body262, !llvm.loop !161

vector.ph270:                                     ; preds = %vector.body262
  %notmask.i.i = shl nsw i32 -1, %i.r
  %i.aaw = xor i32 %notmask.i.i, -1
  %broadcast.splatinsert271 = insertelement <8 x i32> poison, i32 %i.aaw, i64 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph270
  %index276 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body275 ] ; 2 uses
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index276 ; 2 uses
  %wide.load277 = load <8 x i16>, ptr %i.aax, align 2, !tbaa !39
  %i.aay = zext <8 x i16> %wide.load277 to <8 x i32>
  %i.aaz = shl <8 x i32> %i.aay, %broadcast.splat274 ; 2 uses
  %i.aba = zext <8 x i32> %i.aaz to <8 x i64>
  %i.abb = mul nuw nsw <8 x i64> %i.aba, splat (i64 5039)
  %i.abc = lshr <8 x i64> %i.abb, splat (i64 24)
  %i.abd = trunc nuw nsw <8 x i64> %i.abc to <8 x i32> ; 2 uses
  %i.abe = mul <8 x i32> %i.abd, splat (i32 -3329)
  %i.abf = add <8 x i32> %i.abe, %i.aaz           ; 4 uses
  %i.abg = sub <8 x i32> splat (i32 1664), %i.abf
  %i.abh = or <8 x i32> %i.abg, %i.abf
  %i.abi = lshr <8 x i32> %i.abh, splat (i32 31)
  %i.abj = add nuw nsw <8 x i32> %i.abi, %i.abd
  %i.abk = sub <8 x i32> splat (i32 4993), %i.abf
  %i.abl = or <8 x i32> %i.abk, %i.abf
  %i.abm = lshr <8 x i32> %i.abl, splat (i32 31)
  %i.abn = add nuw nsw <8 x i32> %i.abj, %i.abm
  %i.abo = and <8 x i32> %i.abn, %broadcast.splat272
  %i.abp = trunc <8 x i32> %i.abo to <8 x i16>
  store <8 x i16> %i.abp, ptr %i.aax, align 2, !tbaa !39
  %index.next278 = add nuw i64 %index276, 8       ; 2 uses
  %i.abq = icmp eq i64 %index.next278, 256
  br i1 %i.abq, label %scalar_compress.exit, label %vector.body275, !llvm.loop !162

scalar_compress.exit:                             ; preds = %vector.body275
  %i.abr = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !88
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 %i.abs
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %scalar_compress.exit
  %.029.idx.i = phi i64 [ 0, %scalar_compress.exit ], [ %.029.add.i, %bb.q ] ; 3 uses
  %.027.i = phi i64 [ 0, %scalar_compress.exit ], [ %.128.i, %bb.q ] ; 2 uses
  %.025.i = phi ptr [ %i.abt, %scalar_compress.exit ], [ %.126.i, %bb.q ] ; 3 uses
  %.0.i78 = phi i32 [ 0, %scalar_compress.exit ], [ %.1.i80, %bb.q ] ; 4 uses
  %.029.ptr.i = getelementptr inbounds nuw i8, ptr %6, i64 %.029.idx.i
  %.029.add.i = add nuw nsw i64 %.029.idx.i, 2
  %i.abu = load i16, ptr %.029.ptr.i, align 2, !tbaa !39
  %i.abv = zext i16 %i.abu to i64                 ; 3 uses
  %i.abw = add nsw i32 %.0.i78, %i.r              ; 4 uses
  %i.abx = icmp slt i32 %i.abw, 64
  br i1 %i.abx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aby = zext nneg i32 %.0.i78 to i64
  %i.abz = shl i64 %i.abv, %i.aby
  %i.aca = or i64 %i.abz, %.027.i
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.i79 = icmp eq i32 %i.abw, 64
  %i.acb = zext nneg i32 %.0.i78 to i64
  %i.acc = shl i64 %i.abv, %i.acb
  %i.acd = or i64 %i.acc, %.027.i
  store i64 %i.acd, ptr %.025.i, align 1
  %i.ace = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  br i1 %.not.i79, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.acf = sub nsw i32 64, %.0.i78
  %i.acg = zext nneg i32 %i.acf to i64
  %i.ach = lshr i64 %i.abv, %i.acg
  %i.aci = add nsw i32 %i.abw, -64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.128.i = phi i64 [ %i.aca, %bb.n ], [ %i.ach, %bb.p ], [ 0, %bb.o ]
  %.126.i = phi ptr [ %.025.i, %bb.n ], [ %i.ace, %bb.p ], [ %i.ace, %bb.o ]
  %.1.i80 = phi i32 [ %i.abw, %bb.n ], [ %i.aci, %bb.p ], [ 0, %bb.o ]
  %i.acj = icmp samesign ult i64 %.029.idx.i, 510
  br i1 %i.acj, label %bb.m, label %scalar_encode.exit, !llvm.loop !41

scalar_encode.exit:                               ; preds = %bb.q, %cbd_2.exit.thread, %gencbd_vector.exit.thread, %gencbd_vector_ntt.exit.thread
  %.0 = phi i32 [ 0, %cbd_2.exit.thread ], [ 0, %gencbd_vector.exit.thread ], [ 0, %gencbd_vector_ntt.exit.thread ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @inner_product(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #10 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 3 uses
  %scevgep17 = getelementptr i8, ptr %1, i64 512
  %scevgep18 = getelementptr i8, ptr %2, i64 512
  %bound0 = icmp ult ptr %0, %scevgep17
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult ptr %0, %scevgep18
  %bound120 = icmp ult ptr %2, %scevgep
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound123 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.a = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.a
  %i.b = shl i64 %index, 2                        ; 3 uses
  %next.gep26 = getelementptr i8, ptr %2, i64 %i.b
  %next.gep27 = getelementptr i8, ptr %1, i64 %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %wide.vec = load <8 x i16>, ptr %next.gep27, align 2, !tbaa !39, !alias.scope !163
  %i.d = freeze <8 x i16> %wide.vec               ; 2 uses
  %i.e = bitcast <8 x i16> %i.d to <4 x i32>
  %i.f = bitcast <8 x i16> %i.d to <4 x i32>
  %i.g = and <4 x i32> %i.f, splat (i32 65535)    ; 2 uses
  %i.h = lshr <4 x i32> %i.e, splat (i32 16)      ; 2 uses
  %wide.vec29 = load <8 x i16>, ptr %next.gep26, align 2, !tbaa !39, !alias.scope !166
  %i.i = freeze <8 x i16> %wide.vec29             ; 2 uses
  %i.j = bitcast <8 x i16> %i.i to <4 x i32>
  %i.k = bitcast <8 x i16> %i.i to <4 x i32>
  %i.l = and <4 x i32> %i.k, splat (i32 65535)    ; 2 uses
  %i.m = lshr <4 x i32> %i.j, splat (i32 16)      ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !168
  %i.n = zext <4 x i16> %wide.load to <4 x i32>
  %i.o = mul nuw <4 x i32> %i.l, %i.g
  %i.p = mul nuw <4 x i32> %i.m, %i.h             ; 2 uses
  %i.q = zext <4 x i32> %i.p to <4 x i64>
  %i.r = mul nuw nsw <4 x i64> %i.q, splat (i64 5039)
  %i.s = lshr <4 x i64> %i.r, splat (i64 24)
  %i.t = trunc nuw nsw <4 x i64> %i.s to <4 x i32>
  %i.u = mul <4 x i32> %i.t, splat (i32 62207)
  %i.v = add <4 x i32> %i.u, %i.p
  %i.w = trunc <4 x i32> %i.v to <4 x i16>        ; 2 uses
  %i.x = add <4 x i16> %i.w, splat (i16 -3329)    ; 2 uses
  %i.y = icmp slt <4 x i16> %i.x, zeroinitializer
  %i.z = select <4 x i1> %i.y, <4 x i16> %i.w, <4 x i16> zeroinitializer
  %i.aa = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.x, <4 x i16> zeroinitializer)
  %i.ab = or <4 x i16> %i.z, %i.aa
  %i.ac = zext <4 x i16> %i.ab to <4 x i32>
  %i.ad = mul nuw <4 x i32> %i.ac, %i.n
  %i.ae = add <4 x i32> %i.ad, %i.o               ; 2 uses
  %i.af = zext <4 x i32> %i.ae to <4 x i64>
  %i.ag = mul nuw nsw <4 x i64> %i.af, splat (i64 5039)
  %i.ah = lshr <4 x i64> %i.ag, splat (i64 24)
  %i.ai = trunc nuw nsw <4 x i64> %i.ah to <4 x i32>
  %i.aj = mul <4 x i32> %i.ai, splat (i32 62207)
  %i.ak = add <4 x i32> %i.aj, %i.ae
  %i.al = trunc <4 x i32> %i.ak to <4 x i16>      ; 2 uses
  %i.am = add <4 x i16> %i.al, splat (i16 -3329)  ; 2 uses
  %i.an = icmp slt <4 x i16> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x i16> %i.al, <4 x i16> zeroinitializer
  %i.ap = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.am, <4 x i16> zeroinitializer)
  %i.aq = or <4 x i16> %i.ao, %i.ap
  %i.ar = mul nuw <4 x i32> %i.m, %i.g
  %i.as = mul nuw <4 x i32> %i.h, %i.l
  %i.at = add <4 x i32> %i.ar, %i.as              ; 2 uses
  %i.au = zext <4 x i32> %i.at to <4 x i64>
  %i.av = mul nuw nsw <4 x i64> %i.au, splat (i64 5039)
  %i.aw = lshr <4 x i64> %i.av, splat (i64 24)
  %i.ax = trunc nuw nsw <4 x i64> %i.aw to <4 x i32>
  %i.ay = mul <4 x i32> %i.ax, splat (i32 62207)
  %i.az = add <4 x i32> %i.ay, %i.at
  %i.ba = trunc <4 x i32> %i.az to <4 x i16>      ; 2 uses
  %i.bb = add <4 x i16> %i.ba, splat (i16 -3329)  ; 2 uses
  %i.bc = icmp slt <4 x i16> %i.bb, zeroinitializer
  %i.bd = select <4 x i1> %i.bc, <4 x i16> %i.ba, <4 x i16> zeroinitializer
  %i.be = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bb, <4 x i16> zeroinitializer)
  %i.bf = or <4 x i16> %i.bd, %i.be
  %interleaved.vec = shufflevector <4 x i16> %i.aq, <4 x i16> %i.bf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.c, align 2, !tbaa !39, !alias.scope !170, !noalias !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, 128
  br i1 %i.bg, label %scalar_mult.exit.preheader, label %vector.body, !llvm.loop !173

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.023.i = phi ptr [ %8, %scalar.ph ], [ @kModRoots, %vector.memcheck ] ; 2 uses
  %.022.i = phi ptr [ %7, %scalar.ph ], [ %2, %vector.memcheck ] ; 3 uses
  %.021.i = phi ptr [ %i.bm, %scalar.ph ], [ %1, %vector.memcheck ] ; 3 uses
  %.0.idx.i = phi i64 [ %.0.add.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  %i.bj = load i16, ptr %.021.i, align 2, !tbaa !39
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  %4 = load i16, ptr %.022.i, align 2, !tbaa !39
  %5 = zext i16 %4 to i32                         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  %i.bn = load i16, ptr %i.bi, align 2, !tbaa !39
  %6 = zext i16 %i.bn to i32                      ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.bo = load i16, ptr %i.bl, align 2, !tbaa !39
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %9 = load i16, ptr %.023.i, align 2, !tbaa !39
  %i.bq = zext i16 %9 to i32
  %10 = mul nuw i32 %5, %i.bk
  %i.br = mul nuw i32 %i.bp, %6                   ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bs, 5039
  %i.bu = lshr i64 %i.bt, 24
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %.neg.i.i = mul i32 %i.bv, 62207
  %i.bw = add i32 %.neg.i.i, %i.br
  %i.bx = trunc i32 %i.bw to i16                  ; 2 uses
  %i.by = add i16 %i.bx, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.by, 0
  %i.bz = select i1 %isneg.i.i.i, i16 %i.bx, i16 0
  %i.ca = tail call i16 @llvm.smax.i16(i16 %i.by, i16 0)
  %i.cb = or i16 %i.bz, %i.ca
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul nuw i32 %i.cc, %i.bq
  %11 = add i32 %i.cd, %10                        ; 2 uses
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 5039
  %14 = lshr i64 %13, 24
  %15 = trunc nuw nsw i64 %14 to i32
  %i.ce = mul i32 %15, 62207
  %i.cf = add i32 %i.ce, %11
  %16 = trunc i32 %i.cf to i16                    ; 2 uses
  %17 = add i16 %16, -3329                        ; 2 uses
  %isneg.i.i25.i = icmp slt i16 %17, 0
  %18 = select i1 %isneg.i.i25.i, i16 %16, i16 0
  %19 = tail call i16 @llvm.smax.i16(i16 %17, i16 0)
  %20 = or i16 %18, %19
  %21 = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %20, ptr %i.bh, align 2, !tbaa !39
  %22 = mul nuw i32 %i.bp, %i.bk
  %.neg.i26.i.a = mul nuw i32 %6, %5
  %23 = add i32 %22, %.neg.i26.i.a                ; 2 uses
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, 5039
  %26 = lshr i64 %25, 24
  %27 = trunc nuw nsw i64 %26 to i32
  %.neg.i26.i = mul i32 %27, 62207
  %28 = add i32 %.neg.i26.i, %23
  %29 = trunc i32 %28 to i16                      ; 2 uses
  %30 = add i16 %29, -3329                        ; 2 uses
  %isneg.i.i27.i = icmp slt i16 %30, 0
  %31 = select i1 %isneg.i.i27.i, i16 %29, i16 0
  %32 = tail call i16 @llvm.smax.i16(i16 %30, i16 0)
  %33 = or i16 %31, %32
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 4
  store i16 %33, ptr %21, align 2, !tbaa !39
  %i.cg = icmp samesign ult i64 %.0.idx.i, 508
  br i1 %i.cg, label %scalar.ph, label %scalar_mult.exit.preheader, !llvm.loop !174

scalar_mult.exit.preheader:                       ; preds = %vector.body, %scalar.ph
  %i.ch = icmp sgt i32 %3, 1
  br i1 %i.ch, label %.lr.ph.preheader, label %scalar_mult.exit._crit_edge

.lr.ph.preheader:                                 ; preds = %scalar_mult.exit.preheader
  %scevgep33 = getelementptr i8, ptr %0, i64 512  ; 3 uses
  %scevgep34 = getelementptr i8, ptr %1, i64 512
  %i.ci = add nsw i32 %3, -2
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 9
  %i.cl = add nuw nsw i64 %i.ck, 1024             ; 2 uses
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.cl
  %scevgep36 = getelementptr i8, ptr %2, i64 512
  %scevgep37 = getelementptr i8, ptr %2, i64 %i.cl
  %bound038 = icmp ult ptr %0, %scevgep35
  %bound139 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %bound041 = icmp ult ptr %0, %scevgep37
  %bound142 = icmp ult ptr %scevgep36, %scevgep33
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %found.conflict40, %found.conflict43
  %bound045 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound146 = icmp ugt ptr %scevgep33, @kModRoots
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %scalar_mult_add.exit
  %.016 = phi i32 [ %i.gf, %scalar_mult_add.exit ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.0615 = phi ptr [ %i.cn, %scalar_mult_add.exit ], [ %2, %.lr.ph.preheader ]
  %.0714 = phi ptr [ %i.cm, %scalar_mult_add.exit ], [ %1, %.lr.ph.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0714, i64 512 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0615, i64 512 ; 3 uses
  br i1 %conflict.rdx48, label %scalar.ph49, label %vector.body51

vector.body51:                                    ; preds = %.lr.ph, %vector.body51
  %index52 = phi i64 [ %index.next67, %vector.body51 ], [ 0, %.lr.ph ] ; 3 uses
  %i.co = shl i64 %index52, 1
  %next.gep53 = getelementptr i8, ptr @kModRoots, i64 %i.co
  %i.cp = shl i64 %index52, 2                     ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.cn, i64 %i.cp
  %next.gep55 = getelementptr i8, ptr %i.cm, i64 %i.cp
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp ; 2 uses
  %wide.vec56 = load <8 x i16>, ptr %next.gep55, align 2, !tbaa !39, !alias.scope !175
  %i.cr = freeze <8 x i16> %wide.vec56            ; 2 uses
  %i.cs = bitcast <8 x i16> %i.cr to <4 x i32>
  %i.ct = bitcast <8 x i16> %i.cr to <4 x i32>
  %i.cu = and <4 x i32> %i.ct, splat (i32 65535)  ; 2 uses
  %i.cv = lshr <4 x i32> %i.cs, splat (i32 16)    ; 2 uses
  %wide.vec59 = load <8 x i16>, ptr %next.gep54, align 2, !tbaa !39, !alias.scope !178
  %i.cw = freeze <8 x i16> %wide.vec59            ; 2 uses
  %i.cx = bitcast <8 x i16> %i.cw to <4 x i32>
  %i.cy = bitcast <8 x i16> %i.cw to <4 x i32>
  %i.cz = and <4 x i32> %i.cy, splat (i32 65535)  ; 2 uses
  %i.da = lshr <4 x i32> %i.cx, splat (i32 16)    ; 2 uses
  %wide.load62 = load <4 x i16>, ptr %next.gep53, align 8, !tbaa !39, !alias.scope !180
  %i.db = zext <4 x i16> %wide.load62 to <4 x i32>
  %wide.vec63 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !39, !alias.scope !182, !noalias !184
  %i.dc = freeze <8 x i16> %wide.vec63            ; 2 uses
  %i.dd = bitcast <8 x i16> %i.dc to <4 x i32>
  %i.de = bitcast <8 x i16> %i.dc to <4 x i32>
  %i.df = and <4 x i32> %i.de, splat (i32 65535)
  %i.dg = lshr <4 x i32> %i.dd, splat (i32 16)
  %i.dh = mul nuw <4 x i32> %i.cz, %i.cu
  %i.di = add nuw <4 x i32> %i.dh, %i.df
  %i.dj = mul nuw <4 x i32> %i.da, %i.cv          ; 2 uses
  %i.dk = zext <4 x i32> %i.dj to <4 x i64>
  %i.dl = mul nuw nsw <4 x i64> %i.dk, splat (i64 5039)
  %i.dm = lshr <4 x i64> %i.dl, splat (i64 24)
  %i.dn = trunc nuw nsw <4 x i64> %i.dm to <4 x i32>
  %i.do = mul <4 x i32> %i.dn, splat (i32 62207)
  %i.dp = add <4 x i32> %i.do, %i.dj
  %i.dq = trunc <4 x i32> %i.dp to <4 x i16>      ; 2 uses
  %i.dr = add <4 x i16> %i.dq, splat (i16 -3329)  ; 2 uses
  %i.ds = icmp slt <4 x i16> %i.dr, zeroinitializer
  %i.dt = select <4 x i1> %i.ds, <4 x i16> %i.dq, <4 x i16> zeroinitializer
  %i.du = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.dr, <4 x i16> zeroinitializer)
  %i.dv = or <4 x i16> %i.dt, %i.du
  %i.dw = zext <4 x i16> %i.dv to <4 x i32>
  %i.dx = mul nuw <4 x i32> %i.dw, %i.db
  %i.dy = add <4 x i32> %i.di, %i.dx              ; 2 uses
  %i.dz = zext <4 x i32> %i.dy to <4 x i64>
  %i.ea = mul nuw nsw <4 x i64> %i.dz, splat (i64 5039)
  %i.eb = lshr <4 x i64> %i.ea, splat (i64 24)
  %i.ec = trunc nuw nsw <4 x i64> %i.eb to <4 x i32>
  %i.ed = mul <4 x i32> %i.ec, splat (i32 62207)
  %i.ee = add <4 x i32> %i.ed, %i.dy
  %i.ef = trunc <4 x i32> %i.ee to <4 x i16>      ; 2 uses
  %i.eg = add <4 x i16> %i.ef, splat (i16 -3329)  ; 2 uses
  %i.eh = icmp slt <4 x i16> %i.eg, zeroinitializer
  %i.ei = select <4 x i1> %i.eh, <4 x i16> %i.ef, <4 x i16> zeroinitializer
  %i.ej = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.eg, <4 x i16> zeroinitializer)
  %i.ek = or <4 x i16> %i.ei, %i.ej
  %i.el = mul nuw <4 x i32> %i.da, %i.cu
  %i.em = mul nuw <4 x i32> %i.cv, %i.cz
  %i.en = add <4 x i32> %i.el, %i.em
  %i.eo = add <4 x i32> %i.en, %i.dg              ; 2 uses
  %i.ep = zext <4 x i32> %i.eo to <4 x i64>
  %i.eq = mul nuw nsw <4 x i64> %i.ep, splat (i64 5039)
  %i.er = lshr <4 x i64> %i.eq, splat (i64 24)
  %i.es = trunc nuw nsw <4 x i64> %i.er to <4 x i32>
  %i.et = mul <4 x i32> %i.es, splat (i32 62207)
  %i.eu = add <4 x i32> %i.et, %i.eo
  %i.ev = trunc <4 x i32> %i.eu to <4 x i16>      ; 2 uses
  %i.ew = add <4 x i16> %i.ev, splat (i16 -3329)  ; 2 uses
  %i.ex = icmp slt <4 x i16> %i.ew, zeroinitializer
  %i.ey = select <4 x i1> %i.ex, <4 x i16> %i.ev, <4 x i16> zeroinitializer
  %i.ez = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ew, <4 x i16> zeroinitializer)
  %i.fa = or <4 x i16> %i.ey, %i.ez
  %interleaved.vec66 = shufflevector <4 x i16> %i.ek, <4 x i16> %i.fa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec66, ptr %i.cq, align 2, !tbaa !39, !alias.scope !182, !noalias !184
  %index.next67 = add nuw i64 %index52, 4         ; 2 uses
  %i.fb = icmp eq i64 %index.next67, 128
  br i1 %i.fb, label %scalar_mult_add.exit, label %vector.body51, !llvm.loop !185

scalar.ph49:                                      ; preds = %.lr.ph, %scalar.ph49
  %.027.i = phi ptr [ %37, %scalar.ph49 ], [ @kModRoots, %.lr.ph ] ; 2 uses
  %.026.i = phi ptr [ %i.fk, %scalar.ph49 ], [ %i.cn, %.lr.ph ] ; 3 uses
  %.025.i = phi ptr [ %i.fj, %scalar.ph49 ], [ %i.cm, %.lr.ph ] ; 3 uses
  %.0.idx.i9 = phi i64 [ %.0.add.i11, %scalar.ph49 ], [ 0, %.lr.ph ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i9 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %i.fe = load i16, ptr %.025.i, align 2, !tbaa !39
  %i.ff = zext i16 %i.fe to i32                   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.026.i, i64 2
  %i.fh = load i16, ptr %.026.i, align 2, !tbaa !39
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %34 = load i16, ptr %i.fd, align 2, !tbaa !39
  %35 = zext i16 %34 to i32                       ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.fl = load i16, ptr %i.fg, align 2, !tbaa !39
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 2 uses
  %.0.add.i11 = add nuw nsw i64 %.0.idx.i9, 4
  %37 = getelementptr inbounds nuw i8, ptr %.027.i, i64 2
  %i.fn = load i16, ptr %.027.i, align 2, !tbaa !39
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load i16, ptr %i.fc, align 2, !tbaa !39
  %38 = zext i16 %i.fp to i32
  %39 = mul nuw i32 %i.fi, %i.ff
  %40 = add nuw i32 %39, %38
  %i.fq = mul nuw i32 %i.fm, %35                  ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = mul nuw nsw i64 %i.fr, 5039
  %i.ft = lshr i64 %i.fs, 24
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %.neg.i.i12 = mul i32 %i.fu, 62207
  %i.fv = add i32 %.neg.i.i12, %i.fq
  %i.fw = trunc i32 %i.fv to i16                  ; 2 uses
  %i.fx = add i16 %i.fw, -3329                    ; 2 uses
  %isneg.i.i.i13 = icmp slt i16 %i.fx, 0
  %i.fy = select i1 %isneg.i.i.i13, i16 %i.fw, i16 0
  %i.fz = tail call i16 @llvm.smax.i16(i16 %i.fx, i16 0)
  %i.ga = or i16 %i.fy, %i.fz
  %i.gb = zext i16 %i.ga to i32
  %i.gc = mul nuw i32 %i.gb, %i.fo
  %41 = add i32 %40, %i.gc                        ; 2 uses
  %42 = zext i32 %41 to i64
  %43 = mul nuw nsw i64 %42, 5039
  %44 = lshr i64 %43, 24
  %45 = trunc nuw nsw i64 %44 to i32
  %.neg.i28.i = mul i32 %45, 62207
  %i.gd = add i32 %.neg.i28.i, %41
  %46 = trunc i32 %i.gd to i16                    ; 2 uses
  %47 = add i16 %46, -3329                        ; 2 uses
  %isneg.i.i29.i = icmp slt i16 %47, 0
  %48 = select i1 %isneg.i.i29.i, i16 %46, i16 0
  %49 = tail call i16 @llvm.smax.i16(i16 %47, i16 0)
  %50 = or i16 %48, %49
  store i16 %50, ptr %i.fc, align 2, !tbaa !39
  %51 = load i16, ptr %36, align 2, !tbaa !39
  %52 = zext i16 %51 to i32
  %.neg.i30.i.a = mul nuw i32 %i.fm, %i.ff
  %.neg.i28.i.a = mul nuw i32 %35, %i.fi
  %53 = add i32 %.neg.i30.i.a, %.neg.i28.i.a
  %54 = add i32 %53, %52                          ; 2 uses
  %55 = zext i32 %54 to i64
  %56 = mul nuw nsw i64 %55, 5039
  %57 = lshr i64 %56, 24
  %58 = trunc nuw nsw i64 %57 to i32
  %.neg.i30.i = mul i32 %58, 62207
  %59 = add i32 %.neg.i30.i, %54
  %60 = trunc i32 %59 to i16                      ; 2 uses
  %61 = add i16 %60, -3329                        ; 2 uses
  %isneg.i.i31.i = icmp slt i16 %61, 0
  %62 = select i1 %isneg.i.i31.i, i16 %60, i16 0
  %63 = tail call i16 @llvm.smax.i16(i16 %61, i16 0)
  %64 = or i16 %62, %63
  store i16 %64, ptr %36, align 2, !tbaa !39
  %i.ge = icmp samesign ult i64 %.0.idx.i9, 508
  br i1 %i.ge, label %scalar.ph49, label %scalar_mult_add.exit, !llvm.loop !186

scalar_mult_add.exit:                             ; preds = %vector.body51, %scalar.ph49
  %i.gf = add nsw i32 %.016, -1
  %i.gg = icmp sgt i32 %.016, 2
  br i1 %i.gg, label %.lr.ph, label %scalar_mult.exit._crit_edge, !llvm.loop !187

scalar_mult.exit._crit_edge:                      ; preds = %scalar_mult_add.exit, %scalar_mult.exit.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_inverse_ntt(ptr nofree noundef nonnull captures(address) %0) unnamed_addr #9 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %bound0 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 130)
  %bound1 = icmp ugt ptr %scevgep, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 2)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.a = shl nuw i64 %index, 3                    ; 8 uses
  %i.b = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kInverseNTTRoots, i64 %i.b
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %i.p = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 56
  %i.r = getelementptr i8, ptr %i.c, i64 4
  %i.s = getelementptr i8, ptr %i.d, i64 12
  %i.t = getelementptr i8, ptr %i.f, i64 20
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.l, i64 44
  %i.x = getelementptr i8, ptr %i.n, i64 52
  %i.y = getelementptr i8, ptr %i.p, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !39, !alias.scope !188
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ab = load i16, ptr %i.c, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ac = load i16, ptr %i.e, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ad = load i16, ptr %i.g, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.af = load i16, ptr %i.k, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ag = load i16, ptr %i.m, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ah = load i16, ptr %i.o, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ai = load i16, ptr %i.q, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.aj = insertelement <8 x i16> poison, i16 %i.ab, i64 0
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 1
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 2
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 3
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 4
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 5
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 6
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 7 ; 2 uses
  %i.ar = load i16, ptr %i.r, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.as = load i16, ptr %i.s, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.at = load i16, ptr %i.t, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.au = load i16, ptr %i.u, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.av = load i16, ptr %i.v, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.aw = load i16, ptr %i.w, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ax = load i16, ptr %i.x, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ay = load i16, ptr %i.y, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7 ; 2 uses
  %i.bh = zext <8 x i16> %i.aq to <8 x i32>
  %i.bi = zext <8 x i16> %i.bg to <8 x i32>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 3329)
  %i.bk = sub nsw <8 x i32> %i.bj, %i.bi
  %i.bl = mul <8 x i32> %i.bk, %i.aa              ; 2 uses
  %i.bm = zext <8 x i32> %i.bl to <8 x i64>
  %i.bn = mul nuw nsw <8 x i64> %i.bm, splat (i64 5039)
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 24)
  %i.bp = trunc nuw nsw <8 x i64> %i.bo to <8 x i32>
  %i.bq = mul <8 x i32> %i.bp, splat (i32 62207)
  %i.br = add <8 x i32> %i.bq, %i.bl
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>      ; 2 uses
  %i.bt = add <8 x i16> %i.bs, splat (i16 -3329)  ; 2 uses
  %i.bu = add <8 x i16> %i.bg, %i.aq              ; 2 uses
  %i.bv = add <8 x i16> %i.bu, splat (i16 -3329)  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bx = getelementptr i8, ptr %i.d, i64 10
  %i.by = getelementptr i8, ptr %i.f, i64 18
  %i.bz = getelementptr i8, ptr %i.h, i64 26
  %i.ca = getelementptr i8, ptr %i.j, i64 34
  %i.cb = getelementptr i8, ptr %i.l, i64 42
  %i.cc = getelementptr i8, ptr %i.n, i64 50
  %i.cd = getelementptr i8, ptr %i.p, i64 58
  %i.ce = getelementptr i8, ptr %i.c, i64 6
  %i.cf = getelementptr i8, ptr %i.d, i64 14
  %i.cg = getelementptr i8, ptr %i.f, i64 22
  %i.ch = getelementptr i8, ptr %i.h, i64 30
  %i.ci = getelementptr i8, ptr %i.j, i64 38
  %i.cj = getelementptr i8, ptr %i.l, i64 46
  %i.ck = getelementptr i8, ptr %i.n, i64 54
  %i.cl = getelementptr i8, ptr %i.p, i64 62
  %i.cm = load i16, ptr %i.bw, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cn = load i16, ptr %i.bx, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.co = load i16, ptr %i.by, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7 ; 2 uses
  %i.dc = load i16, ptr %i.ce, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.dd = load i16, ptr %i.cf, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %i.dk = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 3
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 4
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 5
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 6
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 7 ; 2 uses
  %i.ds = zext <8 x i16> %i.db to <8 x i32>
  %i.dt = zext <8 x i16> %i.dr to <8 x i32>
  %i.du = add nuw nsw <8 x i32> %i.ds, splat (i32 3329)
  %i.dv = sub nsw <8 x i32> %i.du, %i.dt
  %i.dw = mul <8 x i32> %i.dv, %i.aa              ; 2 uses
  %i.dx = zext <8 x i32> %i.dw to <8 x i64>
  %i.dy = mul nuw nsw <8 x i64> %i.dx, splat (i64 5039)
  %i.dz = lshr <8 x i64> %i.dy, splat (i64 24)
  %i.ea = trunc nuw nsw <8 x i64> %i.dz to <8 x i32>
  %i.eb = mul <8 x i32> %i.ea, splat (i32 62207)
  %i.ec = add <8 x i32> %i.eb, %i.dw
  %i.ed = trunc <8 x i32> %i.ec to <8 x i16>      ; 2 uses
  %i.ee = add <8 x i16> %i.ed, splat (i16 -3329)  ; 2 uses
  %i.ef = add <8 x i16> %i.dr, %i.db              ; 2 uses
  %i.eg = add <8 x i16> %i.ef, splat (i16 -3329)  ; 2 uses
  %i.eh = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = icmp slt <16 x i16> %i.eh, zeroinitializer
  %i.ej = shufflevector <8 x i16> %i.bu, <8 x i16> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = select <16 x i1> %i.ei, <16 x i16> %i.ej, <16 x i16> zeroinitializer
  %i.el = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.el, <16 x i16> zeroinitializer)
  %i.en = or <16 x i16> %i.ek, %i.em
  %i.eo = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = icmp slt <16 x i16> %i.eo, zeroinitializer
  %i.eq = shufflevector <8 x i16> %i.bs, <8 x i16> %i.ed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = select <16 x i1> %i.ep, <16 x i16> %i.eq, <16 x i16> zeroinitializer
  %i.es = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.es, <16 x i16> zeroinitializer)
  %i.eu = or <16 x i16> %i.er, %i.et
  %interleaved.vec = shufflevector <16 x i16> %i.en, <16 x i16> %i.eu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.c, align 2, !tbaa !39, !alias.scope !191, !noalias !188
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, 64
  br i1 %i.ev, label %vector.memcheck50, label %vector.body, !llvm.loop !193

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.021.idx = phi i64 [ %.023.add.130, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %.1 = phi ptr [ %i.ex, %scalar.ph ], [ @kInverseNTTRoots, %vector.memcheck ]
  %.021.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %.021.idx
  %.ptr26 = getelementptr i8, ptr %i.ew, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !39
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %.023.add.130 = add nuw nsw i64 %.021.idx, 8
  %i.fa = load <2 x i16>, ptr %.021.ptr, align 2, !tbaa !39 ; 3 uses
  %i.fb = extractelement <2 x i16> %i.fa, i64 0
  %i.fc = zext i16 %i.fb to i32
  %i.fd = load <2 x i16>, ptr %.ptr26, align 2, !tbaa !39 ; 3 uses
  %i.fe = extractelement <2 x i16> %i.fd, i64 0
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.fc, 3329
  %i.fh = sub nsw i32 %i.fg, %i.ff
end_hunk_3
begin_hunk_4_@scalar_inverse_ntt:vector.memcheck
  %.023.idx.5 = phi i64 [ %.023.add.5, %scalar.ph108 ], [ %.023.idx.5.ph, %scalar.ph108.preheader ] ; 3 uses
  %.122.5 = phi ptr [ %i.bdn, %scalar.ph108 ], [ %.122.5.ph, %scalar.ph108.preheader ] ; 3 uses
  %.023.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.5 ; 2 uses
  %i.bcr = load i16, ptr %.122.5, align 2, !tbaa !39 ; 2 uses
  %i.bcs = load i16, ptr %.023.ptr.5, align 2, !tbaa !39 ; 2 uses
  %i.bct = zext i16 %i.bcr to i32
  %i.bcu = zext i16 %i.bcs to i32
  %i.bcv = add nuw nsw i32 %i.bct, 3329
  %i.bcw = sub nsw i32 %i.bcv, %i.bcu
  %i.bcx = mul i32 %i.bcw, %i.bbd                 ; 2 uses
  %i.bcy = zext i32 %i.bcx to i64
  %i.bcz = mul nuw nsw i64 %i.bcy, 5039
  %i.bda = lshr i64 %i.bcz, 24
  %i.bdb = trunc nuw nsw i64 %i.bda to i32
  %.neg.i.5 = mul i32 %i.bdb, 62207
  %i.bdc = add i32 %.neg.i.5, %i.bcx
  %i.bdd = trunc i32 %i.bdc to i16                ; 2 uses
  %i.bde = add i16 %i.bdd, -3329                  ; 2 uses
  %isneg.i.i.5 = icmp slt i16 %i.bde, 0
  %i.bdf = select i1 %isneg.i.i.5, i16 %i.bdd, i16 0
  %i.bdg = tail call i16 @llvm.smax.i16(i16 %i.bde, i16 0)
  %i.bdh = or i16 %i.bdf, %i.bdg
  %.023.add.5 = add nsw i64 %.023.idx.5, 2        ; 2 uses
  store i16 %i.bdh, ptr %.023.ptr.5, align 2, !tbaa !39
  %i.bdi = add i16 %i.bcs, %i.bcr                 ; 2 uses
  %i.bdj = add i16 %i.bdi, -3329                  ; 2 uses
  %isneg.i.5 = icmp slt i16 %i.bdj, 0
  %i.bdk = select i1 %isneg.i.5, i16 %i.bdi, i16 0
  %i.bdl = tail call i16 @llvm.smax.i16(i16 %i.bdj, i16 0)
  %i.bdm = or i16 %i.bdk, %i.bdl
  %i.bdn = getelementptr inbounds nuw i8, ptr %.122.5, i64 2 ; 2 uses
  store i16 %i.bdm, ptr %.122.5, align 2, !tbaa !39
  %i.bdo = icmp ult ptr %i.bdn, %.ptr26.5
  br i1 %i.bdo, label %scalar.ph108, label %.loopexit151, !llvm.loop !215

.loopexit151:                                     ; preds = %scalar.ph108, %middle.block121
  %.023.idx.5.lcssa = phi i64 [ %ind.escape122, %middle.block121 ], [ %.023.idx.5, %scalar.ph108 ]
  %.023.add.5.lcssa = phi i64 [ %i.bbo, %middle.block121 ], [ %.023.add.5, %scalar.ph108 ]
  %i.bdp = icmp slt i64 %.023.idx.5.lcssa, 510
  br i1 %i.bdp, label %.preheader40, label %.preheader39, !llvm.loop !211

.preheader39:                                     ; preds = %.loopexit151, %.loopexit
  %.021.idx.6 = phi i64 [ %.023.add.6.lcssa, %.loopexit ], [ 0, %.loopexit151 ] ; 4 uses
  %.1.6 = phi ptr [ %i.bdq, %.loopexit ], [ %i.bbb, %.loopexit151 ]
  %.021.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.6 ; 3 uses
  %.021.add.6 = add nsw i64 %.021.idx.6, 256      ; 4 uses
  %.ptr26.6 = getelementptr inbounds i8, ptr %0, i64 %.021.add.6
  %i.bdq = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bdr = load i16, ptr %i.bdq, align 2, !tbaa !39
  %i.bds = zext i16 %i.bdr to i32                 ; 2 uses
  %i.bdt = add i64 %.021.idx.6, %i.avw            ; 2 uses
  %i.bdu = add i64 %i.bdt, 256
  %i.bdv = add i64 %i.bdt, 2
  %i.bdw = tail call i64 @llvm.umax.i64(i64 %i.bdu, i64 %i.bdv)
  %i.bdx = add i64 %.021.idx.6, %i.avw
  %i.bdy = xor i64 %i.bdx, -1
  %i.bdz = add i64 %i.bdw, %i.bdy                 ; 2 uses
  %i.bea = lshr i64 %i.bdz, 1
  %i.beb = add nuw i64 %i.bea, 1                  ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.bdz, 14
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %.preheader39
  %n.vec130 = and i64 %i.beb, -8                  ; 3 uses
  %i.bec = shl i64 %n.vec130, 1                   ; 2 uses
  %i.bed = add i64 %.021.add.6, %i.bec            ; 3 uses
  %i.bee = getelementptr i8, ptr %.021.ptr.6, i64 %i.bec
  %broadcast.splatinsert131 = insertelement <8 x i32> poison, i32 %i.bds, i64 0
  %broadcast.splat132 = shufflevector <8 x i32> %broadcast.splatinsert131, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bef = getelementptr i8, ptr %0, i64 %.021.add.6
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body133 ] ; 2 uses
  %i.beg = shl i64 %index134, 1                   ; 2 uses
  %next.gep135 = getelementptr i8, ptr %.021.ptr.6, i64 %i.beg ; 2 uses
  %i.beh = getelementptr i8, ptr %i.bef, i64 %i.beg ; 2 uses
  %wide.load136 = load <8 x i16>, ptr %next.gep135, align 2, !tbaa !39 ; 2 uses
  %wide.load137 = load <8 x i16>, ptr %i.beh, align 2, !tbaa !39 ; 2 uses
  %i.bei = zext <8 x i16> %wide.load136 to <8 x i32>
  %i.bej = zext <8 x i16> %wide.load137 to <8 x i32>
  %i.bek = add nuw nsw <8 x i32> %i.bei, splat (i32 3329)
  %i.bel = sub nsw <8 x i32> %i.bek, %i.bej
  %i.bem = mul <8 x i32> %i.bel, %broadcast.splat132 ; 2 uses
  %i.ben = zext <8 x i32> %i.bem to <8 x i64>
  %i.beo = mul nuw nsw <8 x i64> %i.ben, splat (i64 5039)
  %i.bep = lshr <8 x i64> %i.beo, splat (i64 24)
  %i.beq = trunc nuw nsw <8 x i64> %i.bep to <8 x i32>
  %i.ber = mul <8 x i32> %i.beq, splat (i32 62207)
  %i.bes = add <8 x i32> %i.ber, %i.bem
  %i.bet = trunc <8 x i32> %i.bes to <8 x i16>    ; 2 uses
  %i.beu = add <8 x i16> %i.bet, splat (i16 -3329) ; 2 uses
  %i.bev = icmp slt <8 x i16> %i.beu, zeroinitializer
  %i.bew = select <8 x i1> %i.bev, <8 x i16> %i.bet, <8 x i16> zeroinitializer
  %i.bex = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.beu, <8 x i16> zeroinitializer)
  %i.bey = or <8 x i16> %i.bew, %i.bex
  store <8 x i16> %i.bey, ptr %i.beh, align 2, !tbaa !39
  %i.bez = add <8 x i16> %wide.load137, %wide.load136 ; 2 uses
  %i.bfa = add <8 x i16> %i.bez, splat (i16 -3329) ; 2 uses
  %i.bfb = icmp slt <8 x i16> %i.bfa, zeroinitializer
  %i.bfc = select <8 x i1> %i.bfb, <8 x i16> %i.bez, <8 x i16> zeroinitializer
  %i.bfd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfa, <8 x i16> zeroinitializer)
  %i.bfe = or <8 x i16> %i.bfc, %i.bfd
  store <8 x i16> %i.bfe, ptr %next.gep135, align 2, !tbaa !39
  %index.next138 = add nuw i64 %index134, 8       ; 2 uses
  %i.bff = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.bff, label %middle.block139, label %vector.body133, !llvm.loop !216

middle.block139:                                  ; preds = %vector.body133
  %ind.escape140 = add i64 %i.bed, -2
  %cmp.n141 = icmp eq i64 %i.beb, %n.vec130
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %.preheader39, %middle.block139
  %.023.idx.6.ph = phi i64 [ %.021.add.6, %.preheader39 ], [ %i.bed, %middle.block139 ]
  %.122.6.ph = phi ptr [ %.021.ptr.6, %.preheader39 ], [ %i.bee, %middle.block139 ]
  br label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.preheader, %scalar.ph126
  %.023.idx.6 = phi i64 [ %.023.add.6, %scalar.ph126 ], [ %.023.idx.6.ph, %scalar.ph126.preheader ] ; 3 uses
  %.122.6 = phi ptr [ %i.bgc, %scalar.ph126 ], [ %.122.6.ph, %scalar.ph126.preheader ] ; 3 uses
  %.023.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.6 ; 2 uses
  %i.bfg = load i16, ptr %.122.6, align 2, !tbaa !39 ; 2 uses
  %i.bfh = load i16, ptr %.023.ptr.6, align 2, !tbaa !39 ; 2 uses
  %i.bfi = zext i16 %i.bfg to i32
  %i.bfj = zext i16 %i.bfh to i32
  %i.bfk = add nuw nsw i32 %i.bfi, 3329
  %i.bfl = sub nsw i32 %i.bfk, %i.bfj
  %i.bfm = mul i32 %i.bfl, %i.bds                 ; 2 uses
  %i.bfn = zext i32 %i.bfm to i64
  %i.bfo = mul nuw nsw i64 %i.bfn, 5039
  %i.bfp = lshr i64 %i.bfo, 24
  %i.bfq = trunc nuw nsw i64 %i.bfp to i32
  %.neg.i.6 = mul i32 %i.bfq, 62207
  %i.bfr = add i32 %.neg.i.6, %i.bfm
  %i.bfs = trunc i32 %i.bfr to i16                ; 2 uses
  %i.bft = add i16 %i.bfs, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bft, 0
  %i.bfu = select i1 %isneg.i.i.6, i16 %i.bfs, i16 0
  %i.bfv = tail call i16 @llvm.smax.i16(i16 %i.bft, i16 0)
  %i.bfw = or i16 %i.bfu, %i.bfv
  %.023.add.6 = add nsw i64 %.023.idx.6, 2        ; 2 uses
  store i16 %i.bfw, ptr %.023.ptr.6, align 2, !tbaa !39
  %i.bfx = add i16 %i.bfh, %i.bfg                 ; 2 uses
  %i.bfy = add i16 %i.bfx, -3329                  ; 2 uses
  %isneg.i.6 = icmp slt i16 %i.bfy, 0
  %i.bfz = select i1 %isneg.i.6, i16 %i.bfx, i16 0
  %i.bga = tail call i16 @llvm.smax.i16(i16 %i.bfy, i16 0)
  %i.bgb = or i16 %i.bfz, %i.bga
  %i.bgc = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  store i16 %i.bgb, ptr %.122.6, align 2, !tbaa !39
  %i.bgd = icmp ult ptr %i.bgc, %.ptr26.6
  br i1 %i.bgd, label %scalar.ph126, label %.loopexit, !llvm.loop !217

.loopexit:                                        ; preds = %scalar.ph126, %middle.block139
  %.023.idx.6.lcssa = phi i64 [ %ind.escape140, %middle.block139 ], [ %.023.idx.6, %scalar.ph126 ]
  %.023.add.6.lcssa = phi i64 [ %i.bed, %middle.block139 ], [ %.023.add.6, %scalar.ph126 ]
  %i.bge = icmp slt i64 %.023.idx.6.lcssa, 510
  br i1 %i.bge, label %.preheader39, label %vector.body146, !llvm.loop !211

vector.body146:                                   ; preds = %.loopexit, %vector.body146
  %index147 = phi i64 [ %index.next149, %vector.body146 ], [ 0, %.loopexit ] ; 2 uses
  %i.bgf = shl nuw i64 %index147, 1
  %i.bgg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgf ; 2 uses
  %wide.load148 = load <8 x i16>, ptr %i.bgg, align 2, !tbaa !39
  %i.bgh = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.bgi = mul nuw nsw <8 x i32> %i.bgh, splat (i32 3303) ; 2 uses
  %i.bgj = zext nneg <8 x i32> %i.bgi to <8 x i64>
  %i.bgk = mul nuw nsw <8 x i64> %i.bgj, splat (i64 5039)
  %i.bgl = lshr <8 x i64> %i.bgk, splat (i64 24)
  %i.bgm = trunc nuw nsw <8 x i64> %i.bgl to <8 x i32>
  %i.bgn = mul nuw <8 x i32> %i.bgm, splat (i32 62207)
  %i.bgo = add nuw <8 x i32> %i.bgn, %i.bgi
  %i.bgp = trunc <8 x i32> %i.bgo to <8 x i16>    ; 2 uses
  %i.bgq = add <8 x i16> %i.bgp, splat (i16 -3329) ; 2 uses
  %i.bgr = icmp slt <8 x i16> %i.bgq, zeroinitializer
  %i.bgs = select <8 x i1> %i.bgr, <8 x i16> %i.bgp, <8 x i16> zeroinitializer
  %i.bgt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bgq, <8 x i16> zeroinitializer)
  %i.bgu = or <8 x i16> %i.bgs, %i.bgt
  store <8 x i16> %i.bgu, ptr %i.bgg, align 2, !tbaa !39
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.bgv = icmp eq i64 %index.next149, 256
  br i1 %i.bgv, label %scalar_mult_const.exit, label %vector.body146, !llvm.loop !218

scalar_mult_const.exit:                           ; preds = %vector.body146
  ret void
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smax.v32i16(<32 x i16>, <32 x i16>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !16, i64 64}
!11 = !{!"ossl_ml_kem_key_st", !12, i64 0, !13, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !15, i64 48, !15, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !15, i64 88, !15, i64 96, !7, i64 104, !8, i64 108, !15, i64 176}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!14 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS21ossl_ml_kem_scalar_st", !12, i64 0}
!17 = !{!11, !16, i64 80}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !7, i64 72}
!20 = !{!"", !15, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84}
!21 = !{!"long", !8, i64 0}
!22 = !{!11, !13, i64 8}
!23 = !{!11, !7, i64 104}
!24 = !{!11, !14, i64 16}
!25 = !{!11, !14, i64 24}
!26 = !{!11, !14, i64 32}
!27 = !{!11, !14, i64 40}
!28 = !{!11, !15, i64 176}
!29 = !{!20, !15, i64 0}
!30 = !{!11, !15, i64 96}
!31 = !{!20, !21, i64 8}
!32 = !{!20, !21, i64 32}
!33 = !{!11, !16, i64 72}
!34 = !{!11, !15, i64 48}
!35 = !{!11, !15, i64 56}
!36 = !{!20, !21, i64 16}
!37 = !{!11, !15, i64 88}
!38 = !{!20, !21, i64 24}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !8, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = !{!20, !21, i64 48}
!45 = !{!8, !8, i64 0}
!46 = distinct !{!46, !42}
!47 = distinct !{!47, !42}
!48 = !{!20, !7, i64 84}
!49 = !{!20, !7, i64 64}
!50 = !{ptr @cbd_2, ptr @cbd_3}
!51 = distinct !{null}
!52 = distinct !{!52, !42}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = !{!59}
!59 = distinct !{!59, !55}
!60 = !{!61}
!61 = distinct !{!61, !55}
!62 = !{!54, !57, !59}
!63 = distinct !{!63, !42, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !42, !64}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = !{!73}
!73 = distinct !{!73, !69}
!74 = !{!75}
!75 = distinct !{!75, !69}
!76 = !{!68, !71, !73}
!77 = distinct !{!77, !42, !64, !65}
!78 = distinct !{!78, !42, !64}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = !{!20, !21, i64 40}
!83 = !{!20, !7, i64 76}
!84 = !{!20, !7, i64 80}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42, !64, !65}
!87 = distinct !{!87, !42}
!88 = !{!20, !21, i64 56}
!89 = distinct !{!89, !42, !64, !65}
!90 = distinct !{!90, !42, !64, !65}
!91 = distinct !{!91, !42, !64, !65}
!92 = distinct !{!92, !42, !64, !65}
!93 = !{i64 2233007}
!94 = !{!7, !7, i64 0}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42, !64, !65}
!100 = distinct !{!100, !42, !64, !65}
!101 = distinct !{!101, !42, !64, !65}
!102 = distinct !{!102, !42, !65, !64}
!103 = distinct !{!103, !42}
!104 = distinct !{!104, !42, !64, !65}
!105 = distinct !{!105, !42, !65, !64}
!106 = distinct !{!106, !42, !64, !65}
!107 = distinct !{!107, !42, !65, !64}
!108 = distinct !{!108, !42, !64, !65}
!109 = distinct !{!109, !42, !65, !64}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !42, !64, !65}
!116 = distinct !{!116, !42, !64}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !42, !64, !65}
!123 = distinct !{!123, !42, !64}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !42, !64, !65}
!130 = distinct !{!130, !42, !64}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !42, !64, !65}
!137 = distinct !{!137, !42, !64}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !42, !64, !65}
!144 = distinct !{!144, !42, !64}
!145 = distinct !{!145, !42}
!146 = distinct !{!146, !42}
!147 = distinct !{!147, !42, !64, !65}
!148 = distinct !{!148, !42}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !42, !64, !65}
!155 = distinct !{!155, !42, !64}
!156 = distinct !{!156, !42}
!157 = distinct !{!157, !42, !64, !65}
!158 = distinct !{!158, !42}
!159 = distinct !{!159, !42, !64, !65}
!160 = distinct !{!160, !42, !64, !65}
!161 = distinct !{!161, !42, !64, !65}
!162 = distinct !{!162, !42, !64, !65}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = !{!169}
!169 = distinct !{!169, !165}
end_hunk_4
