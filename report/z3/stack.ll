Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/stack?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
begin_hunk_0_@_ZN5stackD2Ev:bb.a
  invoke void @_Z9del_pagesPc(ptr noundef %i.z)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %_ZN5stack5resetEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  invoke void @_Z9del_pagesPc(ptr noundef %i.ab)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  ret void

.loopexit:                                        ; preds = %bb.c, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_ZN5stack5resetEv.exit, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ac = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #7
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5stack5resetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5stack10deallocateEv.exit
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.x, %_ZN5stack10deallocateEv.exit ] ; 2 uses
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %_ZN5stack10deallocateEv.exit ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = and i64 %i.n, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  tail call void @_Z12recycle_pagePcRS_(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  store ptr %i.p, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8184
  store ptr %i.q, ptr %i.g, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.i = and i64 %i.h, -2
  %i.r = inttoptr i64 %.in.i to ptr               ; 4 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !15
  %i.s = trunc i64 %i.h to i1
  br i1 %i.s, label %bb.e, label %_ZN5stack10deallocateEv.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !16   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN5stack10deallocateEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.t)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %_ZN5stack10deallocateEv.exit

_ZN5stack10deallocateEv.exit:                     ; preds = %bb.d, %bb.e, %bb.f
  %i.v = phi ptr [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %_ZN5stack10deallocateEv.exit, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

declare void @_Z9del_pagesPc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5stack10deallocateEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp eq ptr %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = and i64 %i.i, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_Z12recycle_pagePcRS_(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in = and i64 %i.d, -2
  %i.o = inttoptr i64 %.in to ptr                 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !15
  %i.p = trunc i64 %i.d to i1
  br i1 %i.p, label %bb.d, label %_Z13dealloc_svectIcEvPT_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_Z13dealloc_svectIcEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.q)
  br label %_Z13dealloc_svectIcEvPT_.exit

_Z13dealloc_svectIcEvPT_.exit:                    ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK5stack3topEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = trunc i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN5stack14allocate_smallEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8184 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !12
  store i64 %i.h, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.o = phi ptr [ %i.n, %bb.b ], [ %i.c, %bb.a ]
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, 7
  %storemerge.in = and i64 %i.q, -8
  %storemerge = inttoptr i64 %storemerge.in to ptr ; 3 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge, i64 8 ; 2 uses
  %i.s = icmp ugt ptr %i.r, %.sink
  %i.t = ptrtoint ptr %.0 to i64
  %i.u = zext i1 %2 to i64
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 4 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8184
  store ptr %i.z, ptr %i.d, align 8, !tbaa !12
  store i64 %i.v, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %_ZN5stack10store_markEPvb.exit

bb.e:                                             ; preds = %bb.c
  store i64 %i.v, ptr %storemerge, align 8, !tbaa !13
  br label %_ZN5stack10store_markEPvb.exit

_ZN5stack10store_markEPvb.exit:                   ; preds = %bb.d, %bb.e
  %storemerge.i = phi ptr [ %i.r, %bb.e ], [ %i.aa, %bb.d ]
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !15
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN5stack12allocate_bigEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 5 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8184 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !12
  store i64 %i.i, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink.i = phi ptr [ %i.m, %bb.b ], [ %i.f, %bb.a ]
  %i.p = phi ptr [ %i.o, %bb.b ], [ %i.d, %bb.a ]
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 7
  %storemerge.in.i = and i64 %i.r, -8
  %storemerge.i = inttoptr i64 %storemerge.in.i to ptr ; 3 uses
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8 ; 2 uses
  %i.t = icmp ugt ptr %i.s, %.sink.i
  %i.u = ptrtoint ptr %.0.i to i64
  %i.v = or i64 %i.u, 1                           ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 4 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8184
  store ptr %i.z, ptr %i.e, align 8, !tbaa !12
  store i64 %i.v, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %_ZN5stack14allocate_smallEmb.exit

bb.e:                                             ; preds = %bb.c
  store i64 %i.v, ptr %storemerge.i, align 8, !tbaa !13
  br label %_ZN5stack14allocate_smallEmb.exit

_ZN5stack14allocate_smallEmb.exit:                ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi ptr [ %i.s, %bb.e ], [ %i.aa, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !15
  store ptr %i.a, ptr %.0.i, align 8, !tbaa !16
  ret ptr %i.a
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #4

declare void @_Z12recycle_pagePcRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS5stack", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !10, i64 8}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!9, !10, i64 24}
!20 = !{!11, !11, i64 0}
end_hunk_0
