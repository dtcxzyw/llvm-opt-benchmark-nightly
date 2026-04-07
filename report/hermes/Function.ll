inline.NumInlined: 464
inline.NumDeleted: 291
begin_hunk_0_@_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !313
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !315
  %i.bs = call { i32, i64 } %i.br(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !320 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %i.be, label %bb.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

bb.e:                                             ; preds = %.epil.preheader
  %i.bf = load ptr, ptr %2, align 8, !tbaa !7, !noalias !323
  %i.bg = zext i32 %.030.epil.init to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bh
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !313
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !315
  %i.by = tail call { i32, i64 } %i.bx(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #14 ; 2 uses
  %i.bz = extractvalue { i32, i64 } %i.by, 0
  %i.ca = extractvalue { i32, i64 } %i.by, 1
  %i.cb = icmp ne i32 %i.bz, 0                    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %i.cc, label %bb.g, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %2, align 8, !tbaa !7, !noalias !323
  %i.ce = zext i32 %.030 to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cf
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %i.co, label %bb.h, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %i.cp = load ptr, ptr %2, align 8, !tbaa !7, !noalias !323
  %i.cq = zext i32 %i.cn to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cr
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.cy = add nuw i32 %.030, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !326

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.027.1 = phi i32 [ %i.bd, %bb.d ], [ %spec.select, %._crit_edge ]
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !327 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.b:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !74
  store ptr %i.a, ptr %4, align 8, !tbaa !7, !alias.scope !330
  %i.v = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.0.0.i, i32 noundef %i.u, ptr noundef nonnull dead_on_return %4) #14
  br label %bb.c

end_hunk_8
begin_hunk_9_@_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE
; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !333 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq i32 %i.c, 0
end_hunk_9
begin_hunk_10_@_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.197") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !337
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i
end_hunk_10
begin_hunk_11_@_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !337
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !55
  ret void
end_hunk_11
begin_hunk_12_@llvm.uadd.sat.i32
!317 = !{!"_ZTSN6hermes2vm12ObjectVTableE", !318, i64 0, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!318 = !{!"_ZTSN6hermes2vm6VTableE", !34, i64 0, !319, i64 8, !4, i64 12, !10, i64 16, !10, i64 24, !10, i64 32}
!319 = !{!"_ZTSN6hermes2vm8CellKindE", !5, i64 0}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!322 = distinct !{!322, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!325 = distinct !{!325, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!326 = distinct !{!326, !64}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!329 = distinct !{!329, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!332 = distinct !{!332, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!335 = distinct !{!335, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!336 = !{!61, !62, i64 0}
!337 = !{!60, !34, i64 8}
end_hunk_12
