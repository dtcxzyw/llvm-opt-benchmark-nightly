inline.NumInlined: 328
inline.NumDeleted: 252
begin_hunk_0_@_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb:bb.a
  store i64 %i.g, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %i.j = lshr i64 %i.g, 32                        ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb:bb.a

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %i.ap = phi ptr [ %i.z, %bb.i ], [ %i.ab, %bb.k ], [ %i.ab, %bb.m ], [ %i.ab, %bb.n ], [ %i.ab, %bb.o ] ; 9 uses
  %i.aq = phi i64 [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ] ; 2 uses
  %.0.i.sink.i.i28 = phi ptr [ %i.e, %bb.i ], [ %i.ah, %bb.k ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.ao, %bb.o ] ; 3 uses
  %.0.i.sink.i.i2858 = ptrtoint ptr %.0.i.sink.i.i28 to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i28, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.j ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb:bb.a
  br i1 %cmp.n70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i10.i.i57.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.sroa.03.0.i.i.i56.ph = phi ptr [ %i.ap, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i
  %.0.i10.i.i57 = phi ptr [ %i.bu, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.0.i10.i.i57.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %.sroa.03.0.i.i.i56 = phi ptr [ %i.bt, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.sroa.03.0.i.i.i56.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %i.bs = load i8, ptr %.sroa.03.0.i.i.i56, align 1, !tbaa !14
  store i8 %i.bs, ptr %.0.i10.i.i57, align 1, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 1
  %.not.i11.i.i = icmp eq ptr %i.bt, %i.at
  br i1 %.not.i11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, !llvm.loop !24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.bv, ptr %i.av, align 8, !tbaa !11
  %i.bw = load ptr, ptr %7, align 8, !tbaa !17
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb:bb.a
bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.cq, ptr %8, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.cs, align 4, !tbaa !28
  %i.ct = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false) #9 ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1
  %i.cw = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.cu, i64 %i.cv, i64 noundef 0) #9 ; 0 uses
  %i.cx = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cq
  br i1 %i.cy, label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, label %bb.w

end_hunk_3
begin_hunk_4_@_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !28
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !44
  store ptr %3, ptr %i.b, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !48, !noalias !49
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !15 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -281474976710656
end_hunk_4
begin_hunk_5_@llvm.umax.i64
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !20}
!25 = !{!26, !10, i64 0}
!26 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!27 = !{!26, !4, i64 8}
!28 = !{!26, !4, i64 12}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 0}
!31 = !{!32, !33, i64 8}
!32 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !33, i64 8}
!33 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !10, i64 0}
!34 = !{!35, !33, i64 8}
!35 = !{!"_ZTSN6hermes2vm7GCScopeE", !30, i64 0, !33, i64 8, !5, i64 16, !36, i64 144, !41, i64 192, !41, i64 200, !4, i64 208}
!36 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !37, i64 0, !40, i64 16}
!37 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !39, i64 0}
!39 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !26, i64 0}
!40 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!41 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !10, i64 0}
!42 = !{!35, !41, i64 192}
!43 = !{!35, !41, i64 200}
!44 = !{!35, !4, i64 208}
!45 = !{!46, !4, i64 8}
!46 = !{!"_ZTSN6hermes2vm10NativeArgsE", !47, i64 0, !4, i64 8, !41, i64 16}
!47 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !41, i64 0}
!48 = !{!47, !41, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!51 = distinct !{!51, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_5
