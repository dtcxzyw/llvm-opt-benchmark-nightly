Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientdynamicinfo?download=true
inline.NumInlined: 45
inline.NumDeleted: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.ClientDynamicInfo = type <{ %"class.core::vector2d", float, float, %"class.core::vector2d.0", i8, [3 x i8] }>
%"class.core::vector2d" = type { i32, i32 }
%"class.core::vector2d.0" = type { float, float }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@g_settings = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"gui_scaling\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hud_scaling\00", align 1
@g_touchcontrols = external local_unnamed_addr global ptr, align 8
@_ZN15RenderingEngine11s_singletonE = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"s_singleton\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/luanti/luanti/src/client/renderingengine.h\00", align 1
@__PRETTY_FUNCTION__._ZN15RenderingEngine13getWindowSizeEv = private unnamed_addr constant [46 x i8] c"static v2u32 RenderingEngine::getWindowSize()\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ClientDynamicInfo10getCurrentEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ClientDynamicInfo) align 4 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN15RenderingEngine13getWindowSizeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine13getWindowSizeEv) #5
  unreachable

_ZN15RenderingEngine13getWindowSizeEv.exit:       ; preds = %bb.a
  %i.b = tail call i64 @_ZNK15RenderingEngine14_getWindowSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 4 uses
  %i.c = tail call nsz noundef float @_ZN15RenderingEngine17getDisplayDensityEv() ; 3 uses
  %i.d = load ptr, ptr @g_settings, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.g, align 1, !tbaa !20
  %i.h = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, float noundef 5.000000e-01, float noundef 2.000000e+01)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %_ZN15RenderingEngine13getWindowSizeEv.exit
  %i.i = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.e, align 8, !tbaa !20
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.m = load ptr, ptr @g_settings, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.n, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.p, align 1, !tbaa !20
  %i.q = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef 5.000000e-01, float noundef 2.000000e+01)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  %i.t = load i64, ptr %i.n, align 8, !tbaa !20
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.v = fmul nsz float %i.c, %i.h
  %i.w = fmul nsz float %i.c, %i.q
  %i.x = load ptr, ptr @g_touchcontrols, align 8, !tbaa !23
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i8
  store i64 %i.b, ptr %0, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.v, ptr %i.aa, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.w, ptr %i.ab, align 4, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.extract.shift.i = lshr i64 %i.b, 32
  %i.ad = fmul nsz float %i.c, 9.600000e+01
  %i.ae = fpext nsz float %i.ad to double
  %i.af = fpext nsz float %i.h to double
  %i.ag = call nsz noundef double @_ZN15GUIFormSpecMenu10getImgsizeEN4core8vector2dIjEEdd(i64 %i.b, double noundef %i.ae, double noundef %i.af)
  %.sroa.05.0.extract.trunc.i = trunc i64 %i.b to i32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ah = uitofp nsz i32 %.sroa.05.0.extract.trunc.i to double
  %i.ai = uitofp nsz i32 %.sroa.3.0.extract.trunc.i to double
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv nsz <2 x double> %i.ak, %i.am
  %i.ao = fptrunc <2 x double> %i.an to <2 x float>
  store <2 x float> %i.ao, ptr %i.ac, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.z, ptr %i.ap, align 4, !tbaa !31
  ret void

bb.e:                                             ; preds = %_ZN15RenderingEngine13getWindowSizeEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.at = load i64, ptr %i.e, align 8, !tbaa !20
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.n
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.f
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !20
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn15.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef float @_ZN15RenderingEngine17getDisplayDensityEv() local_unnamed_addr #2

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), float noundef, float noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZN17ClientDynamicInfo18calculateMaxFSSizeEN4core8vector2dIjEEff(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = fmul nsz float %1, 9.600000e+01
  %i.b = fpext nsz float %i.a to double
  %i.c = fpext nsz float %2 to double
  %i.d = tail call nsz noundef double @_ZN15GUIFormSpecMenu10getImgsizeEN4core8vector2dIjEEdd(i64 %0, double noundef %i.b, double noundef %i.c)
  %.sroa.05.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.e = uitofp nsz i32 %.sroa.05.0.extract.trunc to double
  %i.f = uitofp nsz i32 %.sroa.3.0.extract.trunc to double
  %i.g = insertelement <2 x double> poison, double %i.e, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.f, i64 1
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv nsz <2 x double> %i.h, %i.j
  %i.l = fptrunc <2 x double> %i.k to <2 x float>
  ret <2 x float> %i.l
}

declare noundef double @_ZN15GUIFormSpecMenu10getImgsizeEN4core8vector2dIjEEdd(i64, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_ZNK15RenderingEngine14_getWindowSizeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS15RenderingEngine", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8Settings", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !5, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !14, i64 0}
!22 = !{!"p1 _ZTS13TouchControls", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN4core8vector2dIjEE", !6, i64 0, !6, i64 4}
!25 = !{!"float", !5, i64 0}
!26 = !{!"_ZTSN4core8vector2dIfEE", !25, i64 0, !25, i64 4}
!27 = !{!"bool", !5, i64 0}
!28 = !{!"_ZTS17ClientDynamicInfo", !24, i64 0, !25, i64 8, !25, i64 12, !26, i64 16, !27, i64 24}
!29 = !{!28, !25, i64 8}
!30 = !{!28, !25, i64 12}
!31 = !{!28, !27, i64 24}
end_hunk_0
