Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/salsa20_xmm6int-avx2?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_stream_salsa20_implementation = type { ptr, ptr }
%struct.salsa_ctx = type { [16 x i32] }

@crypto_stream_salsa20_xmm6int_avx2_implementation = hidden local_unnamed_addr global %struct.crypto_stream_salsa20_implementation { ptr @stream_avx2, ptr @stream_avx2_xor_ic }, align 8

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_avx2(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.salsa_ctx, align 16         ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 1
  %i.b = getelementptr i8, ptr %3, i64 4
  %i.c = load i32, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.i, ptr %i.j, align 16
  %i.k = getelementptr i8, ptr %3, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr i8, ptr %3, i64 24
  %i.m = load i32, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %3, i64 28
  %i.p = load i32, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.p, ptr %i.q, align 8
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %4, align 16
  %i.r = load i32, ptr %2, align 1
  %i.s = load <2 x i32>, ptr %i.k, align 1
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.u = insertelement <4 x i32> %i.t, i32 %i.a, i64 1
  %i.v = insertelement <4 x i32> %i.u, i32 %i.r, i64 2
  store <4 x i32> %i.v, ptr %5, align 16
  %i.w = getelementptr i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.aa, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #6
  call fastcc void @salsa20_encrypt_bytes(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %1)
  call void @sodium_memzero(ptr noundef nonnull %4, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_avx2_xor_ic(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %6 = alloca %struct.salsa_ctx, align 16         ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.4.0.extract.shift = lshr i64 %4, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.a = load i32, ptr %5, align 1
  %i.b = getelementptr i8, ptr %5, i64 4
  %i.c = load i32, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %5, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %i.i, ptr %i.j, align 16
  %i.k = getelementptr i8, ptr %5, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr i8, ptr %5, i64 24
  %i.m = load i32, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %5, i64 28
  %i.p = load i32, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 %i.p, ptr %i.q, align 8
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %6, align 16
  %i.r = load i32, ptr %3, align 1
  %i.s = load <2 x i32>, ptr %i.k, align 1
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.u = insertelement <4 x i32> %i.t, i32 %i.a, i64 1
  %i.v = insertelement <4 x i32> %i.u, i32 %i.r, i64 2
  store <4 x i32> %i.v, ptr %7, align 16
  %i.w = getelementptr i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.sroa.0.0.extract.trunc, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 %.sroa.4.0.extract.trunc, ptr %i.aa, align 4
  call fastcc void @salsa20_encrypt_bytes(ptr noundef %6, ptr noundef %1, ptr noundef %0, i64 noundef %2)
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @salsa20_encrypt_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 18 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = icmp ugt i64 %3, 511
  br i1 %i.c, label %bb.b, label %.loopexit1764

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.f = shufflevector <8 x i32> %i.e, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = bitcast <8 x i32> %i.f to <4 x i64>
  %i.h = getelementptr i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.k = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = bitcast <8 x i32> %i.k to <4 x i64>
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>
  %i.r = getelementptr i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 4
  %i.y = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %i.z = shufflevector <8 x i32> %i.y, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aa = bitcast <8 x i32> %i.z to <4 x i64>
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = insertelement <8 x i32> poison, i32 %i.ac, i64 0
  %i.ae = shufflevector <8 x i32> %i.ad, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.af = bitcast <8 x i32> %i.ae to <4 x i64>
  %i.ag = getelementptr i8, ptr %0, i64 24
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = insertelement <8 x i32> poison, i32 %i.ah, i64 0
  %i.aj = shufflevector <8 x i32> %i.ai, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <4 x i64>
  %i.al = getelementptr i8, ptr %0, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %i.an = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = bitcast <8 x i32> %i.ao to <4 x i64>
  %i.aq = getelementptr i8, ptr %0, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %i.at = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.au = bitcast <8 x i32> %i.at to <4 x i64>
  %i.av = getelementptr i8, ptr %0, i64 40
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %i.ay = shufflevector <8 x i32> %i.ax, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.az = bitcast <8 x i32> %i.ay to <4 x i64>
  %i.ba = getelementptr i8, ptr %0, i64 44
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.be = bitcast <8 x i32> %i.bd to <4 x i64>
  %i.bf = getelementptr i8, ptr %0, i64 48
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.bi = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bj = bitcast <8 x i32> %i.bi to <4 x i64>
  %i.bk = getelementptr i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %i.bn = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <4 x i64>
  %i.bp = getelementptr i8, ptr %0, i64 60
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = insertelement <8 x i32> poison, i32 %i.bq, i64 0
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bt = bitcast <8 x i32> %i.bs to <4 x i64>
  %i.bu = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 52        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.01784 = phi ptr [ %1, %bb.b ], [ %i.os, %bb.e ] ; 17 uses
  %.017041783 = phi ptr [ %2, %bb.b ], [ %i.or, %bb.e ] ; 17 uses
  %.017091782 = phi i64 [ %3, %bb.b ], [ %i.oq, %bb.e ]
  %i.bw = load i32, ptr %i.bu, align 4
  %i.bx = load i32, ptr %i.bv, align 4
  %i.by = zext i32 %i.bw to i64
  %i.bz = zext i32 %i.bx to i64
  %i.ca = shl nuw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.ca, %i.by            ; 2 uses
  %i.cc = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cd = shufflevector <2 x i64> %i.cc, <2 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ce = add <4 x i64> %i.cd, <i64 0, i64 1, i64 2, i64 3>
  %i.cf = add <4 x i64> %i.cd, <i64 4, i64 5, i64 6, i64 7>
  %i.cg = bitcast <4 x i64> %i.ce to <8 x i32>    ; 2 uses
  %i.ch = bitcast <4 x i64> %i.cf to <8 x i32>    ; 2 uses
  %i.ci = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <4 x i64>
  %i.ck = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>
  %i.cm = add i64 %i.cb, 8                        ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.bu, align 4
  %i.co = lshr i64 %i.cm, 32
  %i.cp = trunc nuw i64 %i.co to i32
  store i32 %i.cp, ptr %i.bv, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.017211781 = phi <4 x i64> [ %i.g, %bb.c ], [ %i.he, %bb.d ] ; 2 uses
  %.017221780 = phi <4 x i64> [ %i.l, %bb.c ], [ %i.hj, %bb.d ] ; 2 uses
  %.017231779 = phi <4 x i64> [ %i.q, %bb.c ], [ %i.is, %bb.d ] ; 2 uses
  %.017241778 = phi <4 x i64> [ %i.v, %bb.c ], [ %i.ix, %bb.d ] ; 2 uses
  %.017251777 = phi <4 x i64> [ %i.aa, %bb.c ], [ %i.ht, %bb.d ] ; 2 uses
  %.017261776 = phi <4 x i64> [ %i.af, %bb.c ], [ %i.fv, %bb.d ] ; 2 uses
  %.017271775 = phi <4 x i64> [ %i.ak, %bb.c ], [ %i.gf, %bb.d ] ; 2 uses
  %.017281774 = phi <4 x i64> [ %i.ap, %bb.c ], [ %i.ho, %bb.d ] ; 2 uses
  %.017291773 = phi <4 x i64> [ %i.cj, %bb.c ], [ %i.hy, %bb.d ]
  %.017301772 = phi <4 x i64> [ %i.au, %bb.c ], [ %i.id, %bb.d ]
  %.017311771 = phi <4 x i64> [ %i.az, %bb.c ], [ %i.gk, %bb.d ]
  %.017391770 = phi <4 x i64> [ %i.be, %bb.c ], [ %i.gp, %bb.d ]
  %.017401769 = phi <4 x i64> [ %i.bj, %bb.c ], [ %i.gz, %bb.d ]
  %.017411768 = phi <4 x i64> [ %i.cl, %bb.c ], [ %i.ii, %bb.d ]
  %.017421767 = phi <4 x i64> [ %i.bo, %bb.c ], [ %i.in, %bb.d ]
  %.017431766 = phi <4 x i64> [ %i.bt, %bb.c ], [ %i.gu, %bb.d ]
  %.017611765 = phi i32 [ 0, %bb.c ], [ %i.iy, %bb.d ] ; 2 uses
  %i.cq = bitcast <4 x i64> %.017251777 to <8 x i32>
  %i.cr = bitcast <4 x i64> %.017211781 to <8 x i32> ; 2 uses
  %i.cs = add <8 x i32> %i.cr, %i.cq              ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cs, <8 x i32> %i.cs, <8 x i32> splat (i32 7))
  %i.cu = bitcast <8 x i32> %i.ct to <4 x i64>
  %i.cv = xor <4 x i64> %.017401769, %i.cu        ; 2 uses
  %i.cw = bitcast <4 x i64> %.017261776 to <8 x i32>
  %i.cx = bitcast <4 x i64> %.017221780 to <8 x i32> ; 2 uses
  %i.cy = add <8 x i32> %i.cx, %i.cw              ; 2 uses
  %i.cz = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cy, <8 x i32> %i.cy, <8 x i32> splat (i32 7))
  %i.da = bitcast <8 x i32> %i.cz to <4 x i64>
  %i.db = xor <4 x i64> %.017411768, %i.da        ; 2 uses
  %i.dc = bitcast <4 x i64> %i.cv to <8 x i32>    ; 3 uses
  %i.dd = add <8 x i32> %i.dc, %i.cr              ; 2 uses
  %i.de = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dd, <8 x i32> %i.dd, <8 x i32> splat (i32 9))
  %i.df = bitcast <8 x i32> %i.de to <4 x i64>
  %i.dg = xor <4 x i64> %.017291773, %i.df        ; 2 uses
  %i.dh = bitcast <4 x i64> %i.db to <8 x i32>    ; 3 uses
  %i.di = add <8 x i32> %i.dh, %i.cx              ; 2 uses
  %i.dj = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.di, <8 x i32> %i.di, <8 x i32> splat (i32 9))
  %i.dk = bitcast <8 x i32> %i.dj to <4 x i64>
  %i.dl = xor <4 x i64> %.017301772, %i.dk        ; 2 uses
  %i.dm = bitcast <4 x i64> %i.dg to <8 x i32>    ; 2 uses
  %i.dn = add <8 x i32> %i.dm, %i.dc              ; 2 uses
  %i.do = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dn, <8 x i32> %i.dn, <8 x i32> splat (i32 13))
  %i.dp = bitcast <8 x i32> %i.do to <4 x i64>
  %i.dq = xor <4 x i64> %.017251777, %i.dp        ; 2 uses
  %i.dr = bitcast <4 x i64> %i.dl to <8 x i32>    ; 2 uses
  %i.ds = add <8 x i32> %i.dr, %i.dh              ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ds, <8 x i32> %i.ds, <8 x i32> splat (i32 13))
  %i.du = bitcast <8 x i32> %i.dt to <4 x i64>
  %i.dv = xor <4 x i64> %.017261776, %i.du        ; 2 uses
  %i.dw = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.dx = add <8 x i32> %i.dw, %i.dm              ; 2 uses
  %i.dy = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dx, <8 x i32> %i.dx, <8 x i32> splat (i32 18))
  %i.dz = bitcast <8 x i32> %i.dy to <4 x i64>
  %i.ea = xor <4 x i64> %.017211781, %i.dz        ; 2 uses
  %i.eb = bitcast <4 x i64> %i.dv to <8 x i32>
  %i.ec = add <8 x i32> %i.eb, %i.dr              ; 2 uses
  %i.ed = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ec, <8 x i32> %i.ec, <8 x i32> splat (i32 18))
  %i.ee = bitcast <8 x i32> %i.ed to <4 x i64>
  %i.ef = xor <4 x i64> %.017221780, %i.ee        ; 2 uses
  %i.eg = bitcast <4 x i64> %.017271775 to <8 x i32>
  %i.eh = bitcast <4 x i64> %.017231779 to <8 x i32> ; 2 uses
  %i.ei = add <8 x i32> %i.eh, %i.eg              ; 2 uses
  %i.ej = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ei, <8 x i32> %i.ei, <8 x i32> splat (i32 7))
  %i.ek = bitcast <8 x i32> %i.ej to <4 x i64>
  %i.el = xor <4 x i64> %.017421767, %i.ek        ; 2 uses
  %i.em = bitcast <4 x i64> %.017281774 to <8 x i32>
  %i.en = bitcast <4 x i64> %.017241778 to <8 x i32> ; 2 uses
  %i.eo = add <8 x i32> %i.en, %i.em              ; 2 uses
  %i.ep = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.eo, <8 x i32> %i.eo, <8 x i32> splat (i32 7))
  %i.eq = bitcast <8 x i32> %i.ep to <4 x i64>
  %i.er = xor <4 x i64> %.017431766, %i.eq        ; 2 uses
  %i.es = bitcast <4 x i64> %i.el to <8 x i32>    ; 3 uses
  %i.et = add <8 x i32> %i.es, %i.eh              ; 2 uses
  %i.eu = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.et, <8 x i32> %i.et, <8 x i32> splat (i32 9))
  %i.ev = bitcast <8 x i32> %i.eu to <4 x i64>
end_hunk_0
