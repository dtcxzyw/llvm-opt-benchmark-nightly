Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_aux?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@TIFFDefaultTransferFunction:bb.a
  %i.n = icmp eq i16 %i.e, 1
  br i1 %i.n, label %._crit_edge.loopexit.epilog-lcssa, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.04859 = phi i64 [ 1, %.lr.ph.new ], [ %i.ad, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.o = uitofp nneg i64 %.04859 to double
  %i.p = fdiv double %i.o, %i.m
  %i.q = tail call double @pow(double noundef %i.p, double noundef 2.200000e+00) #8
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double 6.553500e+04, double 5.000000e-01)
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fptoui double %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.04859
  store i16 %i.t, ptr %i.u, align 2, !tbaa !31
  %i.v = add nuw nsw i64 %.04859, 1               ; 2 uses
  %i.w = uitofp nneg i64 %i.v to double
  %i.x = fdiv double %i.w, %i.m
  %i.y = tail call double @pow(double noundef %i.x, double noundef 2.200000e+00) #8
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 6.553500e+04, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptoui double %i.aa to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.v
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !31
  %i.ad = add nuw nsw i64 %.04859, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.epilog-lcssa, label %bb.d

._crit_edge.loopexit.epilog-lcssa:                ; preds = %.lr.ph, %bb.d
  %.04859.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = uitofp nneg i64 %.04859.epil.init to double
  %i.af = fdiv double %i.ae, %i.m
  %i.ag = tail call double @pow(double noundef %i.af, double noundef 2.200000e+00) #8
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double 6.553500e+04, double 5.000000e-01)
  %i.ai = tail call double @llvm.floor.f64(double %i.ah)
  %i.aj = fptoui double %i.ai to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.04859.epil.init
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.am = load i16, ptr %i.al, align 2, !tbaa !32
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !33
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.e, label %bb.o

bb.e:                                             ; preds = %._crit_edge
  %i.at = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.i) #8 ; 3 uses
  store ptr %i.at, ptr %i.c, align 8, !tbaa !30
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.at, ptr noundef %i.av, i64 noundef %i.i) #8
  %i.aw = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.i) #8 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !30
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.aw, ptr noundef %i.ay, i64 noundef %i.i) #8
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.az) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %.not57 = icmp eq ptr %i.ba, null
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.ba) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %.not58 = icmp eq ptr %i.bb, null
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.bb) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.g, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.g ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFDefaultRefBlackWhite(ptr noundef %0, ptr nofree noundef captures(none) initializes((296, 304)) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 24) #8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.a, ptr %i.b, align 8, !tbaa !34
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.e = load i16, ptr %i.d, align 2, !tbaa !59
  %i.f = icmp eq i16 %i.e, 6
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i16, ptr %i.h, align 4, !tbaa !29
  %i.j = zext nneg i16 %i.i to i64
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1
  %i.l = uitofp nneg i64 %i.k to float            ; 3 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !60
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.l, ptr %i.n, align 4, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.l, ptr %i.p, align 4, !tbaa !60
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x float> <float 1.280000e+02, float 2.550000e+02>, ptr %i.q, align 4, !tbaa !60
  store <4 x float> <float 0.000000e+00, float 2.550000e+02, float 1.280000e+02, float 2.550000e+02>, ptr %i.a, align 4, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.preheader ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_TIFFClampDoubleToFloat(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ogt double %0, f0x47EFFFFFE0000000
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, f0xC7EFFFFFE0000000
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptrunc double %0 to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %i.c, %bb.c ], [ f0x7F7FFFFF, %bb.a ], [ f0xFF7FFFFF, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @_TIFFClampDoubleToUInt32(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = fcmp olt double %0, f0x41EFFFFFFFE00000
  %spec.select6 = select i1 %1, double %0, double f0x41EFFFFFFFE00000
  %i.b = fptoui double %spec.select6 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_TIFFSeekOK(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = tail call i64 %i.c(ptr noundef %i.e, i64 noundef %1, i32 noundef 0) #8
  %i.g = icmp eq i64 %i.f, %1
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !9, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"p1 short", !9, i64 0}
!17 = !{!"p1 long", !9, i64 0}
!18 = !{!"", !13, i64 0, !13, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!19 = !{!"p1 float", !9, i64 0}
!20 = !{!"", !5, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !6, i64 60, !13, i64 64, !13, i64 66, !14, i64 72, !14, i64 80, !15, i64 88, !15, i64 92, !13, i64 96, !13, i64 98, !15, i64 100, !15, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !13, i64 140, !16, i64 144, !6, i64 152, !6, i64 156, !17, i64 160, !17, i64 168, !6, i64 176, !18, i64 184, !18, i64 216, !13, i64 248, !17, i64 256, !5, i64 264, !13, i64 268, !5, i64 272, !19, i64 296, !6, i64 304, !10, i64 312, !13, i64 320, !6, i64 324, !9, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !6, i64 360, !9, i64 368}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"p2 _ZTS10_TIFFField", !21, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !9, i64 0}
!24 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!25 = !{!"p1 _ZTS11client_info", !9, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !9, i64 0}
!27 = !{!"tiff", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !20, i64 72, !20, i64 448, !5, i64 824, !13, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !6, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !13, i64 888, !11, i64 896, !6, i64 904, !6, i64 908, !11, i64 912, !6, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !6, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !9, i64 1064, !10, i64 1072, !11, i64 1080, !11, i64 1088, !10, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !10, i64 1128, !11, i64 1136, !10, i64 1144, !11, i64 1152, !9, i64 1160, !9, i64 1168, !9, i64 1176, !9, i64 1184, !9, i64 1192, !9, i64 1200, !9, i64 1208, !9, i64 1216, !9, i64 1224, !22, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !6, i64 1360}
!28 = !{!27, !10, i64 0}
!29 = !{!20, !13, i64 44}
!30 = !{!16, !16, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!20, !13, i64 58}
!33 = !{!20, !13, i64 140}
!34 = !{!20, !19, i64 296}
!35 = !{!20, !6, i64 40}
!36 = !{!"p1 int", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!6, !6, i64 0}
!39 = !{!20, !13, i64 52}
!40 = !{!20, !13, i64 54}
!41 = !{!20, !13, i64 56}
!42 = !{!20, !6, i64 60}
!43 = !{!20, !13, i64 64}
!44 = !{!20, !13, i64 98}
!45 = !{!20, !13, i64 96}
!46 = !{!27, !10, i64 1072}
!47 = !{!"", !6, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!48 = !{!47, !6, i64 0}
!49 = !{!20, !16, i64 144}
!50 = !{!"p2 short", !21, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!20, !6, i64 36}
!53 = !{!20, !13, i64 46}
!54 = !{!20, !6, i64 24}
!55 = !{!"p2 float", !21, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!19, !19, i64 0}
!58 = !{!20, !13, i64 268}
!59 = !{!20, !13, i64 50}
!60 = !{!15, !15, i64 0}
!61 = !{!27, !9, i64 1200}
!62 = !{!27, !9, i64 1176}
end_hunk_0
