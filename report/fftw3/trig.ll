Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/trig?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @fftw_mktriggen(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_malloc_plain(i64 noundef 72) #9 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  switch i32 %0, label %..thread_crit_edge [
    i32 1, label %.thread64
    i32 2, label %bb.b
    i32 3, label %.thread76
  ]

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %.thread82

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %1, 0
  br i1 %i.f, label %.lr.ph.i, label %choose_twshft.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.b ]
  %.045.i = phi i64 [ %i.h, %.lr.ph.i ], [ %1, %bb.b ]
  %i.g = add nuw nsw i64 %.06.i, 1                ; 2 uses
  %i.h = lshr i64 %.045.i, 2                      ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %choose_twshft.exit, label %.lr.ph.i, !llvm.loop !21

choose_twshft.exit:                               ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.g, %.lr.ph.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !15
  %i.j = shl nuw i64 1, %.0.lcssa.i               ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !27
  %i.l = add nsw i64 %i.j, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = add i64 %1, -1
  %i.o = add i64 %i.n, %i.j
  %i.p = sdiv i64 %i.o, %i.j                      ; 3 uses
  %i.q = shl i64 16, %.0.lcssa.i
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #9
  store ptr %i.r, ptr %i.d, align 8, !tbaa !17
  %i.s = shl i64 %i.p, 4
  %i.t = tail call ptr @fftw_malloc_plain(i64 noundef %i.s) #9 ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !18
  %.not69 = icmp eq i64 %.0.lcssa.i, 63
  br i1 %.not69, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %choose_twshft.exit
  %2 = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.u = shl nsw i64 %1, 2                        ; 2 uses
  %i.v = sitofp i64 %i.u to double
  %smax = tail call i64 @llvm.smax.i64(i64 %i.j, i64 1)
  br label %bb.c

.preheader:                                       ; preds = %bb.c, %choose_twshft.exit
  %i.w = icmp sgt i64 %i.p, 0
  br i1 %i.w, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %.preheader
  %3 = load i64, ptr %i.k, align 8, !tbaa !27
  %i.x = shl nsw i64 %1, 2                        ; 3 uses
  %i.y = sitofp i64 %i.x to double
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.066 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.c ] ; 3 uses
  %.idx47 = shl nuw nsw i64 %.066, 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.idx47 ; 2 uses
  %i.aa = shl nuw nsw i64 %.066, 2                ; 3 uses
  %i.ab = sub nsw i64 %i.u, %i.aa                 ; 2 uses
  %.not.i49 = icmp sgt i64 %i.aa, %i.ab
  %.152.i = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ac = sub nsw i64 %.152.i, %1                 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 1                   ; 3 uses
  %.253.i = select i1 %i.ad, i64 %.152.i, i64 %i.ac ; 3 uses
  %i.ae = sub nsw i64 %1, %.253.i                 ; 2 uses
  %i.af = icmp sgt i64 %.253.i, %i.ae             ; 2 uses
  %.3.i = tail call i64 @llvm.smin.i64(i64 %.253.i, i64 %i.ae)
  %i.ag = sitofp i64 %.3.i to double
  %i.ah = fmul nnan double %i.ag, f0x401921FB54442D18
  %i.ai = fdiv double %i.ah, %i.v                 ; 2 uses
  %4 = tail call double @cos(double noundef %i.ai) #9 ; 2 uses
  %5 = tail call double @sin(double noundef %i.ai) #9 ; 2 uses
  %.049.i = select i1 %i.af, double %5, double %4 ; 2 uses
  %.046.i = select i1 %i.af, double %4, double %5 ; 2 uses
  %i.aj = fneg double %.046.i
  %.150.i = select i1 %i.ad, double %.049.i, double %i.aj
  %.147.i = select i1 %i.ad, double %.046.i, double %.049.i ; 2 uses
  %i.ak = fneg double %.147.i
  %.248.i = select i1 %.not.i49, double %i.ak, double %.147.i
  store double %.150.i, ptr %i.z, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store double %.248.i, ptr %i.al, align 8, !tbaa !20
  %i.am = add nuw nsw i64 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %smax
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !22

bb.d:                                             ; preds = %.lr.ph68, %bb.d
  %.167 = phi i64 [ 0, %.lr.ph68 ], [ %i.bd, %bb.d ] ; 3 uses
  %i.an = mul nsw i64 %3, %.167                   ; 2 uses
  %.idx = shl nuw nsw i64 %.167, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 2 uses
  %i.ap = shl nsw i64 %i.an, 2
  %i.aq = icmp slt i64 %i.an, 0
  %i.ar = select i1 %i.aq, i64 %i.x, i64 0
  %spec.select.i = add nsw i64 %i.ar, %i.ap       ; 3 uses
  %i.as = sub nsw i64 %i.x, %spec.select.i        ; 2 uses
  %.not.i50 = icmp sgt i64 %spec.select.i, %i.as
  %.152.i51 = tail call i64 @llvm.smin.i64(i64 %spec.select.i, i64 %i.as) ; 2 uses
  %i.at = sub nsw i64 %.152.i51, %1               ; 2 uses
  %i.au = icmp slt i64 %i.at, 1                   ; 3 uses
  %.253.i52 = select i1 %i.au, i64 %.152.i51, i64 %i.at ; 3 uses
  %i.av = sub nsw i64 %1, %.253.i52               ; 2 uses
  %i.aw = icmp sgt i64 %.253.i52, %i.av           ; 2 uses
  %.3.i53 = tail call i64 @llvm.smin.i64(i64 %.253.i52, i64 %i.av)
  %i.ax = sitofp i64 %.3.i53 to double
  %i.ay = fmul nnan double %i.ax, f0x401921FB54442D18
  %i.az = fdiv double %i.ay, %i.y                 ; 2 uses
  %6 = tail call double @cos(double noundef %i.az) #9 ; 2 uses
  %7 = tail call double @sin(double noundef %i.az) #9 ; 2 uses
  %.049.i54 = select i1 %i.aw, double %7, double %6 ; 2 uses
  %.046.i55 = select i1 %i.aw, double %6, double %7 ; 2 uses
  %i.ba = fneg double %.046.i55
  %.150.i56 = select i1 %i.au, double %.049.i54, double %i.ba
  %.147.i57 = select i1 %i.au, double %.046.i55, double %.049.i54 ; 2 uses
  %i.bb = fneg double %.147.i57
  %.248.i58 = select i1 %.not.i50, double %i.bb, double %.147.i57
  store double %.150.i56, ptr %i.ao, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store double %.248.i58, ptr %i.bc, align 8, !tbaa !20
  %i.bd = add nuw nsw i64 %.167, 1                ; 2 uses
  %exitcond70.not = icmp eq i64 %i.bd, %i.p
  br i1 %exitcond70.not, label %.loopexit, label %bb.d, !llvm.loop !23

.thread76:                                        ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @cexpl_sincos, ptr %i.be, align 8, !tbaa !14
  br label %.thread82

.thread64:                                        ; preds = %bb.a
  store ptr @cexp_zero, ptr %i.a, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @cexpl_zero, ptr %i.bf, align 8, !tbaa !14
  br label %bb.f

.loopexit:                                        ; preds = %bb.d, %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @cexpl_sqrtn_table, ptr %i.bg, align 8, !tbaa !14
  store ptr @rotate_sqrtn_table, ptr %i.e, align 8, !tbaa !25
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bh = icmp eq ptr %.pr.pre, null
  br i1 %i.bh, label %bb.e, label %.thread79

.thread82:                                        ; preds = %..thread_crit_edge, %.thread76
  %.ph = phi ptr [ @cexpl_sincos, %.thread76 ], [ %.pre.a, %..thread_crit_edge ]
  store ptr %.ph, ptr %i.a, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  store ptr @cexpl_sqrtn_table, ptr %i.a, align 8, !tbaa !24
  br label %.thread79

bb.f:                                             ; preds = %.thread82, %.thread64
  store ptr @rotate_generic, ptr %i.e, align 8, !tbaa !25
  br label %.thread79

.thread79:                                        ; preds = %.loopexit, %bb.e, %bb.f
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cexpl_sqrtn_table(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %isneg = icmp slt i64 %1, 0
  %i.c = select i1 %isneg, i64 %i.b, i64 0
  %i.d = add nsw i64 %i.c, %1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = ashr i64 %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %.idx = shl nsw i64 %i.g, 4
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %.idx24 = shl nsw i64 %i.j, 4
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.idx24
  %i.t = fneg double %i.p
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !20 ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.p, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fmul <2 x double> %i.u, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.aa, <2 x double> %i.y)
  store <2 x double> %i.ab, ptr %2, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rotate_sqrtn_table(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %isneg = icmp slt i64 %1, 0
  %i.c = select i1 %isneg, i64 %i.b, i64 0
  %i.d = add nsw i64 %i.c, %1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = ashr i64 %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %.idx = shl nsw i64 %i.g, 4
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %.idx32 = shl nsw i64 %i.j, 4
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.idx32
  %i.t = fneg double %i.p
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !20 ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.p, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fmul <2 x double> %i.u, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.aa, <2 x double> %i.y) ; 3 uses
  %i.ac = insertelement <2 x double> poison, double %3, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %2, i64 1 ; 2 uses
  %i.ae = fneg <2 x double> %i.ab
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = fmul <2 x double> %i.ad, %i.af
  %i.ah = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ai, <2 x double> %i.ag)
  store <2 x double> %i.aj, ptr %4, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal void @cexpl_sincos(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 3 uses
  %i.d = shl nsw i64 %1, 2
  %i.e = icmp slt i64 %1, 0
  %i.f = select i1 %i.e, i64 %i.c, i64 0
  %spec.select.i = add nsw i64 %i.f, %i.d         ; 3 uses
  %i.g = sub nsw i64 %i.c, %spec.select.i         ; 2 uses
  %.not.i = icmp sgt i64 %spec.select.i, %i.g
  %.152.i = tail call i64 @llvm.smin.i64(i64 %spec.select.i, i64 %i.g) ; 2 uses
  %i.h = sub nsw i64 %.152.i, %i.b                ; 2 uses
  %i.i = icmp slt i64 %i.h, 1                     ; 3 uses
  %.253.i = select i1 %i.i, i64 %.152.i, i64 %i.h ; 3 uses
  %i.j = sub nsw i64 %i.b, %.253.i                ; 2 uses
  %i.k = icmp sgt i64 %.253.i, %i.j               ; 2 uses
  %.3.i = tail call i64 @llvm.smin.i64(i64 %.253.i, i64 %i.j)
  %i.l = sitofp i64 %.3.i to double
  %i.m = fmul nnan double %i.l, f0x401921FB54442D18
  %i.n = sitofp i64 %i.c to double
  %i.o = fdiv double %i.m, %i.n                   ; 2 uses
  %3 = tail call double @cos(double noundef %i.o) #9 ; 2 uses
  %4 = tail call double @sin(double noundef %i.o) #9 ; 2 uses
  %.049.i = select i1 %i.k, double %4, double %3  ; 2 uses
  %.046.i = select i1 %i.k, double %3, double %4  ; 2 uses
  %i.p = fneg double %.046.i
  %.150.i = select i1 %i.i, double %.049.i, double %i.p
  %.147.i = select i1 %i.i, double %.046.i, double %.049.i ; 2 uses
  %i.q = fneg double %.147.i
  %.248.i = select i1 %.not.i, double %i.q, double %.147.i
  store double %.150.i, ptr %2, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.248.i, ptr %i.r, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @cexp_zero(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @cexpl_zero(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotate_generic(ptr noundef %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %4) #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  call void %i.c(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #9
  %i.d = load <1 x double>, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !20 ; 2 uses
  %i.g = fneg double %i.f
  %i.h = insertelement <2 x double> poison, double %3, i64 0
  %i.i = insertelement <2 x double> %i.h, double %2, i64 1 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %i.f, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.g, i64 1
  %i.l = fmul <2 x double> %i.i, %i.k
  %i.m = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.n = shufflevector <1 x double> %i.d, <1 x double> poison, <2 x i32> zeroinitializer
  %i.o = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.l)
  store <2 x double> %i.o, ptr %4, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fftw_triggen_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @fftw_ifree0(ptr noundef %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @fftw_ifree0(ptr noundef %i.d) #9
  tail call void @fftw_ifree(ptr noundef %0) #9
  ret void
}

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #2

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"p1 double", !9, i64 0}
!12 = !{!"triggen_s", !9, i64 0, !9, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !10, i64 64}
!13 = !{!12, !10, i64 64}
!14 = !{!12, !9, i64 8}
!15 = !{!12, !10, i64 24}
!16 = !{!12, !10, i64 40}
!17 = !{!12, !11, i64 48}
!18 = !{!12, !11, i64 56}
!19 = !{!"double", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, !26}
!22 = distinct !{!22, !26}
!23 = distinct !{!23, !26}
!24 = !{!12, !9, i64 0}
!25 = !{!12, !9, i64 16}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!12, !10, i64 32}
end_hunk_0
