inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { ptr }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/grpc/grpc/src/core/credentials/transport/alts/check_gcp_environment.cc\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"BIOS data file does not exist or cannot be opened.\00", align 1
@"_ZZZN9grpc_core8internal14read_bios_fileEPKcENK3$_0clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.0" } { ptr @.str.1, { i32 } { i32 2147483647 }, %"struct.std::atomic.0" zeroinitializer }, align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core8internal14read_bios_fileEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.a = alloca [257 x i8], align 16              ; 9 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZN9grpc_core8internal14read_bios_fileEPKcENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %.critedge15, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, !prof !8

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit: ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZN9grpc_core8internal14read_bios_fileEPKcENK3$_0clEvE4site", i32 noundef %i.c)
  br i1 %i.e, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 59) #9
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 50, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi51EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi51EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi51EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge15

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi51EEERS2_RAT__Kc.exit, %bb.d, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.h = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 256, ptr noundef nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !9
  %i.j = load i8, ptr %i.a, align 16, !tbaa !9
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_ZL4trimPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #11 ; 5 uses
  %.0.i1724 = add i64 %i.l, -1                    ; 3 uses
  %.not.i25 = icmp eq i64 %.0.i1724, 0
  br i1 %.not.i25, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.m = tail call ptr @__ctype_b_loc() #12
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.0.i17 = add i64 %.0.i1726, -1                 ; 3 uses
  %.not.i = icmp eq i64 %.0.i17, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0.i1726 = phi i64 [ %.0.i17, %bb.h ], [ %.0.i1724, %.lr.ph.preheader ] ; 3 uses
  %.0.in.i26 = phi i64 [ %.0.i1726, %bb.h ], [ %i.l, %.lr.ph.preheader ]
  %2 = getelementptr i8, ptr %i.a, i64 %.0.in.i26
  %i.o = getelementptr i8, ptr %2, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = sext i8 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !15
  %i.t = and i16 %i.s, 8192
  %.not28.i = icmp eq i16 %i.t, 0
  br i1 %.not28.i, label %..critedge.i_crit_edge, label %bb.h, !llvm.loop !13

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %bb.h, %..critedge.i_crit_edge, %bb.g
  %.0.i17.lcssa = phi i64 [ %.0.i1726, %..critedge.i_crit_edge ], [ %.0.i1724, %bb.g ], [ %.0.i17, %bb.h ] ; 2 uses
  %.not34.i = icmp eq i64 %i.l, 0
  br i1 %.not34.i, label %.critedge2.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.u = tail call ptr @__ctype_b_loc() #12
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %.02431.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %bb.j ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02431.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !15
  %i.ab = and i16 %i.aa, 8192
  %.not29.i = icmp eq i16 %i.ab, 0
  br i1 %.not29.i, label %.critedge2.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %.02431.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.l
  br i1 %exitcond.not.i, label %.critedge2.i, label %bb.i, !llvm.loop !17

.critedge2.i:                                     ; preds = %bb.j, %bb.i
  %.024.lcssa.i = phi i64 [ %i.l, %bb.j ], [ %.02431.i, %bb.i ] ; 2 uses
  %.not30.i = icmp ugt i64 %.024.lcssa.i, %.0.i17.lcssa
  br i1 %.not30.i, label %_ZL4trimPKc.exit, label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %.critedge2.i, %.critedge.i
  %.024.lcssa39.i = phi i64 [ %.024.lcssa.i, %.critedge2.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.ad = sub nuw i64 %.0.i17.lcssa, %.024.lcssa39.i ; 2 uses
  %i.ae = add i64 %i.ad, 2
  %i.af = tail call ptr @gpr_zalloc(i64 noundef %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.lcssa39.i
  %i.ah = add i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull readonly align 1 %i.ag, i64 %i.ah, i1 false)
  br label %_ZL4trimPKc.exit

_ZL4trimPKc.exit:                                 ; preds = %bb.f, %.critedge2.i, %.critedge2.thread.i
  %.026.i = phi ptr [ null, %bb.f ], [ %i.af, %.critedge2.thread.i ], [ null, %.critedge2.i ]
  %i.ai = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge15

.critedge15:                                      ; preds = %bb.b, %.critedge, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, %_ZL4trimPKc.exit
  %.0 = phi ptr [ %.026.i, %_ZL4trimPKc.exit ], [ null, %.critedge ], [ null, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @gpr_zalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 short", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = distinct !{!17, !14}
end_hunk_0
