inline.NumInlined: 784
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = load atomic ptr, ptr %i.d acquire, align 8
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i, label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit

_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i: ; preds = %bb.b
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = inttoptr i64 %i.i to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store atomic i32 0, ptr %i.l monotonic, align 4
  br label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit

_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit: ; preds = %bb.b, %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN6google8protobuf8internal12MapMergeFromIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEvRNS0_3MapIDpT_EERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n), !inline_history !47
  br label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3
  %i.q = or i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = add nsw i64 %i.s, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.c, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf6Struct12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf18Struct_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf18Struct_class_data_E, i64 8), align 8, !tbaa !23
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf18Struct_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser15GenericFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf6Struct5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal12MapFieldBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.c, %bb.d
  ret void
}

declare void @_ZN6google8protobuf8internal12MapFieldBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf6Struct18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::internal::MapSorterPtr", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !49, !range !53, !noundef !54
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.e, align 8, !tbaa !48
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !56     ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not5361 = icmp eq i64 %i.o, 0
  br i1 %.not5361, label %._crit_edge, label %.lr.ph64

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.q = phi ptr [ %i.n, %bb.e ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.e ], [ %i.t, %._crit_edge.loopexit ]
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit, label %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.q) #27
  br label %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit

_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.lr.ph64:                                         ; preds = %bb.e, %bb.g
  %.063 = phi ptr [ %i.t, %bb.g ], [ %1, %bb.e ]
  %.sroa.049.062 = phi ptr [ %i.z, %bb.g ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.049.062, align 8, !tbaa !64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = invoke noundef ptr @_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.063, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %.lr.ph64
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = trunc i64 %i.w to i32
  %i.y = invoke noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.u, i32 noundef %i.x, i32 noundef 1, i64 29, ptr nonnull @.str.4)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.049.062, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.z, %i.p
  br i1 %.not53, label %._crit_edge.loopexit, label %.lr.ph64

bb.h:                                             ; preds = %bb.f, %.lr.ph64
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !55  ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i37, label %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit39, label %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i38

_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i38: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #27
  br label %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit39

_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit39: ; preds = %bb.h, %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46, !noalias !69 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32, !noalias !69
  %i.ag = zext i32 %i.ad to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74, !noalias !69 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i40 = icmp eq i64 %indvars.iv.next.i, %i.ag
  br i1 %.not.i.i40, label %.loopexit, label %bb.j, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.j
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph99, %.lr.ph
  %.160.ph = phi ptr [ %1, %.lr.ph ], [ %i.ao, %.lr.ph99 ]
  %.sroa.11.059.ph = phi i32 [ %i.ak, %.lr.ph ], [ %.0.i.i97, %.lr.ph99 ]
  %.sroa.043.058.ph = phi ptr [ %i.ai, %.lr.ph ], [ %i.bb, %.lr.ph99 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.160 = phi ptr [ %i.ao, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.160.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.043.058 = phi ptr [ %i.au, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.sroa.043.058.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.043.058, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.043.058, i64 40
  %i.ao = tail call noundef ptr @_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef %.160, ptr noundef nonnull %2) ; 4 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.043.058, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.ap, i32 noundef %i.as, i32 noundef 1, i64 29, ptr nonnull @.str.4) ; 0 uses
  %i.au = load ptr, ptr %.sroa.043.058, align 8, !tbaa !78 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.au, null
  br i1 %.not.i.i41, label %bb.l, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.l:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !46 ; 2 uses
  %.0.i.i96 = add i32 %.sroa.11.059.ph, 1         ; 2 uses
  %i.aw = icmp ult i32 %.0.i.i96, %i.av
  br i1 %i.aw, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %bb.l
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !32
  br label %.lr.ph99

bb.m:                                             ; preds = %.lr.ph99
  %.0.i.i = add i32 %.0.i.i97, 1                  ; 2 uses
  %i.ay = icmp ult i32 %.0.i.i, %i.av
  br i1 %i.ay, label %.lr.ph99, label %.loopexit, !llvm.loop !80

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.m
  %.0.i.i97 = phi i32 [ %.0.i.i, %bb.m ], [ %.0.i.i96, %.lr.ph99.preheader ] ; 3 uses
  %i.az = zext i32 %.0.i.i97 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !74 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

.loopexit:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.i, %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit, %bb.b, %bb.a
  %.3 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %.0.lcssa, %_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEED2Ev.exit ], [ %i.ao, %bb.l ], [ %1, %bb.i ], [ %i.ao, %bb.m ], [ %1, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10 ; 2 uses
  %i.bf = trunc i64 %i.be to i1
  br i1 %i.bf, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.n, !prof !42

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.bg = add nsw i64 %i.be, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef %.3, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.4 = phi ptr [ %i.bj, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.3, %.loopexit ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !55
  br label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #28 ; 7 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46, !noalias !81 ; 4 uses
  %.not12.i.i = icmp eq i32 %i.g, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32, !noalias !81
  %i.j = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74, !noalias !81 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %.not.i.i, label %._crit_edge, label %bb.c, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.d, %.preheader.preheader, %.preheader, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  invoke void @_ZSt16__introsort_loopIPPKvlN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, i64 noundef %i.s)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %._crit_edge
  %i.t = icmp ugt i32 %i.a, 16
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  invoke void @_ZSt16__insertion_sortIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.u)
          to label %.lr.ph.i.i.i.i unwind label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i ], [ %i.u, %bb.e ] ; 3 uses
  %i.v = load ptr, ptr %.07.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.g ] ; 3 uses
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.x) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.aa
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.g, label %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.y, ptr %.09.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.f, !llvm.loop !86

_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.v, ptr %.09.i.i.i.i.i, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !87

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.p)
          to label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %._crit_edge
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph56, %.lr.ph
  %.028.ph = phi ptr [ %i.e, %.lr.ph ], [ %i.al, %.lr.ph56 ]
  %.sroa.12.027.ph = phi i32 [ %i.n, %.lr.ph ], [ %.0.i.i55, %.lr.ph56 ]
  %.sroa.019.026.ph = phi ptr [ %i.l, %.lr.ph ], [ %i.as, %.lr.ph56 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.028 = phi ptr [ %i.al, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.028.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 2 uses
  %.sroa.019.026 = phi ptr [ %i.am, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.sroa.019.026.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  store ptr %i.ak, ptr %.028, align 8, !tbaa !64
  %i.am = load ptr, ptr %.sroa.019.026, align 8, !tbaa !78 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.am, null
  br i1 %.not.i.i18, label %.preheader.preheader, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

.preheader.preheader:                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.0.i.i54 = add i32 %.sroa.12.027.ph, 1         ; 2 uses
  %i.an = icmp ult i32 %.0.i.i54, %i.g
  br i1 %i.an, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader.preheader
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !32
  br label %.lr.ph56

.preheader:                                       ; preds = %.lr.ph56
  %.0.i.i = add i32 %.0.i.i55, 1                  ; 2 uses
  %i.ap = icmp ult i32 %.0.i.i, %i.g
  br i1 %i.ap, label %.lr.ph56, label %._crit_edge, !llvm.loop !80

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.preheader
  %.0.i.i55 = phi i32 [ %.0.i.i, %.preheader ], [ %.0.i.i54, %.lr.ph56.preheader ] ; 3 uses
  %i.aq = zext i32 %.0.i.i55 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.preheader, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i, %bb.h, %.thread
  ret void

_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #27
  br label %_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i = icmp ult ptr %3, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %3)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.c = shl i32 %0, 3                            ; 2 uses
  %i.d = or disjoint i32 %i.c, 2                  ; 2 uses
  %i.e = icmp ugt i32 %i.c, 127
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !90

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i32 %.07.i1.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i, align 1, !tbaa !39
  %i.h = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.j = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !91, !llvm.loop !92

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.k = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.k, ptr %.0.i.lcssa.i, align 1, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = mul nuw nsw i32 %i.r, 9
  %i.t = add nuw nsw i32 %i.s, 73
  %i.u = lshr i32 %i.t, 6
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = or i32 %i.w, 1
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = mul nuw nsw i32 %i.z, 9
  %i.ab = add nuw nsw i32 %i.aa, 73
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = add i32 %i.w, 2
  %i.ae = add i32 %i.ad, %i.o
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = add i32 %i.af, %i.u                     ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, 127
  br i1 %i.ah, label %.lr.ph.i14, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17, !prof !90

.lr.ph.i14:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %.lr.ph.i14
  %.0.i2.i15 = phi ptr [ %i.al, %.lr.ph.i14 ], [ %i.l, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.07.i1.i16 = phi i32 [ %i.ak, %.lr.ph.i14 ], [ %i.ag, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.ai = trunc i32 %.07.i1.i16 to i8
  %i.aj = or i8 %i.ai, -128
  store i8 %i.aj, ptr %.0.i2.i15, align 1, !tbaa !39
  %i.ak = lshr i32 %.07.i1.i16, 7                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i2.i15, i64 1 ; 2 uses
  %i.am = icmp ugt i32 %.07.i1.i16, 16383
  br i1 %i.am, label %.lr.ph.i14, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17, !prof !91, !llvm.loop !92

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17: ; preds = %.lr.ph.i14, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.07.i.lcssa.i12 = phi i32 [ %i.ag, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ak, %.lr.ph.i14 ]
  %.0.i.lcssa.i13 = phi ptr [ %i.l, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.al, %.lr.ph.i14 ] ; 2 uses
  %i.an = trunc nuw nsw i32 %.07.i.lcssa.i12 to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i13, i64 1 ; 3 uses
  store i8 %i.an, ptr %.0.i.lcssa.i13, align 1, !tbaa !39
  %i.ap = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i.i = icmp ult ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, label %bb.c, !prof !89

bb.c:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17
  %i.aq = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull %i.ao)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i: ; preds = %bb.c, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17
  %.0.i5.i = phi ptr [ %i.aq, %bb.c ], [ %i.ao, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17 ] ; 5 uses
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !68  ; 6 uses
  %i.as = icmp sgt i64 %i.ar, 127
  br i1 %i.as, label %.critedge.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !88
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %.0.i5.i to i64
  %reass.sub = sub i64 %i.au, %i.av
  %i.aw = add i64 %reass.sub, 14
  %i.ax = icmp slt i64 %i.aw, %i.ar
  br i1 %i.ax, label %.critedge.i.i, label %bb.e, !prof !42

.critedge.i.i:                                    ; preds = %bb.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.ay = load ptr, ptr %1, align 8, !tbaa !65
  %i.az = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, i32 noundef 1, i64 %i.ar, ptr %i.ay, ptr noundef %.0.i5.i)
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 1
  store i8 10, ptr %.0.i5.i, align 1, !tbaa !39
  %i.bb = trunc i64 %i.ar to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 2 ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !39
  %i.bd = load ptr, ptr %1, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.bd, i64 %i.ar, i1 false)
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.ar
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit

_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit: ; preds = %.critedge.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.az, %.critedge.i.i ], [ %i.be, %bb.e ] ; 3 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i.i18 = icmp ult ptr %.0.i.i, %i.bf
  br i1 %.not.i.i18, label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit, label %bb.f, !prof !89

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit
  %i.bg = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %.0.i.i)
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit

_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit: ; preds = %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit, %bb.f
  %.0.i.i20 = phi ptr [ %i.bg, %bb.f ], [ %.0.i.i, %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit ]
  %i.bh = load atomic i32, ptr %i.v monotonic, align 8
  %i.bi = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.bh, ptr noundef %.0.i.i20, ptr noundef nonnull %4)
  ret ptr %i.bi
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf6Struct12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46, !noalias !93 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.t, 0
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32, !noalias !93
  %i.w = zext i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74, !noalias !93 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %.not.i.i, label %.loopexit, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b
  %i.aa = trunc nuw i64 %indvars.iv.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph52, %.lr.ph
  %.025.ph = phi i64 [ %i.r, %.lr.ph ], [ %i.bj, %.lr.ph52 ]
  %.sroa.11.024.ph = phi i32 [ %i.aa, %.lr.ph ], [ %.0.i.i51, %.lr.ph52 ]
  %.sroa.015.023.ph = phi ptr [ %i.y, %.lr.ph ], [ %i.br, %.lr.ph52 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.025 = phi i64 [ %i.bj, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.025.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.015.023 = phi ptr [ %i.bk, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.sroa.015.023.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = or i32 %i.af, 1
  %i.ah = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %i.ai = xor i32 %i.ah, 31
  %i.aj = mul nuw nsw i32 %i.ai, 9
  %i.ak = add nuw nsw i32 %i.aj, 73
  %i.al = lshr i32 %i.ak, 6
  %i.am = add i32 %i.af, 2
  %i.an = add i32 %i.am, %i.al
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac), !inline_history !98 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %i.aq, 1
  %i.as = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ar, i1 true)
  %i.at = xor i32 %i.as, 31
  %i.au = mul nuw nsw i32 %i.at, 9
  %i.av = add nuw nsw i32 %i.au, 73
  %i.aw = lshr i32 %i.av, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %i.ap, %i.ax
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = or i32 %i.ba, 1
  %i.bc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bb, i1 true)
  %i.bd = xor i32 %i.bc, 31
  %i.be = mul nuw nsw i32 %i.bd, 9
  %i.bf = add nuw nsw i32 %i.be, 73
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = add i64 %i.az, %.025
  %i.bj = add i64 %i.bi, %i.bh                    ; 4 uses
  %i.bk = load ptr, ptr %.sroa.015.023, align 8, !tbaa !78 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i14, label %bb.d, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !46  ; 2 uses
  %.0.i.i50 = add i32 %.sroa.11.024.ph, 1         ; 2 uses
  %i.bm = icmp ult i32 %.0.i.i50, %i.bl
  br i1 %i.bm, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !32
  br label %.lr.ph52

bb.e:                                             ; preds = %.lr.ph52
  %.0.i.i = add i32 %.0.i.i51, 1                  ; 2 uses
  %i.bo = icmp ult i32 %.0.i.i, %i.bl
  br i1 %i.bo, label %.lr.ph52, label %.loopexit, !llvm.loop !80

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.e
  %.0.i.i51 = phi i32 [ %.0.i.i, %bb.e ], [ %.0.i.i50, %.lr.ph52.preheader ] ; 3 uses
  %i.bp = zext i32 %.0.i.i51 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.e, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ %i.bj, %bb.d ], [ %i.r, %bb.a ], [ %i.bj, %bb.e ], [ %i.r, %bb.c ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bu = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.bt)
  ret i64 %i.bu
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Struct8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf6Struct5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e), !inline_history !99
  %i.g = load atomic ptr, ptr %i.e acquire, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i, label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i

_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store atomic i32 0, ptr %i.m monotonic, align 4
  br label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i

_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i: ; preds = %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f), !inline_history !99
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN6google8protobuf8internal12MapMergeFromIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEvRNS0_3MapIDpT_EERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o), !inline_history !100
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3
  %i.r = or i32 %i.q, %i.c
  store i32 %i.r, ptr %i.p, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = add nsw i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.y), !inline_history !99
  br label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit

_ZN6google8protobuf6Struct9MergeFromERKS1_.exit:  ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Struct12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !101
  %i.d = load i64, ptr %i.b, align 8, !tbaa !101
  store i64 %i.d, ptr %i.a, align 8, !tbaa !101
  store i64 %i.c, ptr %i.b, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6google8protobuf8internal12MapFieldBase12InternalSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  ret void
}

declare void @_ZN6google8protobuf8internal12MapFieldBase12InternalSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf6Struct11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf6Struct12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Value26set_allocated_struct_valueEPNS0_6StructE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.c = trunc i64 %i.b to i1                     ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED0Ev:bb.a
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEC2EPKNS0_7MessageENS1_22InternalMetadataOffsetERKSA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = icmp eq i32 %2, 0
  %i.c = add nsw i32 %2, -8
  %spec.select.i = select i1 %i.b, i32 0, i32 %i.c ; 3 uses
  invoke void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1697120328, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal17kGlobalEmptyTableE, ptr %i.h, align 8, !tbaa !32
  %i.i = icmp eq i32 %spec.select.i, 0
  br i1 %i.i, label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %spec.select.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10   ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  br label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.l to ptr
  br label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i

_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEC2ENS0_8internal22InternalMetadataOffsetERKS9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i
  %i.t = invoke noundef ptr @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14CloneFromOtherEPNS0_5ArenaERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc.i unwind label %bb.g, !inline_history !139

.noexc.i:                                         ; preds = %bb.f
  %i.u = load i32, ptr %i.d, align 8, !tbaa !48
  %i.v = zext i32 %i.u to i64
  invoke void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MergeIntoEmptyEPNS0_5ArenaEPNS1_8NodeBaseEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %.0.i.i.i.i, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEC2ENS0_8internal22InternalMetadataOffsetERKS9_.exit unwind label %bb.g, !inline_history !139

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26, !inline_history !140
  br label %.body

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEC2ENS0_8internal22InternalMetadataOffsetERKS9_.exit: ; preds = %.noexc.i, %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit.i
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  tail call void @_ZN6google8protobuf8internal12MapFieldBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal12MapFieldBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MergeIntoEmptyEPNS0_5ArenaEPNS1_8NodeBaseEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %3, 1073741824
  br i1 %i.a, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %3, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.d = sub nuw nsw i64 64, %i.c                 ; 2 uses
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = and i64 %i.f, 4611686018427387900
  %.neg4.i.i.i = and i64 %i.e, -2
  %i.h = sub i64 %.neg4.i.i.i, %i.g
  %i.i = icmp ugt i64 %3, %i.h
  %i.j = shl i64 2, %i.d
  %spec.select.i.i = select i1 %i.i, i64 %i.j, i64 %i.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i, i64 2)
  %i.k = trunc i64 %.sroa.speculated.i.i to i32
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i

_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.k, %bb.b ], [ -2147483648, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !46
  %.not.i = icmp eq i32 %i.m, %.0.i.i
  br i1 %.not.i, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %.0.i.i, i32 2)
  tail call void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %.sroa.speculated.i)
  %.pre = load i32, ptr %i.l, align 4, !tbaa !46
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit

_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit: ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i, %bb.c
  %i.n = phi i32 [ %.0.i.i, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i ], [ %.pre, %bb.c ]
  %i.o = trunc i64 %3 to i32
  store i32 %i.o, ptr %0, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = add i32 %i.n, -1
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 5 uses
  %.01013 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.d ]
  %i.t = load ptr, ptr %.014, align 8, !tbaa !78  ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 0, i32 1)
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.v, i64 noundef %i.x)
  %i.z = add i64 %i.x, 87
  %i.aa = add i64 %i.z, %i.y
  %i.ab = xor i64 %i.aa, %i.s
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.ad, %i.s
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.r, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !74
  store ptr %i.al, ptr %.014, align 8, !tbaa !78
  store ptr %.014, ptr %i.ak, align 8, !tbaa !74
  %i.am = add nuw i64 %.01013, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !141
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14CloneFromOtherEPNS0_5ArenaERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46, !noalias !142 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32, !noalias !142
  %i.f = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74, !noalias !142 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b
  %i.j = trunc nuw i64 %indvars.iv.i to i32
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.c, %bb.k, %bb.l, %bb.a
  %.0.lcssa = phi ptr [ %i.q, %bb.k ], [ null, %bb.a ], [ %i.q, %bb.l ], [ null, %bb.c ]
  ret ptr %.0.lcssa

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph51, %.lr.ph
  %.022.ph = phi ptr [ null, %.lr.ph ], [ %i.q, %.lr.ph51 ]
  %.sroa.11.021.ph = phi i32 [ %i.j, %.lr.ph ], [ %.0.i.i49, %.lr.ph51 ]
  %.sroa.014.020.ph = phi ptr [ %i.h, %.lr.ph ], [ %i.ao, %.lr.ph51 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit
  %.022 = phi ptr [ %i.q, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit ], [ %.022.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.014.020 = phi ptr [ %i.ah, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit ], [ %.sroa.014.020.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 40 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.o = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.p = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 72)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !147
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !101
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !65
  %i.y = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.y, ptr %i.s, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.z = phi ptr [ %i.x, %.noexc.i.i ], [ %i.s, %bb.f ] ; 2 uses
  switch i64 %i.v, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !39
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !68
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.k, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN6google8protobuf5ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %i.n), !inline_history !148
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull %i.r, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN6google8protobuf5ValueC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n), !inline_history !149
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit: ; preds = %bb.i, %bb.j
  store ptr %.022, ptr %i.q, align 8, !tbaa !78
  %i.ah = load ptr, ptr %.sroa.014.020, align 8, !tbaa !78 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i13, label %bb.k, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !46  ; 2 uses
  %.0.i.i48 = add i32 %.sroa.11.021.ph, 1         ; 2 uses
  %i.aj = icmp ult i32 %.0.i.i48, %i.ai
  br i1 %i.aj, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %bb.k
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !32
  br label %.lr.ph51

bb.l:                                             ; preds = %.lr.ph51
  %.0.i.i = add i32 %.0.i.i49, 1                  ; 2 uses
  %i.al = icmp ult i32 %.0.i.i, %i.ai
  br i1 %i.al, label %.lr.ph51, label %._crit_edge, !llvm.loop !80

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.l
  %.0.i.i49 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i48, %.lr.ph51.preheader ] ; 3 uses
  %i.am = zext i32 %.0.i.i49 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.a, align 4, !tbaa !46
  %i.d = icmp eq ptr %1, null
  %i.e = zext i32 %2 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  br i1 %i.d, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.f)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit: ; preds = %bb.c, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i
  %i.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !32
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 8 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !46
  %i.m = icmp eq ptr %1, null                     ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 3 uses
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20: ; preds = %bb.d
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21: ; preds = %bb.e, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20
  %i.r = phi ptr [ %i.q, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20 ], [ %i.p, %bb.e ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.o, i1 false)
  store ptr %i.r, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %2, -1
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  br label %bb.m

._crit_edge29:                                    ; preds = %._crit_edge, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %.pre-phi = phi i64 [ 0, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21 ], [ %wide.trip.count, %._crit_edge ] ; 3 uses
  %i.u = shl nuw nsw i64 %.pre-phi, 3             ; 3 uses
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %._crit_edge29
  %i.v = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !150
  %i.y = load i64, ptr %1, align 8, !tbaa !153
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit, !prof !89
end_hunk_1
begin_hunk_2_@_ZSt22__move_median_to_firstIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_SI_SI_T0_:bb.a
  %.sroa.speculated.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.d) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i40, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i44, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41: ; preds = %bb.g
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.ag = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i40) #26 ; 2 uses
  %.not.i.i.i.i42 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i42, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i44, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit48

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i44: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41, %bb.g
  %i.ah = sub i64 %i.d, %i.o
  %spec.select7.i.i.i.i.i45 = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i46 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i45, i64 2147483647)
  %.0.i6.i.i.i.i47 = trunc nsw i64 %.08.i.i.i.i.i46 to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit48

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i44
  %.0.i.i.i.i43 = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i41 ], [ %.0.i6.i.i.i.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i44 ]
  %i.ai = icmp slt i32 %.0.i.i.i.i43, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit48
  %i.aj = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %i.a, ptr %0, align 8, !tbaa !64
  store ptr %i.aj, ptr %1, align 8, !tbaa !64
  br label %bb.l

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit48
  %.sroa.speculated.i.i.i.i49 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i49, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i53, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i50

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i50: ; preds = %bb.i
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.an = tail call i32 @memcmp(ptr noundef %i.am, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i.i49) #26 ; 2 uses
  %.not.i.i.i.i51 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i51, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i53, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit57

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i50, %bb.i
  %i.ao = sub i64 %i.f, %i.o
  %spec.select7.i.i.i.i.i54 = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i55 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i54, i64 2147483647)
  %.0.i6.i.i.i.i56 = trunc nsw i64 %.08.i.i.i.i.i55 to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit57

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i50, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i53
  %.0.i.i.i.i52 = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i50 ], [ %.0.i6.i.i.i.i56, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i53 ]
  %i.ap = icmp slt i32 %.0.i.i.i.i52, 0
  %i.aq = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit57
  store ptr %i.m, ptr %0, align 8, !tbaa !64
  store ptr %i.aq, ptr %3, align 8, !tbaa !64
  br label %bb.l

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit57
  store ptr %i.b, ptr %0, align 8, !tbaa !64
  store ptr %i.aq, ptr %2, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader17

.preheader17:                                     ; preds = %bb.a
  %.018 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit
  %.021 = phi ptr [ %.018, %.lr.ph ], [ %.0, %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit ] ; 5 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.021, %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.c = load ptr, ptr %.021, align 8, !tbaa !64  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.m = sub i64 %i.f, %i.h
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.n, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit
  %i.o = ptrtoint ptr %.021 to i64
  %i.p = sub i64 %i.o, %i.b                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn20, i64 16
  %i.t = sub nsw i64 0, %i.q
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.p, 8
  br i1 %i.v, label %bb.f, label %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  store ptr %i.d, ptr %i.w, align 8, !tbaa !64
  br label %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit

.preheader:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit, %bb.g
  %.09.i = phi ptr [ %.0.i, %bb.g ], [ %.021, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPPKvSH_EEbT_T0_.exit ] ; 3 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -8 ; 2 uses
  %i.x = load ptr, ptr %.0.i, align 8, !tbaa !64  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.f) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.preheader
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.preheader
  %i.ae = sub i64 %i.f, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %bb.g, label %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i
  store ptr %i.x, ptr %.09.i, align 8, !tbaa !64
  br label %.preheader, !llvm.loop !86

_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit:     ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.09.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i ]
  store ptr %i.c, ptr %.sink, align 8, !tbaa !64
  %.0 = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !198

.loopexit:                                        ; preds = %_ZSt13move_backwardIPPKvS2_ET0_T_S4_S3_.exit, %.preheader17, %bb.a
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12MapMergeFromIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEvRNS0_3MapIDpT_EERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat {
bb.a:
  %2 = alloca %"struct.std::pair.65", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46, !noalias !199 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.b, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !199
  %i.e = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74, !noalias !199 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.e
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b
  %i.i = trunc nuw i64 %indvars.iv.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  ret void

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph40, %.lr.ph
  %.sroa.11.014.ph = phi i32 [ %i.i, %.lr.ph ], [ %.0.i.i38, %.lr.ph40 ]
  %.sroa.07.013.ph = phi ptr [ %i.g, %.lr.ph ], [ %i.w, %.lr.ph40 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf5Value8CopyFromERKS1_.exit
  %.sroa.07.013 = phi ptr [ %i.p, %_ZN6google8protobuf5Value8CopyFromERKS1_.exit ], [ %.sroa.07.013.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE18TryEmplaceInternalIRKS7_JEEESt4pairINS9_8iteratorEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.65") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k), !inline_history !204
  %i.l = load ptr, ptr %2, align 8, !tbaa !205    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = icmp eq ptr %.sroa.07.013, %i.l
  br i1 %i.m, label %_ZN6google8protobuf5Value8CopyFromERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 40
  call void @_ZN6google8protobuf5Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n), !inline_history !208
  call void @_ZN6google8protobuf5Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o), !inline_history !209
  br label %_ZN6google8protobuf5Value8CopyFromERKS1_.exit

_ZN6google8protobuf5Value8CopyFromERKS1_.exit:    ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit, %bb.d
  %i.p = load ptr, ptr %.sroa.07.013, align 8, !tbaa !78 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i6, label %bb.e, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.e:                                             ; preds = %_ZN6google8protobuf5Value8CopyFromERKS1_.exit
  %i.q = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.0.i.i37 = add i32 %.sroa.11.014.ph, 1         ; 2 uses
  %i.r = icmp ult i32 %.0.i.i37, %i.q
  br i1 %i.r, label %.lr.ph40.preheader, label %._crit_edge

.lr.ph40.preheader:                               ; preds = %bb.e
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !32
  br label %.lr.ph40

bb.f:                                             ; preds = %.lr.ph40
  %.0.i.i = add i32 %.0.i.i38, 1                  ; 2 uses
  %i.t = icmp ult i32 %.0.i.i, %i.q
  br i1 %i.t, label %.lr.ph40, label %._crit_edge, !llvm.loop !80

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.f
  %.0.i.i38 = phi i32 [ %.0.i.i, %bb.f ], [ %.0.i.i37, %.lr.ph40.preheader ] ; 3 uses
  %i.u = zext i32 %.0.i.i38 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE18TryEmplaceInternalIRKS7_JEEESt4pairINS9_8iteratorEbEOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.65") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.h = add i64 %i.d, 87
  %i.i = add i64 %i.h, %i.g
  %i.j = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, -2543921745674291987
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = xor i64 %i.m, %i.j
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46   ; 7 uses
  %i.t = add i32 %i.s, -1
  %i.u = and i32 %i.t, %i.q                       ; 6 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %.017.i = load ptr, ptr %i.x, align 8, !tbaa !74 ; 3 uses
  %.not18.i = icmp eq ptr %.017.i, null
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.y = icmp eq i64 %i.d, 0
  br i1 %i.y, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.us
  %.019.i.us = phi ptr [ %.0.i.us, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.us ], [ %.017.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i.us, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.split.us, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.us

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.us: ; preds = %.lr.ph.i.us
  %.0.i.us = load ptr, ptr %.019.i.us, align 8, !tbaa !74 ; 2 uses
  %.not.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not.i.us, label %.loopexit, label %.lr.ph.i.us, !llvm.loop !210

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ], [ %.017.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68
  %i.ae = icmp eq i64 %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ag, ptr %i.b, i64 %i.d)
  %i.ah = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ah, label %.split.us, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i
  %.0.i = load ptr, ptr %.019.i, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !210

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.us, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10 ; 3 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.ap = add nsw i64 %i.an, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43
  br label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit

bb.d:                                             ; preds = %bb.b
  %i.as = inttoptr i64 %i.an to ptr
  br label %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit

_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit: ; preds = %.loopexit, %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ null, %.loopexit ], [ %i.ar, %bb.c ], [ %i.as, %bb.d ] ; 5 uses
  %i.at = load i32, ptr %1, align 8, !tbaa !48
  %i.au = add i32 %i.at, 1
  %i.av = zext i32 %i.au to i64                   ; 4 uses
  %i.aw = zext i32 %i.s to i64                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = and i64 %i.ax, 1073741820
  %.neg4.i.i = and i64 %i.aw, 4294967294
  %i.az = sub nsw i64 %.neg4.i.i, %i.ay           ; 3 uses
  %i.ba = icmp ult i64 %i.az, %i.av
  br i1 %i.ba, label %bb.e, label %bb.g, !prof !42

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit
  %.not22.i = icmp slt i32 %i.s, 0
  br i1 %.not22.i, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = shl nuw i32 %i.s, 1
  br label %bb.k

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit
  %i.bc = lshr i64 %i.az, 2
  %.not.i15 = icmp samesign uge i64 %i.bc, %i.av
  %i.bd = icmp ugt i32 %i.s, 2
  %or.cond.i = and i1 %i.bd, %.not.i15
  br i1 %or.cond.i, label %bb.h, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread, !prof !211

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i64 %i.av, 2
  %i.bf = add nuw nsw i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.bf, %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.018.i = phi i64 [ 1, %bb.h ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bh = add i64 %.018.i, 1                      ; 2 uses
  %i.bi = shl i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.az
  br i1 %i.bj, label %bb.i, label %bb.j, !llvm.loop !212

bb.j:                                             ; preds = %bb.i
end_hunk_2
