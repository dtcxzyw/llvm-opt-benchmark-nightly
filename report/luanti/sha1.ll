Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sha1?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\80\00", align 1

@_ZN4SHA1C1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4SHA1C2Ev
@_ZN4SHA1D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4SHA1D2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4SHA1C2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(92) initializes((0, 20), (84, 92)) %0) unnamed_addr #0 align 2 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.c, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4SHA1D2Ev(ptr nofree nonnull readnone align 4 captures(none) dead_on_return(92) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4SHA17processEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(92) %0) local_unnamed_addr #3 align 2 {
.lr.ph.preheader:
  %i.a = alloca [80 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %1 = load <4 x i32>, ptr %i.k, align 4
  %2 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %1)
  store <4 x i32> %2, ptr %i.a, align 16, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %5 = load <4 x i32>, ptr %3, align 4
  %6 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %5)
  store <4 x i32> %6, ptr %4, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %7 = load <4 x i32>, ptr %i.l, align 4
  %8 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %7)
  store <4 x i32> %8, ptr %i.m, align 16, !tbaa !10
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %11 = load <4 x i32>, ptr %9, align 4
  %12 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %11)
  store <4 x i32> %12, ptr %10, align 16, !tbaa !10
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %i.n = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr i8, ptr %i.n, i64 -32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !10
  %i.s = xor i32 %i.r, %i.p
  %i.t = getelementptr i8, ptr %i.n, i64 -56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !10
  %i.v = xor i32 %i.s, %i.u
  %i.w = getelementptr i8, ptr %i.n, i64 -64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !10
  %i.y = xor i32 %i.v, %i.x                       ; 2 uses
  %i.z = tail call noundef i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 1)
  store i32 %i.z, ptr %i.n, align 8, !tbaa !10
  %i.aa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %i.ac = getelementptr i8, ptr %i.aa, i64 -8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr i8, ptr %i.aa, i64 -28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = getelementptr i8, ptr %i.aa, i64 -52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = xor i32 %i.ag, %i.ai
  %i.ak = getelementptr i8, ptr %i.aa, i64 -60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = xor i32 %i.aj, %i.al                    ; 2 uses
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 1)
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 80
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !20

.preheader:                                       ; preds = %.lr.ph, %bb.g
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.g ], [ 0, %.lr.ph ] ; 5 uses
  %.05165 = phi i32 [ %.05264, %bb.g ], [ %i.j, %.lr.ph ]
  %.05264 = phi i32 [ %.05363, %bb.g ], [ %i.h, %.lr.ph ] ; 7 uses
  %.05363 = phi i32 [ %i.bk, %bb.g ], [ %i.f, %.lr.ph ] ; 7 uses
  %.05462 = phi i32 [ %.05561, %bb.g ], [ %i.d, %.lr.ph ] ; 7 uses
  %.05561 = phi i32 [ %i.bj, %bb.g ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.ao = icmp samesign ult i64 %indvars.iv70, 20
  br i1 %i.ao, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader
  %i.ap = and i32 %.05363, %.05462
  %i.aq = xor i32 %.05462, -1
  %i.ar = and i32 %.05264, %i.aq
  %i.as = or i32 %i.ar, %i.ap
  br label %bb.g

bb.b:                                             ; preds = %.preheader
  %i.at = icmp samesign ult i64 %indvars.iv70, 40
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = xor i32 %.05363, %.05462
  %i.av = xor i32 %i.au, %.05264
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.aw = icmp samesign ult i64 %indvars.iv70, 60
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = or i32 %.05264, %.05363
  %i.ay = and i32 %i.ax, %.05462
  %i.az = and i32 %.05264, %.05363
  %i.ba = or i32 %i.ay, %i.az
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = xor i32 %.05363, %.05462
  %i.bc = xor i32 %i.bb, %.05264
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.050 = phi i32 [ 1518500249, %bb.a ], [ 1859775393, %bb.c ], [ -1894007588, %bb.e ], [ -899497514, %bb.f ]
  %.0 = phi i32 [ %i.as, %bb.a ], [ %i.av, %bb.c ], [ %i.ba, %bb.e ], [ %i.bc, %bb.f ]
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %.05561, i32 %.05561, i32 5)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv70
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bg = add i32 %.05165, %i.bd
  %i.bh = add i32 %i.bg, %.050
  %i.bi = add i32 %i.bh, %.0
  %i.bj = add i32 %i.bi, %i.bf                    ; 2 uses
  %i.bk = tail call noundef i32 @llvm.fshl.i32(i32 %.05462, i32 %.05462, i32 30) ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next71, 80
  br i1 %exitcond73.not, label %bb.h, label %.preheader, !llvm.loop !21

bb.h:                                             ; preds = %bb.g
  %i.bl = add i32 %i.bj, %i.b
  store i32 %i.bl, ptr %0, align 4, !tbaa !15
  %i.bm = add i32 %.05561, %i.d
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !16
  %i.bn = add i32 %i.bk, %i.f
  store i32 %i.bn, ptr %i.e, align 4, !tbaa !17
  %i.bo = add i32 %.05363, %i.h
  store i32 %i.bo, ptr %i.g, align 4, !tbaa !18
  %i.bp = add i32 %.05264, %i.j
  store i32 %i.bp, ptr %i.i, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.bq, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4SHA18addBytesEPKcj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(92) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = add i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !14
  %.not14 = icmp eq i32 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.016 = phi i32 [ %2, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %.01315 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.g = sub i32 64, %i.f
  %i.h = tail call i32 @llvm.umin.i32(i32 %.016, i32 %i.g) ; 3 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %.01315, i64 %i.k, i1 false)
  %i.l = sub nuw i32 %.016, %i.h                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01315, i64 %i.k
  %i.n = load i32, ptr %i.d, align 4, !tbaa !13
  %i.o = add i32 %i.n, %i.h                       ; 2 uses
  store i32 %i.o, ptr %i.d, align 4, !tbaa !13
  %i.p = icmp eq i32 %i.o, 64
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4SHA19getDigestEPh(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(92) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.01315.i = phi ptr [ @.str, %bb.a ], [ %i.m, %bb.d ] ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !13   ; 2 uses
  %i.h = icmp ne i32 %i.g, 64                     ; 3 uses
  %i.i = zext i1 %i.h to i32
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = zext i1 %i.h to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %.01315.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i, i64 %i.l
  %i.n = load i32, ptr %i.e, align 4, !tbaa !13
  %i.o = add i32 %i.n, %i.i                       ; 2 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !13
  %i.p = icmp eq i32 %i.o, 64
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.h, label %_ZN4SHA18addBytesEPKcj.exit, label %bb.b, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit:                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.q = load i32, ptr %i.e, align 4, !tbaa !13   ; 4 uses
  %i.r = icmp ugt i32 %i.q, 56
  %.pre21 = load i32, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  br i1 %i.r, label %bb.e, label %_ZN4SHA18addBytesEPKcj.exit13

bb.e:                                             ; preds = %_ZN4SHA18addBytesEPKcj.exit
  %i.s = sub i32 64, %i.q                         ; 2 uses
  %i.t = add i32 %.pre21, %i.s                    ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !14
  %.not14.i = icmp eq i32 %i.q, 64
  br i1 %.not14.i, label %_ZN4SHA18addBytesEPKcj.exit13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.016.i10 = phi i32 [ %i.aa, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %.01315.i11 = phi ptr [ %i.ab, %bb.g ], [ %i.a, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !13   ; 2 uses
  %i.v = sub i32 64, %i.u
  %i.w = tail call i32 @llvm.umin.i32(i32 %.016.i10, i32 %i.v) ; 3 uses
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %.01315.i11, i64 %i.z, i1 false)
  %i.aa = sub nuw i32 %.016.i10, %i.w             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01315.i11, i64 %i.z
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !13
  %i.ad = add i32 %i.ac, %i.w                     ; 2 uses
  store i32 %i.ad, ptr %i.e, align 4, !tbaa !13
  %i.ae = icmp eq i32 %i.ad, 64
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.not.i12 = icmp eq i32 %i.aa, 0
  br i1 %.not.i12, label %_ZN4SHA18addBytesEPKcj.exit13.loopexit, label %.lr.ph.i, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit13.loopexit:           ; preds = %bb.g
  %.pre = load i32, ptr %i.e, align 4, !tbaa !13
  %.pre20 = load i32, ptr %i.b, align 4, !tbaa !14
  br label %_ZN4SHA18addBytesEPKcj.exit13

_ZN4SHA18addBytesEPKcj.exit13:                    ; preds = %_ZN4SHA18addBytesEPKcj.exit13.loopexit, %bb.e, %_ZN4SHA18addBytesEPKcj.exit
  %i.af = phi i32 [ %.pre20, %_ZN4SHA18addBytesEPKcj.exit13.loopexit ], [ %i.t, %bb.e ], [ %.pre21, %_ZN4SHA18addBytesEPKcj.exit ]
  %i.ag = phi i32 [ %.pre, %_ZN4SHA18addBytesEPKcj.exit13.loopexit ], [ 64, %bb.e ], [ %i.q, %_ZN4SHA18addBytesEPKcj.exit ] ; 3 uses
  %i.ah = lshr i32 %i.c, 29
  %i.ai = shl i32 %i.c, 3                         ; 4 uses
  %i.aj = sub i32 56, %i.ag
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak ; 8 uses
  store i8 0, ptr %i.al, align 1, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 0, ptr %i.am, align 1, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 0, ptr %i.an, align 1, !tbaa !22
  %i.ao = trunc nuw nsw i32 %i.ah to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = lshr i32 %i.ai, 24
  %i.as = trunc nuw i32 %i.ar to i8
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !22
  %i.at = lshr i32 %i.ai, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  store i8 %i.au, ptr %i.av, align 1, !tbaa !22
  %i.aw = lshr i32 %i.ai, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !22
  %i.az = trunc i32 %i.ai to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 7
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !22
  %i.bb = sub i32 64, %i.ag                       ; 2 uses
  %i.bc = add i32 %i.af, %i.bb
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !14
  %.not14.i14 = icmp eq i32 %i.ag, 64
  br i1 %.not14.i14, label %_ZN4SHA18addBytesEPKcj.exit19, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN4SHA18addBytesEPKcj.exit13, %bb.i
  %.016.i16 = phi i32 [ %i.bj, %bb.i ], [ %i.bb, %_ZN4SHA18addBytesEPKcj.exit13 ] ; 2 uses
  %.01315.i17 = phi ptr [ %i.bk, %bb.i ], [ %i.a, %_ZN4SHA18addBytesEPKcj.exit13 ] ; 2 uses
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !13  ; 2 uses
  %i.be = sub i32 64, %i.bd
  %i.bf = tail call i32 @llvm.umin.i32(i32 %.016.i16, i32 %i.be) ; 3 uses
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bg
  %i.bi = zext i32 %i.bf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %.01315.i17, i64 %i.bi, i1 false)
  %i.bj = sub nuw i32 %.016.i16, %i.bf            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01315.i17, i64 %i.bi
  %i.bl = load i32, ptr %i.e, align 4, !tbaa !13
  %i.bm = add i32 %i.bl, %i.bf                    ; 2 uses
  store i32 %i.bm, ptr %i.e, align 4, !tbaa !13
  %i.bn = icmp eq i32 %i.bm, 64
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i15
  tail call void @_ZN4SHA17processEv(ptr noundef nonnull align 4 dereferenceable(92) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i15
  %.not.i18 = icmp eq i32 %i.bj, 0
  br i1 %.not.i18, label %_ZN4SHA18addBytesEPKcj.exit19, label %.lr.ph.i15, !llvm.loop !0

_ZN4SHA18addBytesEPKcj.exit19:                    ; preds = %bb.i, %_ZN4SHA18addBytesEPKcj.exit13
  %i.bo = load i32, ptr %0, align 4, !tbaa !15    ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = trunc nuw i32 %i.bp to i8
  store i8 %i.bq, ptr %1, align 1, !tbaa !22
  %i.br = lshr i32 %i.bo, 16
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !22
  %i.bu = lshr i32 %i.bo, 8
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !22
  %i.bx = trunc i32 %i.bo to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !16 ; 4 uses
  %i.cc = lshr i32 %i.cb, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !22
  %i.ce = lshr i32 %i.cb, 16
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !22
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !22
  %i.ck = trunc i32 %i.cb to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17 ; 4 uses
  %i.cp = lshr i32 %i.co, 24
  %i.cq = trunc nuw i32 %i.cp to i8
  store i8 %i.cq, ptr %i.cm, align 1, !tbaa !22
  %i.cr = lshr i32 %i.co, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !22
  %i.cu = lshr i32 %i.co, 8
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !22
  %i.cx = trunc i32 %i.co to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18 ; 4 uses
  %i.dc = lshr i32 %i.db, 24
  %i.dd = trunc nuw i32 %i.dc to i8
  store i8 %i.dd, ptr %i.cz, align 1, !tbaa !22
  %i.de = lshr i32 %i.db, 16
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !22
  %i.dh = lshr i32 %i.db, 8
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !22
  %i.dk = trunc i32 %i.db to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !12 ; 4 uses
  %i.dp = lshr i32 %i.do, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  store i8 %i.dq, ptr %i.dm, align 1, !tbaa !22
  %i.dr = lshr i32 %i.do, 16
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !22
  %i.du = lshr i32 %i.do, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !22
  %i.dx = trunc i32 %i.do to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"_ZTS4SHA1", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !7, i64 84, !7, i64 88}
!12 = !{!11, !7, i64 16}
!13 = !{!11, !7, i64 84}
!14 = !{!11, !7, i64 88}
!15 = !{!11, !7, i64 0}
!16 = !{!11, !7, i64 4}
!17 = !{!11, !7, i64 8}
!18 = !{!11, !7, i64 12}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = !{!6, !6, i64 0}
end_hunk_0
