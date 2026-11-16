Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_affine?download=true
inline.NumInlined: 228
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn22warpaffine_bilinear_c4EPKhiiiPhiiiPKfij:bb.a
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !15
  %.sroa.gep752 = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %.sroa.gep753 = getelementptr inbounds nuw i8, ptr %i.oc, i64 2 ; 4 uses
  %.0433.sroa.sel754 = select i1 %or.cond505, ptr %.sroa.gep752, ptr %.sroa.gep753
  %i.qo = load i8, ptr %.0433.sroa.sel754, align 1, !tbaa !15
  %i.qp = zext i8 %i.qo to i32
  %i.qq = mul nuw nsw i32 %i.of, %i.qp
  %.sroa.gep760 = getelementptr inbounds nuw i8, ptr %i.oo, i64 6
  %.0432.sroa.sel762 = select i1 %or.cond506, ptr %.sroa.gep760, ptr %.sroa.gep753
  %i.qr = load i8, ptr %.0432.sroa.sel762, align 1, !tbaa !15
  %i.qs = zext i8 %i.qr to i32
  %i.qt = mul nuw nsw i32 %i.od, %i.qs
  %i.qu = add nuw nsw i32 %i.qt, %i.qq
  %i.qv = lshr i32 %i.qu, 5
  %i.qw = mul nuw nsw i32 %i.qv, %i.og
  %.sroa.gep768 = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %.0431.sroa.sel770 = select i1 %or.cond507, ptr %.sroa.gep768, ptr %.sroa.gep753
  %i.qx = load i8, ptr %.0431.sroa.sel770, align 1, !tbaa !15
  %i.qy = zext i8 %i.qx to i32
  %i.qz = mul nuw nsw i32 %i.of, %i.qy
  %.sroa.gep776 = getelementptr inbounds nuw i8, ptr %i.ot, i64 6
  %.0.sroa.sel778 = select i1 %or.cond508, ptr %.sroa.gep776, ptr %.sroa.gep753
  %i.ra = load i8, ptr %.0.sroa.sel778, align 1, !tbaa !15
  %i.rb = zext i8 %i.ra to i32
  %i.rc = mul nuw nsw i32 %i.od, %i.rb
  %i.rd = add nuw nsw i32 %i.rc, %i.qz
  %i.re = lshr i32 %i.rd, 5
  %i.rf = mul nuw nsw i32 %i.re, %i.oe
  %i.rg = add nuw nsw i32 %i.rf, %i.qw
  %i.rh = lshr i32 %i.rg, 15
  %i.ri = trunc nuw i32 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.5813, i64 2
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !15
  %.sroa.gep750 = getelementptr inbounds nuw i8, ptr %i.oo, i64 3
  %.sroa.gep751 = getelementptr inbounds nuw i8, ptr %i.oc, i64 3 ; 4 uses
  %.0433.sroa.sel = select i1 %or.cond505, ptr %.sroa.gep750, ptr %.sroa.gep751
  %i.rk = load i8, ptr %.0433.sroa.sel, align 1, !tbaa !15
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nuw nsw i32 %i.of, %i.rl
  %.sroa.gep758 = getelementptr inbounds nuw i8, ptr %i.oo, i64 7
  %.0432.sroa.sel = select i1 %or.cond506, ptr %.sroa.gep758, ptr %.sroa.gep751
  %i.rn = load i8, ptr %.0432.sroa.sel, align 1, !tbaa !15
  %i.ro = zext i8 %i.rn to i32
  %i.rp = mul nuw nsw i32 %i.od, %i.ro
  %i.rq = add nuw nsw i32 %i.rp, %i.rm
  %i.rr = lshr i32 %i.rq, 5
  %i.rs = mul nuw nsw i32 %i.rr, %i.og
  %.sroa.gep766 = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %.0431.sroa.sel = select i1 %or.cond507, ptr %.sroa.gep766, ptr %.sroa.gep751
  %i.rt = load i8, ptr %.0431.sroa.sel, align 1, !tbaa !15
  %i.ru = zext i8 %i.rt to i32
  %i.rv = mul nuw nsw i32 %i.of, %i.ru
  %.sroa.gep774 = getelementptr inbounds nuw i8, ptr %i.ot, i64 7
  %.0.sroa.sel = select i1 %or.cond508, ptr %.sroa.gep774, ptr %.sroa.gep751
  %i.rw = load i8, ptr %.0.sroa.sel, align 1, !tbaa !15
  %i.rx = zext i8 %i.rw to i32
  %i.ry = mul nuw nsw i32 %i.od, %i.rx
  %i.rz = add nuw nsw i32 %i.ry, %i.rv
  %i.sa = lshr i32 %i.rz, 5
  %i.sb = mul nuw nsw i32 %i.sa, %i.oe
  %i.sc = add nuw nsw i32 %i.sb, %i.rs
  %i.sd = lshr i32 %i.sc, 15
  %i.se = trunc nuw i32 %i.sd to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink882 = phi i8 [ %i.se, %bb.s ], [ %i.nz, %bb.q ]
  %i.sf = getelementptr inbounds nuw i8, ptr %.5813, i64 3
  store i8 %.sink882, ptr %i.sf, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.sg = getelementptr inbounds nuw i8, ptr %.5813, i64 4 ; 2 uses
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond847.not = icmp eq i64 %indvars.iv.next844, %wide.trip.count846
  br i1 %exitcond847.not, label %._crit_edge, label %.lr.ph814, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.t, %.preheader797
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader797 ], [ %i.sg, %bb.t ]
  %i.sh = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.aw
  %i.si = add nuw nsw i32 %.0444816, 1            ; 2 uses
  %exitcond848.not = icmp eq i32 %i.si, %6
  br i1 %exitcond848.not, label %._crit_edge819, label %bb.c, !llvm.loop !45

._crit_edge819:                                   ; preds = %._crit_edge, %.preheader798
  %.not.i.i.i546 = icmp eq ptr %.sroa.0701.0877, null
  br i1 %.not.i.i.i546, label %_ZNSt6vectorIiSaIiEED2Ev.exit547, label %bb.u

bb.u:                                             ; preds = %._crit_edge819
  %i.sj = ptrtoint ptr %.sroa.0701.0877 to i64
  %i.sk = sub i64 %.sroa.14.0875, %i.sj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0701.0877, i64 noundef %i.sk) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit547

_ZNSt6vectorIiSaIiEED2Ev.exit547:                 ; preds = %._crit_edge819, %bb.u
  %.not.i.i.i548 = icmp eq ptr %.sroa.0709.0787871, null
  br i1 %.not.i.i.i548, label %_ZNSt6vectorIiSaIiEED2Ev.exit549, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit547
  %i.sl = ptrtoint ptr %.sroa.0709.0787871 to i64
  %i.sm = sub i64 %.sroa.15.0785873, %i.sl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0709.0787871, i64 noundef %i.sm) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit549

_ZNSt6vectorIiSaIiEED2Ev.exit549:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit547, %bb.v
  ret void

.preheader.preheader.rtvec:                       ; preds = %.preheader.preheader
  %i.sn = load <4 x i8>, ptr %i.a, align 4, !tbaa !15
  %i.so = shufflevector <4 x i8> %i.sn, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <16 x i8> %i.so, ptr %.1809, align 1, !tbaa !15
  %i.sp = getelementptr inbounds nuw i8, ptr %.1809, i64 16
  store <16 x i8> %i.so, ptr %i.sp, align 1, !tbaa !15
  br label %.loopexit795

.preheader.preheader.rtscalar:                    ; preds = %.preheader.preheader
  %i.sq = load i8, ptr %i.a, align 4, !tbaa !15   ; 8 uses
  store i8 %i.sq, ptr %.1809, align 1, !tbaa !15
  %i.sr = load i8, ptr %i.at, align 1, !tbaa !15  ; 8 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1809, i64 1
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !15
  %i.st = load i8, ptr %i.au, align 2, !tbaa !15  ; 8 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.1809, i64 2
  store i8 %i.st, ptr %i.su, align 1, !tbaa !15
  %i.sv = load i8, ptr %i.av, align 1, !tbaa !15  ; 8 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.1809, i64 3
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !15
  %i.sx = getelementptr inbounds nuw i8, ptr %.1809, i64 4
  store i8 %i.sq, ptr %i.sx, align 1, !tbaa !15
  %i.sy = getelementptr inbounds nuw i8, ptr %.1809, i64 5
  store i8 %i.sr, ptr %i.sy, align 1, !tbaa !15
  %i.sz = getelementptr inbounds nuw i8, ptr %.1809, i64 6
  store i8 %i.st, ptr %i.sz, align 1, !tbaa !15
  %i.ta = getelementptr inbounds nuw i8, ptr %.1809, i64 7
  store i8 %i.sv, ptr %i.ta, align 1, !tbaa !15
  %i.tb = getelementptr inbounds nuw i8, ptr %.1809, i64 8
  store i8 %i.sq, ptr %i.tb, align 1, !tbaa !15
  %i.tc = getelementptr inbounds nuw i8, ptr %.1809, i64 9
  store i8 %i.sr, ptr %i.tc, align 1, !tbaa !15
  %i.td = getelementptr inbounds nuw i8, ptr %.1809, i64 10
  store i8 %i.st, ptr %i.td, align 1, !tbaa !15
  %i.te = getelementptr inbounds nuw i8, ptr %.1809, i64 11
  store i8 %i.sv, ptr %i.te, align 1, !tbaa !15
  %i.tf = getelementptr inbounds nuw i8, ptr %.1809, i64 12
  store i8 %i.sq, ptr %i.tf, align 1, !tbaa !15
  %i.tg = getelementptr inbounds nuw i8, ptr %.1809, i64 13
  store i8 %i.sr, ptr %i.tg, align 1, !tbaa !15
  %i.th = getelementptr inbounds nuw i8, ptr %.1809, i64 14
  store i8 %i.st, ptr %i.th, align 1, !tbaa !15
  %i.ti = getelementptr inbounds nuw i8, ptr %.1809, i64 15
  store i8 %i.sv, ptr %i.ti, align 1, !tbaa !15
  %i.tj = getelementptr inbounds nuw i8, ptr %.1809, i64 16
  store i8 %i.sq, ptr %i.tj, align 1, !tbaa !15
  %i.tk = getelementptr inbounds nuw i8, ptr %.1809, i64 17
  store i8 %i.sr, ptr %i.tk, align 1, !tbaa !15
  %i.tl = getelementptr inbounds nuw i8, ptr %.1809, i64 18
  store i8 %i.st, ptr %i.tl, align 1, !tbaa !15
  %i.tm = getelementptr inbounds nuw i8, ptr %.1809, i64 19
  store i8 %i.sv, ptr %i.tm, align 1, !tbaa !15
  %i.tn = getelementptr inbounds nuw i8, ptr %.1809, i64 20
  store i8 %i.sq, ptr %i.tn, align 1, !tbaa !15
  %i.to = getelementptr inbounds nuw i8, ptr %.1809, i64 21
  store i8 %i.sr, ptr %i.to, align 1, !tbaa !15
  %i.tp = getelementptr inbounds nuw i8, ptr %.1809, i64 22
  store i8 %i.st, ptr %i.tp, align 1, !tbaa !15
  %i.tq = getelementptr inbounds nuw i8, ptr %.1809, i64 23
  store i8 %i.sv, ptr %i.tq, align 1, !tbaa !15
  %i.tr = getelementptr inbounds nuw i8, ptr %.1809, i64 24
  store i8 %i.sq, ptr %i.tr, align 1, !tbaa !15
  %i.ts = getelementptr inbounds nuw i8, ptr %.1809, i64 25
  store i8 %i.sr, ptr %i.ts, align 1, !tbaa !15
  %i.tt = getelementptr inbounds nuw i8, ptr %.1809, i64 26
  store i8 %i.st, ptr %i.tt, align 1, !tbaa !15
  %i.tu = getelementptr inbounds nuw i8, ptr %.1809, i64 27
  store i8 %i.sv, ptr %i.tu, align 1, !tbaa !15
  %i.tv = getelementptr inbounds nuw i8, ptr %.1809, i64 28
  store i8 %i.sq, ptr %i.tv, align 1, !tbaa !15
  %i.tw = getelementptr inbounds nuw i8, ptr %.1809, i64 29
  store i8 %i.sr, ptr %i.tw, align 1, !tbaa !15
  %i.tx = getelementptr inbounds nuw i8, ptr %.1809, i64 30
  store i8 %i.st, ptr %i.tx, align 1, !tbaa !15
  %i.ty = getelementptr inbounds nuw i8, ptr %.1809, i64 31
  store i8 %i.sv, ptr %i.ty, align 1, !tbaa !15
  br label %.loopexit795
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn28warpaffine_bilinear_yuv420spEPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x float], align 16             ; 6 uses
  %.sroa.2.0.extract.shift = lshr i32 %8, 8
  %.sroa.034.0.insert.ext = and i32 %8, 255
  tail call void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %4, ptr noundef readonly %6, i32 noundef %7, i32 noundef %.sroa.034.0.insert.ext)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load <4 x float>, ptr %6, align 4, !tbaa !10 ; 2 uses
  %i.c = fmul reassoc arcp contract afn <4 x float> %i.b, <float poison, float poison, float 5.000000e-01, float poison>
  %9 = shufflevector <4 x float> %i.b, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x float> %9, ptr %i.a, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = load float, ptr %i.e, align 4, !tbaa !10
  store float %10, ptr %i.d, align 16, !tbaa !10
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %13 = load float, ptr %12, align 4, !tbaa !10
  %14 = fmul fast float %13, 5.000000e-01
  store float %14, ptr %11, align 4, !tbaa !10
  %i.f = mul nsw i32 %2, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = mul nsw i32 %5, %4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  %i.l = sdiv i32 %1, 2                           ; 2 uses
  %i.m = sdiv i32 %2, 2
  %i.n = sdiv i32 %4, 2                           ; 2 uses
  %i.o = sdiv i32 %5, 2
  %.sroa.036.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.p = shl nsw i32 %i.l, 1
  %i.q = shl nsw i32 %i.n, 1
  call void @_ZN4ncnn22warpaffine_bilinear_c2EPKhiiiPhiiiPKfij(ptr noundef readonly %i.h, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.p, ptr noundef %i.k, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.q, ptr noundef nonnull readonly %i.a, i32 noundef %7, i32 noundef %.sroa.036.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !13, !12}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !13, !12}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !13, !12}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11, !12, !13}
!40 = distinct !{!40, !11, !13, !12}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
