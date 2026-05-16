inline.NumInlined: 369
inline.NumDeleted: 169
begin_hunk_0_@_ZNK5folly7TcpInfo16packetsDeliveredEv:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7, !noalias !2851
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !2851
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2851
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !2851
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo27packetsDeliveredWithCEMarksEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2854
  %i.c = icmp sgt i32 %i.b, 199
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7, !noalias !2854
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !2854
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2854
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !2854
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo13cwndInPacketsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2857
  %i.c = icmp sgt i32 %i.b, 83
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7, !noalias !2857
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !2857
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2857
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !2857
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo11cwndInBytesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2860
  %i.c = icmp sgt i32 %i.b, 83
  br i1 %i.c, label %_ZNKR5folly8OptionalImE5valueEv.exit1, label %bb.b

_ZNKR5folly8OptionalImE5valueEv.exit1:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7, !noalias !2860
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2865, !noalias !2866
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw i64 %i.i, %i.f
  store i64 %i.j, ptr %0, align 8, !tbaa !86
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKR5folly8OptionalImE5valueEv.exit1
  %.sink = phi i8 [ 1, %_ZNKR5folly8OptionalImE5valueEv.exit1 ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.k, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo3mssEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2865
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %0, align 8, !tbaa !86
  store i8 1, ptr %i.d, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo8ssthreshEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2869
  %i.c = icmp sgt i32 %i.b, 79
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7, !noalias !2869
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !2869
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2869
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !2869
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo25deliveryRateBitsPerSecondEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2872
  %i.c = icmp sgt i32 %i.b, 167
  br i1 %i.c, label %_ZNKR5folly8OptionalImE5valueEv.exit.i, label %bb.b

_ZNKR5folly8OptionalImE5valueEv.exit.i:           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2820, !noalias !2872
  %i.f = shl i64 %i.e, 3
  store i64 %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !2877
  br label %_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2877
  br label %_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit

_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit: ; preds = %_ZNKR5folly8OptionalImE5valueEv.exit.i, %bb.b
  %.sink.i = phi i8 [ 1, %_ZNKR5folly8OptionalImE5valueEv.exit.i ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !2877
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.6") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2880
  %i.c = icmp sgt i32 %i.b, 167
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2820, !noalias !2880
  store i64 %i.e, ptr %0, align 8, !tbaa !86, !alias.scope !2880
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13, !alias.scope !2880
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.f, align 8, !tbaa !100, !alias.scope !2880
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo22deliveryRateAppLimitedEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.11") align 1 captures(none) initializes((0, 2)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68, !noalias !2883
  %i.c = icmp sgt i32 %i.b, 167
  br i1 %i.c, label %bb.b, label %_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7
  %2 = load i8, ptr %i.d, align 1
  %i.e = and i8 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %0, align 1, !tbaa !2888
  store i8 1, ptr %i.f, align 1, !tbaa !2889
  br label %bb.c

_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv.exit: ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !2892
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly7TcpInfo9ccNameRawB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 8 initializes((32, 33)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.c = load i8, ptr %i.b, align 8, !tbaa !90, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNKR5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

_ZNKR5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !91
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67   ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %_ZNKR5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc4.i unwind label %bb.f

.noexc4.i:                                        ; preds = %.noexc.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !101

.noexc6.i.i.i:                                    ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc5.i unwind label %bb.f

.noexc5.i:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
          to label %.noexc6.i unwind label %bb.f  ; 2 uses

.noexc6.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc6.i, %_ZNKR5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  %i.o = phi ptr [ %i.n, %.noexc6.i ], [ %i.f, %_ZNKR5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i ] ; 3 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.p, ptr %i.o, align 1, !tbaa !13
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !13
  store i8 1, ptr %i.a, align 8, !tbaa !90
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE31StorageNonTriviallyDestructibleD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %0) #20
  resume { ptr, i32 } %i.s

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %bb.a, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo10ccNameEnumEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.2") align 4 captures(none) initializes((0, 1), (4, 5)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 4, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.c = load i8, ptr %i.b, align 4, !tbaa !93, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit.i, label %_ZN5folly8OptionalINS_7TcpInfo21CongestionControlNameEEC2ERKS3_.exit

_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94
  store i32 %i.f, ptr %0, align 4, !tbaa !94
  store i8 1, ptr %i.a, align 4, !tbaa !93
  br label %_ZN5folly8OptionalINS_7TcpInfo21CongestionControlNameEEC2ERKS3_.exit

_ZN5folly8OptionalINS_7TcpInfo21CongestionControlNameEEC2ERKS3_.exit: ; preds = %bb.a, %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly7TcpInfo15ccNameEnumAsStrEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.f = load i8, ptr %i.e, align 4, !tbaa !93, !range !83, !noalias !2893, !noundef !84
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit, label %_ZNK5folly7TcpInfo10ccNameEnumEv.exit

_ZNK5folly7TcpInfo10ccNameEnumEv.exit:            ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !2896
  br label %bb.j

_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94, !noalias !2893 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 9, ptr %i.a, align 4, !tbaa !7
  store i32 %i.j, ptr %i.b, align 4, !tbaa !7
  %.not.i.i = icmp sgt i32 %i.j, 9
  br i1 %.not.i.i, label %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit, label %bb.b, !prof !101

_ZN6google12Check_GEImplB5cxx11EiiPKc.exit:       ; preds = %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit
  %i.k = call noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %2, align 8, !tbaa !2898
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 9, ptr %i.c, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.j, ptr %i.d, align 4, !tbaa !7
  %i.l = zext nneg i32 %i.j to i64
  br label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit

bb.b:                                             ; preds = %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 9, ptr %i.c, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.j, ptr %i.d, align 4, !tbaa !7
  %i.m = sext i32 %i.j to i64                     ; 2 uses
  %.not.i = icmp ugt i32 %i.j, 9
  br i1 %.not.i, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !2901

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.f

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %.thread, %bb.b
  %i.n = phi i64 [ %i.l, %.thread ], [ %i.m, %bb.b ]
  %i.o = call noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.7) ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !2898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %bb.f, label %bb.g
end_hunk_0
