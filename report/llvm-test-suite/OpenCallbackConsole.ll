inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }

$_ZTI15IOpenCallbackUI = comdat any

$_ZTS15IOpenCallbackUI = comdat any

@_ZTV20COpenCallbackConsole = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI20COpenCallbackConsole, ptr @_ZN20COpenCallbackConsole15Open_CheckBreakEv, ptr @_ZN20COpenCallbackConsole13Open_SetTotalEPKyS1_, ptr @_ZN20COpenCallbackConsole17Open_SetCompletedEPKyS1_, ptr @_ZN20COpenCallbackConsole26Open_CryptoGetTextPasswordEPPw, ptr @_ZN20COpenCallbackConsole21Open_GetPasswordIfAnyER11CStringBaseIwE, ptr @_ZN20COpenCallbackConsole21Open_WasPasswordAskedEv, ptr @_ZN20COpenCallbackConsole30Open_ClearPasswordWasAskedFlagEv] }, align 8
@_ZTI20COpenCallbackConsole = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20COpenCallbackConsole, ptr @_ZTI15IOpenCallbackUI }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS20COpenCallbackConsole = dso_local constant [23 x i8] c"20COpenCallbackConsole\00", align 1
@_ZTI15IOpenCallbackUI = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS15IOpenCallbackUI }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS15IOpenCallbackUI = linkonce_odr dso_local constant [18 x i8] c"15IOpenCallbackUI\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN20COpenCallbackConsole15Open_CheckBreakEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
  %. = select i1 %i.a, i32 -2147467260, i32 0
  ret i32 %.
}

declare noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20COpenCallbackConsole13Open_SetTotalEPKyS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20COpenCallbackConsole17Open_SetCompletedEPKyS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20COpenCallbackConsole26Open_CryptoGetTextPasswordEPPw(ptr noundef nonnull align 8 dereferenceable(40) initializes((17, 18)) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.a, align 1, !tbaa !10
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !18, !range !19, !noundef !20
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef %4, i1 noundef zeroext false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !22
  %i.i = load ptr, ptr %5, align 8, !tbaa !23     ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26   ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.l to i64
  %i.q = icmp slt i32 %i.k, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #8
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.i) #9
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.v = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.w = phi i64 [ %i.v, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.t, ptr %5, align 8, !tbaa !23
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  store i32 0, ptr %i.x, align 4, !tbaa !24
  store i32 %i.l, ptr %i.m, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.e, %bb.c
  %i.y = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.e ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.z, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ab = load i32, ptr %.04.i.i, align 4, !tbaa !24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ab, ptr %.0.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.f, !llvm.loop !27

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.f
  %6 = load i32, ptr %i.j, align 8, !tbaa !22
  store i32 %6, ptr %i.h, align 8, !tbaa !22
  %i.ad = icmp eq ptr %i.z, null
  br i1 %i.ad, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.z) #9
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  store i8 1, ptr %i.e, align 8, !tbaa !18
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN11CStringBaseIwED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.af) #9
  br label %_ZN11CStringBaseIwED2Ev.exit8

_ZN11CStringBaseIwED2Ev.exit8:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  resume { ptr, i32 } %i.ae

bb.j:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = call ptr @SysAllocString(ptr noundef %i.ai) ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.aj, null
  %i.ak = select i1 %.not.i, i32 -2147024882, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.1 = phi i32 [ %i.ak, %bb.j ], [ %i.d, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20COpenCallbackConsole21Open_GetPasswordIfAnyER11CStringBaseIwE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !22
  %i.g = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.j to i64
  %i.o = icmp slt i32 %i.i, -1
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #8 ; 3 uses
  %i.s = icmp sgt i32 %i.l, 0
  br i1 %i.s, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #9
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !22
  %i.t = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %bb.d
  %i.u = phi i64 [ %i.t, %._crit_edge.thread.i.i ], [ 0, %bb.d ]
  store ptr %i.r, ptr %1, align 8, !tbaa !23
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  store i32 0, ptr %i.v, align 4, !tbaa !24
  store i32 %i.j, ptr %i.k, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.e, %bb.c
  %i.w = phi ptr [ %i.g, %bb.c ], [ %i.r, %bb.e ]
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.y, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.w, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.z = load i32, ptr %.04.i.i, align 4, !tbaa !24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.z, ptr %.0.i.i, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.f, !llvm.loop !27

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.f
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !22
  store i32 %i.ab, ptr %i.f, align 8, !tbaa !22
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN20COpenCallbackConsole21Open_WasPasswordAskedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN20COpenCallbackConsole30Open_ClearPasswordWasAskedFlagEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((17, 18)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.a, align 1, !tbaa !10
  ret void
}

declare ptr @SysAllocString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !15, i64 17}
!11 = !{!"_ZTS20COpenCallbackConsole", !12, i64 0, !13, i64 8, !15, i64 16, !15, i64 17, !16, i64 24}
!12 = !{!"_ZTS15IOpenCallbackUI"}
!13 = !{!"p1 _ZTS13CStdOutStream", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTS11CStringBaseIwE", !17, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!"p1 wchar_t", !14, i64 0}
!18 = !{!11, !15, i64 16}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!11, !13, i64 8}
!22 = !{!16, !5, i64 8}
!23 = !{!16, !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"wchar_t", !6, i64 0}
!26 = !{!16, !5, i64 12}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!17, !17, i64 0}
end_hunk_0
