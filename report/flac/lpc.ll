Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_restore_signal_wide_33bit:bb.a
  %.15 = phi i64 [ %i.en, %bb.r ], [ 0, %bb.b ]
  %i.eo = load i32, ptr %i.r, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.er = getelementptr i8, ptr %i.eq, i64 -128
  %i.es = load i64, ptr %i.er, align 8, !tbaa !15
  %i.et = mul nsw i64 %i.es, %i.ep
  %i.eu = add nsw i64 %i.et, %.15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %.16 = phi i64 [ %i.eu, %bb.s ], [ 0, %bb.b ]
  %i.ev = load i32, ptr %i.s, align 4, !tbaa !8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ey = getelementptr i8, ptr %i.ex, i64 -120
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !15
  %i.fa = mul nsw i64 %i.ez, %i.ew
  %i.fb = add nsw i64 %i.fa, %.16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.17 = phi i64 [ %i.fb, %bb.t ], [ 0, %bb.b ]
  %i.fc = load i32, ptr %i.t, align 4, !tbaa !8
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ff = getelementptr i8, ptr %i.fe, i64 -112
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !15
  %i.fh = mul nsw i64 %i.fg, %i.fd
  %i.fi = add nsw i64 %i.fh, %.17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.18 = phi i64 [ %i.fi, %bb.u ], [ 0, %bb.b ]
  %i.fj = load i32, ptr %i.u, align 4, !tbaa !8
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.fm = getelementptr i8, ptr %i.fl, i64 -104
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !15
  %i.fo = mul nsw i64 %i.fn, %i.fk
  %i.fp = add nsw i64 %i.fo, %.18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %.19 = phi i64 [ %i.fp, %bb.v ], [ 0, %bb.b ]
  %i.fq = load i32, ptr %i.v, align 4, !tbaa !8
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ft = getelementptr i8, ptr %i.fs, i64 -96
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !15
  %i.fv = mul nsw i64 %i.fu, %i.fr
  %i.fw = add nsw i64 %i.fv, %.19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %.20 = phi i64 [ %i.fw, %bb.w ], [ 0, %bb.b ]
  %i.fx = load i32, ptr %i.w, align 4, !tbaa !8
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ga = getelementptr i8, ptr %i.fz, i64 -88
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !15
  %i.gc = mul nsw i64 %i.gb, %i.fy
  %i.gd = add nsw i64 %i.gc, %.20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  %.21 = phi i64 [ %i.gd, %bb.x ], [ 0, %bb.b ]
  %i.ge = load i32, ptr %i.x, align 4, !tbaa !8
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.gh = getelementptr i8, ptr %i.gg, i64 -80
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !15
  %i.gj = mul nsw i64 %i.gi, %i.gf
  %i.gk = add nsw i64 %i.gj, %.21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.22 = phi i64 [ %i.gk, %bb.y ], [ 0, %bb.b ]
  %i.gl = load i32, ptr %i.y, align 4, !tbaa !8
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.go = getelementptr i8, ptr %i.gn, i64 -72
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !15
  %i.gq = mul nsw i64 %i.gp, %i.gm
  %i.gr = add nsw i64 %i.gq, %.22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.b
  %.23 = phi i64 [ %i.gr, %bb.z ], [ 0, %bb.b ]
  %i.gs = load i32, ptr %i.z, align 4, !tbaa !8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.gv = getelementptr i8, ptr %i.gu, i64 -64
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !15
  %i.gx = mul nsw i64 %i.gw, %i.gt
  %i.gy = add nsw i64 %i.gx, %.23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.24 = phi i64 [ %i.gy, %bb.aa ], [ 0, %bb.b ]
  %i.gz = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.hc = getelementptr i8, ptr %i.hb, i64 -56
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !15
  %i.he = mul nsw i64 %i.hd, %i.ha
  %i.hf = add nsw i64 %i.he, %.24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.b
  %.25 = phi i64 [ %i.hf, %bb.ab ], [ 0, %bb.b ]
  %i.hg = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.hj = getelementptr i8, ptr %i.hi, i64 -48
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !15
  %i.hl = mul nsw i64 %i.hk, %i.hh
  %i.hm = add nsw i64 %i.hl, %.25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.b
  %.26 = phi i64 [ %i.hm, %bb.ac ], [ 0, %bb.b ]
  %i.hn = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.hq = getelementptr i8, ptr %i.hp, i64 -40
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !15
  %i.hs = mul nsw i64 %i.hr, %i.ho
  %i.ht = add nsw i64 %i.hs, %.26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.b
  %.27 = phi i64 [ %i.ht, %bb.ad ], [ 0, %bb.b ]
  %i.hu = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -32
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !15
  %i.hz = mul nsw i64 %i.hy, %i.hv
  %i.ia = add nsw i64 %i.hz, %.27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.b
  %.28 = phi i64 [ %i.ia, %bb.ae ], [ 0, %bb.b ]
  %i.ib = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ie = getelementptr i8, ptr %i.id, i64 -24
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !15
  %i.ig = mul nsw i64 %i.if, %i.ic
  %i.ih = add nsw i64 %i.ig, %.28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b
  %.29 = phi i64 [ %i.ih, %bb.af ], [ 0, %bb.b ]
  %i.ii = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.il = getelementptr i8, ptr %i.ik, i64 -16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !15
  %i.in = mul nsw i64 %i.im, %i.ij
  %i.io = add nsw i64 %i.in, %.29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.b
  %.30 = phi i64 [ %i.io, %bb.ag ], [ 0, %bb.b ]
  %i.ip = load i32, ptr %2, align 4, !tbaa !8
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.is = getelementptr i8, ptr %i.ir, i64 -8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !15
  %i.iu = mul nsw i64 %i.it, %i.iq
  %i.iv = add nsw i64 %i.iu, %.30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.b
  %.31 = phi i64 [ 0, %bb.b ], [ %i.iv, %bb.ah ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !8
  %i.iy = sext i32 %i.ix to i64
  %i.iz = ashr i64 %.31, %i.ag
  %i.ja = add nsw i64 %i.iz, %i.iy
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.ai, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable
define hidden double @FLAC__lpc_compute_expected_bits_per_residual_sample(double noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ogt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp reassoc nsz arcp i32 %1 to double
  %i.c = fmul reassoc nnan nsz arcp double %0, 5.000000e-01
  %i.d = fdiv reassoc nsz arcp double %i.c, %i.b
  %i.e = tail call reassoc nsz arcp double @log(double noundef %i.d) #14
  %i.f = fmul reassoc nsz arcp double %i.e, f0x3FE71547652B82FE ; 2 uses
  %.inv.i = fcmp reassoc nsz arcp oge double %i.f, 0.000000e+00
  %..i = select nsz i1 %.inv.i, double %i.f, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp olt double %0, 0.000000e+00
  %.10.i = select nsz i1 %i.g, double 1.000000e+32, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi nsz double [ %..i, %bb.b ], [ %.10.i, %bb.c ]
  ret double %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable
define hidden double @FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale(double noundef %0, double noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ogt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fmul reassoc nsz arcp double %1, %0
  %i.c = tail call reassoc nsz arcp double @log(double noundef %i.b) #14
  %i.d = fmul reassoc nsz arcp double %i.c, f0x3FE71547652B82FE ; 2 uses
  %.inv = fcmp reassoc nsz arcp oge double %i.d, 0.000000e+00
  %. = select nsz i1 %.inv, double %i.d, double 0.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp reassoc nsz arcp olt double %0, 0.000000e+00
  %.10 = select nsz i1 %i.e, double 1.000000e+32, double 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi nsz double [ %., %bb.b ], [ %.10, %bb.c ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read, errnomem: write) uwtable
define hidden i32 @FLAC__lpc_compute_best_order(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = uitofp reassoc nsz arcp i32 %2 to double
  %wide.trip.count = zext i32 %1 to i64
  %i.b = fdiv reassoc nsz arcp double 1.000000e+00, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 3 uses
  %.024 = phi double [ f0x41EFFFFFFFE00000, %.lr.ph ], [ %.1, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 2 uses
  %.01623 = phi i32 [ 0, %.lr.ph ], [ %.117, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ]
  %.01921 = phi i32 [ 1, %.lr.ph ], [ %i.r, %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !17 ; 3 uses
  %i.e = fcmp reassoc nsz arcp ogt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fmul reassoc nnan nsz arcp double %i.d, 5.000000e-01
  %i.g = fmul reassoc nsz arcp double %i.f, %i.b
  %i.h = tail call reassoc nsz arcp double @log(double noundef %i.g) #14
  %i.i = fmul reassoc nsz arcp double %i.h, f0x3FE71547652B82FE ; 2 uses
  %.inv.i = fcmp reassoc nsz arcp oge double %i.i, 0.000000e+00
  %..i = select nsz i1 %.inv.i, double %i.i, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp reassoc nsz arcp olt double %i.d, 0.000000e+00
  %.10.i = select nsz i1 %i.j, double 1.000000e+32, double 0.000000e+00
  br label %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit

FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit: ; preds = %bb.c, %bb.d
  %.1.i = phi nsz double [ %..i, %bb.c ], [ %.10.i, %bb.d ]
  %i.k = sub i32 %2, %.01921
  %i.l = uitofp reassoc nsz arcp i32 %i.k to double
  %i.m = mul i32 %.01921, %3
  %i.n = uitofp reassoc nsz arcp i32 %i.m to double
  %i.o = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %.1.i, double %i.l, double %i.n) ; 2 uses
  %i.p = fcmp reassoc nsz arcp olt double %i.o, %.024 ; 2 uses
  %i.q = trunc nuw i64 %indvars.iv to i32
  %.117 = select i1 %i.p, i32 %i.q, i32 %.01623   ; 2 uses
  %.1 = select nsz i1 %i.p, double %i.o, double %.024
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = add i32 %.01921, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.exit
  %i.s = add i32 %.117, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.016.lcssa = phi i32 [ 1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  ret i32 %.016.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"float", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12, !13}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12, !13}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11, !12, !13}
!37 = distinct !{!37, !11, !13, !12}
!38 = distinct !{!38, !11, !12, !13}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !11, !13, !12}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11, !12, !13}
!44 = distinct !{!44, !11, !13, !12}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11, !12, !13}
!47 = distinct !{!47, !11, !13, !12}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !12, !13}
!53 = distinct !{!53, !11, !13, !12}
!54 = distinct !{!54, !11, !13, !12}
!55 = distinct !{!55, !11, !12, !13}
!56 = distinct !{!56, !11, !12, !13}
!57 = distinct !{!57, !11, !13, !12}
!58 = distinct !{!58, !11, !13, !12}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !12, !13}
!61 = distinct !{!61, !11, !13, !12}
!62 = distinct !{!62, !11, !13, !12}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, !11, !12, !13}
!65 = distinct !{!65, !11, !13, !12}
!66 = distinct !{!66, !11, !13, !12}
!67 = distinct !{!67, !11, !12, !13}
!68 = distinct !{!68, !11, !12, !13}
!69 = distinct !{!69, !11, !13, !12}
!70 = distinct !{!70, !11, !13, !12}
!71 = distinct !{!71, !11, !12, !13}
!72 = distinct !{!72, !11, !12, !13}
!73 = distinct !{!73, !11, !13, !12}
!74 = distinct !{!74, !11, !13, !12}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11, !12, !13}
!92 = distinct !{!92, !11, !13, !12}
!93 = distinct !{!93, i1 true, !"FLAC__lpc_max_prediction_value_before_shift"}
!94 = distinct !{!94, !93, !"FLAC__lpc_max_prediction_value_before_shift: argument 0"}
!95 = distinct !{!95, !11, !12, !13}
!96 = distinct !{!96, !11, !13, !12}
!97 = !{!94}
!98 = distinct !{!98, i1 true, !"FLAC__lpc_max_prediction_value_before_shift"}
!99 = distinct !{!99, !98, !"FLAC__lpc_max_prediction_value_before_shift: argument 0"}
!100 = distinct !{!100, !11, !12, !13}
!101 = distinct !{!101, !11, !13, !12}
!102 = !{!99}
!103 = distinct !{!103, !11}
end_hunk_0
