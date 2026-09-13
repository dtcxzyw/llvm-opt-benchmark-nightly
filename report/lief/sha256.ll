Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/sha256?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, [64 x i32], [8 x i32] }
%struct.mbedtls_sha256_context = type { [64 x i8], [2 x i32], [8 x i32], i32 }

@K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@sha224_test_sum = internal constant [3 x [32 x i8]] [[32 x i8] c"#\09}\224\05\D8\22\86B\A4w\BD\A2U\B3*\AD\BC\E4\BD\A0\B3\F7\E3l\9D\A7\00\00\00\00", [32 x i8] c"u8\8B\16Q'v\CC]\BA]\A1\FD\89\01P\B0\C6E\\\B4\F5\8B\19RR%%\00\00\00\00", [32 x i8] c" yFU\98\0C\91\D8\BB\B4\C1\EA\97a\8AK\F0?BX\19H\B2\EEN\E7\ADg\00\00\00\00"], align 16
@sha256_test_sum = internal constant [3 x [32 x i8]] [[32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", [32 x i8] c"\CD\C7n\\\99\14\FB\92\81\A1\C7\E2\84\D7>g\F1\80\9AH\A4\97 \0E\04m9\CC\C7\11,\D0"], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"  SHA-%d test #%d: \00", align 1
@sha_test_buf = internal unnamed_addr constant [3 x [57 x i8]] [[57 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", [57 x i8] zeroinitializer], align 16
@str = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@str.2 = private unnamed_addr constant [25 x i8] c"Buffer allocation failed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_sha256_init(ptr nofree noundef writeonly captures(none) initializes((0, 108)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %0, i8 0, i64 108, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_sha256_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 108) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @mbedtls_sha256_clone(ptr nofree noundef writeonly captures(none) initializes((0, 108)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull align 4 dereferenceable(108) %1, i64 108, i1 false), !tbaa.struct !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_sha256_starts(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.c = icmp eq i32 %1, 0                        ; 2 uses
  %i.d = select i1 %i.c, <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>
  %i.e = select i1 %i.c, <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i32> %i.d, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i32> %i.e, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.h, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -135, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef range(i32 -132, 1) i32 @mbedtls_sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %i.d = and i32 %i.c, 63                         ; 4 uses
  %i.e = sub nuw nsw i32 64, %i.d
  %i.f = zext nneg i32 %i.e to i64                ; 4 uses
  %i.g = trunc i64 %2 to i32                      ; 2 uses
  %i.h = add i32 %i.c, %i.g                       ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !10
  %i.i = icmp ult i32 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not52 = icmp ult i64 %2, %i.f
  br i1 %.not52, label %.thread63, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.d to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.f, i1 false)
  tail call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = sub nuw i64 %2, %i.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.040 = phi ptr [ %i.o, %bb.f ], [ %1, %bb.d ]  ; 3 uses
  %.039 = phi i64 [ %i.p, %bb.f ], [ %2, %bb.d ]  ; 5 uses
  %i.q = icmp ugt i64 %.039, 63
  br i1 %i.q, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.r = and i64 %.039, 63
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %.0711.i = phi i64 [ %i.t, %bb.h ], [ %.039, %.preheader ]
  %.0810.i = phi ptr [ %i.s, %bb.h ], [ %.040, %.preheader ] ; 2 uses
  tail call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef %.0810.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i, i64 64
  %i.t = add i64 %.0711.i, -64                    ; 2 uses
  %i.u = icmp ugt i64 %i.t, 63
  br i1 %i.u, label %bb.h, label %mbedtls_internal_sha256_process_many.exit, !llvm.loop !0

mbedtls_internal_sha256_process_many.exit:        ; preds = %bb.h
  %i.v = and i64 %.039, -64
  %i.w = getelementptr inbounds nuw i8, ptr %.040, i64 %i.v
  br label %bb.i

bb.i:                                             ; preds = %mbedtls_internal_sha256_process_many.exit, %bb.g
  %.141.lcssa = phi ptr [ %i.w, %mbedtls_internal_sha256_process_many.exit ], [ %.040, %bb.g ]
  %.1.lcssa = phi i64 [ %i.r, %mbedtls_internal_sha256_process_many.exit ], [ %.039, %bb.g ] ; 2 uses
  %.not53 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not53, label %bb.j, label %.thread63

.thread63:                                        ; preds = %bb.e, %bb.i
  %.1.lcssa70 = phi i64 [ %.1.lcssa, %bb.i ], [ %2, %bb.e ]
  %.141.lcssa69 = phi ptr [ %.141.lcssa, %bb.i ], [ %1, %bb.e ]
  %.0386268 = phi i32 [ 0, %bb.i ], [ %i.d, %bb.e ]
  %i.x = zext nneg i32 %.0386268 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %.141.lcssa69, i64 %.1.lcssa70, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread63, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @mbedtls_internal_sha256_process(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
.preheader148:
  %2 = alloca %struct.anon, align 4               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 32 uses
  %i.d = load <4 x i32>, ptr %1, align 1
  %i.e = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.d)
  store <4 x i32> %i.e, ptr %i.c, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load <4 x i32>, ptr %i.f, align 1
  %i.i = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.h)
  store <4 x i32> %i.i, ptr %i.g, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load <4 x i32>, ptr %i.j, align 1
  %i.m = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.l)
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = load <4 x i32>, ptr %i.n, align 1
  %i.q = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.p)
  store <4 x i32> %i.q, ptr %i.o, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 292 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 284 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 268 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 276 ; 6 uses
  %.promoted = load i32, ptr %i.r, align 4, !tbaa !10
  %.promoted151 = load i32, ptr %i.s, align 4, !tbaa !10
  %.promoted152 = load i32, ptr %i.t, align 4, !tbaa !10
  %.promoted153 = load i32, ptr %i.u, align 4, !tbaa !10
  %.promoted154 = load i32, ptr %i.b, align 4, !tbaa !10
  %.promoted155 = load i32, ptr %i.v, align 4, !tbaa !10
  %.promoted156 = load i32, ptr %i.w, align 4, !tbaa !10
  %.promoted158 = load i32, ptr %i.x, align 4, !tbaa !10
  br label %bb.a

.preheader146:                                    ; preds = %bb.a
  store i32 %i.fu, ptr %i.r, align 4, !tbaa !10
  store i32 %i.fv, ptr %i.x, align 4, !tbaa !10
  store i32 %i.gx, ptr %i.t, align 4, !tbaa !10
  store i32 %i.gy, ptr %i.w, align 4, !tbaa !10
  store i32 %i.ia, ptr %i.u, align 4, !tbaa !10
  store i32 %i.ib, ptr %i.v, align 4, !tbaa !10
  store i32 %i.jd, ptr %i.s, align 4, !tbaa !10
  store i32 %i.je, ptr %i.b, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 %i.is, ptr %2, align 4, !tbaa !18
  store i32 %i.jc, ptr %i.y, align 4, !tbaa !19
  br label %bb.b

bb.a:                                             ; preds = %.preheader148, %bb.a
  %i.z = phi i1 [ true, %.preheader148 ], [ false, %bb.a ]
  %indvars.iv = phi i64 [ 0, %.preheader148 ], [ 8, %bb.a ] ; 9 uses
  %i.aa = phi i32 [ %.promoted, %.preheader148 ], [ %i.fu, %bb.a ]
  %i.ab = phi i32 [ %.promoted151, %.preheader148 ], [ %i.jd, %bb.a ] ; 11 uses
  %i.ac = phi i32 [ %.promoted152, %.preheader148 ], [ %i.gx, %bb.a ] ; 3 uses
  %i.ad = phi i32 [ %.promoted153, %.preheader148 ], [ %i.ia, %bb.a ] ; 4 uses
  %i.ae = phi i32 [ %.promoted154, %.preheader148 ], [ %i.je, %bb.a ] ; 12 uses
  %i.af = phi i32 [ %.promoted155, %.preheader148 ], [ %i.ib, %bb.a ] ; 4 uses
  %i.ag = phi i32 [ %.promoted156, %.preheader148 ], [ %i.gy, %bb.a ] ; 2 uses
  %i.ah = phi i32 [ %.promoted158, %.preheader148 ], [ %i.fv, %bb.a ]
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 26)
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 21)
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 7)
  %i.am = xor i32 %i.ak, %i.al
  %i.an = add i32 %i.am, %i.aa
  %i.ao = xor i32 %i.ad, %i.ac
  %i.ap = and i32 %i.ao, %i.ab
  %i.aq = xor i32 %i.ap, %i.ac
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !10
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = add i32 %i.an, %i.as
  %i.aw = add i32 %i.av, %i.au
  %i.ax = add i32 %i.aw, %i.aq                    ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 30)
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 19)
  %i.ba = xor i32 %i.ay, %i.az
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 10)
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = and i32 %i.af, %i.ae
  %i.be = or i32 %i.af, %i.ae
  %i.bf = and i32 %i.ag, %i.be
  %i.bg = or i32 %i.bf, %i.bd
  %i.bh = add i32 %i.bg, %i.bc
  %i.bi = add i32 %i.ah, %i.ax                    ; 11 uses
  %i.bj = add i32 %i.bh, %i.ax                    ; 12 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 26)
  %i.bl = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 21)
  %i.bm = xor i32 %i.bk, %i.bl
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 7)
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = xor i32 %i.ad, %i.ab
  %i.bq = and i32 %i.bi, %i.bp
  %i.br = xor i32 %i.bq, %i.ad
  %i.bs = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %i.bx = add i32 %i.br, %i.ac
  %i.by = add i32 %i.bx, %i.bu
  %i.bz = add i32 %i.by, %i.bo
  %i.ca = add i32 %i.bz, %i.bw                    ; 2 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 30)
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 19)
  %i.cd = xor i32 %i.cb, %i.cc
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 10)
  %i.cf = xor i32 %i.cd, %i.ce
  %i.cg = and i32 %i.bj, %i.ae
  %i.ch = or i32 %i.bj, %i.ae
  %i.ci = and i32 %i.ch, %i.af
  %i.cj = or i32 %i.ci, %i.cg
  %i.ck = add i32 %i.cf, %i.cj
  %i.cl = add i32 %i.ca, %i.ag                    ; 11 uses
  %i.cm = add i32 %i.ca, %i.ck                    ; 12 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 26)
  %i.co = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 21)
  %i.cp = xor i32 %i.cn, %i.co
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 7)
  %i.cr = xor i32 %i.cp, %i.cq
  %i.cs = xor i32 %i.bi, %i.ab
  %i.ct = and i32 %i.cl, %i.cs
  %i.cu = xor i32 %i.ct, %i.ab
  %i.cv = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !10
  %i.da = add i32 %i.cx, %i.ad
  %i.db = add i32 %i.da, %i.cz
  %i.dc = add i32 %i.db, %i.cu
  %i.dd = add i32 %i.dc, %i.cr                    ; 2 uses
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 30)
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 19)
  %i.dg = xor i32 %i.de, %i.df
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 10)
  %i.di = xor i32 %i.dg, %i.dh
  %i.dj = and i32 %i.cm, %i.bj
  %i.dk = or i32 %i.cm, %i.bj
  %i.dl = and i32 %i.dk, %i.ae
  %i.dm = or i32 %i.dl, %i.dj
  %i.dn = add i32 %i.di, %i.dm
  %i.do = add i32 %i.dd, %i.af                    ; 11 uses
  %i.dp = add i32 %i.dd, %i.dn                    ; 12 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 26)
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 21)
  %i.ds = xor i32 %i.dq, %i.dr
  %i.dt = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 7)
  %i.du = xor i32 %i.ds, %i.dt
  %i.dv = xor i32 %i.cl, %i.bi
  %i.dw = and i32 %i.do, %i.dv
  %i.dx = xor i32 %i.dw, %i.bi
  %i.dy = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dy
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = add i32 %i.ea, %i.ab
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = add i32 %i.ee, %i.dx
  %i.eg = add i32 %i.ef, %i.du                    ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 30)
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 19)
  %i.ej = xor i32 %i.eh, %i.ei
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 10)
  %i.el = xor i32 %i.ej, %i.ek
  %i.em = and i32 %i.dp, %i.cm
  %i.en = or i32 %i.dp, %i.cm
  %i.eo = and i32 %i.en, %i.bj
  %i.ep = or i32 %i.eo, %i.em
  %i.eq = add i32 %i.el, %i.ep
  %i.er = add i32 %i.eg, %i.ae                    ; 11 uses
  %i.es = add i32 %i.eg, %i.eq                    ; 12 uses
  %i.et = tail call i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 26)
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 21)
  %i.ev = xor i32 %i.et, %i.eu
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 7)
  %i.ex = xor i32 %i.ev, %i.ew
  %i.ey = xor i32 %i.do, %i.cl
  %i.ez = and i32 %i.er, %i.ey
  %i.fa = xor i32 %i.ez, %i.cl
  %i.fb = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 16, !tbaa !10
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fb
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !10
  %i.fg = add i32 %i.fd, %i.bi
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = add i32 %i.fh, %i.fa
  %i.fj = add i32 %i.fi, %i.ex                    ; 2 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 30)
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 19)
  %i.fm = xor i32 %i.fk, %i.fl
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 10)
  %i.fo = xor i32 %i.fm, %i.fn
  %i.fp = and i32 %i.es, %i.dp
  %i.fq = or i32 %i.es, %i.dp
  %i.fr = and i32 %i.fq, %i.cm
  %i.fs = or i32 %i.fr, %i.fp
  %i.ft = add i32 %i.fo, %i.fs
  %i.fu = add i32 %i.fj, %i.bj                    ; 12 uses
  %i.fv = add i32 %i.fj, %i.ft                    ; 13 uses
  %i.fw = tail call i32 @llvm.fshl.i32(i32 %i.fu, i32 %i.fu, i32 26)
  %i.fx = tail call i32 @llvm.fshl.i32(i32 %i.fu, i32 %i.fu, i32 21)
  %i.fy = xor i32 %i.fw, %i.fx
  %i.fz = tail call i32 @llvm.fshl.i32(i32 %i.fu, i32 %i.fu, i32 7)
  %i.ga = xor i32 %i.fy, %i.fz
  %i.gb = xor i32 %i.er, %i.do
  %i.gc = and i32 %i.fu, %i.gb
  %i.gd = xor i32 %i.gc, %i.do
  %i.ge = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ge
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !10
  %i.gj = add i32 %i.gg, %i.cl
  %i.gk = add i32 %i.gj, %i.gi
  %i.gl = add i32 %i.gk, %i.gd
  %i.gm = add i32 %i.gl, %i.ga                    ; 2 uses
  %i.gn = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 30)
  %i.go = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 19)
  %i.gp = xor i32 %i.gn, %i.go
  %i.gq = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 10)
  %i.gr = xor i32 %i.gp, %i.gq
  %i.gs = and i32 %i.fv, %i.es
  %i.gt = or i32 %i.fv, %i.es
  %i.gu = and i32 %i.gt, %i.dp
  %i.gv = or i32 %i.gu, %i.gs
  %i.gw = add i32 %i.gr, %i.gv
  %i.gx = add i32 %i.gm, %i.cm                    ; 11 uses
  %i.gy = add i32 %i.gm, %i.gw                    ; 12 uses
  %i.gz = tail call i32 @llvm.fshl.i32(i32 %i.gx, i32 %i.gx, i32 26)
  %i.ha = tail call i32 @llvm.fshl.i32(i32 %i.gx, i32 %i.gx, i32 21)
  %i.hb = xor i32 %i.gz, %i.ha
  %i.hc = tail call i32 @llvm.fshl.i32(i32 %i.gx, i32 %i.gx, i32 7)
  %i.hd = xor i32 %i.hb, %i.hc
  %i.he = xor i32 %i.fu, %i.er
  %i.hf = and i32 %i.gx, %i.he
  %i.hg = xor i32 %i.hf, %i.er
  %i.hh = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !10
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hh
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !10
  %i.hm = add i32 %i.hj, %i.do
  %i.hn = add i32 %i.hm, %i.hl
  %i.ho = add i32 %i.hn, %i.hg
  %i.hp = add i32 %i.ho, %i.hd                    ; 2 uses
  %i.hq = tail call i32 @llvm.fshl.i32(i32 %i.gy, i32 %i.gy, i32 30)
  %i.hr = tail call i32 @llvm.fshl.i32(i32 %i.gy, i32 %i.gy, i32 19)
  %i.hs = xor i32 %i.hq, %i.hr
  %i.ht = tail call i32 @llvm.fshl.i32(i32 %i.gy, i32 %i.gy, i32 10)
  %i.hu = xor i32 %i.hs, %i.ht
  %i.hv = and i32 %i.gy, %i.fv
  %i.hw = or i32 %i.gy, %i.fv
  %i.hx = and i32 %i.hw, %i.es
  %i.hy = or i32 %i.hx, %i.hv
  %i.hz = add i32 %i.hu, %i.hy
  %i.ia = add i32 %i.hp, %i.dp                    ; 10 uses
  %i.ib = add i32 %i.hp, %i.hz                    ; 11 uses
  %i.ic = tail call i32 @llvm.fshl.i32(i32 %i.ia, i32 %i.ia, i32 26)
  %i.id = tail call i32 @llvm.fshl.i32(i32 %i.ia, i32 %i.ia, i32 21)
  %i.ie = xor i32 %i.ic, %i.id
  %i.if = tail call i32 @llvm.fshl.i32(i32 %i.ia, i32 %i.ia, i32 7)
  %i.ig = xor i32 %i.ie, %i.if
  %i.ih = xor i32 %i.gx, %i.fu
  %i.ii = and i32 %i.ia, %i.ih
  %i.ij = xor i32 %i.ii, %i.fu
  %i.ik = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !10
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !tbaa !10
  %i.ip = add i32 %i.im, %i.er
  %i.iq = add i32 %i.ip, %i.io
  %i.ir = add i32 %i.iq, %i.ij
  %i.is = add i32 %i.ir, %i.ig                    ; 3 uses
  %i.it = tail call i32 @llvm.fshl.i32(i32 %i.ib, i32 %i.ib, i32 30)
  %i.iu = tail call i32 @llvm.fshl.i32(i32 %i.ib, i32 %i.ib, i32 19)
  %i.iv = xor i32 %i.it, %i.iu
  %i.iw = tail call i32 @llvm.fshl.i32(i32 %i.ib, i32 %i.ib, i32 10)
  %i.ix = xor i32 %i.iv, %i.iw
  %i.iy = and i32 %i.ib, %i.gy
  %i.iz = or i32 %i.ib, %i.gy
  %i.ja = and i32 %i.iz, %i.fv
  %i.jb = or i32 %i.ja, %i.iy
  %i.jc = add i32 %i.ix, %i.jb                    ; 2 uses
  %i.jd = add i32 %i.is, %i.es                    ; 3 uses
  %i.je = add i32 %i.is, %i.jc                    ; 2 uses
  br i1 %i.z, label %bb.a, label %.preheader146, !llvm.loop !15

.preheader:                                       ; preds = %bb.b
  store i32 %i.yr, ptr %2, align 4, !tbaa !18
  store i32 %i.zb, ptr %i.y, align 4, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.jg = load <4 x i32>, ptr %i.jf, align 4
  %i.jh = load <4 x i32>, ptr %i.a, align 4, !tbaa !10
  %i.ji = insertelement <4 x i32> poison, i32 %i.zd, i64 0
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.xh, i64 1
  %i.jk = shufflevector <4 x i32> %i.jj, <4 x i32> %i.jg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jl = add <4 x i32> %i.jh, %i.jk
  store <4 x i32> %i.jl, ptr %i.a, align 4, !tbaa !10
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !10
  %i.jp = load <4 x i32>, ptr %i.jm, align 4, !tbaa !10
  %i.jq = insertelement <4 x i32> poison, i32 %i.zc, i64 0
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.xg, i64 1
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.xn, i64 2
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jo, i64 3
  %i.ju = add <4 x i32> %i.jp, %i.jt
  store <4 x i32> %i.ju, ptr %i.jm, align 4, !tbaa !10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 296) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.b:                                             ; preds = %.preheader146, %bb.b
  %i.jv = phi i32 [ %i.ib, %.preheader146 ], [ %i.xh, %bb.b ] ; 2 uses
  %i.jw = phi i32 [ %i.ia, %.preheader146 ], [ %i.xg, %bb.b ] ; 4 uses
  %i.jx = phi i32 [ %i.gx, %.preheader146 ], [ %i.xn, %bb.b ] ; 3 uses
  %i.jy = phi i32 [ %i.jd, %.preheader146 ], [ %i.zc, %bb.b ] ; 11 uses
  %indvars.iv170 = phi i64 [ 16, %.preheader146 ], [ %indvars.iv.next171, %bb.b ] ; 27 uses
  %i.jz = load i32, ptr %i.r, align 4, !tbaa !10
  %i.ka = tail call i32 @llvm.fshl.i32(i32 %i.jy, i32 %i.jy, i32 26)
  %i.kb = tail call i32 @llvm.fshl.i32(i32 %i.jy, i32 %i.jy, i32 21)
  %i.kc = xor i32 %i.ka, %i.kb
  %i.kd = tail call i32 @llvm.fshl.i32(i32 %i.jy, i32 %i.jy, i32 7)
  %i.ke = xor i32 %i.kc, %i.kd
  %i.kf = add i32 %i.ke, %i.jz
  %i.kg = xor i32 %i.jw, %i.jx
  %i.kh = and i32 %i.kg, %i.jy
  %i.ki = xor i32 %i.kh, %i.jx
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %indvars.iv170
  %i.kk = load i32, ptr %i.kj, align 16, !tbaa !10
  %i.kl = getelementptr [4 x i8], ptr %2, i64 %indvars.iv170 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !10 ; 5 uses
  %i.kn = tail call i32 @llvm.fshl.i32(i32 %i.km, i32 %i.km, i32 15)
  %i.ko = tail call i32 @llvm.fshl.i32(i32 %i.km, i32 %i.km, i32 13)
  %i.kp = xor i32 %i.kn, %i.ko
  %i.kq = lshr i32 %i.km, 10
  %i.kr = xor i32 %i.kp, %i.kq
  %i.ks = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.kt = getelementptr i8, ptr %i.ks, i64 -28
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !10
  %i.kv = add i32 %i.kr, %i.ku
  %i.kw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.kx = getelementptr i8, ptr %i.kw, i64 -60
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !10 ; 6 uses
  %i.kz = tail call i32 @llvm.fshl.i32(i32 %i.ky, i32 %i.ky, i32 25)
  %i.la = tail call i32 @llvm.fshl.i32(i32 %i.ky, i32 %i.ky, i32 14)
  %i.lb = xor i32 %i.kz, %i.la
  %i.lc = lshr i32 %i.ky, 3
  %i.ld = xor i32 %i.lb, %i.lc
  %i.le = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.lf = getelementptr i8, ptr %i.le, i64 -64
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !10
  %i.lh = add i32 %i.kv, %i.lg
  %i.li = add i32 %i.lh, %i.ld                    ; 7 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv170 ; 5 uses
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !10
  %i.lk = add i32 %i.kf, %i.kk
  %i.ll = add i32 %i.lk, %i.ki
  %i.lm = add i32 %i.ll, %i.li                    ; 2 uses
  %i.ln = load i32, ptr %i.b, align 4, !tbaa !10  ; 12 uses
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 30)
  %i.lp = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 19)
  %i.lq = xor i32 %i.lo, %i.lp
  %i.lr = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 10)
  %i.ls = xor i32 %i.lq, %i.lr
  %i.lt = and i32 %i.jv, %i.ln
  %i.lu = load i32, ptr %i.w, align 4, !tbaa !10  ; 2 uses
  %i.lv = or i32 %i.jv, %i.ln
  %i.lw = and i32 %i.lu, %i.lv
  %i.lx = or i32 %i.lw, %i.lt
  %i.ly = add i32 %i.lx, %i.ls
  %i.lz = load i32, ptr %i.x, align 4, !tbaa !10
  %i.ma = add i32 %i.lz, %i.lm                    ; 11 uses
  store i32 %i.ma, ptr %i.x, align 4, !tbaa !10
  %i.mb = add i32 %i.ly, %i.lm                    ; 13 uses
  store i32 %i.mb, ptr %i.r, align 4, !tbaa !10
  %i.mc = tail call i32 @llvm.fshl.i32(i32 %i.ma, i32 %i.ma, i32 26)
  %i.md = tail call i32 @llvm.fshl.i32(i32 %i.ma, i32 %i.ma, i32 21)
  %i.me = xor i32 %i.mc, %i.md
  %i.mf = tail call i32 @llvm.fshl.i32(i32 %i.ma, i32 %i.ma, i32 7)
  %i.mg = xor i32 %i.me, %i.mf
  %i.mh = xor i32 %i.jw, %i.jy
  %i.mi = and i32 %i.ma, %i.mh
  %i.mj = xor i32 %i.mi, %i.jw
  %i.mk = or disjoint i64 %indvars.iv170, 1       ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !10
  %3 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.mn = getelementptr i8, ptr %3, i64 -4        ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !10 ; 5 uses
  %i.mp = tail call i32 @llvm.fshl.i32(i32 %i.mo, i32 %i.mo, i32 15)
  %i.mq = tail call i32 @llvm.fshl.i32(i32 %i.mo, i32 %i.mo, i32 13)
  %i.mr = xor i32 %i.mp, %i.mq
  %i.ms = lshr i32 %i.mo, 10
  %i.mt = xor i32 %i.mr, %i.ms
  %i.mu = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.mv = getelementptr i8, ptr %i.mu, i64 -24
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !10
  %i.mx = add i32 %i.mt, %i.mw
  %i.my = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.mz = getelementptr i8, ptr %i.my, i64 -56    ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !10 ; 5 uses
  %i.nb = tail call i32 @llvm.fshl.i32(i32 %i.na, i32 %i.na, i32 25)
  %i.nc = tail call i32 @llvm.fshl.i32(i32 %i.na, i32 %i.na, i32 14)
  %i.nd = xor i32 %i.nb, %i.nc
  %i.ne = lshr i32 %i.na, 3
  %i.nf = xor i32 %i.nd, %i.ne
  %i.ng = add i32 %i.mx, %i.ky
  %i.nh = add i32 %i.ng, %i.nf                    ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mk
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !10
  %i.nj = add i32 %i.mj, %i.jx
  %i.nk = add i32 %i.nj, %i.mm
  %i.nl = add i32 %i.nk, %i.mg
  %i.nm = add i32 %i.nl, %i.nh                    ; 2 uses
  %i.nn = tail call i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 30)
  %i.no = tail call i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 19)
  %i.np = xor i32 %i.nn, %i.no
  %i.nq = tail call i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 10)
  %i.nr = xor i32 %i.np, %i.nq
  %i.ns = and i32 %i.mb, %i.ln
  %i.nt = load i32, ptr %i.v, align 4, !tbaa !10  ; 2 uses
  %i.nu = or i32 %i.mb, %i.ln
  %i.nv = and i32 %i.nt, %i.nu
  %i.nw = or i32 %i.nv, %i.ns
  %i.nx = add i32 %i.nw, %i.nr
  %i.ny = add i32 %i.nm, %i.lu                    ; 8 uses
  store i32 %i.ny, ptr %i.w, align 4, !tbaa !10
  %i.nz = add i32 %i.nx, %i.nm                    ; 13 uses
  store i32 %i.nz, ptr %i.t, align 4, !tbaa !10
  %i.oa = tail call i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 26)
  %i.ob = tail call i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 21)
  %i.oc = xor i32 %i.oa, %i.ob
  %i.od = tail call i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 7)
  %i.oe = xor i32 %i.oc, %i.od
  %i.of = xor i32 %i.ma, %i.jy
  %i.og = and i32 %i.ny, %i.of
  %i.oh = xor i32 %i.og, %i.jy
  %i.oi = or disjoint i64 %indvars.iv170, 2       ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !10
  %i.ol = tail call i32 @llvm.fshl.i32(i32 %i.li, i32 %i.li, i32 15)
  %i.om = tail call i32 @llvm.fshl.i32(i32 %i.li, i32 %i.li, i32 13)
  %i.on = xor i32 %i.ol, %i.om
  %i.oo = lshr i32 %i.li, 10
  %i.op = xor i32 %i.on, %i.oo
  %i.oq = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.or = getelementptr i8, ptr %i.oq, i64 -20
  %i.os = load i32, ptr %i.or, align 4, !tbaa !10
  %i.ot = add i32 %i.os, %i.op
  %i.ou = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.ov = getelementptr i8, ptr %i.ou, i64 -52
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !10 ; 6 uses
  %i.ox = tail call i32 @llvm.fshl.i32(i32 %i.ow, i32 %i.ow, i32 25)
  %i.oy = tail call i32 @llvm.fshl.i32(i32 %i.ow, i32 %i.ow, i32 14)
  %i.oz = xor i32 %i.ox, %i.oy
  %i.pa = lshr i32 %i.ow, 3
  %i.pb = xor i32 %i.oz, %i.pa
  %i.pc = load i32, ptr %i.mz, align 4, !tbaa !10
  %i.pd = add i32 %i.ot, %i.pc
  %i.pe = add i32 %i.pd, %i.pb                    ; 7 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.oi
  store i32 %i.pe, ptr %i.pf, align 4, !tbaa !10
  %i.pg = add i32 %i.ok, %i.jw
  %i.ph = add i32 %i.pg, %i.oh
  %i.pi = add i32 %i.ph, %i.oe
  %i.pj = add i32 %i.pi, %i.pe                    ; 2 uses
  %i.pk = tail call i32 @llvm.fshl.i32(i32 %i.nz, i32 %i.nz, i32 30)
  %i.pl = tail call i32 @llvm.fshl.i32(i32 %i.nz, i32 %i.nz, i32 19)
  %i.pm = xor i32 %i.pk, %i.pl
  %i.pn = tail call i32 @llvm.fshl.i32(i32 %i.nz, i32 %i.nz, i32 10)
  %i.po = xor i32 %i.pm, %i.pn
  %i.pp = and i32 %i.nz, %i.mb
  %i.pq = or i32 %i.nz, %i.mb
  %i.pr = and i32 %i.pq, %i.ln
  %i.ps = or i32 %i.pr, %i.pp
  %i.pt = add i32 %i.po, %i.ps
  %i.pu = add i32 %i.pj, %i.nt                    ; 12 uses
  store i32 %i.pu, ptr %i.v, align 4, !tbaa !10
  %i.pv = add i32 %i.pj, %i.pt                    ; 11 uses
  store i32 %i.pv, ptr %i.u, align 4, !tbaa !10
  %i.pw = tail call i32 @llvm.fshl.i32(i32 %i.pu, i32 %i.pu, i32 26)
  %i.px = tail call i32 @llvm.fshl.i32(i32 %i.pu, i32 %i.pu, i32 21)
  %i.py = xor i32 %i.pw, %i.px
  %i.pz = tail call i32 @llvm.fshl.i32(i32 %i.pu, i32 %i.pu, i32 7)
  %i.qa = xor i32 %i.py, %i.pz
  %i.qb = load i32, ptr %i.w, align 4, !tbaa !10  ; 4 uses
  %i.qc = xor i32 %i.qb, %i.ma
  %i.qd = and i32 %i.qc, %i.pu
  %i.qe = xor i32 %i.qd, %i.ma
  %i.qf = or disjoint i64 %indvars.iv170, 3       ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !10
  %i.qi = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !10 ; 5 uses
  %i.qk = tail call i32 @llvm.fshl.i32(i32 %i.qj, i32 %i.qj, i32 15)
  %i.ql = tail call i32 @llvm.fshl.i32(i32 %i.qj, i32 %i.qj, i32 13)
  %i.qm = xor i32 %i.qk, %i.ql
  %i.qn = lshr i32 %i.qj, 10
  %i.qo = xor i32 %i.qm, %i.qn
  %i.qp = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.qq = getelementptr i8, ptr %i.qp, i64 -16
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !10
  %i.qs = add i32 %i.qo, %i.qr
  %i.qt = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.qu = getelementptr i8, ptr %i.qt, i64 -48    ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !10 ; 5 uses
  %i.qw = tail call i32 @llvm.fshl.i32(i32 %i.qv, i32 %i.qv, i32 25)
  %i.qx = tail call i32 @llvm.fshl.i32(i32 %i.qv, i32 %i.qv, i32 14)
  %i.qy = xor i32 %i.qw, %i.qx
  %i.qz = lshr i32 %i.qv, 3
  %i.ra = xor i32 %i.qy, %i.qz
  %i.rb = add i32 %i.qs, %i.ow
  %i.rc = add i32 %i.rb, %i.ra                    ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qf
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !10
  %i.re = add i32 %i.qh, %i.jy
  %i.rf = add i32 %i.re, %i.qa
  %i.rg = add i32 %i.rf, %i.qe
  %i.rh = add i32 %i.rg, %i.rc                    ; 2 uses
  %i.ri = tail call i32 @llvm.fshl.i32(i32 %i.pv, i32 %i.pv, i32 30)
  %i.rj = tail call i32 @llvm.fshl.i32(i32 %i.pv, i32 %i.pv, i32 19)
  %i.rk = xor i32 %i.ri, %i.rj
  %i.rl = tail call i32 @llvm.fshl.i32(i32 %i.pv, i32 %i.pv, i32 10)
  %i.rm = xor i32 %i.rk, %i.rl
  %i.rn = and i32 %i.pv, %i.nz
  %i.ro = or i32 %i.pv, %i.nz
  %i.rp = and i32 %i.ro, %i.mb
  %i.rq = or i32 %i.rp, %i.rn
  %i.rr = add i32 %i.rm, %i.rq
  %i.rs = add i32 %i.rh, %i.ln                    ; 12 uses
  store i32 %i.rs, ptr %i.b, align 4, !tbaa !10
  %i.rt = add i32 %i.rh, %i.rr
  store i32 %i.rt, ptr %i.s, align 4, !tbaa !10
  %i.ru = load i32, ptr %i.x, align 4, !tbaa !10
  %i.rv = tail call i32 @llvm.fshl.i32(i32 %i.rs, i32 %i.rs, i32 26)
  %i.rw = tail call i32 @llvm.fshl.i32(i32 %i.rs, i32 %i.rs, i32 21)
  %i.rx = xor i32 %i.rv, %i.rw
  %i.ry = tail call i32 @llvm.fshl.i32(i32 %i.rs, i32 %i.rs, i32 7)
  %i.rz = xor i32 %i.rx, %i.ry
  %i.sa = xor i32 %i.pu, %i.qb
  %i.sb = and i32 %i.rs, %i.sa
  %i.sc = xor i32 %i.sb, %i.qb
  %i.sd = or disjoint i64 %indvars.iv170, 4       ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr @K, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 16, !tbaa !10
  %i.sg = tail call i32 @llvm.fshl.i32(i32 %i.pe, i32 %i.pe, i32 15)
  %i.sh = tail call i32 @llvm.fshl.i32(i32 %i.pe, i32 %i.pe, i32 13)
  %i.si = xor i32 %i.sg, %i.sh
  %i.sj = lshr i32 %i.pe, 10
  %i.sk = xor i32 %i.si, %i.sj
  %i.sl = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.sm = getelementptr i8, ptr %i.sl, i64 -12
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !10
  %i.so = add i32 %i.sk, %i.sn
  %i.sp = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv170
  %i.sq = getelementptr i8, ptr %i.sp, i64 -44
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !10 ; 6 uses
  %i.ss = tail call i32 @llvm.fshl.i32(i32 %i.sr, i32 %i.sr, i32 25)
  %i.st = tail call i32 @llvm.fshl.i32(i32 %i.sr, i32 %i.sr, i32 14)
  %i.su = xor i32 %i.ss, %i.st
  %i.sv = lshr i32 %i.sr, 3
  %i.sw = xor i32 %i.su, %i.sv
  %i.sx = load i32, ptr %i.qu, align 4, !tbaa !10
  %i.sy = add i32 %i.so, %i.sx
  %i.sz = add i32 %i.sy, %i.sw                    ; 7 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sd
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !10
  %i.tb = add i32 %i.sf, %i.ru
  %i.tc = add i32 %i.tb, %i.sc
  %i.td = add i32 %i.tc, %i.rz
  %i.te = add i32 %i.td, %i.sz                    ; 2 uses
  %i.tf = load i32, ptr %i.s, align 4, !tbaa !10  ; 12 uses
  %i.tg = tail call i32 @llvm.fshl.i32(i32 %i.tf, i32 %i.tf, i32 30)
  %i.th = tail call i32 @llvm.fshl.i32(i32 %i.tf, i32 %i.tf, i32 19)
  %i.ti = xor i32 %i.tg, %i.th
  %i.tj = tail call i32 @llvm.fshl.i32(i32 %i.tf, i32 %i.tf, i32 10)
  %i.tk = xor i32 %i.ti, %i.tj
  %i.tl = and i32 %i.tf, %i.pv
  %i.tm = or i32 %i.tf, %i.pv
  %i.tn = and i32 %i.tm, %i.nz
  %i.to = or i32 %i.tn, %i.tl
  %i.tp = add i32 %i.tk, %i.to
  %i.tq = add i32 %i.te, %i.mb                    ; 11 uses
  store i32 %i.tq, ptr %i.r, align 4, !tbaa !10
  %i.tr = add i32 %i.tp, %i.te                    ; 12 uses
  store i32 %i.tr, ptr %i.x, align 4, !tbaa !10
  %i.ts = tail call i32 @llvm.fshl.i32(i32 %i.tq, i32 %i.tq, i32 26)
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.tq, i32 %i.tq, i32 21)
end_hunk_0
