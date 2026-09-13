Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/poly1305_vec?download=true
inline.NumInlined: 68
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CRYPTO_poly1305_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 63
  %i.c = and i64 %i.b, -64
  %i.d = inttoptr i64 %i.c to ptr                 ; 11 uses
  %.0.copyload.i = load i64, ptr %1, align 1      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i37 = load i64, ptr %i.e, align 1  ; 2 uses
  %i.f = and i64 %.0.copyload.i, 17575274610687   ; 2 uses
  %i.g = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i37, i64 %.0.copyload.i, i64 20)
  %i.h = and i64 %i.g, 17592181915647             ; 2 uses
  %i.i = lshr i64 %.0.copyload.i37, 24
  %i.j = and i64 %i.i, 68719475727                ; 2 uses
  %i.k = trunc i64 %i.f to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  store i32 %i.k, ptr %i.l, align 4, !tbaa !11
  %i.m = lshr i64 %i.f, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  store i32 %i.n, ptr %i.o, align 4, !tbaa !11
  %i.p = trunc i64 %i.h to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  store i32 %i.p, ptr %i.q, align 4, !tbaa !11
  %i.r = lshr i64 %i.h, 32
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  store i32 %i.s, ptr %i.t, align 4, !tbaa !11
  %i.u = trunc i64 %i.j to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  store i32 %i.u, ptr %i.v, align 4, !tbaa !11
  %i.w = lshr i64 %i.j, 32
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  store i32 %i.x, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i38 = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  store i32 %.0.copyload.i38, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0.copyload.i39 = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 204
  store i32 %.0.copyload.i39, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i40 = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 212
  store i32 %.0.copyload.i40, ptr %i.ae, align 4, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0.copyload.i41 = load i32, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  store i32 %.0.copyload.i41, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.ah, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CRYPTO_poly1305_update(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 63
  %i.c = and i64 %i.b, -64
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !tbaa !14
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
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  store <4 x i32> %i.cm, ptr %i.a, align 16, !tbaa !11
  %i.cn = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  store <4 x i32> %i.cn, ptr %i.bx, align 16, !tbaa !11
  %i.co = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 5> ; 2 uses
  store <4 x i32> %i.co, ptr %i.bz, align 16, !tbaa !11
  %i.cp = shufflevector <4 x i32> %i.cl, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 5> ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i32> %i.cp, ptr %i.cq, align 16, !tbaa !11
  %i.cr = lshr i64 %i.bm, 16
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.cs, i64 0
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %i.cu, ptr %i.cv, align 16, !tbaa !11
  %i.cw = bitcast <4 x i32> %i.cn to <2 x i64>
  %i.cx = mul nuw nsw <2 x i64> %i.cw, splat (i64 5)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.cx, ptr %i.cy, align 16, !tbaa !11
  %i.cz = bitcast <4 x i32> %i.co to <2 x i64>
  %i.da = mul nuw nsw <2 x i64> %i.cz, splat (i64 5)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x i64> %i.da, ptr %i.db, align 16, !tbaa !11
  %i.dc = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.dd = mul nuw nsw <2 x i64> %i.dc, splat (i64 5)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x i64> %i.dd, ptr %i.de, align 16, !tbaa !11
  %i.df = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.dg = mul nuw nsw <2 x i64> %i.df, splat (i64 5)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.dg, ptr %i.dh, align 16, !tbaa !11
  %i.di = mul nuw nsw i64 %i.bm, 20
  %i.dj = zext nneg i64 %i.bs to i128             ; 3 uses
  %i.dk = mul nuw nsw i128 %i.dj, %i.dj
  %i.dl = shl nuw nsw i64 %i.bt, 1
  %i.dm = zext nneg i64 %i.dl to i128
  %i.dn = zext nneg i64 %i.di to i128             ; 2 uses
  %i.do = mul nuw nsw i128 %i.dn, %i.dm
  %i.dp = add nuw nsw i128 %i.do, %i.dk           ; 2 uses
  %i.dq = and i128 %i.bk, 4398046511103
  %i.dr = mul nuw nsw i128 %i.dq, %i.dn
  %i.ds = shl nuw nsw i64 %i.bs, 1
  %i.dt = zext nneg i64 %i.ds to i128
  %i.du = zext nneg i64 %i.bt to i128             ; 3 uses
  %i.dv = mul nuw nsw i128 %i.du, %i.dt
  %i.dw = add nuw nsw i128 %i.dr, %i.dv
  %i.dx = mul nuw nsw i128 %i.du, %i.du
  %i.dy = shl nuw nsw i64 %i.bm, 1
  %i.dz = zext nneg i64 %i.dy to i128
  %i.ea = mul nuw nsw i128 %i.dz, %i.dj
  %i.eb = add nuw nsw i128 %i.ea, %i.dx
  %i.ec = trunc i128 %i.dp to i64
  %i.ed = and i64 %i.ec, 17592186044415
  %i.ee = lshr i128 %i.dp, 44
  %i.ef = add nuw nsw i128 %i.dw, %i.ee           ; 2 uses
end_hunk_0
