inline.NumInlined: 71
inline.NumDeleted: 35
begin_hunk_0_@_Z15set_light_curvef:._crit_edge.i.i
bb.a:                                             ; preds = %bb.n
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.d
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.b
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.o

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.o
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.c
  %i.cb = load i64, ptr %i.o, align 8, !tbaa !18
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.o

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ad
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.d
  %i.cg = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.f:                                             ; preds = %.noexc56
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ao
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.f
  %i.cm = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.e
  %.pn28 = phi { ptr, i32 } [ %i.ci, %bb.e ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.cj, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.o

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.h:                                             ; preds = %.noexc66
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bc
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.h
  %i.cs = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.g
  %.pn30 = phi { ptr, i32 } [ %i.co, %bb.g ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cp, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.o

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.n
  %.015121 = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.dz, %bb.n ] ; 4 uses
  %i.cu = uitofp nsz nneg i64 %.015121 to float
  %i.cv = fdiv nsz float %i.cu, 1.500000e+01      ; 5 uses
  %i.cw = fcmp nsz ult float %i.cv, 1.000000e+00
  br i1 %i.cw, label %bb.j, label %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit

bb.j:                                             ; preds = %bb.i
  %i.cx = call nsz noundef float @llvm.maxnum.f32(float %i.cv, float 0.000000e+00)
  %i.cy = call nsz float @llvm.fmuladd.f32(float %i.z, float %i.cv, float %i.ab)
  %i.cz = call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.cv, float %.0.i)
  %i.da = fmul nsz float %i.cv, %i.cz
  %i.db = fsub nsz float %i.cx, %.0.i59
  %i.dc = fdiv nsz float %i.db, %.0.i69           ; 2 uses
  %i.dd = fmul nsz float %i.dc, %i.dc
  %i.de = fmul nsz float %i.dd, -5.000000e-01
  %i.df = call nsz noundef float @llvm.exp.f32(float %i.de)
  %i.dg = call nsz float @llvm.fmuladd.f32(float %.0.i49, float %i.df, float %i.da) ; 3 uses
  %i.dh = fcmp nsz ugt float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.k, label %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit.thread

_ZNK12_GLOBAL__N_110LightCurve3getEf.exit.thread: ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr @_ZL9light_LUT, i64 %.015121 ; 3 uses
  store i8 0, ptr %i.di, align 1, !tbaa !18
  %i.dj = getelementptr i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dl = fcmp nsz ult float %i.dg, 1.000000e+00
  br i1 %i.dl, label %bb.l, label %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit

bb.l:                                             ; preds = %bb.k
  %i.dm = call nsz float @llvm.pow.f32(float %i.dg, float %i.bs)
  %i.dn = fmul nsz float %i.dm, 2.550000e+02
  %i.do = fptosi float %i.dn to i32
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 255)
  br label %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit

_ZNK12_GLOBAL__N_110LightCurve3getEf.exit:        ; preds = %bb.i, %bb.k, %bb.l
  %.1.i = phi i32 [ 255, %bb.i ], [ %i.dq, %bb.l ], [ 255, %bb.k ] ; 2 uses
  %i.dr = trunc nuw i32 %.1.i to i8
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZL9light_LUT, i64 %.015121 ; 3 uses
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !18
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !18  ; 2 uses
  %i.dv = zext i8 %i.du to i32
  %.not = icmp samesign ugt i32 %.1.i, %i.dv
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit.thread, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit
  %i.dw = phi i8 [ %i.dk, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit.thread ], [ %i.du, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit ]
  %i.dx = phi ptr [ %i.di, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit.thread ], [ %i.ds, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit ]
  %i.dy = call i8 @llvm.uadd.sat.i8(i8 %i.dw, i8 1)
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK12_GLOBAL__N_110LightCurve3getEf.exit
  %i.dz = add nuw nsw i64 %.015121, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, 15
  br i1 %exitcond.not, label %bb.a, label %bb.i, !llvm.loop !21

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ]
  resume { ptr, i32 } %.pn30.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_Z14decode_light_ff(float noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call nsz noundef float @llvm.maxnum.f32(float %0, float 0.000000e+00)
  %i.b = fmul nnan nsz float %i.a, 1.500000e+01
  %i.c = tail call nsz { float, float } @llvm.modf.f32(float %i.b) ; 2 uses
  %i.d = extractvalue { float, float } %i.c, 1
  %i.e = fptoui float %i.d to i32                 ; 2 uses
  %i.f = icmp ugt i32 %i.e, 14
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL9light_LUT, i64 15), align 1, !tbaa !18
  %i.h = uitofp i8 %i.g to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = extractvalue { float, float } %i.c, 0    ; 2 uses
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL9light_LUT, i64 %i.j
  %1 = fsub nsz float 1.000000e+00, %i.i
  %2 = load <2 x i8>, ptr %i.k, align 1, !tbaa !18
  %3 = uitofp <2 x i8> %2 to <2 x float>          ; 2 uses
  %4 = extractelement <2 x float> %3, i64 1
  %5 = fmul nsz float %i.i, %4
  %6 = extractelement <2 x float> %3, i64 0
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %6, float %1, float %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi float [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.0 = fdiv nsz float %.0.in, 2.550000e+02
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.modf.f32(float) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8Settings", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !17, i64 8, !7, i64 16}
!17 = !{!"long", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!16, !14, i64 0}
!20 = !{!17, !17, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
end_hunk_0
