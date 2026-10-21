Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/chacha20_dolbeau-avx2?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_stream_chacha20_implementation = type { ptr, ptr, ptr, ptr }
%struct.chacha_ctx = type { [16 x i32] }

@crypto_stream_chacha20_dolbeau_avx2_implementation = hidden local_unnamed_addr global %struct.crypto_stream_chacha20_implementation { ptr @stream_ref, ptr @stream_ietf_ext_ref, ptr @stream_ref_xor_ic, ptr @stream_ietf_ext_ref_xor_ic }, align 8

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.chacha_ctx, align 16        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load <8 x i32>, ptr %3, align 1
  store <8 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = load <2 x i32>, ptr %2, align 1
  store <2 x i32> %i.f, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #6
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %1)
  call void @sodium_memzero(ptr noundef nonnull %4, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ietf_ext_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.chacha_ctx, align 16        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load <8 x i32>, ptr %3, align 1
  store <8 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.e = load <2 x i32>, ptr %2, align 1
  store <2 x i32> %i.e, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %i.g, ptr %i.h, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #6
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %1)
  call void @sodium_memzero(ptr noundef nonnull %4, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ref_xor_ic(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %6 = alloca %struct.chacha_ctx, align 16        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.4.0.extract.shift = lshr i64 %4, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load <8 x i32>, ptr %5, align 1
  store <8 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %.sroa.0.0.extract.trunc, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 %.sroa.4.0.extract.trunc, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.f = load <2 x i32>, ptr %3, align 1
  store <2 x i32> %i.f, ptr %i.e, align 8
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %6, ptr noundef %1, ptr noundef %0, i64 noundef %2)
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ietf_ext_ref_xor_ic(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %6 = alloca %struct.chacha_ctx, align 16        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load <8 x i32>, ptr %5, align 1
  store <8 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %4, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.e = load <2 x i32>, ptr %3, align 1
  store <2 x i32> %i.e, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.g, ptr %i.h, align 4
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %6, ptr noundef %1, ptr noundef %0, i64 noundef %2)
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @chacha20_encrypt_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 20 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = icmp ugt i64 %3, 511
  br i1 %i.c, label %bb.b, label %.loopexit1144

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.f = shufflevector <8 x i32> %i.e, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %i.j = shufflevector <8 x i32> %i.i, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %i.n = shufflevector <8 x i32> %i.m, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %i.z = shufflevector <8 x i32> %i.y, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <8 x i32> %i.ak, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 36
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = insertelement <8 x i32> poison, i32 %i.an, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aq = getelementptr i8, ptr %0, i64 40
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %i.at = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.ax = shufflevector <8 x i32> %i.aw, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 56
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = insertelement <8 x i32> poison, i32 %i.az, i64 0
  %i.bb = shufflevector <8 x i32> %i.ba, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bc = bitcast <8 x i32> %i.bb to <4 x i64>
  %i.bd = getelementptr i8, ptr %0, i64 60
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bh = bitcast <8 x i32> %i.bg to <4 x i64>
  %i.bi = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.010961171 = phi ptr [ %1, %bb.b ], [ %i.mz, %bb.e ] ; 17 uses
  %.010981170 = phi ptr [ %2, %bb.b ], [ %i.my, %bb.e ] ; 17 uses
  %.011031169 = phi i64 [ %3, %bb.b ], [ %i.mx, %bb.e ]
  %i.bj = load i64, ptr %i.bi, align 4            ; 2 uses
  %i.bk = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bl = shufflevector <2 x i64> %i.bk, <2 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = add <4 x i64> %i.bl, <i64 0, i64 1, i64 2, i64 3>
  %i.bn = add <4 x i64> %i.bl, <i64 4, i64 5, i64 6, i64 7>
  %i.bo = bitcast <4 x i64> %i.bm to <8 x i32>    ; 2 uses
  %i.bp = bitcast <4 x i64> %i.bn to <8 x i32>    ; 2 uses
  %i.bq = shufflevector <8 x i32> %i.bo, <8 x i32> %i.bp, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.br = bitcast <8 x i32> %i.bq to <4 x i64>
  %i.bs = shufflevector <8 x i32> %i.bo, <8 x i32> %i.bp, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.bt = bitcast <8 x i32> %i.bs to <4 x i64>
  %i.bu = add i64 %i.bj, 8
  store i64 %i.bu, ptr %i.bi, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.bv = phi <8 x i32> [ %i.f, %bb.c ], [ %i.fz, %bb.d ]
  %i.bw = phi <8 x i32> [ %i.j, %bb.c ], [ %i.ge, %bb.d ]
  %i.bx = phi <8 x i32> [ %i.n, %bb.c ], [ %i.gj, %bb.d ]
  %i.by = phi <8 x i32> [ %i.r, %bb.c ], [ %i.go, %bb.d ]
  %.01112.in1168 = phi <8 x i32> [ %i.v, %bb.c ], [ %i.hi, %bb.d ] ; 2 uses
  %.01113.in1167 = phi <8 x i32> [ %i.z, %bb.c ], [ %i.gw, %bb.d ] ; 2 uses
  %.01114.in1166 = phi <8 x i32> [ %i.ad, %bb.c ], [ %i.ha, %bb.d ] ; 2 uses
  %.011321165 = phi i32 [ 0, %bb.c ], [ %i.hj, %bb.d ] ; 2 uses
  %.011331164 = phi <4 x i64> [ %i.bh, %bb.c ], [ %i.gd, %bb.d ]
  %.011341163 = phi <4 x i64> [ %i.bc, %bb.c ], [ %i.gs, %bb.d ]
  %.011351162 = phi <4 x i64> [ %i.bt, %bb.c ], [ %i.gn, %bb.d ]
  %.011361161 = phi <4 x i64> [ %i.br, %bb.c ], [ %i.gi, %bb.d ]
  %i.bz = phi <8 x i32> [ %i.ax, %bb.c ], [ %i.gy, %bb.d ]
  %i.ca = phi <8 x i32> [ %i.at, %bb.c ], [ %i.gu, %bb.d ]
  %i.cb = phi <8 x i32> [ %i.ap, %bb.c ], [ %i.hg, %bb.d ]
  %i.cc = phi <8 x i32> [ %i.al, %bb.c ], [ %i.hc, %bb.d ]
  %.01141.in1160 = phi <8 x i32> [ %i.ah, %bb.c ], [ %i.he, %bb.d ] ; 2 uses
  %i.cd = add <8 x i32> %i.bv, %.01112.in1168     ; 2 uses
  %i.ce = bitcast <8 x i32> %i.cd to <4 x i64>
  %i.cf = xor <4 x i64> %.011361161, %i.ce
  %i.cg = bitcast <4 x i64> %i.cf to <32 x i8>
  %i.ch = shufflevector <32 x i8> %i.cg, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.ci = add <8 x i32> %i.bw, %.01113.in1167     ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <4 x i64>
  %i.ck = xor <4 x i64> %.011351162, %i.cj
  %i.cl = bitcast <4 x i64> %i.ck to <32 x i8>
  %i.cm = shufflevector <32 x i8> %i.cl, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.cn = add <8 x i32> %i.bx, %.01114.in1166     ; 2 uses
  %i.co = bitcast <8 x i32> %i.cn to <4 x i64>
  %i.cp = xor <4 x i64> %.011341163, %i.co
  %i.cq = bitcast <4 x i64> %i.cp to <32 x i8>
  %i.cr = shufflevector <32 x i8> %i.cq, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.cs = add <8 x i32> %i.by, %.01141.in1160     ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <4 x i64>
  %i.cu = xor <4 x i64> %.011331164, %i.ct
  %i.cv = bitcast <4 x i64> %i.cu to <32 x i8>
  %i.cw = shufflevector <32 x i8> %i.cv, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.cx = bitcast <32 x i8> %i.ch to <8 x i32>
  %i.cy = add <8 x i32> %i.cc, %i.cx              ; 2 uses
  %i.cz = xor <8 x i32> %i.cy, %.01112.in1168     ; 2 uses
  %i.da = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cz, <8 x i32> %i.cz, <8 x i32> splat (i32 12)) ; 2 uses
  %i.db = bitcast <32 x i8> %i.cm to <8 x i32>
  %i.dc = add <8 x i32> %i.cb, %i.db              ; 2 uses
  %i.dd = xor <8 x i32> %i.dc, %.01113.in1167     ; 2 uses
  %i.de = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dd, <8 x i32> %i.dd, <8 x i32> splat (i32 12)) ; 2 uses
  %i.df = bitcast <32 x i8> %i.cr to <8 x i32>
  %i.dg = add <8 x i32> %i.ca, %i.df              ; 2 uses
  %i.dh = xor <8 x i32> %i.dg, %.01114.in1166     ; 2 uses
  %i.di = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dh, <8 x i32> %i.dh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.dj = bitcast <32 x i8> %i.cw to <8 x i32>
  %i.dk = add <8 x i32> %i.bz, %i.dj              ; 2 uses
  %i.dl = xor <8 x i32> %i.dk, %.01141.in1160     ; 2 uses
  %i.dm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.dl, <8 x i32> %i.dl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <8 x i32> %i.da, %i.cd              ; 2 uses
  %i.do = bitcast <8 x i32> %i.dn to <32 x i8>
  %i.dp = xor <32 x i8> %i.ch, %i.do
  %i.dq = shufflevector <32 x i8> %i.dp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.dr = add <8 x i32> %i.de, %i.ci              ; 2 uses
  %i.ds = bitcast <8 x i32> %i.dr to <32 x i8>
  %i.dt = xor <32 x i8> %i.cm, %i.ds
  %i.du = shufflevector <32 x i8> %i.dt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.dv = add <8 x i32> %i.di, %i.cn              ; 2 uses
  %i.dw = bitcast <8 x i32> %i.dv to <32 x i8>
  %i.dx = xor <32 x i8> %i.cr, %i.dw
  %i.dy = shufflevector <32 x i8> %i.dx, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.dz = add <8 x i32> %i.dm, %i.cs              ; 2 uses
  %i.ea = bitcast <8 x i32> %i.dz to <32 x i8>
  %i.eb = xor <32 x i8> %i.cw, %i.ea
  %i.ec = shufflevector <32 x i8> %i.eb, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ed = bitcast <32 x i8> %i.dq to <8 x i32>
  %i.ee = add <8 x i32> %i.cy, %i.ed              ; 2 uses
  %i.ef = xor <8 x i32> %i.ee, %i.da              ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ef, <8 x i32> %i.ef, <8 x i32> splat (i32 7)) ; 2 uses
  %i.eh = bitcast <32 x i8> %i.du to <8 x i32>
  %i.ei = add <8 x i32> %i.dc, %i.eh              ; 2 uses
  %i.ej = xor <8 x i32> %i.ei, %i.de              ; 2 uses
  %i.ek = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ej, <8 x i32> %i.ej, <8 x i32> splat (i32 7)) ; 2 uses
  %i.el = bitcast <32 x i8> %i.dy to <8 x i32>
  %i.em = add <8 x i32> %i.dg, %i.el              ; 2 uses
  %i.en = xor <8 x i32> %i.em, %i.di              ; 2 uses
  %i.eo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.en, <8 x i32> %i.en, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ep = bitcast <32 x i8> %i.ec to <8 x i32>
  %i.eq = add <8 x i32> %i.dk, %i.ep              ; 2 uses
  %i.er = xor <8 x i32> %i.eq, %i.dm              ; 2 uses
  %i.es = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.er, <8 x i32> %i.er, <8 x i32> splat (i32 7)) ; 2 uses
  %i.et = add <8 x i32> %i.ek, %i.dn              ; 2 uses
  %i.eu = bitcast <8 x i32> %i.et to <32 x i8>
  %i.ev = xor <32 x i8> %i.ec, %i.eu
  %i.ew = shufflevector <32 x i8> %i.ev, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.ex = add <8 x i32> %i.eo, %i.dr              ; 2 uses
  %i.ey = bitcast <8 x i32> %i.ex to <32 x i8>
  %i.ez = xor <32 x i8> %i.dq, %i.ey
  %i.fa = shufflevector <32 x i8> %i.ez, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.fb = add <8 x i32> %i.es, %i.dv              ; 2 uses
  %i.fc = bitcast <8 x i32> %i.fb to <32 x i8>
  %i.fd = xor <32 x i8> %i.du, %i.fc
  %i.fe = shufflevector <32 x i8> %i.fd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.ff = add <8 x i32> %i.eg, %i.dz              ; 2 uses
  %i.fg = bitcast <8 x i32> %i.ff to <32 x i8>
  %i.fh = xor <32 x i8> %i.dy, %i.fg
  %i.fi = shufflevector <32 x i8> %i.fh, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.fj = bitcast <32 x i8> %i.ew to <8 x i32>
  %i.fk = add <8 x i32> %i.em, %i.fj              ; 2 uses
  %i.fl = xor <8 x i32> %i.fk, %i.ek              ; 2 uses
  %i.fm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.fl, <8 x i32> %i.fl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.fn = bitcast <32 x i8> %i.fa to <8 x i32>
  %i.fo = add <8 x i32> %i.eq, %i.fn              ; 2 uses
  %i.fp = xor <8 x i32> %i.fo, %i.eo              ; 2 uses
  %i.fq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.fp, <8 x i32> %i.fp, <8 x i32> splat (i32 12)) ; 2 uses
  %i.fr = bitcast <32 x i8> %i.fe to <8 x i32>
  %i.fs = add <8 x i32> %i.ee, %i.fr              ; 2 uses
  %i.ft = xor <8 x i32> %i.fs, %i.es              ; 2 uses
  %i.fu = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ft, <8 x i32> %i.ft, <8 x i32> splat (i32 12)) ; 2 uses
  %i.fv = bitcast <32 x i8> %i.fi to <8 x i32>
  %i.fw = add <8 x i32> %i.ei, %i.fv              ; 2 uses
end_hunk_0
begin_hunk_1_@chacha20_encrypt_bytes:bb.a
  %i.aae = xor <2 x i64> %i.aad, %i.zr
  %i.aaf = getelementptr i8, ptr %.11099, i64 240
  store <2 x i64> %i.aae, ptr %i.aaf, align 1
  %i.aag = getelementptr i8, ptr %.11097, i64 256
  %i.aah = getelementptr i8, ptr %.11099, i64 256
  %i.aai = add nsw i64 %.11104, -256
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit1144
  %.31106 = phi i64 [ %.11104, %.loopexit1144 ], [ %i.aai, %.loopexit.loopexit ] ; 3 uses
  %.31101 = phi ptr [ %.11099, %.loopexit1144 ], [ %i.aah, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.11097, %.loopexit1144 ], [ %i.aag, %.loopexit.loopexit ] ; 2 uses
  %i.aaj = icmp samesign ugt i64 %.31106, 63
  br i1 %i.aaj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.aak = getelementptr i8, ptr %0, i64 16
  %i.aal = getelementptr i8, ptr %0, i64 32
  %i.aam = getelementptr i8, ptr %0, i64 48       ; 3 uses
  %i.aan = getelementptr i8, ptr %0, i64 52       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.41191 = phi ptr [ %.3, %.lr.ph ], [ %i.adm, %bb.j ] ; 5 uses
  %.411021190 = phi ptr [ %.31101, %.lr.ph ], [ %i.adl, %bb.j ] ; 5 uses
  %.411071189 = phi i64 [ %.31106, %.lr.ph ], [ %i.adk, %bb.j ]
  %i.aao = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.aap = load <4 x i32>, ptr %i.aak, align 1    ; 2 uses
  %i.aaq = load <4 x i32>, ptr %i.aal, align 1    ; 2 uses
  %i.aar = load <2 x i64>, ptr %i.aam, align 1    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.010901188 = phi i32 [ 0, %bb.h ], [ %i.acg, %bb.i ] ; 2 uses
  %.010921187 = phi <2 x i64> [ %i.aar, %bb.h ], [ %i.acc, %bb.i ]
  %.010931186 = phi <4 x i32> [ %i.aaq, %bb.h ], [ %i.ace, %bb.i ]
  %.010941185 = phi <4 x i32> [ %i.aap, %bb.h ], [ %i.acf, %bb.i ] ; 2 uses
  %.010951184 = phi <4 x i32> [ %i.aao, %bb.h ], [ %i.abv, %bb.i ]
  %i.aas = add <4 x i32> %.010941185, %.010951184 ; 2 uses
  %i.aat = bitcast <4 x i32> %i.aas to <2 x i64>
  %i.aau = xor <2 x i64> %.010921187, %i.aat
  %i.aav = bitcast <2 x i64> %i.aau to <16 x i8>
  %i.aaw = shufflevector <16 x i8> %i.aav, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aax = bitcast <16 x i8> %i.aaw to <4 x i32>
  %i.aay = add <4 x i32> %.010931186, %i.aax      ; 2 uses
  %i.aaz = xor <4 x i32> %i.aay, %.010941185      ; 2 uses
  %i.aba = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aaz, <4 x i32> %i.aaz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.abb = add <4 x i32> %i.aba, %i.aas           ; 2 uses
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.abd = bitcast <4 x i32> %i.abb to <16 x i8>
  %i.abe = xor <16 x i8> %i.aaw, %i.abd
  %i.abf = shufflevector <16 x i8> %i.abe, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.abg = bitcast <16 x i8> %i.abf to <4 x i32>  ; 2 uses
  %i.abh = add <4 x i32> %i.aay, %i.abg           ; 2 uses
  %i.abi = shufflevector <4 x i32> %i.abg, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.abj = xor <4 x i32> %i.abh, %i.aba           ; 2 uses
  %i.abk = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.abl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abj, <4 x i32> %i.abj, <4 x i32> splat (i32 7)) ; 2 uses
  %i.abm = add <4 x i32> %i.abl, %i.abc           ; 2 uses
  %i.abn = xor <4 x i32> %i.abm, %i.abi
  %i.abo = bitcast <4 x i32> %i.abn to <16 x i8>
  %i.abp = shufflevector <16 x i8> %i.abo, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.abq = bitcast <16 x i8> %i.abp to <4 x i32>
  %i.abr = add <4 x i32> %i.abk, %i.abq           ; 2 uses
  %i.abs = xor <4 x i32> %i.abr, %i.abl           ; 2 uses
  %i.abt = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abs, <4 x i32> %i.abs, <4 x i32> splat (i32 12)) ; 2 uses
  %i.abu = add <4 x i32> %i.abt, %i.abm           ; 2 uses
  %i.abv = shufflevector <4 x i32> %i.abu, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.abw = bitcast <4 x i32> %i.abu to <16 x i8>
  %i.abx = xor <16 x i8> %i.abp, %i.abw
  %i.aby = shufflevector <16 x i8> %i.abx, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.abz = bitcast <16 x i8> %i.aby to <4 x i32>  ; 2 uses
  %i.aca = add <4 x i32> %i.abr, %i.abz           ; 2 uses
  %i.acb = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.acc = bitcast <4 x i32> %i.acb to <2 x i64>
  %i.acd = xor <4 x i32> %i.aca, %i.abt           ; 2 uses
  %i.ace = shufflevector <4 x i32> %i.aca, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.acf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.acd, <4 x i32> %i.acd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.acg = add nuw nsw i32 %.010901188, 2
  %i.ach = icmp samesign ult i32 %.010901188, 18
  br i1 %i.ach, label %bb.i, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %bb.i
  %i.aci = add <4 x i32> %i.abv, %i.aao
  %i.acj = bitcast <4 x i32> %i.aci to <2 x i64>
  %i.ack = add <4 x i32> %i.acf, %i.aap
  %i.acl = bitcast <4 x i32> %i.ack to <2 x i64>
  %i.acm = add <4 x i32> %i.ace, %i.aaq
  %i.acn = bitcast <4 x i32> %i.acm to <2 x i64>
  %i.aco = bitcast <2 x i64> %i.aar to <4 x i32>
  %i.acp = add <4 x i32> %i.acb, %i.aco
  %i.acq = bitcast <4 x i32> %i.acp to <2 x i64>
  %i.acr = load <2 x i64>, ptr %.41191, align 1
  %i.acs = xor <2 x i64> %i.acr, %i.acj
  %i.act = getelementptr i8, ptr %.41191, i64 16
  %i.acu = load <2 x i64>, ptr %i.act, align 1
  %i.acv = xor <2 x i64> %i.acu, %i.acl
  %i.acw = getelementptr i8, ptr %.41191, i64 32
  %i.acx = load <2 x i64>, ptr %i.acw, align 1
  %i.acy = xor <2 x i64> %i.acx, %i.acn
  %i.acz = getelementptr i8, ptr %.41191, i64 48
  %i.ada = load <2 x i64>, ptr %i.acz, align 1
  %i.adb = xor <2 x i64> %i.ada, %i.acq
  store <2 x i64> %i.acs, ptr %.411021190, align 1
  %i.adc = getelementptr i8, ptr %.411021190, i64 16
  store <2 x i64> %i.acv, ptr %i.adc, align 1
  %i.add = getelementptr i8, ptr %.411021190, i64 32
  store <2 x i64> %i.acy, ptr %i.add, align 1
  %i.ade = getelementptr i8, ptr %.411021190, i64 48
  store <2 x i64> %i.adb, ptr %i.ade, align 1
  %i.adf = load i32, ptr %i.aam, align 4
  %i.adg = load i32, ptr %i.aan, align 4
  %i.adh = add i32 %i.adf, 1                      ; 2 uses
  %i.adi = icmp eq i32 %i.adh, 0
  %i.adj = zext i1 %i.adi to i32
  %spec.select = add i32 %i.adg, %i.adj
  store i32 %i.adh, ptr %i.aam, align 4
  store i32 %spec.select, ptr %i.aan, align 4
  %i.adk = add nsw i64 %.411071189, -64           ; 3 uses
  %i.adl = getelementptr i8, ptr %.411021190, i64 64 ; 2 uses
  %i.adm = getelementptr i8, ptr %.41191, i64 64  ; 2 uses
  %i.adn = icmp ugt i64 %i.adk, 63
  br i1 %i.adn, label %bb.h, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  %.41107.lcssa = phi i64 [ %.31106, %.loopexit ], [ %i.adk, %bb.j ] ; 11 uses
  %.41102.lcssa = phi ptr [ %.31101, %.loopexit ], [ %i.adl, %bb.j ] ; 13 uses
  %.4.lcssa = phi ptr [ %.3, %.loopexit ], [ %i.adm, %bb.j ] ; 13 uses
  %.41102.lcssa1348 = ptrtoaddr ptr %.41102.lcssa to i64 ; 2 uses
  %.4.lcssa1349 = ptrtoaddr ptr %.4.lcssa to i64
  %.not = icmp eq i64 %.41107.lcssa, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ado = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.adp = getelementptr i8, ptr %0, i64 16
  %i.adq = load <4 x i32>, ptr %i.adp, align 1    ; 2 uses
  %i.adr = getelementptr i8, ptr %0, i64 32
  %i.ads = load <4 x i32>, ptr %i.adr, align 1    ; 2 uses
  %i.adt = getelementptr i8, ptr %0, i64 48
  %i.adu = load <2 x i64>, ptr %i.adt, align 1    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.01198 = phi i32 [ 0, %bb.k ], [ %i.afj, %bb.l ] ; 2 uses
  %.010861197 = phi <2 x i64> [ %i.adu, %bb.k ], [ %i.aff, %bb.l ]
  %.010871196 = phi <4 x i32> [ %i.ads, %bb.k ], [ %i.afh, %bb.l ]
  %.010881195 = phi <4 x i32> [ %i.adq, %bb.k ], [ %i.afi, %bb.l ] ; 2 uses
  %.010891194 = phi <4 x i32> [ %i.ado, %bb.k ], [ %i.aey, %bb.l ]
  %i.adv = add <4 x i32> %.010881195, %.010891194 ; 2 uses
  %i.adw = bitcast <4 x i32> %i.adv to <2 x i64>
  %i.adx = xor <2 x i64> %.010861197, %i.adw
  %i.ady = bitcast <2 x i64> %i.adx to <16 x i8>
  %i.adz = shufflevector <16 x i8> %i.ady, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aea = bitcast <16 x i8> %i.adz to <4 x i32>
  %i.aeb = add <4 x i32> %.010871196, %i.aea      ; 2 uses
  %i.aec = xor <4 x i32> %i.aeb, %.010881195      ; 2 uses
  %i.aed = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aec, <4 x i32> %i.aec, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aee = add <4 x i32> %i.aed, %i.adv           ; 2 uses
  %i.aef = shufflevector <4 x i32> %i.aee, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aeg = bitcast <4 x i32> %i.aee to <16 x i8>
  %i.aeh = xor <16 x i8> %i.adz, %i.aeg
  %i.aei = shufflevector <16 x i8> %i.aeh, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.aej = bitcast <16 x i8> %i.aei to <4 x i32>  ; 2 uses
  %i.aek = add <4 x i32> %i.aeb, %i.aej           ; 2 uses
  %i.ael = shufflevector <4 x i32> %i.aej, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aem = xor <4 x i32> %i.aek, %i.aed           ; 2 uses
  %i.aen = shufflevector <4 x i32> %i.aek, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aeo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aem, <4 x i32> %i.aem, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aep = add <4 x i32> %i.aeo, %i.aef           ; 2 uses
  %i.aeq = xor <4 x i32> %i.aep, %i.ael
  %i.aer = bitcast <4 x i32> %i.aeq to <16 x i8>
  %i.aes = shufflevector <16 x i8> %i.aer, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aet = bitcast <16 x i8> %i.aes to <4 x i32>
  %i.aeu = add <4 x i32> %i.aen, %i.aet           ; 2 uses
  %i.aev = xor <4 x i32> %i.aeu, %i.aeo           ; 2 uses
  %i.aew = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aev, <4 x i32> %i.aev, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aex = add <4 x i32> %i.aew, %i.aep           ; 2 uses
  %i.aey = shufflevector <4 x i32> %i.aex, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aez = bitcast <4 x i32> %i.aex to <16 x i8>
  %i.afa = xor <16 x i8> %i.aes, %i.aez
  %i.afb = shufflevector <16 x i8> %i.afa, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.afc = bitcast <16 x i8> %i.afb to <4 x i32>  ; 2 uses
  %i.afd = add <4 x i32> %i.aeu, %i.afc           ; 2 uses
  %i.afe = shufflevector <4 x i32> %i.afc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.aff = bitcast <4 x i32> %i.afe to <2 x i64>
  %i.afg = xor <4 x i32> %i.afd, %i.aew           ; 2 uses
  %i.afh = shufflevector <4 x i32> %i.afd, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.afi = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.afg, <4 x i32> %i.afg, <4 x i32> splat (i32 7)) ; 2 uses
  %i.afj = add nuw nsw i32 %.01198, 2
  %i.afk = icmp samesign ult i32 %.01198, 18
  br i1 %i.afk, label %bb.l, label %iter.check, !llvm.loop !9

iter.check:                                       ; preds = %bb.l
  %i.afl = add <4 x i32> %i.aey, %i.ado
  %i.afm = add <4 x i32> %i.afi, %i.adq
  %i.afn = add <4 x i32> %i.afh, %i.ads
  %i.afo = bitcast <2 x i64> %i.adu to <4 x i32>
  %i.afp = add <4 x i32> %i.afe, %i.afo
  store <4 x i32> %i.afl, ptr %i.a, align 16
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.afm, ptr %4, align 16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> %i.afn, ptr %i.afq, align 16
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.afp, ptr %5, align 16
  %min.iters.check = icmp samesign ult i64 %.41107.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.afr = sub i64 %.4.lcssa1349, %.41102.lcssa1348
  %diff.check = icmp ugt i64 %i.afr, -16
  %i.afs = sub i64 %i.b, %.41102.lcssa1348
  %diff.check1350 = icmp ugt i64 %i.afs, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1350
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1351 = icmp samesign ult i64 %.41107.lcssa, 16
  br i1 %min.iters.check1351, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aft = and i64 %.41107.lcssa, 12
  %n.vec = and i64 %.41107.lcssa, 48              ; 5 uses
  %i.afu = getelementptr i8, ptr %.4.lcssa, i64 8
  %wide.load = load <8 x i8>, ptr %.4.lcssa, align 1
  %wide.load1352 = load <8 x i8>, ptr %i.afu, align 1
  %i.afv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load1353 = load <8 x i8>, ptr %i.a, align 16
  %wide.load1354 = load <8 x i8>, ptr %i.afv, align 8
  %i.afw = xor <8 x i8> %wide.load1353, %wide.load
  %i.afx = xor <8 x i8> %wide.load1354, %wide.load1352
  %i.afy = getelementptr i8, ptr %.41102.lcssa, i64 8
  store <8 x i8> %i.afw, ptr %.41102.lcssa, align 1
  store <8 x i8> %i.afx, ptr %i.afy, align 1
  %i.afz = icmp eq i64 %n.vec, 16
  br i1 %i.afz, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.aga = getelementptr i8, ptr %.4.lcssa, i64 16
  %i.agb = getelementptr i8, ptr %.4.lcssa, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aga, align 1
  %wide.load1352.1 = load <8 x i8>, ptr %i.agb, align 1
  %i.agc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load1353.1 = load <8 x i8>, ptr %i.agc, align 16
  %wide.load1354.1 = load <8 x i8>, ptr %i.agd, align 8
  %i.age = xor <8 x i8> %wide.load1353.1, %wide.load.1
  %i.agf = xor <8 x i8> %wide.load1354.1, %wide.load1352.1
  %i.agg = getelementptr i8, ptr %.41102.lcssa, i64 16
  %i.agh = getelementptr i8, ptr %.41102.lcssa, i64 24
  store <8 x i8> %i.age, ptr %i.agg, align 1
  store <8 x i8> %i.agf, ptr %i.agh, align 1
  %i.agi = icmp eq i64 %n.vec, 32
  br i1 %i.agi, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.agj = getelementptr i8, ptr %.4.lcssa, i64 32
  %i.agk = getelementptr i8, ptr %.4.lcssa, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.agj, align 1
  %wide.load1352.2 = load <8 x i8>, ptr %i.agk, align 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.agm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load1353.2 = load <8 x i8>, ptr %i.agl, align 16
  %wide.load1354.2 = load <8 x i8>, ptr %i.agm, align 8
  %i.agn = xor <8 x i8> %wide.load1353.2, %wide.load.2
  %i.ago = xor <8 x i8> %wide.load1354.2, %wide.load1352.2
  %i.agp = getelementptr i8, ptr %.41102.lcssa, i64 32
  %i.agq = getelementptr i8, ptr %.41102.lcssa, i64 40
  store <8 x i8> %i.agn, ptr %i.agp, align 1
  store <8 x i8> %i.ago, ptr %i.agq, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.41107.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit1361, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aft, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1355 = and i64 %.41107.lcssa, 60          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1356 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1359, %vec.epilog.vector.body ] ; 4 uses
  %i.agr = getelementptr i8, ptr %.4.lcssa, i64 %index1356
  %wide.load1357 = load <4 x i8>, ptr %i.agr, align 1
  %i.ags = getelementptr i8, ptr %i.a, i64 %index1356
  %wide.load1358 = load <4 x i8>, ptr %i.ags, align 4
  %i.agt = xor <4 x i8> %wide.load1358, %wide.load1357
  %i.agu = getelementptr i8, ptr %.41102.lcssa, i64 %index1356
  store <4 x i8> %i.agt, ptr %i.agu, align 1
  %index.next1359 = add nuw i64 %index1356, 4     ; 2 uses
  %i.agv = icmp eq i64 %index.next1359, %n.vec1355
  br i1 %i.agv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1360 = icmp eq i64 %.41107.lcssa, %n.vec1355
  br i1 %cmp.n1360, label %.loopexit1361, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1355, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.41107.lcssa, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.agw = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.prol
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  %i.agz = load i8, ptr %i.agy, align 1
  %i.aha = xor i8 %i.agz, %i.agx
  %i.ahb = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.prol
  store i8 %i.aha, ptr %i.ahb, align 1
  %indvars.iv.next.prol = add nuw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ahc = sub nsw i64 %indvars.iv.ph, %.41107.lcssa
  %i.ahd = icmp ugt i64 %i.ahc, -4
  br i1 %i.ahd, label %.loopexit1361, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ahe = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv
  %i.ahf = load i8, ptr %i.ahe, align 1
  %i.ahg = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.ahh = load i8, ptr %i.ahg, align 1
  %i.ahi = xor i8 %i.ahh, %i.ahf
  %i.ahj = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv
  store i8 %i.ahi, ptr %i.ahj, align 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.ahk = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next
  %i.ahl = load i8, ptr %i.ahk, align 1
  %i.ahm = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = xor i8 %i.ahn, %i.ahl
  %i.ahp = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next
  store i8 %i.aho, ptr %i.ahp, align 1
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 3 uses
  %i.ahq = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.1
  %i.ahr = load i8, ptr %i.ahq, align 1
  %i.ahs = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.aht = load i8, ptr %i.ahs, align 1
  %i.ahu = xor i8 %i.aht, %i.ahr
  %i.ahv = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.1
  store i8 %i.ahu, ptr %i.ahv, align 1
  %indvars.iv.next.2 = add nuw i64 %indvars.iv, 3 ; 3 uses
  %i.ahw = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.2
  %i.ahx = load i8, ptr %i.ahw, align 1
  %i.ahy = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.ahz = load i8, ptr %i.ahy, align 1
  %i.aia = xor i8 %i.ahz, %i.ahx
  %i.aib = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.2
  store i8 %i.aia, ptr %i.aib, align 1
  %indvars.iv.next.3 = add nuw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.41107.lcssa
  br i1 %exitcond.not.3, label %.loopexit1361, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit1361:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit1361
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind ssp uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !13}
end_hunk_1
