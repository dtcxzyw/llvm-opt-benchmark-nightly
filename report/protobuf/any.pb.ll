Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/any.pb?download=true
inline.NumInlined: 139
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf3Any5ClearEv:bb.a
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !21
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf3Any18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !6    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.m = trunc i64 %i.j to i32
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.l, i32 noundef %i.m, i32 noundef 1, i64 28, ptr nonnull @.str.1) ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !21   ; 6 uses
  %i.q = icmp sgt i64 %i.p, 127
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !37
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.s, %i.t
  %i.u = add i64 %reass.sub, 14
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !22

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.p, ptr %i.o, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !17
  %i.y = trunc i64 %i.p to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.p
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.w, %.critedge.i ], [ %i.aa, %bb.e ] ; 7 uses
  %i.ab = and i32 %i.b, 2
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -4
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21 ; 7 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.al = icmp sgt i64 %i.ai, 127
  br i1 %i.al, label %.critedge.i.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %2, align 8, !tbaa !37
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %.0 to i64
  %reass.sub28 = sub i64 %i.an, %i.ao
  %i.ap = add i64 %reass.sub28, 14
  %i.aq = icmp slt i64 %i.ap, %i.ai
  br i1 %i.aq, label %.critedge.i.i, label %bb.i, !prof !22

.critedge.i.i:                                    ; preds = %bb.h, %bb.g
  %i.ar = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 2, i64 %i.ai, ptr %i.ak, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 18, ptr %.0, align 1, !tbaa !17
  %i.at = trunc i64 %i.ai to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  store i8 %i.at, ptr %i.as, align 1, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.ak, i64 %i.ai, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ai
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.i, %.critedge.i.i, %bb.f, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %.0, %bb.f ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ], [ %i.ar, %.critedge.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !9  ; 2 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.j, !prof !22

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef %.1, ptr noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.2 = phi ptr [ %i.bc, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ]
  ret ptr %.2
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf3Any12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !6    ; 3 uses
  %i.n = and i32 %i.m, 3
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.v to i32
  %i.y = or i32 %i.x, 1
  %i.z = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.v, 1
  %i.ag = add i64 %i.af, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.a = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.ah = and i32 %i.m, 2
  %.not15 = icmp eq i32 %i.ah, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -4
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = trunc i64 %i.ao to i32
  %i.ar = or i32 %i.aq, 1
  %i.as = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ar, i1 true)
  %i.at = xor i32 %i.as, 31
  %i.au = mul nuw nsw i32 %i.at, 9
  %i.av = add nuw nsw i32 %i.au, 73
  %i.aw = lshr i32 %i.av, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %1 = add i64 %.0.a, 1
  %i.ay = add i64 %1, %i.ao
  %i.az = add i64 %i.ay, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ %.0.a, %bb.e ], [ %i.az, %bb.f ], [ %.0.a, %bb.d ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bb = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.ba)
  ret i64 %i.bb
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf3Any8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN6google8protobuf3Any9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf3Any12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !38
  store i64 %i.b, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !6
  %i.h = load i32, ptr %i.f, align 8, !tbaa !6
  store i32 %i.h, ptr %i.e, align 8, !tbaa !6
  store i32 %i.g, ptr %i.f, align 8, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !39
  %i.l = load <2 x i64>, ptr %i.i, align 8, !tbaa !39
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !39
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf3Any11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf3Any12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #12 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_google_2fprotobuf_2fany_2eproto)
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !5, i64 0}
!13 = !{!12, !5, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!"p1 omnipotent char", !14, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !7, i64 8, !4, i64 16}
!21 = !{!20, !7, i64 8}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!20, !18, i64 0}
!24 = !{!"bool", !4, i64 0}
!25 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !14, i64 0}
!26 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!19, !18, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !14, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !14, i64 0}
!31 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !4, i64 0}
!32 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !5, i64 0, !31, i64 4, !4, i64 5, !4, i64 8}
!33 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !29, i64 0, !30, i64 8, !14, i64 16, !14, i64 24, !32, i64 32, !5, i64 48, !24, i64 52, !24, i64 53}
!34 = !{!33, !30, i64 8}
!35 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !14, i64 0}
!36 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !18, i64 0, !18, i64 8, !4, i64 16, !35, i64 48, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59}
!37 = !{!36, !18, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!14, !14, i64 0}
end_hunk_0
