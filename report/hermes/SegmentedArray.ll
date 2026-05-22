inline.NumInlined: 913
inline.NumDeleted: 300
begin_hunk_0_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj:bb.a
bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = zext i32 %.0.i to i64
  %i.ay = xor i32 %2, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.ax
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = and i64 %i.bb, 4092
  %i.bd = shl nuw nsw i64 %i.at, 2
  %i.be = sub nsw i64 %i.bc, %i.bd                ; 2 uses
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bk, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block
  %.01320.i.i.ph = phi ptr [ %i.au, %bb.d ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !248

bb.e:                                             ; preds = %bb.c
  %i.bn = icmp ult i32 %i.ap, %i.ar
  br i1 %i.bn, label %bb.f, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bp = shl nuw nsw i32 %i.ap, 2
  %.idx14.i = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx14.i ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24
  %i.bu = and i64 %i.br, -4194304
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = icmp ne ptr %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.by = load i8, ptr %i.bx, align 1, !range !25
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bw, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.g, label %.sink.split.i, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cc = sub i32 %i.ar, %i.ap
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cb, ptr noundef nonnull %i.bq, i32 noundef %i.cc) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block, %bb.g, %bb.f
  store atomic i32 %i.ap, ptr %i.aq release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.e, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = zext i32 %.0.i13 to i64
  %.idx15 = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx15 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24
  %i.cj = and i64 %i.cg, -4194304
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = icmp ne ptr %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cn = load i8, ptr %i.cm, align 1, !range !25
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.h, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !14

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cr = sub i32 %i.s, %.0.i13
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, ptr noundef nonnull %i.cf, i32 noundef %i.cr) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %bb.h
  store atomic i32 %.0.i13, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE29maxNumSegmentsWithoutOverflowEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4194299
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SegmentBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment2vtE, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm21SegmentSmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2vtE, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23SegmentedArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2vtE, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm28SegmentedArraySmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2vtE, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind writable sret(%"class.std::lock_guard") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !9, i64 0, !10, i64 16, !10, i64 24}
!9 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!13 = !{!8, !10, i64 24}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22, !18, !19}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22, !19, !18}
!24 = !{!9, !10, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorE", !28, i64 0, !4, i64 8, !29, i64 16}
!28 = !{!"p1 _ZTSN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEEE", !11, i64 0}
!29 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !11, i64 0}
!30 = !{!27, !4, i64 8}
!31 = !{!29, !29, i64 0}
!32 = !{!27, !29, i64 16}
!33 = !{}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!36 = distinct !{!36, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj: argument 0"}
!39 = distinct !{!39, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!42 = distinct !{!42, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj: argument 0"}
!45 = distinct !{!45, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj"}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!48, !16, i64 0}
!48 = !{!"_ZTSN6hermes2vm11HermesValueE", !16, i64 0}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!51 = distinct !{!51, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!52 = distinct !{!52, !53, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!53 = distinct !{!53, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!54 = !{!55, !56, i64 8}
!55 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !56, i64 8, !5, i64 16, !56, i64 24, !16, i64 32, !16, i64 40}
!56 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!57 = !{!55, !56, i64 24}
!58 = !{!55, !16, i64 32}
!59 = !{!55, !16, i64 40}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!62 = distinct !{!62, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!63 = distinct !{!63, !64, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!64 = distinct !{!64, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!67 = distinct !{!67, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!68 = distinct !{!68, !69, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!69 = distinct !{!69, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt10lock_guardISt15recursive_mutexE", !72, i64 0}
!72 = !{!"p1 _ZTSSt15recursive_mutex", !11, i64 0}
!73 = !{i64 8}
!74 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!75 = distinct !{!75, !22, !18, !19}
!76 = distinct !{!76, !22, !19, !18}
!77 = distinct !{!77, !22, !18, !19}
!78 = distinct !{!78, !22, !19, !18}
!79 = !{!80, !81, i64 8}
!80 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !81, i64 8}
!81 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!82 = !{!83, !91, i64 192}
!83 = !{!"_ZTSN6hermes2vm7GCScopeE", !84, i64 0, !81, i64 8, !5, i64 16, !85, i64 144, !91, i64 192, !91, i64 200, !4, i64 208}
!84 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!85 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !86, i64 0, !90, i64 16}
!86 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !87, i64 0}
!87 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !88, i64 0}
!88 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !89, i64 0}
!89 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!90 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!91 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!92 = !{!83, !91, i64 200}
!93 = distinct !{!93, !18, !19}
!94 = distinct !{!94, !18, !19}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22, !18, !19}
!97 = distinct !{!97, !22, !19, !18}
!98 = distinct !{!98, !22}
!99 = !{!100, !91, i64 0}
!100 = !{!"_ZTSN6hermes2vm10HandleBaseE", !91, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!103 = distinct !{!103, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!104 = !{!91, !91, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE: argument 0"}
!107 = distinct !{!107, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!110 = distinct !{!110, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE: argument 0"}
!113 = distinct !{!113, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE"}
!114 = distinct !{!114, !22}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!117 = distinct !{!117, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE: argument 0"}
!120 = distinct !{!120, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE: argument 0"}
!123 = distinct !{!123, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE"}
!124 = distinct !{!124, !22, !18, !19}
!125 = distinct !{!125, !22, !19, !18}
!126 = distinct !{!126, !22, !18, !19}
!127 = distinct !{!127, !22, !19, !18}
!128 = distinct !{!128, !22, !18, !19}
!129 = distinct !{!129, !22, !19, !18}
!130 = distinct !{!130, !18, !19}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE: argument 0"}
!133 = distinct !{!133, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj: argument 0"}
!136 = distinct !{!136, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE: argument 0"}
!139 = distinct !{!139, !"_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE: argument 0"}
!142 = distinct !{!142, !"_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE"}
!143 = distinct !{!143, !22}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj: argument 0"}
!146 = distinct !{!146, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorplEj"}
!147 = distinct !{!147, !22}
!148 = distinct !{!148, !22, !18, !19}
!149 = distinct !{!149, !22, !19, !18}
!150 = distinct !{!150, !18, !19}
!151 = distinct !{!151, !22, !18, !19}
!152 = distinct !{!152, !22, !19, !18}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTSN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorE", !155, i64 0, !4, i64 8, !29, i64 16}
!155 = !{!"p1 _ZTSN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EEE", !11, i64 0}
!156 = !{!154, !4, i64 8}
!157 = !{!154, !29, i64 16}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorplEj: argument 0"}
!160 = distinct !{!160, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorplEj"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormiEj: argument 0"}
!163 = distinct !{!163, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormiEj"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorplEj: argument 0"}
!166 = distinct !{!166, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorplEj"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormiEj: argument 0"}
!169 = distinct !{!169, !"_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormiEj"}
!170 = !{!171, !4, i64 0}
!171 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!172 = !{!173, !175}
!173 = distinct !{!173, !174, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!174 = distinct !{!174, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!175 = distinct !{!175, !176, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!176 = distinct !{!176, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!177 = !{!178, !180}
!178 = distinct !{!178, !179, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!179 = distinct !{!179, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!180 = distinct !{!180, !181, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!181 = distinct !{!181, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!184 = distinct !{!184, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!185 = distinct !{!185, !186, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!186 = distinct !{!186, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
end_hunk_0
