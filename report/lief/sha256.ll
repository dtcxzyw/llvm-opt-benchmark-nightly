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
  %3 = and i64 %.039, 63
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %.0711.i = phi i64 [ %i.s, %bb.h ], [ %.039, %.preheader ]
  %.0810.i = phi ptr [ %i.r, %bb.h ], [ %.040, %.preheader ] ; 2 uses
  tail call fastcc void @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef %.0810.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i, i64 64
  %i.s = add i64 %.0711.i, -64                    ; 2 uses
  %i.t = icmp ugt i64 %i.s, 63
  br i1 %i.t, label %bb.h, label %mbedtls_internal_sha256_process_many.exit, !llvm.loop !0

mbedtls_internal_sha256_process_many.exit:        ; preds = %bb.h
  %i.u = and i64 %.039, -64
  %i.v = getelementptr inbounds nuw i8, ptr %.040, i64 %i.u
  br label %bb.i

bb.i:                                             ; preds = %mbedtls_internal_sha256_process_many.exit, %bb.g
  %.141.lcssa = phi ptr [ %i.v, %mbedtls_internal_sha256_process_many.exit ], [ %.040, %bb.g ]
  %.1.lcssa = phi i64 [ %3, %mbedtls_internal_sha256_process_many.exit ], [ %.039, %bb.g ] ; 2 uses
  %.not53 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not53, label %bb.j, label %.thread63

.thread63:                                        ; preds = %bb.e, %bb.i
  %.1.lcssa70 = phi i64 [ %.1.lcssa, %bb.i ], [ %2, %bb.e ]
  %.141.lcssa69 = phi ptr [ %.141.lcssa, %bb.i ], [ %1, %bb.e ]
  %.0386268 = phi i32 [ 0, %bb.i ], [ %i.d, %bb.e ]
  %i.w = zext nneg i32 %.0386268 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %.141.lcssa69, i64 %.1.lcssa70, i1 false)
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
end_hunk_0
