Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/AppState?download=true
inline.NumInlined: 17
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8AppState11resetCameraEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((712, 720)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 732
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !50
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i8, ptr %i.c, align 4, !tbaa !93, !range !94, !noundef !95
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %.v.i = select i1 %i.e, i64 56, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 4 uses
  %.v.i13 = select i1 %i.e, i64 68, i64 204
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i13 ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !51
  %i.i = load float, ptr %i.f, align 4, !tbaa !51
  %i.j = fsub float %i.h, %i.i                    ; 2 uses
  %i.k = fmul float %i.j, %i.j                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 4 uses
  store float %i.k, ptr %i.l, align 4, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !51
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = fadd float %i.k, %i.r                    ; 2 uses
  store float %i.s, ptr %i.l, align 4, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !51
  %i.x = fsub float %i.u, %i.w                    ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = fadd float %i.s, %i.y
  %sqrt = tail call float @llvm.sqrt.f32(float %i.z)
  %i.aa = fmul float %sqrt, 5.000000e-01          ; 5 uses
  store float %i.aa, ptr %i.l, align 4, !tbaa !50
  %i.ab = load float, ptr %i.g, align 4, !tbaa !51
  %i.ac = load float, ptr %i.f, align 4, !tbaa !51
  %i.ad = fadd float %i.ab, %i.ac
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = fadd float %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  store float %i.af, ptr %i.ag, align 8, !tbaa !51
  %i.ah = load float, ptr %i.m, align 4, !tbaa !51
  %i.ai = load float, ptr %i.o, align 4, !tbaa !51
  %i.aj = fadd float %i.ah, %i.ai
  %i.ak = fmul float %i.aj, 5.000000e-01
  %i.al = fadd float %i.aa, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 724
  store float %i.al, ptr %i.am, align 4, !tbaa !51
  %i.an = load float, ptr %i.t, align 4, !tbaa !51
  %i.ao = load float, ptr %i.v, align 4, !tbaa !51
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = fmul float %i.ap, 5.000000e-01
  %i.ar = fadd float %i.aa, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.ar, ptr %i.as, align 8, !tbaa !51
  %i.at = fmul float %i.aa, 3.000000e+00          ; 2 uses
  store float %i.at, ptr %i.l, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.au = phi float [ %.pre, %._crit_edge ], [ %i.at, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> <float 4.500000e+01, float -4.500000e+01>, ptr %i.av, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ax = fmul float %i.au, 1.000000e-01
  tail call void @glFogf(i32 noundef 2915, float noundef %i.ax) #4
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !50
  %i.az = fmul float %i.ay, 1.250000e+00
  tail call void @glFogf(i32 noundef 2916, float noundef %i.az) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @glFogf(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8AppState16updateWindowSizeEv(ptr noundef nonnull align 8 dereferenceable(936) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 164
  tail call void @SDL_GetWindowSize(ptr noundef %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %i.d = load ptr, ptr %0, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  tail call void @SDL_GL_GetDrawableSize(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #4
  %i.g = load i32, ptr %i.e, align 8, !tbaa !52
  %i.h = load i32, ptr %i.f, align 4, !tbaa !53
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %i.g, i32 noundef %i.h) #4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %i.i) #4
  tail call void @glMatrixMode(i32 noundef 5889) #4
  tail call void @glLoadIdentity() #4
  %i.j = load <2 x i32>, ptr %i.b, align 8, !tbaa !54
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = extractelement <2 x float> %i.k, i64 1
  %i.n = fdiv float %i.l, %i.m
  %i.o = fpext float %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.q = load float, ptr %i.p, align 4, !tbaa !50
  %i.r = fpext float %i.q to double
  tail call void @gluPerspective(double noundef 5.000000e+01, double noundef %i.o, double noundef 1.000000e+00, double noundef %i.r) #4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @glGetDoublev(i32 noundef 2983, ptr noundef nonnull %i.s) #4
  ret void
}

declare void @SDL_GetWindowSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_GL_GetDrawableSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

declare void @gluPerspective(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @glGetDoublev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK8AppState13updateUIScaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = load <2 x i32>, ptr %i.b, align 8, !tbaa !54
  %2 = sitofp <2 x i32> %1 to <2 x float>
  store <2 x float> %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !54
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = load <2 x i32>, ptr %i.b, align 8, !tbaa !54
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fdiv <2 x float> %i.g, %i.i
  store <2 x float> %i.j, ptr %i.e, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x double], align 16           ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @glGetDoublev(i32 noundef 2982, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = fpext float %1 to double
  %i.f = fpext float %2 to double
  %i.g = fpext float %3 to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = call i32 @gluProject(double noundef %i.e, double noundef %i.f, double noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #4 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = sitofp i32 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !97
  %i.p = sitofp i32 %i.o to float
  %i.q = fdiv float %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  %i.t = sitofp i32 %i.s to float
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.v = load i32, ptr %i.u, align 4, !tbaa !98
  %i.w = sitofp i32 %i.v to float                 ; 2 uses
  %i.x = fdiv float %i.t, %i.w
  %i.y = load double, ptr %i.b, align 8, !tbaa !100
  %i.z = fptrunc double %i.y to float
  %i.aa = fdiv float %i.z, %i.q
  store float %i.aa, ptr %4, align 4, !tbaa !51
  %i.ab = load double, ptr %i.c, align 8, !tbaa !100
  %i.ac = fpext float %i.x to double
  %i.ad = fdiv double %i.ab, %i.ac
  %i.ae = fptrunc double %i.ad to float
  %i.af = fsub float %i.w, %i.ae
  store float %i.af, ptr %5, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare i32 @gluProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS9InputGeom", !12, i64 0}
!14 = !{!"p1 _ZTS10SDL_Window", !12, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"_ZTS9rcContext", !15, i64 8, !15, i64 9}
!17 = !{!"_ZTSSt5arrayIlLm28EE", !8, i64 0}
!18 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !21, i64 0}
!23 = !{!"_ZTS12BuildContext", !16, i64 0, !17, i64 16, !17, i64 240, !22, i64 464}
!24 = !{!"_ZTSSt10_Head_baseILm0EP9InputGeomLb0EE", !13, i64 0}
!25 = !{!"_ZTSSt11_Tuple_implILm0EJP9InputGeomSt14default_deleteIS0_EEE", !24, i64 0}
!26 = !{!"_ZTSSt5tupleIJP9InputGeomSt14default_deleteIS0_EEE", !25, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_implI9InputGeomSt14default_deleteIS0_EE", !26, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_dataI9InputGeomSt14default_deleteIS0_ELb1ELb1EE", !27, i64 0}
!29 = !{!"_ZTSSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE", !28, i64 0}
!30 = !{!"p1 _ZTS6Sample", !12, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EP6SampleLb0EE", !30, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJP6SampleSt14default_deleteIS0_EEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJP6SampleSt14default_deleteIS0_EEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implI6SampleSt14default_deleteIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataI6SampleSt14default_deleteIS0_ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrI6SampleSt14default_deleteIS0_EE", !35, i64 0}
!37 = !{!"p1 _ZTS8TestCase", !12, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EP8TestCaseLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP8TestCaseSt14default_deleteIS0_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJP8TestCaseSt14default_deleteIS0_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implI8TestCaseSt14default_deleteIS0_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataI8TestCaseSt14default_deleteIS0_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI8TestCaseSt14default_deleteIS0_EE", !42, i64 0}
!44 = !{!"float", !8, i64 0}
!45 = !{!"p1 omnipotent char", !12, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!47 = !{!"long", !8, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !47, i64 8, !8, i64 16}
!49 = !{!"_ZTS8AppState", !14, i64 0, !12, i64 8, !8, i64 16, !8, i64 144, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !23, i64 176, !29, i64 664, !36, i64 672, !43, i64 680, !44, i64 688, !9, i64 692, !8, i64 696, !8, i64 704, !8, i64 712, !8, i64 720, !44, i64 732, !8, i64 736, !44, i64 744, !44, i64 748, !44, i64 752, !44, i64 756, !44, i64 760, !44, i64 764, !44, i64 768, !15, i64 772, !15, i64 773, !15, i64 774, !8, i64 776, !8, i64 788, !9, i64 800, !48, i64 808, !15, i64 840, !15, i64 841, !15, i64 842, !15, i64 843, !9, i64 844, !22, i64 848, !48, i64 872, !48, i64 904}
!50 = !{!49, !44, i64 732}
!51 = !{!44, !44, i64 0}
!52 = !{!49, !9, i64 168}
!53 = !{!49, !9, i64 172}
!54 = !{!9, !9, i64 0}
!55 = !{!13, !13, i64 0}
!56 = !{!"_ZTS13BuildSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !9, i64 40, !44, i64 44, !44, i64 48, !9, i64 52, !8, i64 56, !8, i64 68, !44, i64 80}
!57 = !{!"p1 float", !12, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIfSaIfEE", !60, i64 0}
!62 = !{!"p1 int", !12, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIiSaIiEE", !65, i64 0}
!67 = !{!"_ZTS4Mesh", !61, i64 0, !66, i64 24, !61, i64 48}
!68 = !{!"p1 _ZTSN15PartitionedMesh4NodeE", !12, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN15PartitionedMesh4NodeESaIS1_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN15PartitionedMesh4NodeESaIS1_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN15PartitionedMesh4NodeESaIS1_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN15PartitionedMesh4NodeESaIS1_EE", !71, i64 0}
!73 = !{!"_ZTS15PartitionedMesh", !72, i64 0, !9, i64 24, !66, i64 32, !9, i64 56}
!74 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIhSaIhEE", !76, i64 0}
!78 = !{!"p1 short", !12, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseItSaItEE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorItSaItEE", !81, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIjSaIjEE", !85, i64 0}
!87 = !{!"p1 _ZTS12ConvexVolume", !12, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseI12ConvexVolumeSaIS0_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseI12ConvexVolumeSaIS0_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseI12ConvexVolumeSaIS0_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorI12ConvexVolumeSaIS0_EE", !90, i64 0}
!92 = !{!"_ZTS9InputGeom", !56, i64 0, !15, i64 84, !48, i64 88, !67, i64 120, !8, i64 192, !8, i64 204, !73, i64 216, !61, i64 280, !61, i64 304, !77, i64 328, !77, i64 352, !82, i64 376, !86, i64 400, !91, i64 424}
!93 = !{!92, !15, i64 84}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!49, !14, i64 0}
!97 = !{!49, !9, i64 160}
!98 = !{!49, !9, i64 164}
!99 = !{!"double", !8, i64 0}
!100 = !{!99, !99, i64 0}
end_hunk_0
