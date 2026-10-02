Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/TTS?download=true
inline.NumInlined: 47
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str.1 = private unnamed_addr constant [6 x i8] c"ssmin\00", align 1

@_ZN3TTSC1EPK9InputFileP5Hydro = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3TTSC2EPK9InputFileP5Hydro
@_ZN3TTSD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN3TTSD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3TTSC2EPK9InputFileP5Hydro(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %2, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !16
  store i32 1634102369, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !20
  %i.d = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef 5.000000e-01)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !20
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.l, align 1, !tbaa !20
  %i.m = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef 0.000000e+00)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !22
  %i.o = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.b
  %i.q = load i64, ptr %i.j, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.c
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !20
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn9.pn = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn9.pn
}

declare noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN3TTSD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(24) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %8, %9
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !13
  %i.i = sext i32 %8 to i64
  %wide.trip.count = sext i32 %9 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  %i.q = fdiv double %i.n, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.s = load double, ptr %i.r, align 8, !tbaa !55 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !55
  %i.v = fmul double %i.s, %i.u
  %i.w = fmul double %i.q, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %3, i64 %i.l
  %i.y = load double, ptr %i.x, align 8, !tbaa !55 ; 2 uses
  %i.z = load double, ptr %i.f, align 8, !tbaa !55 ; 2 uses
  %i.aa = fcmp olt double %i.y, %i.z
  %i.ab = select i1 %i.aa, double %i.z, double %i.y ; 2 uses
  %i.ac = fmul double %i.h, %i.ab
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = fsub double %i.w, %i.s
  %i.af = fneg double %i.ae
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = getelementptr inbounds [16 x i8], ptr %6, i64 %indvars.iv
  %i.ai = getelementptr inbounds [16 x i8], ptr %7, i64 %indvars.iv
  %i.aj = load <2 x double>, ptr %i.ah, align 8, !tbaa !55, !noalias !56
  %i.ak = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.aj, %i.al
  store <2 x double> %i.am, ptr %i.ai, align 8, !tbaa !55
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !25
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS5Hydro", !8, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"_ZTS3TTS", !9, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !10, i64 8}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !5, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !14, i64 0}
!22 = !{!11, !10, i64 16}
!23 = distinct !{!23, i1 false, !"_ZmlRKdRK7double2"}
!24 = distinct !{!24, !23, !"_ZmlRKdRK7double2: argument 0"}
!25 = distinct !{!25, !57}
!26 = !{!"p1 _ZTS4Mesh", !8, i64 0}
!27 = !{!"p1 _ZTS7PolyGas", !8, i64 0}
!28 = !{!"p1 _ZTS3TTS", !8, i64 0}
!29 = !{!"p1 _ZTS3QCS", !8, i64 0}
!30 = !{!"any p2 pointer", !8, i64 0}
!31 = !{!"p2 _ZTS7HydroBC", !30, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIP7HydroBCSaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIP7HydroBCSaIS1_EE", !34, i64 0}
!36 = !{!"p1 double", !8, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIdSaIdEE", !39, i64 0}
!41 = !{!"p1 _ZTS7double2", !8, i64 0}
!42 = !{!"_ZTS5Hydro", !26, i64 0, !27, i64 8, !28, i64 16, !29, i64 24, !35, i64 32, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !40, i64 112, !40, i64 136, !10, i64 160, !5, i64 168, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400}
!43 = !{!42, !26, i64 0}
!44 = !{!"p1 _ZTS7GenMesh", !8, i64 0}
!45 = !{!"p1 _ZTS7WriteXY", !8, i64 0}
!46 = !{!"p1 _ZTS10ExportGold", !8, i64 0}
!47 = !{!"bool", !5, i64 0}
!48 = !{!"p1 int", !8, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !49, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIiSaIiEE", !51, i64 0}
!53 = !{!"_ZTS4Mesh", !44, i64 0, !45, i64 8, !46, i64 16, !6, i64 24, !40, i64 32, !47, i64 56, !47, i64 57, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !48, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !41, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !6, i64 400, !52, i64 408, !52, i64 432, !52, i64 456, !52, i64 480, !6, i64 504, !52, i64 512, !52, i64 536, !6, i64 560, !52, i64 568, !52, i64 592}
!54 = !{!53, !48, i64 104}
!55 = !{!10, !10, i64 0}
!56 = !{!24}
!57 = !{!"llvm.loop.mustprogress"}
end_hunk_0
