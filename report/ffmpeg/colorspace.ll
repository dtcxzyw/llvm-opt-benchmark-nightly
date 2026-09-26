Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/colorspace?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_fill_rgb2xyz_table:bb.a
  %i.cn = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.co = fneg nsz <2 x double> %i.bu
  %i.cp = shufflevector <2 x double> %i.cn, <2 x double> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul nsz <2 x double> %i.cp, %i.cl
  %i.cr = fmul nsz <2 x double> %i.cd, %i.cl
  %i.cs = fmul nsz double %i.bd, %i.ci
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double %i.bb, double %i.cs)
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.cj, double %i.be, double %i.ct) ; 3 uses
  %i.cv = fmul nsz <2 x double> %i.bf, %i.cq
  %i.cw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.bg, <2 x double> %i.cv)
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.bi, <2 x double> %i.cw) ; 4 uses
  %i.cy = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.da = fmul nsz <2 x double> %i.ak, %i.cz
  store <2 x double> %i.da, ptr %2, align 8, !tbaa !10
  %i.db = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = fmul nsz <2 x double> %i.bl, %i.db      ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  store double %i.dd, ptr %i.i, align 8, !tbaa !10
  store double %i.cu, ptr %i.j, align 8, !tbaa !10
  store <2 x double> %i.cx, ptr %i.k, align 8, !tbaa !10
  %i.de = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.df = insertelement <2 x double> %i.de, double %i.cu, i64 0
  %i.dg = fmul nsz <2 x double> %i.ax, %i.df
  store <2 x double> %i.dg, ptr %i.l, align 8, !tbaa !10
  %i.dh = extractelement <2 x double> %i.dc, i64 1
  store double %i.dh, ptr %i.m, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_fill_rgb2yuv_table(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 72)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 4          ; 2 uses
  %i.b = trunc <2 x i64> %i.a to <2 x i32>
  %i.c = lshr <2 x i64> %i.a, splat (i64 32)
  %i.d = trunc nuw <2 x i64> %i.c to <2 x i32>
  %i.e = sitofp <2 x i32> %i.b to <2 x double>
  %i.f = sitofp <2 x i32> %i.d to <2 x double>
  %i.g = fdiv nsz <2 x double> %i.e, %i.f         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i43 = trunc i64 %i.i to i32
  %.sroa.2.0.extract.shift.i44 = lshr i64 %i.i, 32
  %.sroa.2.0.extract.trunc.i45 = trunc nuw i64 %.sroa.2.0.extract.shift.i44 to i32
  %i.j = sitofp nsz i32 %.sroa.0.0.extract.trunc.i43 to double
  %i.k = sitofp nsz i32 %.sroa.2.0.extract.trunc.i45 to double
  %i.l = fdiv nsz double %i.j, %i.k               ; 5 uses
  %i.m = extractelement <2 x double> %i.g, i64 0  ; 3 uses
  %i.n = fcmp nsz oeq double %i.m, 2.500000e-01
  %i.o = extractelement <2 x double> %i.g, i64 1  ; 4 uses
  %i.p = fcmp nsz oeq double %i.o, 5.000000e-01
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  %i.q = fcmp nsz oeq double %i.l, 2.500000e-01
  %or.cond3 = select i1 %or.cond, i1 %i.q, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(72) @ycgco_matrix, i64 72, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = fcmp nsz oeq double %i.m, 1.000000e+00
  %i.s = fcmp nsz oeq double %i.o, 1.000000e+00
  %or.cond5 = select i1 %i.r, i1 %i.s, i1 false
  %i.t = fcmp nsz oeq double %i.l, 1.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %i.t, i1 false
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(72) @gbr_matrix, i64 72, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store double %i.m, ptr %1, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.o, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.l, ptr %i.v, align 8, !tbaa !10
  %i.w = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x double> %i.w, double %i.l, i64 0
  %i.y = fadd nsz <2 x double> %i.x, splat (double -1.000000e+00)
  %i.z = fdiv nsz <2 x double> splat (double 5.000000e-01), %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x double> %i.g, %i.ab
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x double> splat (double 5.000000e-01), ptr %i.ad, align 8, !tbaa !10
  %i.ae = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.af = fmul nsz double %i.o, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.af, ptr %i.ag, align 8, !tbaa !10
  %i.ah = fmul nsz double %i.ae, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.ah, ptr %i.ai, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define double @ff_determine_signal_peak(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 14) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = uitofp nsz i32 %i.d to float
  %i.f = fdiv nsz float %i.e, 1.000000e+02
  %i.g = fpext nsz float %i.f to double
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi nsz double [ %i.g, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.h = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 11) #6 ; 2 uses
  %i.i = fcmp nsz oeq double %.0, 0.000000e+00
  %i.j = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = load i64, ptr %i.o, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r
  %i.t = fdiv nsz double %i.s, 1.000000e+02
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.2 = phi nsz double [ %.0, %bb.c ], [ %i.t, %bb.e ], [ %.0, %bb.d ] ; 2 uses
  %i.u = fcmp nsz une double %.2, 0.000000e+00
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29
  %i.x = icmp eq i32 %i.w, 16
  %i.y = select i1 %i.x, double 1.000000e+02, double 1.000000e+01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi nsz double [ %.2, %bb.f ], [ %i.y, %bb.g ]
  ret double %.3
}

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @ff_update_hdr_metadata(ptr noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 14) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = fmul nsz double %1, 1.000000e+02
  %i.e = fptoui double %i.d to i32
  store i32 %i.e, ptr %i.c, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 11) #6 ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.l = fmul nsz double %1, 1.000000e+02
  %i.m = tail call i64 @av_d2q(double noundef %i.l, i32 noundef 10000) #7
  store i64 %i.m, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!15 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!16 = !{!"AVFrameSideData", !6, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32}
!17 = !{!16, !12, i64 8}
!18 = !{!"AVContentLightMetadata", !6, i64 0, !6, i64 4}
!19 = !{!18, !6, i64 0}
!20 = !{!"AVRational", !6, i64 0, !6, i64 4}
!21 = !{!"AVMasteringDisplayMetadata", !5, i64 0, !5, i64 48, !20, i64 64, !20, i64 72, !6, i64 80, !6, i64 84}
!22 = !{!21, !6, i64 84}
!23 = !{!"any p2 pointer", !11, i64 0}
!24 = !{!"p2 omnipotent char", !23, i64 0}
!25 = !{!"p2 _ZTS11AVBufferRef", !23, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !23, i64 0}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !11, i64 16}
!28 = !{!"AVFrame", !5, i64 0, !5, i64 64, !24, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !20, i64 124, !13, i64 136, !13, i64 144, !20, i64 152, !6, i64 160, !11, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !25, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !14, i64 312, !6, i64 320, !15, i64 328, !15, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !11, i64 376, !27, i64 384, !13, i64 408, !6, i64 416}
!29 = !{!28, !6, i64 288}
end_hunk_0
