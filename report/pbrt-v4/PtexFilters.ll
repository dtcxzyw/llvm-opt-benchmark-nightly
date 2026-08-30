Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexFilters?download=true
begin_hunk_0_@_ZN4Ptex4v2_416PtexWidth4Filter15buildKernelAxisERaRiS3_Pfffi:bb.a
  %i.fy = trunc nuw nsw i64 %indvars.iv185 to i32
  %i.fz = uitofp nneg i32 %i.fy to float
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fl, float %i.fs) ; 3 uses
  %i.gb = fadd float %i.fl, %i.ga                 ; 2 uses
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = fmul float %i.gc, 5.000000e-01
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !42
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !44
  %i.gg = tail call noundef float %i.ge(float noundef %i.ga, ptr noundef %i.gf)
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !42
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !44
  %i.gj = tail call noundef float %i.gh(float noundef %i.gb, ptr noundef %i.gi)
  %i.gk = load ptr, ptr %i.fu, align 8, !tbaa !42
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !44
  %i.gm = tail call noundef float %i.gk(float noundef %i.gd, ptr noundef %i.gl)
  %i.gn = fmul float %i.s, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv185
  %i.gp = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.gj, i64 1
  %i.gr = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.fx, <2 x float> %i.gs)
  store <2 x float> %i.gt, ptr %i.go, align 4, !tbaa !31
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.gu = load i32, ptr %3, align 4, !tbaa !28
  %i.gv = trunc nuw i64 %indvars.iv.next186 to i32
  %i.gw = icmp sgt i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.r, label %.loopexit, !llvm.loop !71

bb.s:                                             ; preds = %bb.p
  store i32 %i.fg, ptr %2, align 4, !tbaa !28
  %i.gx = sub nsw i32 %i.fj, %i.fg                ; 2 uses
  store i32 %i.gx, ptr %3, align 4, !tbaa !28
  %i.gy = sitofp i32 %i.fg to float
  %i.gz = fsub float %i.gy, %i.fb
  %i.ha = fdiv float %i.gz, %i.fc
  %i.hb = icmp sgt i32 %i.gx, 0
  br i1 %i.hb, label %.lr.ph174, label %.loopexit

.lr.ph174:                                        ; preds = %bb.s
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph174, %bb.t
  %indvars.iv182 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next183, %bb.t ] ; 3 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !42
  %i.hf = trunc nuw nsw i64 %indvars.iv182 to i32
  %i.hg = uitofp nneg i32 %i.hf to float
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.fl, float %i.ha)
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !44
  %i.hj = tail call noundef float %i.he(float noundef %i.hh, ptr noundef %i.hi)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv182
  store float %i.hj, ptr %i.hk, align 4, !tbaa !31
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.hl = load i32, ptr %3, align 4, !tbaa !28
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next183, %i.hm
  br i1 %i.hn, label %bb.t, label %.loopexit, !llvm.loop !72

.loopexit.sink.split:                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1
  %.sink200 = phi i64 [ 12, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1 ], [ 4, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167 ]
  %.sink = phi float [ %i.ep, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1 ], [ %i.fa, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 %.sink200
  store float %.sink, ptr %i.ho, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit, %bb.t, %bb.r, %.loopexit.sink.split, %bb.c, %bb.s, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZN4Ptex4v2_417PtexBicubicFilter8kernelFnEfPKf(float noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @llvm.fabs.f32(float %0) ; 7 uses
  %i.b = fcmp olt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %1, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !31
  %i.f = tail call float @llvm.fmuladd.f32(float %i.c, float %i.a, float %i.e)
  %i.g = fmul float %i.a, %i.f
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp olt float %i.a, 2.000000e+00
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !31
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.a, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.a, float %i.o)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink21 = phi i64 [ 24, %bb.d ], [ 8, %bb.b ]
  %.sink = phi float [ %i.p, %bb.d ], [ %i.g, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sink21
  %i.r = load float, ptr %i.q, align 4, !tbaa !31
  %i.s = tail call float @llvm.fmuladd.f32(float %.sink, float %i.a, float %i.r)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.s, %.sink.split ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_417PtexBicubicFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTriD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTri7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTri4evalEPfiiiffffffff(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %3, 1
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %4, 0
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = icmp slt i32 %4, %i.i
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %4)
  %i.o = load i8, ptr %i.n, align 4, !tbaa !51
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 4 uses
  %i.s = sitofp i32 %i.q to float                 ; 2 uses
  %i.t = fmul float %5, %i.s                      ; 2 uses
  %i.u = fmul float %6, %i.s                      ; 2 uses
  %i.v = fptosi float %i.t to i32
  %i.w = tail call noundef i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.r) ; 3 uses
  %i.y = fptosi float %i.u to i32
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.r) ; 3 uses
  %i.ab = uitofp nneg i32 %i.x to float
  %i.ac = fsub float %i.t, %i.ab
  %i.ad = uitofp nneg i32 %i.aa to float
  %i.ae = fsub float %i.u, %i.ad
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = fcmp ugt float %i.af, 1.000000e+00
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %4, i32 noundef %i.x, i32 noundef %i.aa, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.al = sub nsw i32 %i.r, %i.aa
  %i.am = sub nsw i32 %i.r, %i.x
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %4, i32 noundef %i.al, i32 noundef %i.am, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !13, i64 4}
!12 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !6, i64 0, !13, i64 4, !14, i64 8, !15, i64 12, !14, i64 16}
!13 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !7, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!17, !19, i64 8}
!17 = !{!"_ZTSN4Ptex4v2_415PtexPointFilterE", !18, i64 0, !19, i64 8}
!18 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!19 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!22, !19, i64 8}
!22 = !{!"_ZTSN4Ptex4v2_419PtexSeparableFilterE", !18, i64 0, !19, i64 8, !12, i64 16, !23, i64 40, !15, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !24, i64 64, !25, i64 68, !25, i64 72, !26, i64 76}
!23 = !{!"p1 float", !20, i64 0}
!24 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !7, i64 0}
!25 = !{!"_ZTSN4Ptex4v2_410BorderModeE", !7, i64 0}
!26 = !{!"_ZTSN4Ptex4v2_414EdgeFilterModeE", !7, i64 0}
!27 = !{i64 0, i64 4, !28, i64 4, i64 4, !29, i64 8, i64 1, !30, i64 12, i64 4, !31, i64 16, i64 1, !30}
!28 = !{!6, !6, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!14, !14, i64 0}
!31 = !{!15, !15, i64 0}
!32 = distinct !{null}
!33 = !{!22, !6, i64 60}
!34 = !{!22, !24, i64 64}
!35 = !{!22, !25, i64 68}
!36 = !{!22, !25, i64 72}
!37 = !{!22, !26, i64 76}
!38 = !{!22, !6, i64 16}
!39 = !{!22, !14, i64 32}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = !{!43, !20, i64 80}
!43 = !{!"_ZTSN4Ptex4v2_416PtexWidth4FilterE", !22, i64 0, !20, i64 80, !23, i64 88}
!44 = !{!43, !23, i64 88}
!45 = !{!12, !15, i64 12}
!46 = distinct !{null}
!47 = !{!48, !19, i64 8}
!48 = !{!"_ZTSN4Ptex4v2_418PtexPointFilterTriE", !18, i64 0, !19, i64 8}
!49 = !{!50, !19, i64 8}
!50 = !{!"_ZTSN4Ptex4v2_418PtexTriangleFilterE", !18, i64 0, !19, i64 8, !12, i64 16, !23, i64 40, !15, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !24, i64 64}
!51 = !{!52, !7, i64 0}
!52 = !{!"_ZTSN4Ptex4v2_43ResE", !7, i64 0, !7, i64 1}
!53 = !{!52, !7, i64 1}
!54 = !{!55, !6, i64 12}
!55 = !{!"_ZTSN4Ptex4v2_419PtexSeparableKernelE", !52, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !23, i64 24, !23, i64 32, !7, i64 40, !7, i64 80, !6, i64 120}
!56 = !{!55, !6, i64 16}
!57 = !{!55, !23, i64 24}
!58 = !{!55, !23, i64 32}
!59 = distinct !{!59, !60, !61, !62}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = distinct !{!63, !60, !62, !61}
!64 = distinct !{!64, !60, !61, !62}
!65 = distinct !{!65, !60, !62, !61}
!66 = !{!7, !7, i64 0}
!67 = !{!22, !14, i64 24}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = distinct !{!70, !60}
!71 = distinct !{!71, !60}
!72 = distinct !{!72, !60}
end_hunk_0
