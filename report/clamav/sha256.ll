Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sha256?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL1K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z11sha256_initP14sha256_context(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z14sha256_processP14sha256_contextPKvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !tbaa !11
  %.not24 = icmp eq i64 %2, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i64 %i.b, 63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.027 = phi i64 [ %i.d, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %.02126 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.02225 = phi i64 [ %2, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %i.f = sub i64 64, %.027
  %i.g = tail call i64 @llvm.umin.i64(i64 %.02225, i64 %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.027
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %.02126, i64 %i.g, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.02126, i64 %i.g
  %i.j = add i64 %i.g, %.027                      ; 2 uses
  %i.k = sub nuw i64 %.02225, %i.g                ; 2 uses
  %i.l = icmp eq i64 %i.j, 64
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16sha256_transformP14sha256_context(ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ 0, %bb.c ], [ %i.j, %bb.b ]
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16sha256_transformP14sha256_context(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
.preheader.preheader:
  %i.a = alloca [64 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %i.d = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.c) ; 2 uses
  store <4 x i32> %i.d, ptr %i.a, align 16, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.g)
  store <4 x i32> %i.h, ptr %i.f, align 16, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load <4 x i32>, ptr %i.i, align 4, !tbaa !8
  %i.l = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.k)
  store <4 x i32> %i.l, ptr %i.j, align 16, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load <4 x i32>, ptr %i.m, align 4, !tbaa !8
  %i.p = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.o)
  store <4 x i32> %i.p, ptr %i.n, align 16, !tbaa !8
  %1 = extractelement <4 x i32> %i.d, i64 0
  br label %.preheader

bb.a:                                             ; preds = %.preheader
  %i.q = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %2 = phi i32 [ %1, %.preheader.preheader ], [ %i.at, %.preheader ]
  %indvars.iv = phi i64 [ 16, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 5 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 5 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 15)
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 13)
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ah, 10
  %i.am = xor i32 %i.ak, %i.al
  %i.an = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ao = getelementptr i8, ptr %i.an, i64 -28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = add i32 %i.am, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 -60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8  ; 6 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 25)
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 14)
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = lshr i32 %i.at, 3
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = add i32 %i.aq, %2
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !14

bb.b:                                             ; preds = %bb.c
  %i.bc = add i32 %i.cm, %i.q
  store i32 %i.bc, ptr %0, align 4, !tbaa !8
  %i.bd = add i32 %.sroa.0.082, %i.s
  store i32 %i.bd, ptr %i.r, align 4, !tbaa !8
  %i.be = add i32 %.sroa.14.081, %i.u
  store i32 %i.be, ptr %i.t, align 4, !tbaa !8
  %i.bf = add i32 %.sroa.20.080, %i.w
  store i32 %i.bf, ptr %i.v, align 4, !tbaa !8
  %i.bg = add i32 %i.cb, %i.y
  store i32 %i.bg, ptr %i.x, align 4, !tbaa !8
  %i.bh = add i32 %.sroa.30.078, %i.aa
  store i32 %i.bh, ptr %i.z, align 4, !tbaa !8
  %i.bi = add i32 %.sroa.42.077, %i.ac
  store i32 %i.bi, ptr %i.ab, align 4, !tbaa !8
  %i.bj = add i32 %.sroa.47.084, %i.ae
  store i32 %i.bj, ptr %i.ad, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv89 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next90, %bb.c ] ; 3 uses
  %.sroa.52.085 = phi i32 [ %i.ae, %bb.a ], [ %.sroa.47.084, %bb.c ]
  %.sroa.47.084 = phi i32 [ %i.ac, %bb.a ], [ %.sroa.42.077, %bb.c ] ; 3 uses
  %.sroa.0.082 = phi i32 [ %i.q, %bb.a ], [ %i.cm, %bb.c ] ; 9 uses
  %.sroa.14.081 = phi i32 [ %i.s, %bb.a ], [ %.sroa.0.082, %bb.c ] ; 4 uses
  %.sroa.20.080 = phi i32 [ %i.u, %bb.a ], [ %.sroa.14.081, %bb.c ] ; 4 uses
  %.sroa.26.079 = phi i32 [ %i.w, %bb.a ], [ %.sroa.20.080, %bb.c ]
  %.sroa.30.078 = phi i32 [ %i.y, %bb.a ], [ %i.cb, %bb.c ] ; 10 uses
  %.sroa.42.077 = phi i32 [ %i.aa, %bb.a ], [ %.sroa.30.078, %bb.c ] ; 3 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %.sroa.30.078, i32 %.sroa.30.078, i32 26)
  %i.bl = tail call i32 @llvm.fshl.i32(i32 %.sroa.30.078, i32 %.sroa.30.078, i32 21)
  %i.bm = xor i32 %i.bk, %i.bl
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %.sroa.30.078, i32 %.sroa.30.078, i32 7)
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = add i32 %.sroa.52.085, %i.bo
  %i.bq = and i32 %.sroa.30.078, %.sroa.42.077
  %i.br = xor i32 %.sroa.30.078, -1
  %i.bs = and i32 %.sroa.47.084, %i.br
  %i.bt = or i32 %i.bs, %i.bq
  %i.bu = add i32 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZL1K, i64 %indvars.iv89
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add i32 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv89
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = add i32 %i.bx, %i.bz                    ; 2 uses
  %i.cb = add i32 %i.ca, %.sroa.26.079            ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.082, i32 %.sroa.0.082, i32 30)
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.082, i32 %.sroa.0.082, i32 19)
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.082, i32 %.sroa.0.082, i32 10)
  %i.cg = xor i32 %i.ce, %i.cf
  %i.ch = xor i32 %.sroa.14.081, %.sroa.20.080
  %i.ci = and i32 %.sroa.0.082, %i.ch
  %i.cj = and i32 %.sroa.14.081, %.sroa.20.080
  %i.ck = xor i32 %i.ci, %i.cj
  %i.cl = add i32 %i.cg, %i.ck
  %i.cm = add i32 %i.cl, %i.ca                    ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, 64
  br i1 %exitcond92.not, label %bb.b, label %bb.c, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z11sha256_doneP14sha256_contextPh(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %i.g = and i64 %i.b, 63
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i8 -128, ptr %i.h, align 1, !tbaa !16
  %.not = icmp eq i32 %i.f, 56
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.d, 55
  br i1 %i.i, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not40 = icmp eq i32 %i.d, 63
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = and i64 %i.b, 63
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 41
  %narrow = xor i32 %i.d, 63
  %i.l = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  tail call fastcc void @_ZL16sha256_transformP14sha256_context(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.137 = phi i32 [ 0, %._crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = zext nneg i32 %.137 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.o = sub nuw nsw i32 56, %.137
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.p, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.q = shl i64 %i.b, 3                          ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.u, ptr %i.t, align 8, !tbaa !8
  %i.v = trunc i64 %i.q to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %i.x, ptr %i.w, align 4, !tbaa !8
  tail call fastcc void @_ZL16sha256_transformP14sha256_context(ptr noundef nonnull %0)
  %i.y = load i32, ptr %0, align 8, !tbaa !8
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %1, align 4, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.at, ptr %i.as, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.av)
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !8
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 8, !tbaa !8
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.am, align 8, !tbaa !8
  store i64 0, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}
end_hunk_0
