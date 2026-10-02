Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sha-256?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.v8::internal::HASH_VTAB" = type { ptr, ptr, ptr, ptr, i32 }
%"struct.v8::internal::HASH_CTX" = type { ptr, i64, [64 x i8], [8 x i32] }

@_ZN2v88internalL11SHA256_VTABE = internal constant %"struct.v8::internal::HASH_VTAB" { ptr @_ZN2v88internal11SHA256_initEPNS0_8HASH_CTXE, ptr @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm, ptr @_ZN2v88internal12SHA256_finalEPNS0_8HASH_CTXE, ptr @_ZN2v88internal11SHA256_hashEPKvmPh, i32 32 }, align 8
@_ZN2v88internalL1KE = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal11SHA256_initEPNS0_8HASH_CTXE(ptr nofree noundef writeonly captures(none) initializes((0, 16), (80, 112)) %0) #0 {
bb.a:
  store ptr @_ZN2v88internalL11SHA256_VTABE, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, %2
  store i64 %i.d, ptr %i.b, align 8
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = and i32 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.e ]
  %.015 = phi ptr [ %1, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %.0914 = phi i32 [ %i.f, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %i.r = add i64 %.in, -1                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.t = load i8, ptr %.015, align 1
  %i.u = add nuw nsw i32 %.0914, 1                ; 2 uses
  %i.v = zext nneg i32 %.0914 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1
  %i.x = icmp eq i32 %i.u, 64
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %7 = load <4 x i32>, ptr %i.g, align 8
  %8 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %7)
  store <4 x i32> %8, ptr %i.a, align 16
  %9 = load <4 x i32>, ptr %3, align 8
  %10 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %9)
  store <4 x i32> %10, ptr %4, align 16
  %11 = load <4 x i32>, ptr %i.h, align 8
  %12 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %11)
  store <4 x i32> %12, ptr %i.i, align 16
  %13 = load <4 x i32>, ptr %5, align 8
  %14 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %13)
  store <4 x i32> %14, ptr %6, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.c
  %indvars.iv.i = phi i64 [ 16, %bb.c ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 5 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -60
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 25)
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 14)
  %i.ad = xor i32 %i.ab, %i.ac
  %i.ae = lshr i32 %i.aa, 3
  %i.af = xor i32 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %i.y, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4            ; 5 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 15)
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 13)
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ah, 10
  %i.am = xor i32 %i.ak, %i.al
  %i.an = getelementptr i8, ptr %i.y, i64 -64
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.af, %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 -28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ap, %i.ar
  %i.at = add i32 %i.as, %i.am
  store i32 %i.at, ptr %i.y, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.au = load i32, ptr %i.j, align 8             ; 2 uses
  %i.av = load i32, ptr %i.k, align 4             ; 2 uses
  %i.aw = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ax = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ay = load i32, ptr %i.n, align 8             ; 2 uses
  %i.az = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ba = load i32, ptr %i.p, align 8             ; 2 uses
  %i.bb = load i32, ptr %i.q, align 4             ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.i
  %indvars.iv118.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next119.i, %bb.d ] ; 3 uses
  %.0113.i = phi i32 [ %i.au, %._crit_edge.i ], [ %i.ce, %bb.d ] ; 9 uses
  %.093112.i = phi i32 [ %i.av, %._crit_edge.i ], [ %.0113.i, %bb.d ] ; 4 uses
  %.094111.i = phi i32 [ %i.aw, %._crit_edge.i ], [ %.093112.i, %bb.d ] ; 4 uses
  %.095110.i = phi i32 [ %i.ax, %._crit_edge.i ], [ %.094111.i, %bb.d ]
  %.096109.i = phi i32 [ %i.ay, %._crit_edge.i ], [ %i.cd, %bb.d ] ; 10 uses
  %.097108.i = phi i32 [ %i.az, %._crit_edge.i ], [ %.096109.i, %bb.d ] ; 3 uses
  %.098107.i = phi i32 [ %i.ba, %._crit_edge.i ], [ %.097108.i, %bb.d ] ; 3 uses
  %.099106.i = phi i32 [ %i.bb, %._crit_edge.i ], [ %.098107.i, %bb.d ]
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %.0113.i, i32 %.0113.i, i32 30)
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %.0113.i, i32 %.0113.i, i32 19)
  %i.be = xor i32 %i.bc, %i.bd
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %.0113.i, i32 %.0113.i, i32 10)
  %i.bg = xor i32 %i.be, %i.bf
  %i.bh = xor i32 %.094111.i, %.093112.i
  %i.bi = and i32 %i.bh, %.0113.i
  %i.bj = and i32 %.094111.i, %.093112.i
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = add i32 %i.bk, %i.bg
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %.096109.i, i32 %.096109.i, i32 26)
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %.096109.i, i32 %.096109.i, i32 21)
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %.096109.i, i32 %.096109.i, i32 7)
  %i.bq = xor i32 %i.bo, %i.bp
  %i.br = and i32 %.097108.i, %.096109.i
  %i.bs = xor i32 %.096109.i, -1
  %i.bt = and i32 %.098107.i, %i.bs
  %i.bu = or i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internalL1KE, i64 %indvars.iv118.i
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv118.i
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.bq, %.099106.i
  %i.ca = add i32 %i.bz, %i.bu
  %i.cb = add i32 %i.ca, %i.bw
  %i.cc = add i32 %i.cb, %i.by                    ; 2 uses
  %i.cd = add i32 %i.cc, %.095110.i               ; 2 uses
  %i.ce = add i32 %i.bl, %i.cc                    ; 2 uses
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next119.i, 64
  br i1 %exitcond121.not.i, label %_ZN2v88internalL16SHA256_TransformEPNS0_8HASH_CTXE.exit, label %bb.d, !llvm.loop !7

_ZN2v88internalL16SHA256_TransformEPNS0_8HASH_CTXE.exit: ; preds = %bb.d
  %i.cf = add i32 %i.ce, %i.au
  store i32 %i.cf, ptr %i.j, align 8
  %i.cg = add i32 %.0113.i, %i.av
  store i32 %i.cg, ptr %i.k, align 4
  %i.ch = add i32 %.093112.i, %i.aw
  store i32 %i.ch, ptr %i.l, align 8
  %i.ci = add i32 %.094111.i, %i.ax
  store i32 %i.ci, ptr %i.m, align 4
  %i.cj = add i32 %i.cd, %i.ay
  store i32 %i.cj, ptr %i.n, align 8
  %i.ck = add i32 %.096109.i, %i.az
  store i32 %i.ck, ptr %i.o, align 4
  %i.cl = add i32 %.097108.i, %i.ba
  store i32 %i.cl, ptr %i.p, align 8
  %i.cm = add i32 %.098107.i, %i.bb
  store i32 %i.cm, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internalL16SHA256_TransformEPNS0_8HASH_CTXE.exit, %bb.b
  %.1 = phi i32 [ 0, %_ZN2v88internalL16SHA256_TransformEPNS0_8HASH_CTXE.exit ], [ %i.u, %bb.b ]
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef nonnull ptr @_ZN2v88internal12SHA256_finalEPNS0_8HASH_CTXE(ptr nofree noundef captures(ret: address, provenance) %0) #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca i8, align 1                       ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i16 128, ptr %i.a, align 2
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.e = load i64, ptr %i.c, align 8
  %i.f = and i64 %i.e, 63
  %.not25 = icmp eq i64 %i.f, 56
  br i1 %.not25, label %.preheader24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

.preheader24:                                     ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.i = lshr i64 %i.d, 53
  %i.j = trunc i64 %i.i to i8
  store i8 %i.j, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.k = lshr i64 %i.d, 45
  %i.l = trunc i64 %i.k to i8
  store i8 %i.l, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.m = lshr i64 %i.d, 37
  %i.n = trunc i64 %i.m to i8
  store i8 %i.n, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.o = lshr i64 %i.d, 29
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.q = lshr i64 %i.d, 21
  %i.r = trunc i64 %i.q to i8
  store i8 %i.r, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.s = lshr i64 %i.d, 13
  %i.t = trunc i64 %i.s to i8
  store i8 %i.t, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.u = lshr i64 %i.d, 5
  %i.v = trunc i64 %i.u to i8
  store i8 %i.v, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.tr = trunc i64 %i.d to i8
  %i.w = shl i8 %.tr, 3
  store i8 %i.w, ptr %i.b, align 1
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8              ; 4 uses
  %i.z = lshr i32 %i.y, 24
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.aa, ptr %i.h, align 8
  %i.ac = lshr i32 %i.y, 16
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.ad, ptr %i.ab, align 1
  %i.af = lshr i32 %i.y, 8
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ag, ptr %i.ae, align 2
  %i.ai = trunc i32 %i.y to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ai, ptr %i.ah, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.al = load i32, ptr %i.ak, align 4            ; 4 uses
  %i.am = lshr i32 %i.al, 24
  %i.an = trunc nuw i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.an, ptr %i.aj, align 4
  %i.ap = lshr i32 %i.al, 16
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.aq, ptr %i.ao, align 1
  %i.as = lshr i32 %i.al, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.at, ptr %i.ar, align 2
  %i.av = trunc i32 %i.al to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.av, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.az = lshr i32 %i.ay, 24
  %i.ba = trunc nuw i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ba, ptr %i.aw, align 8
  %i.bc = lshr i32 %i.ay, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.bd, ptr %i.bb, align 1
  %i.bf = lshr i32 %i.ay, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.bg, ptr %i.be, align 2
  %i.bi = trunc i32 %i.ay to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.bi, ptr %i.bh, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bl = load i32, ptr %i.bk, align 4            ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.bn, ptr %i.bj, align 4
  %i.bp = lshr i32 %i.bl, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.bq, ptr %i.bo, align 1
  %i.bs = lshr i32 %i.bl, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.bt, ptr %i.br, align 2
  %i.bv = trunc i32 %i.bl to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bv, ptr %i.bu, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load i32, ptr %i.bx, align 8            ; 4 uses
  %i.bz = lshr i32 %i.by, 24
  %i.ca = trunc nuw i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ca, ptr %i.bw, align 8
  %i.cc = lshr i32 %i.by, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cf = lshr i32 %i.by, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.cg, ptr %i.ce, align 2
  %i.ci = trunc i32 %i.by to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ci, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cl = load i32, ptr %i.ck, align 4            ; 4 uses
  %i.cm = lshr i32 %i.cl, 24
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.cn, ptr %i.cj, align 4
  %i.cp = lshr i32 %i.cl, 16
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %i.cq, ptr %i.co, align 1
  %i.cs = lshr i32 %i.cl, 8
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %i.ct, ptr %i.cr, align 2
  %i.cv = trunc i32 %i.cl to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.cv, ptr %i.cu, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = load i32, ptr %i.cx, align 8            ; 4 uses
  %i.cz = lshr i32 %i.cy, 24
  %i.da = trunc nuw i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.da, ptr %i.cw, align 8
  %i.dc = lshr i32 %i.cy, 16
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.dd, ptr %i.db, align 1
  %i.df = lshr i32 %i.cy, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %i.dg, ptr %i.de, align 2
  %i.di = trunc i32 %i.cy to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.di, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dl = load i32, ptr %i.dk, align 4            ; 4 uses
  %i.dm = lshr i32 %i.dl, 24
  %i.dn = trunc nuw i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %i.dn, ptr %i.dj, align 4
  %i.dp = lshr i32 %i.dl, 16
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.dq, ptr %i.do, align 1
  %i.ds = lshr i32 %i.dl, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %i.dt, ptr %i.dr, align 2
  %i.dv = trunc i32 %i.dl to i8
  store i8 %i.dv, ptr %i.du, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.h

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1)
  %i.dw = load i64, ptr %i.c, align 8
  %i.dx = and i64 %i.dw, 63
  %.not = icmp eq i64 %i.dx, 56
  br i1 %.not, label %.preheader24, label %bb.b, !llvm.loop !9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal11SHA256_hashEPKvmPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 32)) %2) #3 {
bb.a:
  %3 = alloca %"struct.v8::internal::HASH_CTX", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr @_ZN2v88internalL11SHA256_VTABE, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8
  call void @_ZN2v88internal13SHA256_updateEPNS0_8HASH_CTXEPKvm(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1)
  %i.d = call noundef ptr @_ZN2v88internal12SHA256_finalEPNS0_8HASH_CTXE(ptr noundef nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
end_hunk_0
