Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/engine?download=true
inline.NumInlined: 11004
inline.NumDeleted: 2646
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK3fmt3v119formatterIN8WasmEdge7ValTypeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_:bb.a
  %i.ao = icmp eq i8 %i.ad, %i.b
  %spec.select.i.i32 = select i1 %i.ao, i64 %.sroa.4.1.i.i.i.i30, i64 29
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL11TypeCodeStrE, i64 %spec.select.i.i32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL11TypeCodeStrE, i64 %.sroa.4.1.i.i.i.i42
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !2173
  %i.at = icmp eq i8 %i.as, %i.af
  %spec.select.i.i44 = select i1 %i.at, i64 %.sroa.4.1.i.i.i.i42, i64 29
  %i.au = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL11TypeCodeStrE, i64 %spec.select.i.i44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !182
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !183
  %i.az = ptrtoint ptr %i.ax to i64
  %.sroa.2.0.insert.ext.i = zext i64 %i.ay to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.az to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %4, align 16, !alias.scope !2174
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !182
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !183
  %i.be = ptrtoint ptr %i.bc to i64
  %.sroa.2.0.insert.ext.i47 = zext i64 %i.bd to i128
  %.sroa.2.0.insert.shift.i48 = shl nuw i128 %.sroa.2.0.insert.ext.i47, 64
  %.sroa.01.0.insert.ext.i49 = zext i64 %i.be to i128
  %.sroa.01.0.insert.insert.i50 = or disjoint i128 %.sroa.2.0.insert.shift.i48, %.sroa.01.0.insert.ext.i49
  store i128 %.sroa.01.0.insert.insert.i50, ptr %i.ba, align 16, !alias.scope !2174
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.776, i64 5, i64 221, ptr nonnull %4, ptr null)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bf = load i8, ptr %i.ae, align 1, !tbaa !93
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.noexc13, label %bb.e

.noexc13:                                         ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.01.0.insert.ext.i53 = zext i32 %i.bi to i128
  store i128 %.sroa.01.0.insert.ext.i53, ptr %3, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.777, i64 4, i64 2, ptr nonnull %3, ptr null)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bj = load ptr, ptr %5, align 8, !tbaa !152
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !154
  %i.bl = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.bk, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %5, align 8, !tbaa !152   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = load i64, ptr %i.q, align 8, !tbaa !153
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bn) #26
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8WasmEdge12SpareEnumMapILm29ENS_8TypeCodeESt17basic_string_viewIcSt11char_traitsIcEEEixES1_.exit, %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit
  %.sroa.011.0 = phi ptr [ %i.bl, %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit ], [ %i.p, %_ZNK8WasmEdge12SpareEnumMapILm29ENS_8TypeCodeESt17basic_string_viewIcSt11char_traitsIcEEEixES1_.exit ]
  ret ptr %.sroa.011.0

bb.i:                                             ; preds = %.noexc13, %.noexc, %bb.e, %_ZNK8WasmEdge12SpareEnumMapILm29ENS_8TypeCodeESt17basic_string_viewIcSt11char_traitsIcEEEixES1_.exit
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #29
  unreachable
}

declare extern_weak void @_ZTHN8WasmEdge8Executor8Executor10StackTraceE() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

declare extern_weak void @_ZTHN8WasmEdge8Executor8Executor14StackTraceSizeE() #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.abs.v16i8(<16 x i8>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.roundeven.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v16i16(<16 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !95}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{!3, !95}
!4 = distinct !{!4, !95}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{!8, !95}
!9 = distinct !{!9, !95}
!10 = !{i32 1, !"long-double-type", !"x86_fp80"}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{!"p1 _ZTSN8WasmEdge3AST11InstructionE", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTSN8WasmEdge8Executor8ExecutorE", !19, i64 0}
!23 = !{!"any p2 pointer", !19, i64 0}
!24 = !{!"p2 _ZTSN8WasmEdge3AST11InstructionE", !23, i64 0}
!25 = !{!"p1 _ZTSN8WasmEdge7Runtime12StackManagerE", !19, i64 0}
!26 = !{!"_ZTSZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_E3$_1", !22, i64 0, !24, i64 8, !25, i64 16}
!27 = !{!26, !22, i64 0}
!28 = !{!"_ZTSSt22__shared_mutex_pthread", !15, i64 0}
!29 = !{!"_ZTSSt12shared_mutex", !28, i64 0}
!30 = !{!"long", !15, i64 0}
!31 = !{!"_ZTSSt12_Base_bitsetILm1EE", !30, i64 0}
!32 = !{!"_ZTSSt6bitsetILm18EE", !31, i64 0}
!33 = !{!"_ZTSSt6bitsetILm1EE", !31, i64 0}
!34 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !23, i64 0}
!35 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!36 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!37 = !{!"float", !15, i64 0}
!38 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !37, i64 0, !30, i64 8}
!39 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE", !34, i64 0, !30, i64 8, !36, i64 16, !30, i64 24, !38, i64 32, !35, i64 48}
!40 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge4Hash4HashESt8equal_toIS5_ESaIS5_EE", !39, i64 0}
!41 = !{!"_ZTSN8WasmEdge17CompilerConfigure17OptimizationLevelE", !15, i64 0}
!42 = !{!"_ZTSSt6atomicIN8WasmEdge17CompilerConfigure17OptimizationLevelEE", !41, i64 0}
!43 = !{!"_ZTSN8WasmEdge17CompilerConfigure12OutputFormatE", !15, i64 0}
!44 = !{!"_ZTSSt6atomicIN8WasmEdge17CompilerConfigure12OutputFormatEE", !43, i64 0}
!45 = !{!"bool", !15, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseIbE", !45, i64 0}
!47 = !{!"_ZTSSt6atomicIbE", !46, i64 0}
!48 = !{!"_ZTSN8WasmEdge17CompilerConfigureE", !42, i64 0, !44, i64 1, !47, i64 2, !47, i64 3, !47, i64 4}
!49 = !{!"_ZTSSt13__atomic_baseImE", !30, i64 0}
!50 = !{!"_ZTSSt6atomicImE", !49, i64 0}
!51 = !{!"_ZTSN8WasmEdge7RunModeE", !15, i64 0}
!52 = !{!"_ZTSSt6atomicIN8WasmEdge7RunModeEE", !51, i64 0}
!53 = !{!"_ZTSN8WasmEdge16RuntimeConfigureE", !50, i64 0, !52, i64 8, !47, i64 9, !47, i64 10, !47, i64 11}
!54 = !{!"_ZTSN8WasmEdge19StatisticsConfigureE", !47, i64 0, !47, i64 1, !47, i64 2, !50, i64 8}
!55 = !{!"_ZTSN8WasmEdge9ConfigureE", !29, i64 0, !32, i64 56, !33, i64 64, !40, i64 72, !48, i64 128, !53, i64 136, !54, i64 152}
!56 = !{!"p1 _ZTSN8WasmEdge10Statistics10StatisticsE", !19, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseIjE", !16, i64 0}
!58 = !{!"_ZTSSt6atomicIjE", !57, i64 0}
!59 = !{!"p1 _ZTSN8WasmEdge7Runtime8Instance14MemoryInstanceE", !19, i64 0}
!60 = !{!"_ZTSSt13__atomic_baseIPN8WasmEdge7Runtime8Instance14MemoryInstanceEE", !59, i64 0}
!61 = !{!"_ZTSSt6atomicIPN8WasmEdge7Runtime8Instance14MemoryInstanceEE", !60, i64 0}
!62 = !{!"_ZTSSt14_Function_base", !15, i64 0, !19, i64 16}
!63 = !{!"_ZTSSt8functionIFvPvEE", !62, i64 0, !19, i64 24}
!64 = !{!"_ZTSN8WasmEdge8Executor15HostFuncHandlerE", !19, i64 0, !19, i64 8, !63, i64 16, !63, i64 48, !29, i64 80}
!65 = !{!"_ZTSN8WasmEdge8Executor8ExecutorE", !55, i64 0, !56, i64 168, !58, i64 176, !61, i64 184, !64, i64 192}
!66 = !{!65, !56, i64 168}
!67 = !{!"_ZTSN8WasmEdge6OpCodeE", !15, i64 0}
!68 = !{!"_ZTSN8WasmEdge3AST11InstructionUt_E", !15, i64 0, !45, i64 1, !45, i64 1, !45, i64 1, !45, i64 1}
!69 = !{!"_ZTSN8WasmEdge3AST11InstructionE", !15, i64 0, !16, i64 16, !67, i64 20, !68, i64 24}
!70 = !{!69, !67, i64 20}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!69, !16, i64 16}
!74 = !{!"p1 _ZTSN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE", !19, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE", !77, i64 0}
!79 = !{!"p1 _ZTSN8WasmEdge7ValTypeE", !19, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge7ValTypeESaIS1_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIN8WasmEdge7ValTypeESaIS1_EE", !82, i64 0}
!84 = !{!"_ZTSN8WasmEdge7ErrInfo15InfoInstructionE", !67, i64 0, !30, i64 8, !78, i64 16, !83, i64 40, !45, i64 64}
!85 = !{!84, !67, i64 0}
!86 = !{!84, !30, i64 8}
!87 = !{!80, !79, i64 0}
!88 = !{!80, !79, i64 16}
!89 = !{!75, !74, i64 0}
!90 = !{!75, !74, i64 16}
!91 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !45, i64 0, !15, i64 4}
!92 = !{!91, !45, i64 0}
!93 = !{!15, !15, i64 0}
!94 = !{!30, !30, i64 0}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"p1 _ZTSN8WasmEdge7Runtime8Instance14ModuleInstanceE", !19, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!16, !16, i64 0}
!99 = !{!75, !74, i64 8}
!100 = !{!"p1 _ZTSN8WasmEdge7Runtime12StackManager5FrameE", !19, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7Runtime12StackManager5FrameESaIS3_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!101, !100, i64 8}
!103 = !{!101, !100, i64 16}
!104 = !{!"p1 _ZTSN8WasmEdge7Runtime12StackManager7HandlerE", !19, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7Runtime12StackManager7HandlerESaIS3_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!106 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge7Runtime12StackManager7HandlerESaIS3_EE12_Vector_implE", !105, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge7Runtime12StackManager7HandlerESaIS3_EE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIN8WasmEdge7Runtime12StackManager7HandlerESaIS3_EE", !107, i64 0}
!109 = !{!"_ZTSN8WasmEdge7Runtime12StackManager5FrameE", !96, i64 0, !20, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !108, i64 32}
!110 = !{!109, !16, i64 24}
!111 = !{i64 8}
!112 = !{i64 0, i64 16, !93}
!113 = !{!"p1 omnipotent char", !19, i64 0}
!114 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !113, i64 0}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !114, i64 0, !30, i64 8, !15, i64 16}
!116 = !{!115, !113, i64 0}
!117 = !{!115, !30, i64 8}
!118 = !{!101, !100, i64 0}
!119 = !{!105, !104, i64 0}
!120 = !{!105, !104, i64 16}
!121 = !{!"p1 long", !19, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!122, !121, i64 0}
!124 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!125 = !{!74, !74, i64 0}
!126 = !{!80, !79, i64 8}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = !{!84, !45, i64 64}
!129 = !{!"_ZTSN8WasmEdge7ErrCode5ValueE", !15, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!100, !100, i64 0}
!132 = !{!109, !96, i64 0}
!133 = !{!"__int128", !15, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!37, !37, i64 0}
!136 = !{!"double", !15, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!69, !15, i64 24}
!139 = !{!36, !35, i64 0}
!140 = !{!"_ZTSSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE", !34, i64 0, !30, i64 8, !36, i64 16, !30, i64 24, !38, i64 32, !35, i64 48}
!141 = !{!140, !30, i64 24}
!142 = !{!140, !30, i64 8}
!143 = !{!140, !34, i64 0}
!144 = !{!35, !35, i64 0}
!145 = !{!38, !30, i64 8}
!146 = !{!140, !35, i64 16}
!147 = !{!109, !20, i64 8}
!148 = !{!109, !16, i64 16}
!149 = !{!109, !16, i64 20}
!150 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !113, i64 0, !30, i64 8, !30, i64 16, !19, i64 24}
!151 = !{!150, !19, i64 24}
!152 = !{!150, !113, i64 0}
!153 = !{!150, !30, i64 16}
!154 = !{!150, !30, i64 8}
!155 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
end_hunk_0
