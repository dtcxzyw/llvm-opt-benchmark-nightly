Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/poly1305_vec?download=true
inline.NumInlined: 68
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CRYPTO_poly1305_update:bb.a
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
  %i.s = sub nuw i64 %2, %i.o                     ; 2 uses
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
  %.062 = phi ptr [ %i.l, %bb.d ], [ %i.w, %bb.g ]
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.s, %bb.g ]
  store i64 1, ptr %i.f, align 16, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.163 = phi ptr [ %1, %bb.b ], [ %.062, %bb.h ] ; 3 uses
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.h ]     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 4 uses
  %.not69 = icmp eq i64 %i.y, 0
  br i1 %.not69, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = sub i64 64, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 range(i64 1, 0) %.1) ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %_ZL14OPENSSL_memcpyPvPKvm.exit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr readonly align 1 %.163, i64 %i.aa, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit71

_ZL14OPENSSL_memcpyPvPKvm.exit71:                 ; preds = %bb.j, %bb.k
  %i.ae = add i64 %i.y, %i.aa                     ; 2 uses
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !15
  %i.af = icmp ult i64 %i.ae, 64
  br i1 %i.af, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit71
  %i.ag = getelementptr inbounds nuw i8, ptr %.163, i64 %i.aa
  %i.ah = sub nuw i64 %.1, %i.aa
  tail call fastcc void @_ZL15poly1305_blocksP25poly1305_state_internal_tPKhm(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ab, i64 noundef 64)
  store i64 0, ptr %i.x, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.264 = phi ptr [ %i.ag, %bb.l ], [ %.163, %bb.i ] ; 3 uses
  %.2 = phi i64 [ %i.ah, %bb.l ], [ %.1, %bb.i ]  ; 4 uses
  %i.ai = icmp ugt i64 %.2, 63
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = and i64 %.2, -64                        ; 2 uses
  tail call fastcc void @_ZL15poly1305_blocksP25poly1305_state_internal_tPKhm(ptr noundef nonnull %i.d, ptr noundef %.264, i64 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %.264, i64 %i.aj
  %i.al = and i64 %.2, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.365 = phi ptr [ %i.ak, %bb.n ], [ %.264, %bb.m ]
  %.3 = phi i64 [ %i.al, %bb.n ], [ %.2, %bb.m ]  ; 3 uses
  %.not70 = icmp eq i64 %.3, 0
  br i1 %.not70, label %bb.p, label %_ZL14OPENSSL_memcpyPvPKvm.exit72

_ZL14OPENSSL_memcpyPvPKvm.exit72:                 ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.an = load i64, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr readonly align 1 %.365, i64 %.3, i1 false)
  %i.ap = add i64 %i.an, %.3
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
  %i.an = mul nuw i128 %i.am, %i.al
  %i.ao = add i128 %i.an, %i.aj                   ; 2 uses
  %i.ap = zext i64 %i.y to i128
  %i.aq = mul nuw i128 %i.am, %i.ap
  %i.ar = shl i64 %i.i, 1
  %i.as = zext i64 %i.ar to i128
  %i.at = zext i64 %i.q to i128                   ; 3 uses
  %i.au = mul nuw i128 %i.at, %i.as
  %i.av = add i128 %i.aq, %i.au
  %i.aw = mul nuw i128 %i.at, %i.at
  %i.ax = shl i64 %i.y, 1
  %i.ay = zext i64 %i.ax to i128
  %i.az = mul nuw i128 %i.ay, %i.ai
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
  %i.bu = lshr i64 %i.bs, 26
  %i.bv = shl nuw nsw i64 %i.bt, 18
  %i.bw = or disjoint i64 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = lshr i64 %i.bt, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ca = lshr i64 %i.bt, 34
  %i.cb = shl nuw nsw i64 %i.bm, 10
  %i.cc = or i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.bq to i32
  %i.ce = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.cf = trunc i64 %i.bw to i32
  %i.cg = insertelement <4 x i32> %i.ce, i32 %i.cf, i64 1
  %i.ch = trunc i64 %i.by to i32
  %i.ci = insertelement <4 x i32> %i.cg, i32 %i.ch, i64 2
  %i.cj = trunc i64 %i.cc to i32
  %i.ck = insertelement <4 x i32> %i.ci, i32 %i.cj, i64 3
  %i.cl = and <4 x i32> %i.ck, splat (i32 67108863) ; 4 uses
  %2 = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  store <4 x i32> %2, ptr %i.a, align 16, !tbaa !11
  %3 = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  store <4 x i32> %3, ptr %i.bx, align 16, !tbaa !11
  %4 = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 5> ; 2 uses
  store <4 x i32> %4, ptr %i.bz, align 16, !tbaa !11
  %5 = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 5> ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %5, ptr %i.cm, align 16, !tbaa !11
  %i.cn = lshr i64 %i.bm, 16
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.co, i64 0
  %6 = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %6, ptr %i.cq, align 16, !tbaa !11
  %7 = bitcast <4 x i32> %3 to <2 x i64>
  %i.cr = mul nuw nsw <2 x i64> %7, splat (i64 5)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.cr, ptr %i.cs, align 16, !tbaa !11
  %8 = bitcast <4 x i32> %4 to <2 x i64>
  %i.ct = mul nuw nsw <2 x i64> %8, splat (i64 5)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> %i.ct, ptr %i.cu, align 16, !tbaa !11
  %9 = bitcast <4 x i32> %5 to <2 x i64>
  %i.cv = mul nuw nsw <2 x i64> %9, splat (i64 5)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x i64> %i.cv, ptr %i.cw, align 16, !tbaa !11
  %10 = bitcast <4 x i32> %6 to <2 x i64>
  %i.cx = mul nuw nsw <2 x i64> %10, splat (i64 5)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.cx, ptr %i.cy, align 16, !tbaa !11
  %i.cz = mul nuw nsw i64 %i.bm, 20
  %i.da = zext nneg i64 %i.bs to i128             ; 3 uses
  %i.db = mul nuw nsw i128 %i.da, %i.da
  %i.dc = shl nuw nsw i64 %i.bt, 1
  %i.dd = zext nneg i64 %i.dc to i128
  %i.de = zext nneg i64 %i.cz to i128             ; 2 uses
  %i.df = mul nuw nsw i128 %i.de, %i.dd
  %i.dg = add nuw nsw i128 %i.df, %i.db           ; 2 uses
  %i.dh = and i128 %i.bk, 4398046511103
  %i.di = mul nuw nsw i128 %i.dh, %i.de
  %i.dj = shl nuw nsw i64 %i.bs, 1
  %i.dk = zext nneg i64 %i.dj to i128
  %i.dl = zext nneg i64 %i.bt to i128             ; 3 uses
  %i.dm = mul nuw nsw i128 %i.dl, %i.dk
  %i.dn = add nuw nsw i128 %i.di, %i.dm
  %i.do = mul nuw nsw i128 %i.dl, %i.dl
  %i.dp = shl nuw nsw i64 %i.bm, 1
  %i.dq = zext nneg i64 %i.dp to i128
  %i.dr = mul nuw nsw i128 %i.dq, %i.da
  %i.ds = add nuw nsw i128 %i.dr, %i.do
  %i.dt = trunc i128 %i.dg to i64
  %i.du = and i64 %i.dt, 17592186044415
  %i.dv = lshr i128 %i.dg, 44
  %i.dw = add nuw nsw i128 %i.dn, %i.dv           ; 2 uses
  %i.dx = trunc i128 %i.dw to i64
  %i.dy = and i64 %i.dx, 17592186044415
  %i.dz = lshr i128 %i.dw, 44
  %i.ea = add nuw nsw i128 %i.ds, %i.dz           ; 2 uses
  %i.eb = trunc i128 %i.ea to i64
  %i.ec = and i64 %i.eb, 4398046511103            ; 2 uses
  %i.ed = lshr i128 %i.ea, 42
  %i.ee = trunc nuw nsw i128 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, 5
  %i.eg = add nuw nsw i64 %i.ef, %i.du            ; 3 uses
  %i.eh = lshr i64 %i.eg, 44
  %i.ei = add nuw nsw i64 %i.eh, %i.dy            ; 3 uses
  %i.ej = lshr i64 %i.eg, 26
  %i.ek = and i64 %i.ej, 262143
  %i.el = shl nuw nsw i64 %i.ei, 18
  %i.em = or disjoint i64 %i.el, %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = lshr i64 %i.ei, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eq = lshr i64 %i.ei, 34
  %i.er = shl nuw nsw i64 %i.ec, 10
  %i.es = or i64 %i.eq, %i.er
  %i.et = trunc i64 %i.eg to i32
  %i.eu = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ev = trunc i64 %i.em to i32
  %i.ew = insertelement <4 x i32> %i.eu, i32 %i.ev, i64 1
  %i.ex = trunc i64 %i.eo to i32
  %i.ey = insertelement <4 x i32> %i.ew, i32 %i.ex, i64 2
  %i.ez = trunc i64 %i.es to i32
  %i.fa = insertelement <4 x i32> %i.ey, i32 %i.ez, i64 3
  %i.fb = and <4 x i32> %i.fa, splat (i32 67108863) ; 4 uses
  %11 = shufflevector <4 x i32> %i.fb, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  store <4 x i32> %11, ptr %0, align 16, !tbaa !11
  %12 = shufflevector <4 x i32> %i.fb, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  store <4 x i32> %12, ptr %i.en, align 16, !tbaa !11
  %13 = shufflevector <4 x i32> %i.fb, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 5> ; 2 uses
  store <4 x i32> %13, ptr %i.ep, align 16, !tbaa !11
  %14 = shufflevector <4 x i32> %i.fb, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 5> ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %14, ptr %i.fc, align 16, !tbaa !11
  %i.fd = lshr i64 %i.ec, 16
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.fe, i64 0
  %15 = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> %15, ptr %i.fg, align 16, !tbaa !11
  %16 = bitcast <4 x i32> %12 to <2 x i64>
  %i.fh = mul nuw nsw <2 x i64> %16, splat (i64 5)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.fh, ptr %i.fi, align 16, !tbaa !11
  %17 = bitcast <4 x i32> %13 to <2 x i64>
  %i.fj = mul nuw nsw <2 x i64> %17, splat (i64 5)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.fj, ptr %i.fk, align 16, !tbaa !11
  %18 = bitcast <4 x i32> %14 to <2 x i64>
  %i.fl = mul nuw nsw <2 x i64> %18, splat (i64 5)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.fl, ptr %i.fm, align 16, !tbaa !11
  %19 = bitcast <4 x i32> %15 to <2 x i64>
  %i.fn = mul nuw nsw <2 x i64> %19, splat (i64 5)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.fn, ptr %i.fo, align 16, !tbaa !11
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
  %i.fp = load i64, ptr %1, align 1, !tbaa !11
  %i.fq = insertelement <2 x i64> poison, i64 %i.fp, i64 0
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load i64, ptr %i.fr, align 1, !tbaa !11
  %i.ft = insertelement <2 x i64> %i.fq, i64 %i.fs, i64 1 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load i64, ptr %i.fu, align 1, !tbaa !11
  %i.fw = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fy = load i64, ptr %i.fx, align 1, !tbaa !11
  %i.fz = insertelement <2 x i64> %i.fw, i64 %i.fy, i64 1 ; 2 uses
  %i.ga = and <2 x i64> %i.ft, splat (i64 67108863)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x i64> %i.ga, ptr %i.gb, align 16, !tbaa !11
  %i.gc = lshr <2 x i64> %i.ft, splat (i64 26)
  %i.gd = and <2 x i64> %i.gc, splat (i64 67108863)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %i.gd, ptr %i.ge, align 16, !tbaa !11
  %i.gf = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.fz, <2 x i64> %i.ft, <2 x i64> splat (i64 12)) ; 2 uses
  %i.gg = and <2 x i64> %i.gf, splat (i64 67108863)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x i64> %i.gg, ptr %i.gh, align 16, !tbaa !11
  %i.gi = lshr <2 x i64> %i.gf, splat (i64 26)
  %i.gj = and <2 x i64> %i.gi, splat (i64 67108863)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> %i.gj, ptr %i.gk, align 16, !tbaa !11
  %i.gl = lshr <2 x i64> %i.fz, splat (i64 40)
  %i.gm = or disjoint <2 x i64> %i.gl, splat (i64 16777216)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x i64> %i.gm, ptr %i.gn, align 16, !tbaa !11
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
  %.0304 = phi <2 x i64> [ %i.j, %bb.a ], [ %i.hx, %bb.b ]
  %.0292303 = phi <2 x i64> [ %i.bn, %bb.a ], [ %i.hw, %bb.b ] ; 5 uses
  %.0293302 = phi <2 x i64> [ %i.bm, %bb.a ], [ %i.hr, %bb.b ] ; 5 uses
  %.0294301 = phi <2 x i64> [ %i.d, %bb.a ], [ %i.hu, %bb.b ]
  %.0295300 = phi <2 x i64> [ %i.bl, %bb.a ], [ %i.hs, %bb.b ] ; 5 uses
  %.0296299 = phi i64 [ %2, %bb.a ], [ %i.hz, %bb.b ]
  %.0297298 = phi ptr [ %1, %bb.a ], [ %i.hy, %bb.b ] ; 9 uses
  %i.bo = mul nuw <2 x i64> %i.l, %.0295300
  %i.bp = mul nuw <2 x i64> %i.o, %.0295300
  %i.bq = mul nuw <2 x i64> %i.r, %.0295300
  %i.br = mul nuw <2 x i64> %i.u, %.0295300
  %i.bs = mul nuw <2 x i64> %i.x, %.0295300
  %i.bt = and <2 x i64> %.0294301, splat (i64 4294967295) ; 5 uses
  %i.bu = mul nuw <2 x i64> %i.aa, %i.bt
  %i.bv = mul nuw <2 x i64> %i.l, %i.bt
  %i.bw = add <2 x i64> %i.bu, %i.bo
  %i.bx = add <2 x i64> %i.bp, %i.bv
  %i.by = mul nuw <2 x i64> %i.ad, %.0293302
  %i.bz = mul nuw <2 x i64> %i.aa, %.0293302
  %i.ca = add <2 x i64> %i.bw, %i.by
  %i.cb = add <2 x i64> %i.bx, %i.bz
  %i.cc = mul nuw <2 x i64> %i.ag, %.0292303
  %i.cd = mul nuw <2 x i64> %i.ad, %.0292303
  %i.ce = add <2 x i64> %i.ca, %i.cc
  %i.cf = add <2 x i64> %i.cb, %i.cd
  %i.cg = and <2 x i64> %.0304, splat (i64 4294967295) ; 5 uses
  %i.ch = mul nuw <2 x i64> %i.aj, %i.cg
  %i.ci = mul nuw <2 x i64> %i.ag, %i.cg
  %i.cj = add <2 x i64> %i.ce, %i.ch
  %i.ck = add <2 x i64> %i.cf, %i.ci
  %i.cl = mul nuw <2 x i64> %i.o, %i.bt
  %i.cm = mul nuw <2 x i64> %i.r, %i.bt
  %i.cn = mul nuw <2 x i64> %i.l, %.0293302
  %i.co = mul nuw <2 x i64> %i.o, %.0293302
  %i.cp = mul nuw <2 x i64> %i.aa, %.0292303
  %i.cq = mul nuw <2 x i64> %i.l, %.0292303
  %i.cr = mul nuw <2 x i64> %i.ad, %i.cg
  %i.cs = mul nuw <2 x i64> %i.aa, %i.cg
  %i.ct = mul nuw <2 x i64> %i.u, %i.bt
  %i.cu = mul nuw <2 x i64> %i.r, %.0293302
  %i.cv = mul nuw <2 x i64> %i.o, %.0292303
  %i.cw = mul nuw <2 x i64> %i.l, %i.cg
  %i.cx = load i64, ptr %.0297298, align 1, !tbaa !11
  %i.cy = insertelement <2 x i64> poison, i64 %i.cx, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.0297298, i64 16
  %i.da = load i64, ptr %i.cz, align 1, !tbaa !11
  %i.db = insertelement <2 x i64> %i.cy, i64 %i.da, i64 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0297298, i64 8
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !11
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %.0297298, i64 24
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
  %i.eh = mul nuw nsw <2 x i64> %i.bh, %i.di
  %i.ei = mul nuw nsw <2 x i64> %i.ap, %i.dk
  %i.ej = mul nuw nsw <2 x i64> %i.be, %i.dk
  %i.ek = mul nuw nsw <2 x i64> %i.dm, %i.am
  %i.el = mul nuw nsw <2 x i64> %i.dm, %i.ap
end_hunk_0
begin_hunk_1_@CRYPTO_poly1305_finish:bb.a
  %i.dk = add <2 x i64> %i.da, %i.dg              ; 2 uses
  %i.dl = add nuw <2 x i64> %i.cf, splat (i64 16777216)
  %i.dm = add <2 x i64> %i.dl, %i.ce
  %i.dn = add <2 x i64> %i.dm, %i.cd
  %i.do = add <2 x i64> %i.dn, %i.cc
  %i.dp = add <2 x i64> %i.do, %i.an
  %i.dq = add <2 x i64> %i.dp, %i.cy
  %i.dr = add <2 x i64> %i.dq, %i.dh              ; 2 uses
  %i.ds = lshr <2 x i64> %i.dk, splat (i64 26)
  %i.dt = lshr <2 x i64> %i.dr, splat (i64 26)
  %i.du = and <2 x i64> %i.dk, splat (i64 67108863)
  %i.dv = and <2 x i64> %i.dr, splat (i64 67108863)
  %i.dw = add <2 x i64> %i.bu, %i.bw
  %i.dx = add <2 x i64> %i.dw, %i.af
  %i.dy = add <2 x i64> %i.dx, %i.by
  %i.dz = add <2 x i64> %i.dy, %i.ca
  %i.ea = add <2 x i64> %i.dz, %i.cv
  %i.eb = add <2 x i64> %i.ea, %i.ds              ; 2 uses
  %i.ec = and <2 x i64> %i.dt, splat (i64 4294967295)
  %i.ed = mul nuw nsw <2 x i64> %i.ec, splat (i64 5)
  %i.ee = add nuw nsw <2 x i64> %i.ed, %i.di      ; 2 uses
  %i.ef = lshr <2 x i64> %i.eb, splat (i64 26)
  %i.eg = lshr <2 x i64> %i.ee, splat (i64 26)
  %i.eh = and <2 x i64> %i.eb, splat (i64 67108863)
  %i.ei = and <2 x i64> %i.ee, splat (i64 67108863)
  %i.ej = add nuw nsw <2 x i64> %i.dj, %i.ef      ; 2 uses
  %i.ek = add nuw nsw <2 x i64> %i.eg, %i.du
  %i.el = lshr <2 x i64> %i.ej, splat (i64 26)
  %i.em = and <2 x i64> %i.ej, splat (i64 67108863)
  %i.en = add nuw nsw <2 x i64> %i.dv, %i.el
  br label %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit

_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit: ; preds = %bb.b, %bb.c
  %.0365.i = phi <2 x i64> [ %i.ei, %bb.c ], [ %i.j, %bb.b ]
  %.0364.i = phi <2 x i64> [ %i.ek, %bb.c ], [ %i.l, %bb.b ]
  %.0363.i = phi <2 x i64> [ %i.eh, %bb.c ], [ %i.n, %bb.b ]
  %.0362.i = phi <2 x i64> [ %i.em, %bb.c ], [ %i.p, %bb.b ]
  %.0361.i = phi <2 x i64> [ %i.en, %bb.c ], [ %i.r, %bb.b ]
  %.0.i = phi i64 [ 32, %bb.c ], [ 0, %bb.b ]     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !11
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw i64 %i.eq, 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11 ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = or disjoint i64 %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw i64 %i.ez, 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !11
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = or disjoint i64 %i.fa, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !11
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw i64 %i.fi, 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !11 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = or disjoint i64 %i.fj, %i.fm
  %i.fo = and i32 %i.et, 67108863
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !11
  %i.fq = lshr i64 %i.ev, 26
  %i.fr = shl nuw nsw i64 %i.fd, 18
  %i.fs = or i64 %i.fr, %i.fq
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 67108863                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !11
  %i.fw = lshr i64 %i.fe, 8
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = and i32 %i.fx, 67108863                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !11
  %i.ga = lshr i32 %i.ey, 2
  %i.gb = shl i32 %i.fl, 10
  %i.gc = or i32 %i.gb, %i.ga
  %i.gd = and i32 %i.gc, 67108863                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i32 %i.gd, ptr %i.gf, align 8, !tbaa !11
  %i.gg = lshr i64 %i.fn, 16
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 %i.gh, ptr %i.gj, align 8, !tbaa !11
  %i.gk = mul nuw nsw i32 %i.fu, 5
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i32 %i.gk, ptr %i.gm, align 8, !tbaa !11
  %i.gn = mul nuw nsw i32 %i.fy, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store i32 %i.gn, ptr %i.gp, align 8, !tbaa !11
  %i.gq = mul nuw nsw i32 %i.gd, 5
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store i32 %i.gq, ptr %i.gs, align 8, !tbaa !11
  %i.gt = mul i32 %i.gh, 5
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store i32 %i.gt, ptr %i.gv, align 8, !tbaa !11
  %i.gw = load <2 x i64>, ptr %i.s, align 16, !tbaa !11
  %i.gx = and <2 x i64> %.0365.i, splat (i64 4294967295) ; 5 uses
  %i.gy = and <2 x i64> %i.gw, splat (i64 4294967295) ; 5 uses
  %i.gz = mul nuw <2 x i64> %i.gy, %i.gx
  %i.ha = load <2 x i64>, ptr %i.ew, align 32, !tbaa !11
  %i.hb = and <2 x i64> %i.ha, splat (i64 4294967295) ; 4 uses
  %i.hc = mul nuw <2 x i64> %i.hb, %i.gx
  %i.hd = load <2 x i64>, ptr %i.ff, align 16, !tbaa !11
  %i.he = and <2 x i64> %i.hd, splat (i64 4294967295) ; 3 uses
  %i.hf = mul nuw <2 x i64> %i.he, %i.gx
  %i.hg = load <2 x i64>, ptr %i.ge, align 64, !tbaa !11
  %i.hh = and <2 x i64> %i.hg, splat (i64 4294967295) ; 2 uses
  %i.hi = mul nuw <2 x i64> %i.hh, %i.gx
  %i.hj = load <2 x i64>, ptr %i.gi, align 16, !tbaa !11
  %i.hk = and <2 x i64> %i.hj, splat (i64 4294967295)
  %i.hl = mul nuw <2 x i64> %i.hk, %i.gx
  %i.hm = load <2 x i64>, ptr %i.gu, align 16, !tbaa !11
  %i.hn = and <2 x i64> %.0364.i, splat (i64 4294967295) ; 5 uses
  %i.ho = and <2 x i64> %i.hm, splat (i64 4294967295) ; 4 uses
  %i.hp = mul nuw <2 x i64> %i.ho, %i.hn
  %i.hq = mul nuw <2 x i64> %i.gy, %i.hn
  %i.hr = add <2 x i64> %i.hp, %i.gz
  %i.hs = add <2 x i64> %i.hc, %i.hq
  %i.ht = load <2 x i64>, ptr %i.gr, align 64, !tbaa !11
  %i.hu = and <2 x i64> %.0363.i, splat (i64 4294967295) ; 5 uses
  %i.hv = and <2 x i64> %i.ht, splat (i64 4294967295) ; 3 uses
  %i.hw = mul nuw <2 x i64> %i.hv, %i.hu
  %i.hx = mul nuw <2 x i64> %i.ho, %i.hu
  %i.hy = add <2 x i64> %i.hr, %i.hw
  %i.hz = add <2 x i64> %i.hs, %i.hx
  %i.ia = load <2 x i64>, ptr %i.go, align 16, !tbaa !11
  %i.ib = and <2 x i64> %.0362.i, splat (i64 4294967295) ; 5 uses
  %i.ic = and <2 x i64> %i.ia, splat (i64 4294967295) ; 2 uses
  %i.id = mul nuw <2 x i64> %i.ic, %i.ib
  %i.ie = mul nuw <2 x i64> %i.hv, %i.ib
  %i.if = add <2 x i64> %i.hy, %i.id
  %i.ig = add <2 x i64> %i.hz, %i.ie
  %i.ih = load <2 x i64>, ptr %i.gl, align 32, !tbaa !11
  %i.ii = and <2 x i64> %.0361.i, splat (i64 4294967295) ; 5 uses
  %i.ij = and <2 x i64> %i.ih, splat (i64 4294967295)
  %i.ik = mul nuw <2 x i64> %i.ij, %i.ii
  %i.il = mul nuw <2 x i64> %i.ic, %i.ii
  %i.im = add <2 x i64> %i.if, %i.ik              ; 2 uses
  %i.in = add <2 x i64> %i.ig, %i.il
  %i.io = mul nuw <2 x i64> %i.hb, %i.hn
  %i.ip = mul nuw <2 x i64> %i.he, %i.hn
  %i.iq = mul nuw <2 x i64> %i.gy, %i.hu
  %i.ir = mul nuw <2 x i64> %i.hb, %i.hu
  %i.is = mul nuw <2 x i64> %i.ho, %i.ib
  %i.it = mul nuw <2 x i64> %i.gy, %i.ib
  %i.iu = mul nuw <2 x i64> %i.hv, %i.ii
  %i.iv = mul nuw <2 x i64> %i.ho, %i.ii
  %i.iw = add <2 x i64> %i.ir, %i.it
  %i.ix = add <2 x i64> %i.iw, %i.ip
  %i.iy = add <2 x i64> %i.ix, %i.hi
  %i.iz = add <2 x i64> %i.iy, %i.iv              ; 2 uses
  %i.ja = mul nuw <2 x i64> %i.hh, %i.hn
  %i.jb = mul nuw <2 x i64> %i.he, %i.hu
  %i.jc = mul nuw <2 x i64> %i.hb, %i.ib
  %i.jd = mul nuw <2 x i64> %i.gy, %i.ii
  %i.je = lshr <2 x i64> %i.im, splat (i64 26)
  %i.jf = lshr <2 x i64> %i.iz, splat (i64 26)
  %i.jg = and <2 x i64> %i.im, splat (i64 67108863)
  %i.jh = and <2 x i64> %i.iz, splat (i64 67108863)
  %i.ji = add <2 x i64> %i.in, %i.je              ; 2 uses
  %i.jj = add <2 x i64> %i.jc, %i.jd
  %i.jk = add <2 x i64> %i.jj, %i.jb
  %i.jl = add <2 x i64> %i.jk, %i.ja
  %i.jm = add <2 x i64> %i.jl, %i.hl
  %i.jn = add <2 x i64> %i.jm, %i.jf              ; 2 uses
  %i.jo = lshr <2 x i64> %i.ji, splat (i64 26)
  %i.jp = lshr <2 x i64> %i.jn, splat (i64 26)
  %i.jq = and <2 x i64> %i.ji, splat (i64 67108863)
  %i.jr = and <2 x i64> %i.jn, splat (i64 67108863)
  %i.js = add <2 x i64> %i.io, %i.iq
  %i.jt = add <2 x i64> %i.js, %i.hf
  %i.ju = add <2 x i64> %i.jt, %i.is
  %i.jv = add <2 x i64> %i.ju, %i.iu
  %i.jw = add <2 x i64> %i.jv, %i.jo              ; 2 uses
  %i.jx = and <2 x i64> %i.jp, splat (i64 4294967295)
  %i.jy = mul nuw nsw <2 x i64> %i.jx, splat (i64 5)
  %i.jz = add nuw nsw <2 x i64> %i.jy, %i.jg      ; 2 uses
  %i.ka = lshr <2 x i64> %i.jw, splat (i64 26)
  %i.kb = lshr <2 x i64> %i.jz, splat (i64 26)
  %i.kc = and <2 x i64> %i.jw, splat (i64 67108863) ; 2 uses
  %i.kd = and <2 x i64> %i.jz, splat (i64 67108863) ; 2 uses
  %i.ke = add nuw nsw <2 x i64> %i.ka, %i.jh      ; 2 uses
  %i.kf = add nuw nsw <2 x i64> %i.kb, %i.jq      ; 2 uses
  %i.kg = lshr <2 x i64> %i.ke, splat (i64 26)
  %i.kh = and <2 x i64> %i.ke, splat (i64 67108863) ; 2 uses
  %i.ki = add nuw nsw <2 x i64> %i.kg, %i.jr      ; 2 uses
  %i.kj = shufflevector <2 x i64> %i.kd, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.kk = add nuw nsw <2 x i64> %i.kd, %i.kj
  %i.kl = shufflevector <2 x i64> %i.kf, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.km = add nuw nsw <2 x i64> %i.kf, %i.kl
  %i.kn = shufflevector <2 x i64> %i.kc, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ko = add nuw nsw <2 x i64> %i.kc, %i.kn
  %i.kp = shufflevector <2 x i64> %i.kh, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.kq = add nuw nsw <2 x i64> %i.kh, %i.kp
  %i.kr = shufflevector <2 x i64> %i.ki, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = add nuw nsw <2 x i64> %i.ki, %i.kr
  %i.kt = bitcast <2 x i64> %i.kk to <4 x i32>
  %i.ku = extractelement <4 x i32> %i.kt, i64 0
  %i.kv = zext nneg i32 %i.ku to i64              ; 2 uses
  %i.kw = lshr i64 %i.kv, 26
  %i.kx = and i64 %i.kv, 67108863
  %i.ky = bitcast <2 x i64> %i.km to <4 x i32>
  %i.kz = extractelement <4 x i32> %i.ky, i64 0
  %i.la = sext i32 %i.kz to i64
  %i.lb = add nsw i64 %i.kw, %i.la                ; 2 uses
  %i.lc = lshr i64 %i.lb, 26
  %i.ld = and i64 %i.lb, 67108863
  %i.le = bitcast <2 x i64> %i.ko to <4 x i32>
  %i.lf = extractelement <4 x i32> %i.le, i64 0
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = add nuw nsw i64 %i.lc, %i.lg            ; 2 uses
  %i.li = lshr i64 %i.lh, 26
  %i.lj = bitcast <2 x i64> %i.kq to <4 x i32>
  %i.lk = extractelement <4 x i32> %i.lj, i64 0
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = add nuw nsw i64 %i.li, %i.ll            ; 2 uses
  %i.ln = lshr i64 %i.lm, 26
  %i.lo = and i64 %i.lm, 67108863                 ; 2 uses
  %i.lp = bitcast <2 x i64> %i.ks to <4 x i32>
  %i.lq = extractelement <4 x i32> %i.lp, i64 0
  %i.lr = sext i32 %i.lq to i64
  %i.ls = add nsw i64 %i.ln, %i.lr                ; 2 uses
  %i.lt = lshr i64 %i.ls, 26
  %i.lu = mul nuw nsw i64 %i.lt, 5
  %i.lv = add nuw nsw i64 %i.lu, %i.kx            ; 2 uses
  %i.lw = lshr i64 %i.lv, 26
  %i.lx = and i64 %i.lv, 67108863
  %i.ly = add nuw nsw i64 %i.lw, %i.ld            ; 2 uses
  %i.lz = shl nuw nsw i64 %i.ly, 26
  %.masked.i = and i64 %i.lz, 17592118935552
  %i.ma = or disjoint i64 %.masked.i, %i.lx       ; 2 uses
  store i64 %i.ma, ptr %.phi.trans.insert, align 32, !tbaa !11
  %i.mb = lshr i64 %i.ly, 18
  %i.mc = shl nuw nsw i64 %i.lh, 8
  %i.md = and i64 %i.mc, 17179868928
  %i.me = shl nuw nsw i64 %i.lo, 34
  %.masked366.i = and i64 %i.me, 17575006175232
  %i.mf = or disjoint i64 %.masked366.i, %i.md
  %i.mg = or i64 %i.mf, %i.mb                     ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !11
  %i.mi = lshr i64 %i.lo, 10
  %i.mj = shl nsw i64 %i.ls, 16
  %i.mk = and i64 %i.mj, 4398046445568
  %i.ml = or disjoint i64 %i.mk, %i.mi            ; 2 uses
  store i64 %i.ml, ptr %i.k, align 16, !tbaa !11
  %i.mm = sub i64 %i.f, %.0.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit
  %i.mo = phi i64 [ %i.ml, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit ], [ %.pre161, %._crit_edge ] ; 2 uses
  %i.mp = phi i64 [ %i.mg, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit ], [ %.pre159, %._crit_edge ] ; 2 uses
  %i.mq = phi i64 [ %i.ma, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0148 = phi i64 [ %i.mm, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit ], [ %i.f, %._crit_edge ] ; 3 uses
  %.0145 = phi ptr [ %i.mn, %_ZL16poly1305_combineP25poly1305_state_internal_tPKhm.exit ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !11
  %i.mt = zext i32 %i.ms to i64
  %i.mu = shl nuw i64 %i.mt, 32
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !11
  %i.mx = zext i32 %i.mw to i64
  %i.my = or disjoint i64 %i.mu, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !11
  %i.nb = zext i32 %i.na to i64
  %i.nc = shl nuw i64 %i.nb, 32
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !11
  %i.nf = zext i32 %i.ne to i64
  %i.ng = or disjoint i64 %i.nc, %i.nf            ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !11
  %i.nj = zext i32 %i.ni to i64
  %i.nk = shl nuw i64 %i.nj, 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !11
  %i.nn = zext i32 %i.nm to i64
  %i.no = or disjoint i64 %i.nk, %i.nn            ; 2 uses
  %i.np = mul i64 %i.ng, 20
  %i.nq = mul i64 %i.no, 20
  %i.nr = icmp ult i64 %.0148, 16
  br i1 %i.nr, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.1149 = phi i64 [ %i.pu, %bb.f ], [ %.0148, %bb.d ]
  %.1146 = phi ptr [ %i.pt, %bb.f ], [ %.0145, %bb.d ] ; 3 uses
  %.0142 = phi i64 [ %i.ps, %bb.f ], [ %i.mq, %bb.d ]
  %.0139 = phi i64 [ %i.pj, %bb.f ], [ %i.mp, %bb.d ]
  %.0 = phi i64 [ %i.po, %bb.f ], [ %i.mo, %bb.d ]
  %.0.copyload.i = load i64, ptr %.1146, align 1  ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.1146, i64 8
  %.0.copyload.i155 = load i64, ptr %i.ns, align 1 ; 2 uses
  %i.nt = and i64 %.0.copyload.i, 17592186044415
  %i.nu = add i64 %i.nt, %.0142
  %i.nv = zext i64 %.0.copyload.i155 to i128
  %i.nw = shl nuw i128 %i.nv, 64
  %i.nx = zext i64 %.0.copyload.i to i128
  %i.ny = or disjoint i128 %i.nw, %i.nx
  %i.nz = lshr i128 %i.ny, 44
  %i.oa = trunc i128 %i.nz to i64
  %i.ob = and i64 %i.oa, 17592186044415
  %i.oc = add i64 %i.ob, %.0139
  %i.od = lshr i64 %.0.copyload.i155, 24
  %i.oe = add i64 %.0, 1099511627776
  %i.of = add i64 %i.oe, %i.od
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit, %bb.e
  %.2150 = phi i64 [ 16, %_ZL14OPENSSL_memsetPvim.exit ], [ %.1149, %bb.e ]
  %.2147 = phi ptr [ %.3, %_ZL14OPENSSL_memsetPvim.exit ], [ %.1146, %bb.e ]
  %.1143 = phi i64 [ %i.qc, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.nu, %bb.e ]
  %.1140 = phi i64 [ %i.qk, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.oc, %bb.e ]
  %.1 = phi i64 [ %i.qm, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.of, %bb.e ]
  %i.og = zext i64 %.1143 to i128                 ; 3 uses
  %i.oh = zext i64 %i.my to i128                  ; 3 uses
  %i.oi = mul nuw i128 %i.og, %i.oh
  %i.oj = zext i64 %.1140 to i128                 ; 3 uses
  %i.ok = zext i64 %i.nq to i128                  ; 2 uses
  %i.ol = mul nuw i128 %i.oj, %i.ok
  %i.om = add i128 %i.ol, %i.oi
  %i.on = zext i64 %.1 to i128                    ; 3 uses
  %i.oo = zext i64 %i.np to i128
  %i.op = mul nuw i128 %i.on, %i.oo
  %i.oq = add i128 %i.om, %i.op                   ; 2 uses
  %i.or = zext i64 %i.ng to i128                  ; 2 uses
  %i.os = mul nuw i128 %i.og, %i.or
  %i.ot = mul nuw i128 %i.oj, %i.oh
  %i.ou = add i128 %i.ot, %i.os
  %i.ov = mul nuw i128 %i.on, %i.ok
  %i.ow = add i128 %i.ou, %i.ov
  %i.ox = zext i64 %i.no to i128
  %i.oy = mul nuw i128 %i.og, %i.ox
  %i.oz = mul nuw i128 %i.oj, %i.or
  %i.pa = add i128 %i.oz, %i.oy
  %i.pb = mul nuw i128 %i.on, %i.oh
  %i.pc = add i128 %i.pa, %i.pb
  %i.pd = trunc i128 %i.oq to i64
  %i.pe = and i64 %i.pd, 17592186044415
  %i.pf = lshr i128 %i.oq, 44
  %i.pg = and i128 %i.pf, 18446744073709551615
  %i.ph = add i128 %i.ow, %i.pg                   ; 2 uses
  %i.pi = trunc i128 %i.ph to i64
  %i.pj = and i64 %i.pi, 17592186044415           ; 2 uses
  %i.pk = lshr i128 %i.ph, 44
  %i.pl = and i128 %i.pk, 18446744073709551615
  %i.pm = add i128 %i.pc, %i.pl                   ; 2 uses
  %i.pn = trunc i128 %i.pm to i64
  %i.po = and i64 %i.pn, 4398046511103            ; 2 uses
  %i.pp = lshr i128 %i.pm, 42
  %i.pq = trunc i128 %i.pp to i64
  %i.pr = mul i64 %i.pq, 5
  %i.ps = add i64 %i.pr, %i.pe                    ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.2147, i64 16 ; 2 uses
  %i.pu = add i64 %.2150, -16                     ; 3 uses
  %i.pv = icmp ugt i64 %i.pu, 15
  br i1 %i.pv, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.3151 = phi i64 [ %.0148, %bb.d ], [ %i.pu, %bb.f ] ; 4 uses
  %.3 = phi ptr [ %.0145, %bb.d ], [ %i.pt, %bb.f ] ; 4 uses
  %.2144 = phi i64 [ %i.mq, %bb.d ], [ %i.ps, %bb.f ] ; 3 uses
  %.2141 = phi i64 [ %i.mp, %bb.d ], [ %i.pj, %bb.f ] ; 2 uses
  %.2 = phi i64 [ %i.mo, %bb.d ], [ %i.po, %bb.f ] ; 2 uses
  %.not154 = icmp eq i64 %.3151, 0
  br i1 %.not154, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.pw = getelementptr inbounds nuw i8, ptr %.3, i64 %.3151 ; 2 uses
  store i8 1, ptr %i.pw, align 1, !tbaa !11
  %i.px = icmp eq i64 %.3151, 15
  br i1 %i.px, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.py = xor i64 %.3151, 15
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.pz, i8 0, i64 range(i64 0, 15) %i.py, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.h, %bb.i
  %.0.copyload.i156 = load i64, ptr %.3, align 1  ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %.0.copyload.i157 = load i64, ptr %i.qa, align 1 ; 2 uses
  %i.qb = and i64 %.0.copyload.i156, 17592186044415
  %i.qc = add i64 %i.qb, %.2144
  %i.qd = zext i64 %.0.copyload.i157 to i128
  %i.qe = shl nuw i128 %i.qd, 64
  %i.qf = zext i64 %.0.copyload.i156 to i128
  %i.qg = or disjoint i128 %i.qe, %i.qf
  %i.qh = lshr i128 %i.qg, 44
  %i.qi = trunc i128 %i.qh to i64
  %i.qj = and i64 %i.qi, 17592186044415
  %i.qk = add i64 %i.qj, %.2141
  %i.ql = lshr i64 %.0.copyload.i157, 24
  %i.qm = add i64 %i.ql, %.2
end_hunk_1
