Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/scalarmult_ristretto255_ref10?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ge25519_p3 = type { [5 x i64], [5 x i64], [5 x i64], [5 x i64] }

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_scalarmult_ristretto255(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ge25519_p3, align 8         ; 6 uses
  %4 = alloca %struct.ge25519_p3, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.a = call i32 @ristretto255_frombytes(ptr noundef nonnull %4, ptr noundef nonnull %2) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader.preheader, label %9

.preheader.preheader:                             ; preds = %bb.a
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %7 = add i64 %5, 32
  %8 = add i64 %6, 32
  %rt.bound0 = icmp ugt i64 %7, %6
  %rt.bound1 = icmp ugt i64 %8, %5
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader.preheader.a, label %.preheader.preheader.rtvec, !prof !4

9:                                                ; preds = %bb.b, %bb.a
  %.012 = phi i32 [ -1, %bb.a ], [ %..rtmerge, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret i32 %.012

.preheader.preheader.rtvec:                       ; preds = %.preheader.preheader
  %10 = load <16 x i8>, ptr %1, align 1
  store <16 x i8> %10, ptr %0, align 1
  %11 = getelementptr i8, ptr %1, i64 16
  %12 = getelementptr i8, ptr %0, i64 16
  %13 = load <16 x i8>, ptr %11, align 1
  %14 = and <16 x i8> %13, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 127>
  store <16 x i8> %14, ptr %12, align 1
  call void @ge25519_scalarmult(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %4) #4
  call void @ristretto255_p3_tobytes(ptr noundef nonnull %0, ptr noundef nonnull %3) #4
  %15 = call i32 @sodium_is_zero(ptr noundef nonnull %0, i64 noundef 32) #4
  br label %bb.b

.preheader.preheader.a:                           ; preds = %.preheader.preheader
  %i.b = load i8, ptr %1, align 1
  store i8 %i.b, ptr %0, align 1
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr i8, ptr %0, i64 3
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr i8, ptr %0, i64 4
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr i8, ptr %0, i64 5
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %0, i64 6
  store i8 %i.s, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %0, i64 7
  store i8 %i.v, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %0, i64 8
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr i8, ptr %0, i64 9
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr i8, ptr %0, i64 10
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr i8, ptr %0, i64 11
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr i8, ptr %0, i64 12
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %0, i64 13
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %0, i64 14
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr i8, ptr %0, i64 15
  store i8 %i.at, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %1, i64 16
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %0, i64 16
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %1, i64 17
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr i8, ptr %0, i64 17
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %1, i64 18
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr i8, ptr %0, i64 18
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %1, i64 19
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %0, i64 19
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %1, i64 20
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr i8, ptr %0, i64 20
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = getelementptr i8, ptr %1, i64 21
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr i8, ptr %0, i64 21
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %1, i64 22
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr i8, ptr %0, i64 22
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %1, i64 23
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr i8, ptr %0, i64 23
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr i8, ptr %1, i64 24
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %0, i64 24
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %1, i64 25
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr i8, ptr %0, i64 25
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr i8, ptr %1, i64 26
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %0, i64 26
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %1, i64 27
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr i8, ptr %0, i64 27
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %1, i64 28
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr i8, ptr %0, i64 28
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %1, i64 29
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr i8, ptr %0, i64 29
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = getelementptr i8, ptr %1, i64 30
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %0, i64 30
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr i8, ptr %1, i64 31
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr i8, ptr %0, i64 31
  %i.cr = and i8 %i.cp, 127
  store i8 %i.cr, ptr %i.cq, align 1
  call void @ge25519_scalarmult(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %4) #4
  call void @ristretto255_p3_tobytes(ptr noundef nonnull %0, ptr noundef nonnull %3) #4
  %i.cs = call i32 @sodium_is_zero(ptr noundef nonnull %0, i64 noundef 32) #4
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader.a, %.preheader.preheader.rtvec
  %.012.a = phi i32 [ %15, %.preheader.preheader.rtvec ], [ %i.cs, %.preheader.preheader.a ]
  %..rtmerge.in = icmp ne i32 %.012.a, 0
  %..rtmerge = sext i1 %..rtmerge.in to i32
  br label %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ristretto255_frombytes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ge25519_scalarmult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ristretto255_p3_tobytes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sodium_is_zero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_scalarmult_ristretto255_base(ptr noundef nonnull initializes((0, 32)) %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = add i64 %4, 32
  %6 = add i64 %3, 32
  %rt.bound0 = icmp ugt i64 %5, %3
  %rt.bound1 = icmp ugt i64 %6, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %7 = alloca %struct.ge25519_p3, align 8         ; 8 uses
  br i1 %rt.conflict, label %bb.a, label %.rtvec, !prof !4

.rtvec:                                           ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %8 = load <16 x i8>, ptr %1, align 1
  store <16 x i8> %8, ptr %0, align 1
  %9 = getelementptr i8, ptr %1, i64 16
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load <16 x i8>, ptr %9, align 1
  %12 = and <16 x i8> %11, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 127>
  store <16 x i8> %12, ptr %10, align 1
  call void @ge25519_scalarmult_base(ptr noundef nonnull %7, ptr noundef nonnull %0) #4
  call void @ristretto255_p3_tobytes(ptr noundef nonnull %0, ptr noundef nonnull %7) #4
  %13 = call i32 @sodium_is_zero(ptr noundef nonnull %0, i64 noundef 32) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %.rtcont

bb.a:                                             ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.a = load i8, ptr %1, align 1
  store i8 %i.a, ptr %0, align 1
  %i.b = getelementptr i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr i8, ptr %0, i64 2
  store i8 %i.f, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %1, i64 3
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %0, i64 4
  store i8 %i.l, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %1, i64 5
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %0, i64 5
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %1, i64 6
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr i8, ptr %0, i64 6
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %1, i64 7
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %0, i64 7
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %0, i64 8
  store i8 %i.x, ptr %i.y, align 1
  %i.z = getelementptr i8, ptr %1, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %0, i64 9
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr i8, ptr %1, i64 10
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr i8, ptr %0, i64 10
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %1, i64 11
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %0, i64 11
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %1, i64 12
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr i8, ptr %0, i64 12
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %1, i64 13
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr i8, ptr %0, i64 13
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %1, i64 14
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr i8, ptr %0, i64 14
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr i8, ptr %1, i64 15
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %0, i64 15
  store i8 %i.as, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %1, i64 16
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr i8, ptr %0, i64 16
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %1, i64 17
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr i8, ptr %0, i64 17
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %1, i64 18
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr i8, ptr %0, i64 18
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %1, i64 19
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr i8, ptr %0, i64 19
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %0, i64 20
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %1, i64 21
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %0, i64 21
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = getelementptr i8, ptr %1, i64 22
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr i8, ptr %0, i64 22
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %1, i64 23
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr i8, ptr %0, i64 23
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %1, i64 24
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr i8, ptr %0, i64 24
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = getelementptr i8, ptr %1, i64 25
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr i8, ptr %0, i64 25
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %1, i64 26
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr i8, ptr %0, i64 26
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %1, i64 27
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr i8, ptr %0, i64 27
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = getelementptr i8, ptr %1, i64 28
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr i8, ptr %0, i64 28
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %1, i64 29
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr i8, ptr %0, i64 29
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr i8, ptr %1, i64 30
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr i8, ptr %0, i64 30
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = getelementptr i8, ptr %1, i64 31
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr i8, ptr %0, i64 31
  %i.cq = and i8 %i.co, 127
  store i8 %i.cq, ptr %i.cp, align 1
  call void @ge25519_scalarmult_base(ptr noundef nonnull %7, ptr noundef nonnull %0) #4
  call void @ristretto255_p3_tobytes(ptr noundef nonnull %0, ptr noundef nonnull %7) #4
  %i.cr = call i32 @sodium_is_zero(ptr noundef nonnull %0, i64 noundef 32) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %.rtcont

.rtcont:                                          ; preds = %bb.a, %.rtvec
  %..rtmerge.in.in = phi i32 [ %13, %.rtvec ], [ %i.cr, %bb.a ]
  %..rtmerge.in = icmp ne i32 %..rtmerge.in.in, 0
  %..rtmerge = sext i1 %..rtmerge.in to i32
  ret i32 %..rtmerge
}

declare void @ge25519_scalarmult_base(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_scalarmult_ristretto255_bytes() local_unnamed_addr #3 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_scalarmult_ristretto255_scalarbytes() local_unnamed_addr #3 {
bb.a:
  ret i64 32
}

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
