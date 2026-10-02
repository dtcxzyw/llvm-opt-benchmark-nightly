Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/hyperloglog?download=true
inline.NumInlined: 41
inline.NumDeleted: 35
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZN4mold7Counter9instancesE = comdat any

$_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev = comdat any

@_ZN4mold7Counter9instancesE = linkonce_odr dso_local global { { ptr, ptr, ptr } } zeroinitializer, comdat, align 8
@_ZGVN4mold7Counter9instancesE = linkonce_odr dso_local global i64 0, comdat($_ZN4mold7Counter9instancesE), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4mold7Counter9instancesE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4mold7Counter9instancesE], section "llvm.metadata"

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN4mold7Counter9instancesE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN4mold7Counter9instancesE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN4mold7Counter9instancesE) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev, ptr nonnull @_ZN4mold7Counter9instancesE, ptr nonnull @__dso_handle) #10 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN4mold7Counter9instancesE) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #11
  br label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind
define dso_local noundef i64 @_ZNK4mold11HyperLogLog15get_cardinalityEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load atomic i64, ptr %i.c acquire, align 8, !noalias !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8, !noalias !38 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = select i1 %i.h, i64 3, i64 64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !31, !noalias !38
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.01015.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.o, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01015.i.i.i.i
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8, !noalias !38
  %.not.i.i.i.i = icmp ugt ptr %i.l, %i.j
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  %i.m = shl nuw i64 1, %.01015.i.i.i.i
  %i.n = and i64 %i.m, -2
  br label %_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %.01015.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit, label %bb.b, !llvm.loop !16

_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit: ; preds = %bb.c, %.thread.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.n, %.thread.i.i.i.i ], [ 8, %bb.c ]
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.d) ; 2 uses
  %.not2529 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not2529, label %.preheader.preheader, label %_ZNK3tbb6detail2d135enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISB_EEEEKS9_EdeEv.exit

.preheader.preheader:                             ; preds = %middle.block, %_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit
  br label %.preheader

_ZNK3tbb6detail2d135enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISB_EEEEKS9_EdeEv.exit: ; preds = %_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit, %middle.block
  %.sroa.5.030 = phi i64 [ %i.aj, %middle.block ], [ 0, %_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv.exit ] ; 3 uses
  %i.p = or i64 %.sroa.5.030, 1
  %i.q = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = load atomic ptr, ptr %i.e acquire, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load atomic ptr, ptr %i.t acquire, align 8
  %i.v = getelementptr inbounds nuw [2176 x i8], ptr %i.u, i64 %.sroa.5.030 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZNK3tbb6detail2d135enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISB_EEEEKS9_EdeEv.exit
  %index = phi i64 [ 0, %_ZNK3tbb6detail2d135enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISB_EEEEKS9_EdeEv.exit ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.w, align 16, !tbaa !33
  %wide.load37 = load <16 x i8>, ptr %i.y, align 16, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.x, align 1, !tbaa !33
  %wide.load39 = load <16 x i8>, ptr %i.z, align 1, !tbaa !33
  %i.aa = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load38)
  %i.ab = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load37, <16 x i8> %wide.load39)
  store <16 x i8> %i.aa, ptr %i.w, align 16, !tbaa !33
  store <16 x i8> %i.ab, ptr %i.y, align 16, !tbaa !33
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %index.next ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !33
  %wide.load37.1 = load <16 x i8>, ptr %i.ae, align 16, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load38.1 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !33
  %wide.load39.1 = load <16 x i8>, ptr %i.af, align 1, !tbaa !33
  %i.ag = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load.1, <16 x i8> %wide.load38.1)
  %i.ah = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load37.1, <16 x i8> %wide.load39.1)
  store <16 x i8> %i.ag, ptr %i.ac, align 16, !tbaa !33
  store <16 x i8> %i.ah, ptr %i.ae, align 16, !tbaa !33
  %index.next.1 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.ai = icmp eq i64 %index.next.1, 2048
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.aj = add nuw i64 %.sroa.5.030, 1             ; 2 uses
  %.not25 = icmp eq i64 %i.aj, %.sroa.speculated.i.i
  br i1 %.not25, label %.preheader.preheader, label %_ZNK3tbb6detail2d135enumerable_thread_specific_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISB_EEEEKS9_EdeEv.exit

bb.d:                                             ; preds = %.preheader
  %i.ak = fdiv double f0x4149689CA18BD662, %i.aq
  %i.al = fptosi double %i.ak to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.al

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0.idx32 = phi i64 [ %.0.add, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.01731 = phi double [ %i.aq, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx32
  %i.am = load i8, ptr %.0.ptr, align 1, !tbaa !33
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ao) #10
  %i.aq = fadd double %.01731, %i.ap              ; 2 uses
  %.0.add = add nuw nsw i64 %.0.idx32, 1          ; 2 uses
  %.not = icmp eq i64 %.0.add, 2048
  br i1 %.not, label %bb.d, label %.preheader
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #9

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p2 _ZTSN4mold7CounterE", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 16}
!16 = distinct !{!16, !32}
!17 = distinct !{!17, !32, !34, !35}
!19 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementIN4mold11HyperLogLog6SketchEEELm128EEE", !8, i64 0}
!20 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEEEEE"}
!21 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIN4mold11HyperLogLog6SketchEEELm128EEEE", !8, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementIN4mold11HyperLogLog6SketchEEELm128EEEEE", !21, i64 0}
!23 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementIN4mold11HyperLogLog6SketchEEELm128EEEEE", !22, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"_ZTSSt13__atomic_baseImE", !24, i64 0}
!26 = !{!"_ZTSSt6atomicImE", !25, i64 0}
!27 = !{!"bool", !4, i64 0}
!28 = !{!"_ZTSSt13__atomic_baseIbE", !27, i64 0}
!29 = !{!"_ZTSSt6atomicIbE", !28, i64 0}
!30 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIN4mold11HyperLogLog6SketchEEELm128EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !19, i64 0, !20, i64 8, !23, i64 16, !4, i64 24, !26, i64 48, !26, i64 56, !29, i64 64}
!31 = !{!30, !19, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!4, !4, i64 0}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, i1 false, !"_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv"}
!37 = distinct !{!37, !36, !"_ZNK3tbb6detail2d126enumerable_thread_specificIN4mold11HyperLogLog6SketchENS1_23cache_aligned_allocatorIS5_EELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!38 = !{!37}
end_hunk_0
