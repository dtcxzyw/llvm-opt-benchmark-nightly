Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tflite_importer?download=true
inline.NumInlined: 5833
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E:bb.a
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.e = load i32, ptr %.01735.epil, align 4, !tbaa !8
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %.01636.epil, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01735.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !961

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.016.lcssa = phi i64 [ 1, %bb.a ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  %.not18 = icmp eq i64 %4, 0
  br i1 %.not18, label %bb.b, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01636 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %.01735 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = load i32, ptr %.01735, align 4, !tbaa !8
  %i.j = sext i32 %i.i to i64
  %i.k = mul i64 %.01636, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.01735, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.01735, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.01735, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.01735, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.01735, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.01735, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01735, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.ai, %i.al                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01735, i64 32 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.401, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E, ptr noundef nonnull @.str.261, i32 noundef 622) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.s

bb.g:                                             ; preds = %._crit_edge
  %i.av = icmp eq i64 %.016.lcssa, %4
  br i1 %i.av, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.402, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E, ptr noundef nonnull @.str.261, i32 noundef 623) #27
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bd = trunc i64 %2 to i32
  invoke void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.bd, ptr noundef %1, i32 noundef 5, ptr noundef %3, ptr noundef null)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.bf, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !194
  store ptr %0, ptr %i.be, align 8, !tbaa !197
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void

bb.p:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn22.pn = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %i.bg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.r ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #26
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"_ZTSN11flatbuffers6VectorIijEE", !5, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN11flatbuffers14VectorIteratorIiiPKhjEE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !15, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !6, i64 16}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !25, i64 8}
!23 = !{!"_ZTSN2cv3dnn14dnn5_v2026060514TFLiteImporterE", !24, i64 0, !25, i64 8, !26, i64 16, !27, i64 24, !36, i64 72, !37, i64 80, !42, i64 104, !45, i64 152, !49, i64 176}
!24 = !{!"bool", !6, i64 0}
!25 = !{!"p1 _ZTSN13opencv_tflite5ModelE", !16, i64 0}
!26 = !{!"p1 _ZTSN11flatbuffers6VectorINS_6OffsetIN13opencv_tflite6TensorEEEjEE", !16, i64 0}
!27 = !{!"_ZTSSt3mapIiN2cv3MatESt4lessIiESaISt4pairIKiS1_EEE", !28, i64 0}
!28 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !29, i64 0}
!29 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv3MatEESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !30, i64 0, !32, i64 8}
!30 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !31, i64 0}
!31 = !{!"_ZTSSt4lessIiE"}
!32 = !{!"_ZTSSt15_Rb_tree_header", !33, i64 0, !20, i64 32}
!33 = !{!"_ZTSSt18_Rb_tree_node_base", !34, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!34 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!35 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!36 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053NetE", !16, i64 0}
!37 = !{!"_ZTSSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEE", !16, i64 0}
!42 = !{!"_ZTSSt3mapIiSt4pairIiiESt4lessIiESaIS0_IKiS1_EEE", !43, i64 0}
!43 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE", !44, i64 0}
!44 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiS0_IiiEESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !30, i64 0, !32, i64 8}
!45 = !{!"_ZTSSt6vectorIN2cv10DataLayoutESaIS1_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!49 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEMN2cv3dnn14dnn5_v2026060514TFLiteImporterEFvRKN13opencv_tflite8OperatorERKS5_RNS8_11LayerParamsEESt4lessIS5_ESaISt4pairISE_SJ_EEE", !50, i64 0}
!50 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_MN2cv3dnn14dnn5_v2026060514TFLiteImporterEFvRKN13opencv_tflite8OperatorERS7_RNSA_11LayerParamsEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE", !51, i64 0}
!51 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_MN2cv3dnn14dnn5_v2026060514TFLiteImporterEFvRKN13opencv_tflite8OperatorERS7_RNSA_11LayerParamsEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE13_Rb_tree_implISP_Lb1EEE", !52, i64 0, !32, i64 8}
!52 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !53, i64 0}
!53 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!54 = !{!15, !15, i64 0}
!55 = !{!56, !57, i64 8}
!56 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 int", !16, i64 0}
!58 = !{!56, !57, i64 0}
!59 = !{!60, !5, i64 4}
!60 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !61, i64 56, !62, i64 64, !63, i64 72, !65, i64 128}
!61 = !{!"p1 _ZTSN2cv12MatAllocatorE", !16, i64 0}
!62 = !{!"p1 _ZTSN2cv8UMatDataE", !16, i64 0}
!63 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !64, i64 4, !5, i64 8, !6, i64 12}
!64 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!65 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!66 = !{!60, !5, i64 72}
!67 = !{!56, !57, i64 16}
!68 = !{!19, !15, i64 0}
!69 = !{!20, !20, i64 0}
!70 = !{!18, !20, i64 8}
!71 = !{!23, !24, i64 0}
!72 = !{!32, !34, i64 0}
!73 = !{!32, !35, i64 8}
!74 = !{!32, !35, i64 16}
!75 = !{!32, !35, i64 24}
!76 = !{!32, !20, i64 32}
!77 = !{!36, !36, i64 0}
!78 = !{!79, !15, i64 0}
!79 = !{!"_ZTSN11flatbuffers16VerifierTemplateILb0EEE", !15, i64 0, !20, i64 8, !80, i64 16, !20, i64 48, !5, i64 56, !5, i64 60, !81, i64 64}
!80 = !{!"_ZTSN11flatbuffers16VerifierTemplateILb0EE7OptionsE", !5, i64 0, !5, i64 4, !24, i64 8, !24, i64 9, !20, i64 16, !24, i64 24}
!81 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !16, i64 0}
!82 = !{!79, !20, i64 8}
!83 = !{!24, !24, i64 0}
!84 = !{!85, !5, i64 0}
!85 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetIN13opencv_tflite8SubGraphEEEjEE", !5, i64 0}
!86 = !{!23, !26, i64 16}
!87 = !{!88, !5, i64 0}
!88 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetIN13opencv_tflite6TensorEEEjEE", !5, i64 0}
!89 = !{!35, !35, i64 0}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!57, !57, i64 0}
!93 = distinct !{!93, !91}
!94 = !{!48, !16, i64 0}
!95 = !{!48, !16, i64 16}
!96 = !{!"branch_weights", i32 1, i32 1048575}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_MN2cv3dnn14dnn5_v2026060514TFLiteImporterEFvRKN13opencv_tflite8OperatorERS7_RNSA_11LayerParamsEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE", !16, i64 0}
!99 = !{!33, !35, i64 16}
!100 = distinct !{!100, !91}
!101 = !{!33, !35, i64 24}
!102 = distinct !{!102, !91}
!103 = !{!64, !64, i64 0}
!104 = !{!48, !16, i64 8}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!107 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!108 = !{!106, !107, i64 16}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !91}
!112 = !{!106, !107, i64 8}
!113 = !{!23, !36, i64 72}
!114 = !{}
!115 = !{i64 8}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606053Net4ImplELN9__gnu_cxx12_Lock_policyE2EE", !118, i64 0, !119, i64 8}
!118 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053Net4ImplE", !16, i64 0}
!119 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0}
!120 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!121 = !{i8 0, i8 2}
!122 = !{!123, !5, i64 0}
!123 = !{!"_ZTSSt4pairIiiE", !5, i64 0, !5, i64 4}
!124 = !{!123, !5, i64 4}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNK11flatbuffers6String3strB5cxx11Ev: argument 0"}
!127 = distinct !{!127, !"_ZNK11flatbuffers6String3strB5cxx11Ev"}
!128 = !{!129, !5, i64 0}
!129 = !{!"_ZTSN11flatbuffers6VectorIcjEE", !5, i64 0}
!130 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK11flatbuffers6VectorIijE5beginEv: argument 0:thread"}
!133 = distinct !{!133, !"_ZNK11flatbuffers6VectorIijE5beginEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK11flatbuffers6VectorIijE3endEv: argument 0"}
!136 = distinct !{!136, !"_ZNK11flatbuffers6VectorIijE3endEv"}
!137 = !{!63, !5, i64 0}
!138 = !{!139, !140, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!140 = !{!"p1 _ZTSN2cv8MatShapeE", !16, i64 0}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK11flatbuffers6String3strB5cxx11Ev: argument 0"}
!143 = distinct !{!143, !"_ZNK11flatbuffers6String3strB5cxx11Ev"}
!144 = !{!145, !146, i64 8}
!145 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!146 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !16, i64 0}
end_hunk_0
