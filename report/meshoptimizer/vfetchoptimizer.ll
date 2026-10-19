Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vfetchoptimizer?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 0, 4294967296) i64 @meshopt_optimizeVertexFetchRemap(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 -1, i64 %i.a, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %.01213.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.epil.init
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.i = add i32 %.01213.epil.init, 1
  store i32 %.01213.epil.init, ptr %i.f, align 4, !tbaa !9
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil.preheader, %bb.b, %._crit_edge.loopexit.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %bb.b ], [ %.01213.epil.init, %.lr.ph.epil.preheader ]
  %i.j = zext i32 %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.012.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  ret i64 %.012.lcssa

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %.014 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %bb.e ] ; 3 uses
  %.01213 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.q = add i32 %.01213, 1
  store i32 %.01213, ptr %i.n, align 4, !tbaa !9
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %.lr.ph
  %.1 = phi i32 [ %i.q, %bb.c ], [ %.01213, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.y = add i32 %.1, 1
  store i32 %.1, ptr %i.v, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1.1 = phi i32 [ %i.y, %bb.d ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %i.z = add nuw i64 %.014, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 4294967296) i64 @meshopt_optimizeVertexFetch(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %.not50 = icmp eq ptr %0, %3                    ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not50, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = mul i64 %5, %4                           ; 2 uses
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !22
  %i.c = invoke noundef ptr %i.b(i64 noundef %i.a)
          to label %bb.c unwind label %bb.h, !inline_history !19 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i64 1, ptr %i.d, align 8, !tbaa !15
  store ptr %i.c, ptr %6, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %3, i64 %i.a, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.phi = phi ptr [ %.sroa.gep, %bb.c ], [ %6, %bb.a ]
  %i.e = phi i64 [ 2, %bb.c ], [ 1, %bb.a ]
  %.037 = phi ptr [ %i.c, %bb.c ], [ %3, %bb.a ]
  %i.f = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !22
  %i.g = icmp ugt i64 %4, 4611686018427387903
  %i.h = shl i64 %4, 2                            ; 2 uses
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = invoke noundef ptr %i.f(i64 noundef %i.i)
          to label %bb.e unwind label %bb.h, !inline_history !20 ; 3 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %.sroa.phi, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 -1, i64 %i.h, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.lr.ph.i.peel, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.k = zext i32 %.1 to i64
  br label %.lr.ph.i.peel

.lr.ph.i.peel:                                    ; preds = %bb.e, %._crit_edge.loopexit
  %.034.lcssa = phi i64 [ 0, %bb.e ], [ %i.k, %._crit_edge.loopexit ]
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.m = getelementptr [8 x i8], ptr %6, i64 %i.e
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  invoke void %i.l(ptr noundef %i.o)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.peel
  br i1 %.not50, label %.lr.ph.i, label %_ZN17meshopt_AllocatorD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.q = load ptr, ptr %6, align 8, !tbaa !16
  invoke void %i.p(ptr noundef %i.q)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  tail call void @__clang_call_terminate(ptr %i.r) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i64 %.034.lcssa

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  resume { ptr, i32 } %i.s

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.042 = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.e ]  ; 2 uses
  %.03441 = phi i32 [ %.1, %bb.j ], [ 0, %bb.e ]  ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.042 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.z = zext i32 %.03441 to i64
  %i.aa = mul i64 %5, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = mul i64 %5, %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %.037, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %5, i1 false)
  %i.ae = add i32 %.03441, 1
  store i32 %.03441, ptr %i.w, align 4, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.af = phi i32 [ %.03441, %bb.i ], [ %i.x, %.lr.ph ]
  %.1 = phi i32 [ %i.ae, %bb.i ], [ %.03441, %.lr.ph ] ; 2 uses
  store i32 %i.af, ptr %i.t, align 4, !tbaa !9
  %i.ag = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTSN17meshopt_Allocator7StorageE", !11, i64 0, !11, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTS17meshopt_Allocator", !5, i64 0, !13, i64 192}
!15 = !{!14, !13, i64 192}
!16 = !{!11, !11, i64 0}
!17 = !{!12, !11, i64 8}
!18 = distinct !{!18, !10}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{!21, !10}
!22 = !{!12, !11, i64 0}
!23 = distinct !{!23, !10}
end_hunk_0
