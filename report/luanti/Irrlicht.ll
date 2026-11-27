Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Irrlicht?download=true
inline.NumInlined: 10
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@createDeviceEx:bb.a
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31
  %.off = add i32 %i.a, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %_ZNK17IReferenceCounted4dropEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(424) ptr @_Znwm(i64 noundef 424) #11 ; 12 uses
  invoke void @_ZN13CIrrDeviceSDLC1ERK27SIrrlichtCreationParameters(ptr noundef nonnull align 8 dereferenceable(405) %i.b, ptr noundef nonnull align 8 dereferenceable(105) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 424) #12
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.e, label %_ZNK17IReferenceCounted4dropEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.w, ptr %i.t, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.i, label %_ZNK17IReferenceCounted4dropEv.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #14, !inline_history !30
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.a, %bb.i, %bb.h, %bb.e, %bb.d
  %.1 = phi ptr [ %i.b, %bb.d ], [ null, %bb.i ], [ %i.b, %bb.e ], [ null, %bb.h ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN13CIrrDeviceSDLC1ERK27SIrrlichtCreationParameters(ptr noundef nonnull align 8 dereferenceable(405), ptr noundef nonnull align 8 dereferenceable(105)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @showErrorMessageBox(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @.str, ptr %1       ; 3 uses
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = tail call noundef zeroext i1 @_ZN13CIrrDeviceSDL19showErrorMessageBoxEP10SDL_WindowPKcS3_(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %2)
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN13CIrrDeviceSDL19showErrorMessageBoxEP10SDL_WindowPKcS3_(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %2)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  tail call void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN13CIrrDeviceSDL19showErrorMessageBoxEP10SDL_WindowPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #12
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #12
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #12
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #12
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @isDriverSupported(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  %switch.cast = trunc i32 %0 to i5
  %switch.downshift = lshr i5 -13, %switch.cast
  %switch.masked = trunc i5 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_Irrlicht.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN4core14IdentityMatrixE, i64 4), i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4core14IdentityMatrixE, i64 60), align 4, !tbaa !66
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4core14IdentityMatrixE, i64 40), align 4, !tbaa !66
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4core14IdentityMatrixE, i64 20), align 4, !tbaa !66
  store float 1.000000e+00, ptr @_ZN4core14IdentityMatrixE, align 4, !tbaa !66
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN4core14IdentityMatrixE) ; 0 uses
  store ptr null, ptr @_ZN5video16IdentityMaterialE, align 8, !tbaa !67
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 8), align 8
  %i.c = and i16 %i.b, -4096
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 8), align 8
  store i16 257, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 10), align 2
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 16), i8 0, i64 16, i1 false)
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 32), align 8
  %i.e = and i16 %i.d, -4096
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 32), align 8
  store i16 257, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 34), align 2
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 36), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 40), i8 0, i64 16, i1 false)
  %i.f = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 56), align 8
  %i.g = and i16 %i.f, -4096
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 56), align 8
  store i16 257, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 58), align 2
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 60), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 64), i8 0, i64 16, i1 false)
  %i.h = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 80), align 8
  %i.i = and i16 %i.h, -4096
  store i16 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 80), align 8
  store i16 257, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 82), align 2
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 84), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 88), i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 108), align 4, !tbaa !66
  store i16 3857, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 124), align 4
  store i8 -108, ptr getelementptr inbounds nuw (i8, ptr @_ZN5video16IdentityMaterialE, i64 126), align 2
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video9SMaterialD2Ev, ptr nonnull @_ZN5video16IdentityMaterialE, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTS13E_DEVICE_TYPE", !4, i64 0}
!9 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !4, i64 0}
!10 = !{!"_ZTSN4core11dimension2dIjEE", !5, i64 0, !5, i64 4}
!11 = !{!"_ZTSN4core8vector2dIiEE", !5, i64 0, !5, i64 4}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS14IEventReceiver", !13, i64 0}
!15 = !{!"_ZTS10ELOG_LEVEL", !4, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !4, i64 16}
!20 = !{!"_ZTSN4core6stringIcEE", !19, i64 0}
!21 = !{!"_ZTS27SIrrlichtCreationParameters", !8, i64 0, !9, i64 4, !10, i64 8, !11, i64 16, !4, i64 24, !4, i64 25, !12, i64 26, !12, i64 27, !4, i64 28, !12, i64 29, !12, i64 30, !4, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !14, i64 40, !13, i64 48, !15, i64 56, !13, i64 64, !20, i64 72, !12, i64 104}
!22 = !{!"vtable pointer", !3, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"float", !4, i64 0}
!25 = !{!"p1 _ZTSN5video8ITextureE", !13, i64 0}
!26 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !4, i64 0}
!27 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !4, i64 0}
!28 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !13, i64 0}
!29 = !{!"_ZTSN5video14SMaterialLayerE", !25, i64 0, !4, i64 8, !4, i64 8, !4, i64 9, !26, i64 10, !27, i64 11, !4, i64 12, !4, i64 13, !28, i64 16}
!30 = distinct !{null}
!31 = !{!21, !8, i64 0}
!32 = !{!21, !9, i64 4}
!33 = !{!"_ZTS17IReferenceCounted", !5, i64 8}
!34 = !{!33, !5, i64 8}
!35 = !{!"_ZTS14IrrlichtDevice"}
!36 = !{!"p1 _ZTSN5video12IVideoDriverE", !13, i64 0}
!37 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !13, i64 0}
!38 = !{!"p1 _ZTSN5scene13ISceneManagerE", !13, i64 0}
!39 = !{!"p1 _ZTS6ITimer", !13, i64 0}
!40 = !{!"p1 _ZTSN3gui14ICursorControlE", !13, i64 0}
!41 = !{!"p1 _ZTS7CLogger", !13, i64 0}
!42 = !{!"p1 _ZTS11IOSOperator", !13, i64 0}
!43 = !{!"p1 _ZTSN2io11IFileSystemE", !13, i64 0}
!44 = !{!"_ZTS18EMOUSE_INPUT_EVENT", !4, i64 0}
!45 = !{!"_ZTSN14CIrrDeviceStub17SMouseMultiClicksE", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 12, !44, i64 20}
!46 = !{!"p1 _ZTSN5video15IContextManagerE", !13, i64 0}
!47 = !{!"_ZTS14CIrrDeviceStub", !35, i64 0, !36, i64 8, !37, i64 16, !38, i64 24, !39, i64 32, !40, i64 40, !14, i64 48, !41, i64 56, !42, i64 64, !43, i64 72, !38, i64 80, !45, i64 88, !46, i64 112, !21, i64 120, !12, i64 232}
!48 = !{!"p1 _ZTS10SDL_Window", !13, i64 0}
!49 = !{!"any p2 pointer", !13, i64 0}
!50 = !{!"p2 _ZTS13_SDL_Joystick", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIP13_SDL_JoystickSaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIP13_SDL_JoystickSaIS1_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIP13_SDL_JoystickSaIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIP13_SDL_JoystickSaIS1_EE", !53, i64 0}
!55 = !{!"_ZTSN4core5arrayIP13_SDL_JoystickEE", !54, i64 0, !12, i64 24}
!56 = !{!"_ZTSN4core4rectIiEE", !11, i64 0, !11, i64 8}
!57 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !49, i64 0}
!58 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!59 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !58, i64 0}
!60 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !24, i64 0, !18, i64 8}
!61 = !{!"_ZTSSt10_HashtableIiSt4pairIKi9EKEY_CODEESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !57, i64 0, !18, i64 8, !59, i64 16, !18, i64 24, !60, i64 32, !58, i64 48}
!62 = !{!"_ZTSSt13unordered_mapIi9EKEY_CODESt4hashIiESt8equal_toIiESaISt4pairIKiS0_EEE", !61, i64 0}
!63 = !{!"_ZTS13CIrrDeviceSDL", !47, i64 0, !13, i64 240, !48, i64 248, !55, i64 256, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !24, i64 316, !24, i64 320, !12, i64 324, !56, i64 328, !62, i64 344, !5, i64 400, !12, i64 404}
!64 = !{!63, !48, i64 248}
!65 = !{!29, !28, i64 16}
!66 = !{!24, !24, i64 0}
!67 = !{!29, !25, i64 0}
end_hunk_0
