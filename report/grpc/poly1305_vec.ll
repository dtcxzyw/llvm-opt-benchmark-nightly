inline.NumInlined: 68
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CRYPTO_poly1305_update:bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 63
  %i.c = and i64 %i.b, -64
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !tbaa !12
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = icmp ugt i64 %2, 32
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL20poly1305_first_blockP25poly1305_state_internal_tPKh(ptr noundef nonnull %i.d, ptr noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = add i64 %2, -32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = sub i64 32, %i.i
  %i.o = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 range(i64 1, 0) %2) ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.q = icmp eq i64 %i.i, 32
  br i1 %i.q, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %1, i64 %i.o, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.e, %bb.f
  %i.s = sub i64 %2, %i.o                         ; 2 uses
  %i.t = add i64 %i.i, %i.o                       ; 2 uses
  store i64 %i.t, ptr %i.h, align 8, !tbaa !15
  %i.u = icmp ult i64 %i.t, 32
  %i.v = icmp eq i64 %i.s, 0
  %or.cond3 = or i1 %i.v, %i.u
  br i1 %or.cond3, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  tail call fastcc void @_ZL20poly1305_first_blockP25poly1305_state_internal_tPKh(ptr noundef nonnull %i.d, ptr noundef nonnull %i.p)
  store i64 0, ptr %i.h, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.062 = phi i64 [ %i.m, %bb.d ], [ %i.s, %bb.g ]
  %.0 = phi ptr [ %i.l, %bb.d ], [ %i.w, %bb.g ]
  store i64 1, ptr %i.f, align 16, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.163 = phi i64 [ %2, %bb.b ], [ %.062, %bb.h ] ; 3 uses
  %.1 = phi ptr [ %1, %bb.b ], [ %.0, %bb.h ]     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 4 uses
  %.not69 = icmp eq i64 %i.y, 0
  br i1 %.not69, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = sub i64 64, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 range(i64 1, 0) %.163) ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %_ZL14OPENSSL_memcpyPvPKvm.exit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr readonly align 1 %.1, i64 %i.aa, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit71

_ZL14OPENSSL_memcpyPvPKvm.exit71:                 ; preds = %bb.j, %bb.k
  %i.ae = add i64 %i.y, %i.aa                     ; 2 uses
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !15
  %i.af = icmp ult i64 %i.ae, 64
  br i1 %i.af, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit71
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 %i.aa
  %i.ah = sub i64 %.163, %i.aa
  tail call fastcc void @_ZL15poly1305_blocksP25poly1305_state_internal_tPKhm(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ab, i64 noundef 64)
  store i64 0, ptr %i.x, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.264 = phi i64 [ %i.ah, %bb.l ], [ %.163, %bb.i ] ; 4 uses
  %.2 = phi ptr [ %i.ag, %bb.l ], [ %.1, %bb.i ]  ; 3 uses
  %i.ai = icmp ugt i64 %.264, 63
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = and i64 %.264, -64                      ; 2 uses
  tail call fastcc void @_ZL15poly1305_blocksP25poly1305_state_internal_tPKhm(ptr noundef nonnull %i.d, ptr noundef %.2, i64 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %.2, i64 %i.aj
  %i.al = and i64 %.264, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.365 = phi i64 [ %i.al, %bb.n ], [ %.264, %bb.m ] ; 3 uses
  %.3 = phi ptr [ %i.ak, %bb.n ], [ %.2, %bb.m ]
  %.not70 = icmp eq i64 %.365, 0
  br i1 %.not70, label %bb.p, label %_ZL14OPENSSL_memcpyPvPKvm.exit72

_ZL14OPENSSL_memcpyPvPKvm.exit72:                 ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.an = load i64, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr readonly align 1 %.3, i64 %.365, i1 false)
  %i.ap = add i64 %i.an, %.365
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZL14OPENSSL_memcpyPvPKvm.exit72, %_ZL14OPENSSL_memcpyPvPKvm.exit71, %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL20poly1305_first_blockP25poly1305_state_internal_tPKh(ptr nofree noundef captures(none) initializes((0, 148), (152, 156), (160, 164), (168, 172), (176, 180), (184, 188), (192, 196), (200, 204), (208, 212), (216, 220), (224, 368)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = or disjoint i64 %i.e, %i.h               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = or disjoint i64 %i.m, %i.p               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = mul i64 %i.y, 20
  %i.ai = zext i64 %i.i to i128                   ; 3 uses
  %i.aj = mul nuw i128 %i.ai, %i.ai
  %i.ak = shl i64 %i.q, 1
  %i.al = zext i64 %i.ak to i128
  %i.am = zext i64 %i.ah to i128                  ; 2 uses
  %i.an = mul nuw i128 %i.al, %i.am
  %i.ao = add i128 %i.an, %i.aj                   ; 2 uses
  %i.ap = zext i64 %i.y to i128
  %i.aq = mul nuw i128 %i.am, %i.ap
  %i.ar = shl i64 %i.i, 1
  %i.as = zext i64 %i.ar to i128
  %i.at = zext i64 %i.q to i128                   ; 3 uses
  %i.au = mul nuw i128 %i.as, %i.at
  %i.av = add i128 %i.au, %i.aq
  %i.aw = mul nuw i128 %i.at, %i.at
  %i.ax = shl i64 %i.y, 1
  %i.ay = zext i64 %i.ax to i128
  %i.az = mul nuw i128 %i.ai, %i.ay
  %i.ba = add i128 %i.az, %i.aw
  %i.bb = trunc i128 %i.ao to i64
  %i.bc = and i64 %i.bb, 17592186044415
  %i.bd = lshr i128 %i.ao, 44
  %i.be = and i128 %i.bd, 18446744073709551615
  %i.bf = add i128 %i.av, %i.be                   ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = and i64 %i.bg, 17592186044415
  %i.bi = lshr i128 %i.bf, 44
  %i.bj = and i128 %i.bi, 18446744073709551615
  %i.bk = add i128 %i.ba, %i.bj                   ; 3 uses
  %i.bl = trunc i128 %i.bk to i64
  %i.bm = and i64 %i.bl, 4398046511103            ; 4 uses
  %i.bn = lshr i128 %i.bk, 42
  %i.bo = trunc i128 %i.bn to i64
  %i.bp = mul i64 %i.bo, 5
  %i.bq = add i64 %i.bp, %i.bc                    ; 3 uses
  %i.br = lshr i64 %i.bq, 44
  %i.bs = and i64 %i.bq, 17592186044415           ; 3 uses
  %i.bt = add nuw nsw i64 %i.br, %i.bh            ; 5 uses
  %2 = lshr i64 %i.bs, 26
  %3 = shl nuw nsw i64 %i.bt, 18
  %4 = or disjoint i64 %3, %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = lshr i64 %i.bt, 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = lshr i64 %i.bt, 34
  %i.bv = shl nuw nsw i64 %i.bm, 10
  %i.bw = or i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bq to i32
  %i.by = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %8 = trunc i64 %4 to i32
  %9 = insertelement <4 x i32> %i.by, i32 %8, i64 1
  %10 = trunc i64 %6 to i32
  %11 = insertelement <4 x i32> %9, i32 %10, i64 2
  %i.bz = trunc i64 %i.bw to i32
  %i.ca = insertelement <4 x i32> %11, i32 %i.bz, i64 3
  %12 = and <4 x i32> %i.ca, splat (i32 67108863) ; 4 uses
  %13 = shufflevector <4 x i32> %12, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  store <4 x i32> %13, ptr %i.a, align 16, !tbaa !11
  %14 = shufflevector <4 x i32> %12, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  store <4 x i32> %14, ptr %5, align 16, !tbaa !11
  %15 = shufflevector <4 x i32> %12, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 5> ; 2 uses
  store <4 x i32> %15, ptr %7, align 16, !tbaa !11
  %16 = shufflevector <4 x i32> %12, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 5> ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %16, ptr %i.cb, align 16, !tbaa !11
  %i.cc = lshr i64 %i.bm, 16
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.cd, i64 0
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %i.cf, ptr %i.cg, align 16, !tbaa !11
  %i.ch = bitcast <4 x i32> %14 to <2 x i64>
  %i.ci = mul nuw nsw <2 x i64> %i.ch, splat (i64 5)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.ci, ptr %i.cj, align 16, !tbaa !11
  %i.ck = bitcast <4 x i32> %15 to <2 x i64>
  %i.cl = mul nuw nsw <2 x i64> %i.ck, splat (i64 5)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> %i.cl, ptr %i.cm, align 16, !tbaa !11
  %i.cn = bitcast <4 x i32> %16 to <2 x i64>
  %i.co = mul nuw nsw <2 x i64> %i.cn, splat (i64 5)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x i64> %i.co, ptr %i.cp, align 16, !tbaa !11
  %i.cq = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cr = mul nuw nsw <2 x i64> %i.cq, splat (i64 5)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.cr, ptr %i.cs, align 16, !tbaa !11
  %i.ct = mul nuw nsw i64 %i.bm, 20
  %i.cu = zext nneg i64 %i.bs to i128             ; 3 uses
  %i.cv = mul nuw nsw i128 %i.cu, %i.cu
  %i.cw = shl nuw nsw i64 %i.bt, 1
  %i.cx = zext nneg i64 %i.cw to i128
  %i.cy = zext nneg i64 %i.ct to i128             ; 2 uses
  %i.cz = mul nuw nsw i128 %i.cx, %i.cy
  %i.da = add nuw nsw i128 %i.cz, %i.cv           ; 2 uses
  %i.db = and i128 %i.bk, 4398046511103
  %i.dc = mul nuw nsw i128 %i.db, %i.cy
  %i.dd = shl nuw nsw i64 %i.bs, 1
  %i.de = zext nneg i64 %i.dd to i128
  %i.df = zext nneg i64 %i.bt to i128             ; 3 uses
  %i.dg = mul nuw nsw i128 %i.de, %i.df
  %i.dh = add nuw nsw i128 %i.dg, %i.dc
  %i.di = mul nuw nsw i128 %i.df, %i.df
  %i.dj = shl nuw nsw i64 %i.bm, 1
  %i.dk = zext nneg i64 %i.dj to i128
  %i.dl = mul nuw nsw i128 %i.cu, %i.dk
  %i.dm = add nuw nsw i128 %i.dl, %i.di
  %i.dn = trunc i128 %i.da to i64
  %i.do = and i64 %i.dn, 17592186044415
  %i.dp = lshr i128 %i.da, 44
  %i.dq = add nuw nsw i128 %i.dh, %i.dp           ; 2 uses
  %i.dr = trunc i128 %i.dq to i64
  %i.ds = and i64 %i.dr, 17592186044415
  %i.dt = lshr i128 %i.dq, 44
  %i.du = add nuw nsw i128 %i.dm, %i.dt           ; 2 uses
  %i.dv = trunc i128 %i.du to i64
  %i.dw = and i64 %i.dv, 4398046511103            ; 2 uses
  %i.dx = lshr i128 %i.du, 42
  %i.dy = trunc nuw nsw i128 %i.dx to i64
  %i.dz = mul nuw nsw i64 %i.dy, 5
  %i.ea = add nuw nsw i64 %i.dz, %i.do            ; 3 uses
  %i.eb = lshr i64 %i.ea, 44
  %i.ec = add nuw nsw i64 %i.eb, %i.ds            ; 3 uses
  %17 = lshr i64 %i.ea, 26
  %18 = and i64 %17, 262143
  %19 = shl nuw nsw i64 %i.ec, 18
  %20 = or disjoint i64 %19, %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = lshr i64 %i.ec, 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = lshr i64 %i.ec, 34
  %i.ee = shl nuw nsw i64 %i.dw, 10
  %i.ef = or i64 %23, %i.ee
  %i.eg = trunc i64 %i.ea to i32
  %i.eh = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %24 = trunc i64 %20 to i32
  %25 = insertelement <4 x i32> %i.eh, i32 %24, i64 1
  %26 = trunc i64 %i.ed to i32
  %27 = insertelement <4 x i32> %25, i32 %26, i64 2
  %i.ei = trunc i64 %i.ef to i32
  %i.ej = insertelement <4 x i32> %27, i32 %i.ei, i64 3
  %28 = and <4 x i32> %i.ej, splat (i32 67108863) ; 4 uses
  %29 = shufflevector <4 x i32> %28, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  store <4 x i32> %29, ptr %0, align 16, !tbaa !11
  %30 = shufflevector <4 x i32> %28, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  store <4 x i32> %30, ptr %21, align 16, !tbaa !11
  %31 = shufflevector <4 x i32> %28, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 5> ; 2 uses
  store <4 x i32> %31, ptr %22, align 16, !tbaa !11
  %32 = shufflevector <4 x i32> %28, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 5> ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %32, ptr %i.ek, align 16, !tbaa !11
  %i.el = lshr i64 %i.dw, 16
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.em, i64 0
  %i.eo = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %i.eo, ptr %i.ep, align 16, !tbaa !11
  %i.eq = bitcast <4 x i32> %30 to <2 x i64>
  %i.er = mul nuw nsw <2 x i64> %i.eq, splat (i64 5)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.er, ptr %i.es, align 16, !tbaa !11
  %i.et = bitcast <4 x i32> %31 to <2 x i64>
  %i.eu = mul nuw nsw <2 x i64> %i.et, splat (i64 5)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.eu, ptr %i.ev, align 16, !tbaa !11
  %i.ew = bitcast <4 x i32> %32 to <2 x i64>
  %i.ex = mul nuw nsw <2 x i64> %i.ew, splat (i64 5)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.ex, ptr %i.ey, align 16, !tbaa !11
  %i.ez = bitcast <4 x i32> %i.eo to <2 x i64>
  %i.fa = mul nuw nsw <2 x i64> %i.ez, splat (i64 5)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.fa, ptr %i.fb, align 16, !tbaa !11
  store i32 %i.g, ptr %i.f, align 4, !tbaa !11
  store i32 %i.c, ptr %i.b, align 4, !tbaa !11
  store i32 %i.o, ptr %i.n, align 4, !tbaa !11
  store i32 %i.k, ptr %i.j, align 4, !tbaa !11
  store i32 %i.w, ptr %i.v, align 4, !tbaa !11
  store i32 %i.s, ptr %i.r, align 4, !tbaa !11
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !11
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !11
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !11
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !11
  %i.fc = load i64, ptr %1, align 1, !tbaa !11
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load i64, ptr %i.fe, align 1, !tbaa !11
  %i.fg = insertelement <2 x i64> %i.fd, i64 %i.ff, i64 1 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fi = load i64, ptr %i.fh, align 1, !tbaa !11
  %i.fj = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fl = load i64, ptr %i.fk, align 1, !tbaa !11
  %i.fm = insertelement <2 x i64> %i.fj, i64 %i.fl, i64 1 ; 2 uses
  %i.fn = and <2 x i64> %i.fg, splat (i64 67108863)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x i64> %i.fn, ptr %i.fo, align 16, !tbaa !11
  %i.fp = lshr <2 x i64> %i.fg, splat (i64 26)
  %i.fq = and <2 x i64> %i.fp, splat (i64 67108863)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %i.fq, ptr %i.fr, align 16, !tbaa !11
  %i.fs = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.fm, <2 x i64> %i.fg, <2 x i64> splat (i64 12)) ; 2 uses
  %i.ft = and <2 x i64> %i.fs, splat (i64 67108863)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x i64> %i.ft, ptr %i.fu, align 16, !tbaa !11
  %i.fv = lshr <2 x i64> %i.fs, splat (i64 26)
  %i.fw = and <2 x i64> %i.fv, splat (i64 67108863)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> %i.fw, ptr %i.fx, align 16, !tbaa !11
  %i.fy = lshr <2 x i64> %i.fm, splat (i64 40)
  %i.fz = or disjoint <2 x i64> %i.fy, splat (i64 16777216)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x i64> %i.fz, ptr %i.ga, align 16, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL15poly1305_blocksP25poly1305_state_internal_tPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 64, -63) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load <2 x i64>, ptr %i.a, align 16, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.d = load <2 x i64>, ptr %i.c, align 16, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.f = load <2 x i64>, ptr %i.e, align 16, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 16, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.j = load <2 x i64>, ptr %i.i, align 16, !tbaa !11
  %i.k = load <2 x i64>, ptr %0, align 16, !tbaa !11
  %i.l = and <2 x i64> %i.k, splat (i64 4294967295) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <2 x i64>, ptr %i.m, align 16, !tbaa !11
  %i.o = and <2 x i64> %i.n, splat (i64 4294967295) ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.p, align 16, !tbaa !11
  %i.r = and <2 x i64> %i.q, splat (i64 4294967295) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !11
  %i.u = and <2 x i64> %i.t, splat (i64 4294967295) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load <2 x i64>, ptr %i.v, align 16, !tbaa !11
  %i.x = and <2 x i64> %i.w, splat (i64 4294967295)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load <2 x i64>, ptr %i.y, align 16, !tbaa !11
  %i.aa = and <2 x i64> %i.z, splat (i64 4294967295) ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load <2 x i64>, ptr %i.ab, align 16, !tbaa !11
  %i.ad = and <2 x i64> %i.ac, splat (i64 4294967295) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !11
  %i.ag = and <2 x i64> %i.af, splat (i64 4294967295) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load <2 x i64>, ptr %i.ah, align 16, !tbaa !11
  %i.aj = and <2 x i64> %i.ai, splat (i64 4294967295)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load <2 x i64>, ptr %i.ak, align 16, !tbaa !11
  %i.am = and <2 x i64> %i.al, splat (i64 4294967295) ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load <2 x i64>, ptr %i.an, align 16, !tbaa !11
  %i.ap = and <2 x i64> %i.ao, splat (i64 4294967295) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = load <2 x i64>, ptr %i.aq, align 16, !tbaa !11
  %i.as = and <2 x i64> %i.ar, splat (i64 4294967295) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.au = load <2 x i64>, ptr %i.at, align 16, !tbaa !11
  %i.av = and <2 x i64> %i.au, splat (i64 4294967295) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ax = load <2 x i64>, ptr %i.aw, align 16, !tbaa !11
  %i.ay = and <2 x i64> %i.ax, splat (i64 4294967295) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = load <2 x i64>, ptr %i.az, align 16, !tbaa !11
  %i.bb = and <2 x i64> %i.ba, splat (i64 4294967295)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load <2 x i64>, ptr %i.bc, align 16, !tbaa !11
  %i.be = and <2 x i64> %i.bd, splat (i64 4294967295) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bg = load <2 x i64>, ptr %i.bf, align 16, !tbaa !11
  %i.bh = and <2 x i64> %i.bg, splat (i64 4294967295) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bj = load <2 x i64>, ptr %i.bi, align 16, !tbaa !11
  %i.bk = and <2 x i64> %i.bj, splat (i64 4294967295)
  %i.bl = and <2 x i64> %i.b, splat (i64 4294967295)
  %i.bm = and <2 x i64> %i.f, splat (i64 4294967295)
  %i.bn = and <2 x i64> %i.h, splat (i64 4294967295)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0304 = phi ptr [ %1, %bb.a ], [ %i.hy, %bb.b ] ; 9 uses
  %.0292303 = phi i64 [ %2, %bb.a ], [ %i.hz, %bb.b ]
  %.0293302 = phi <2 x i64> [ %i.bl, %bb.a ], [ %i.hs, %bb.b ] ; 5 uses
  %.0294301 = phi <2 x i64> [ %i.d, %bb.a ], [ %i.hu, %bb.b ]
  %.0295300 = phi <2 x i64> [ %i.bm, %bb.a ], [ %i.hr, %bb.b ] ; 5 uses
  %.0296299 = phi <2 x i64> [ %i.bn, %bb.a ], [ %i.hw, %bb.b ] ; 5 uses
  %.0297298 = phi <2 x i64> [ %i.j, %bb.a ], [ %i.hx, %bb.b ]
  %i.bo = mul nuw <2 x i64> %i.l, %.0293302
  %i.bp = mul nuw <2 x i64> %i.o, %.0293302
  %i.bq = mul nuw <2 x i64> %i.r, %.0293302
  %i.br = mul nuw <2 x i64> %i.u, %.0293302
  %i.bs = mul nuw <2 x i64> %i.x, %.0293302
  %i.bt = and <2 x i64> %.0294301, splat (i64 4294967295) ; 5 uses
  %i.bu = mul nuw <2 x i64> %i.aa, %i.bt
  %i.bv = mul nuw <2 x i64> %i.l, %i.bt
  %i.bw = add <2 x i64> %i.bu, %i.bo
  %i.bx = add <2 x i64> %i.bp, %i.bv
  %i.by = mul nuw <2 x i64> %i.ad, %.0295300
  %i.bz = mul nuw <2 x i64> %i.aa, %.0295300
  %i.ca = add <2 x i64> %i.bw, %i.by
  %i.cb = add <2 x i64> %i.bx, %i.bz
  %i.cc = mul nuw <2 x i64> %i.ag, %.0296299
  %i.cd = mul nuw <2 x i64> %i.ad, %.0296299
  %i.ce = add <2 x i64> %i.ca, %i.cc
  %i.cf = add <2 x i64> %i.cb, %i.cd
  %i.cg = and <2 x i64> %.0297298, splat (i64 4294967295) ; 5 uses
  %i.ch = mul nuw <2 x i64> %i.aj, %i.cg
  %i.ci = mul nuw <2 x i64> %i.ag, %i.cg
  %i.cj = add <2 x i64> %i.ce, %i.ch
  %i.ck = add <2 x i64> %i.cf, %i.ci
  %i.cl = mul nuw <2 x i64> %i.o, %i.bt
  %i.cm = mul nuw <2 x i64> %i.r, %i.bt
  %i.cn = mul nuw <2 x i64> %i.l, %.0295300
  %i.co = mul nuw <2 x i64> %i.o, %.0295300
  %i.cp = mul nuw <2 x i64> %i.aa, %.0296299
  %i.cq = mul nuw <2 x i64> %i.l, %.0296299
  %i.cr = mul nuw <2 x i64> %i.ad, %i.cg
  %i.cs = mul nuw <2 x i64> %i.aa, %i.cg
  %i.ct = mul nuw <2 x i64> %i.u, %i.bt
  %i.cu = mul nuw <2 x i64> %i.r, %.0295300
  %i.cv = mul nuw <2 x i64> %i.o, %.0296299
  %i.cw = mul nuw <2 x i64> %i.l, %i.cg
  %i.cx = load i64, ptr %.0304, align 1, !tbaa !11
  %i.cy = insertelement <2 x i64> poison, i64 %i.cx, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.0304, i64 16
  %i.da = load i64, ptr %i.cz, align 1, !tbaa !11
  %i.db = insertelement <2 x i64> %i.cy, i64 %i.da, i64 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0304, i64 8
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !11
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %.0304, i64 24
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !11
  %i.dh = insertelement <2 x i64> %i.de, i64 %i.dg, i64 1 ; 2 uses
  %i.di = and <2 x i64> %i.db, splat (i64 67108863) ; 5 uses
  %i.dj = lshr <2 x i64> %i.db, splat (i64 26)
  %i.dk = and <2 x i64> %i.dj, splat (i64 67108863) ; 5 uses
  %i.dl = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.dh, <2 x i64> %i.db, <2 x i64> splat (i64 12)) ; 2 uses
  %i.dm = and <2 x i64> %i.dl, splat (i64 67108863) ; 5 uses
  %i.dn = lshr <2 x i64> %i.dl, splat (i64 26)
  %i.do = and <2 x i64> %i.dn, splat (i64 67108863) ; 5 uses
  %i.dp = lshr <2 x i64> %i.dh, splat (i64 40)
  %i.dq = or disjoint <2 x i64> %i.dp, splat (i64 16777216) ; 5 uses
  %i.dr = mul nuw nsw <2 x i64> %i.am, %i.di
  %i.ds = mul nuw nsw <2 x i64> %i.ap, %i.di
  %i.dt = add <2 x i64> %i.cj, %i.dr
  %i.du = mul nuw nsw <2 x i64> %i.as, %i.dk
  %i.dv = mul nuw nsw <2 x i64> %i.am, %i.dk
  %i.dw = add <2 x i64> %i.dt, %i.du
  %i.dx = mul nuw nsw <2 x i64> %i.av, %i.dm
  %i.dy = mul nuw nsw <2 x i64> %i.as, %i.dm
  %i.dz = add <2 x i64> %i.dw, %i.dx
  %i.ea = mul nuw nsw <2 x i64> %i.ay, %i.do
  %i.eb = mul nuw nsw <2 x i64> %i.av, %i.do
  %i.ec = add <2 x i64> %i.dz, %i.ea
  %i.ed = mul nuw nsw <2 x i64> %i.bb, %i.dq
  %i.ee = mul nuw nsw <2 x i64> %i.ay, %i.dq
  %i.ef = add <2 x i64> %i.ec, %i.ed
  %i.eg = mul nuw nsw <2 x i64> %i.be, %i.di
end_hunk_0
