inline.NumInlined: 20439
inline.NumDeleted: 7868
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK2v88internal6maglev45CheckedNumberOrOddballToFloat64OrHoleyFloat64INS1_36CheckedNumberOrOddballToHoleyFloat64ELNS1_19ValueRepresentationE4EE11PrintParamsERSo:bb.a
  %i.e = trunc i64 %i.d to i8
  %i.f = and i8 %i.e, 3
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.412, i64 noundef 6) #28 ; 0 uses
  br label %_ZN2v88internal6maglevlsERSoRKNS1_29TaggedToFloat64ConversionTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.413, i64 noundef 17) #28 ; 0 uses
  br label %_ZN2v88internal6maglevlsERSoRKNS1_29TaggedToFloat64ConversionTypeE.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.414, i64 noundef 15) #28 ; 0 uses
  br label %_ZN2v88internal6maglevlsERSoRKNS1_29TaggedToFloat64ConversionTypeE.exit

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.415, i64 noundef 15) #28 ; 0 uses
  br label %_ZN2v88internal6maglevlsERSoRKNS1_29TaggedToFloat64ConversionTypeE.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN2v88internal6maglevlsERSoRKNS1_29TaggedToFloat64ConversionTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK2v88internal6maglev45CheckedNumberOrOddballToFloat64OrHoleyFloat64INS1_36CheckedNumberOrOddballToHoleyFloat64ELNS1_19ValueRepresentationE4EE7optionsEv(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.57") align 1 %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 53
  %i.d = trunc i64 %i.c to i8
  %i.e = and i8 %i.d, 3
  store i8 %i.e, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN2v88internal6maglev14OpcodeToStringENS1_6OpcodeE(i16 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal6maglev14OpcodeToStringENS1_6OpcodeEE5names, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal6maglev3Phi14predecessor_atEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal6maglevlsERSoNS1_17UseRepresentationE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.325, i64 noundef 6) #28 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.326, i64 noundef 5) #28 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.327, i64 noundef 14) #28 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.328, i64 noundef 6) #28 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.329, i64 noundef 7) #28 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.330, i64 noundef 12) #28 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal6maglev3Phi11is_loop_phiEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal6maglev3Phi20is_unmerged_loop_phiEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ult i32 %i.h, %i.j
  %i.l = select i1 %i.f, i1 %i.k, i1 false
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev3Phi17RecordUseReprHintENS_4base7EnumSetINS1_17UseRepresentationEaEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i8 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = or i8 %i.m, %1
  store i8 %i.n, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.08.0.copyload = load i8, ptr %i.o, align 8 ; 2 uses
  %i.p = and i8 %.sroa.08.0.copyload, %1
  %i.q = icmp eq i8 %i.p, %1
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = or i8 %.sroa.08.0.copyload, %1
  store i8 %i.r, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i32 %i.u, 16
  %i.w = load i32, ptr %i.c, align 4
  %i.x = and i32 %i.w, 3
  %i.y = icmp eq i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp ult i32 %i.aa, %i.ac
  %i.ae = select i1 %i.y, i1 %i.ad, i1 false
  %i.af = sext i1 %i.ae to i32
  %spec.select = add nsw i32 %i.v, %i.af          ; 2 uses
  %i.ag = icmp sgt i32 %spec.select, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -8
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %2 = sub nsw i64 0, %indvars.iv
  %3 = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %2
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 65535
  %i.am = icmp ne i64 %i.al, 142
  %.not17 = icmp eq ptr %i.ai, null
  %.not = or i1 %.not17, %i.am
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal6maglev3Phi17RecordUseReprHintENS_4base7EnumSetINS1_17UseRepresentationEaEE(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !5

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev3Phi24SetUseRequires31BitValueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 18014398509481984
  %.not8 = icmp eq i64 %i.c, 0
  br i1 %.not8, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i64 %i.b, 18014398509481984
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 3
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.b to i32
  %i.n = lshr i32 %i.m, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.not11 = icmp eq i32 %i.o, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.h ] ; 2 uses
  %i.q = sext i32 %.010 to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 65535
  %i.x = icmp ne i64 %i.w, 142
  %.not9 = icmp eq ptr %i.t, null
  %.not = or i1 %.not9, %i.x
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal6maglev3Phi24SetUseRequires31BitValueEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = add nuw i32 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %i.o
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !7

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal6maglev12InitialValueC2EmNS0_11interpreter8RegisterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i32 %2) unnamed_addr #7 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev17VirtualObjectList5PrintERSoPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g) #28
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef %i.h) #28 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %.sroa.09.012 = load ptr, ptr %0, align 8       ; 2 uses
  %.not13 = icmp eq ptr %.sroa.09.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o) #28
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10) #28, !inline_history !8
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.s, %bb.e ], [ %i.w, %bb.f ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i) #28
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #28 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.lr.ph
  %.sroa.09.014 = phi ptr [ %.sroa.09.0, %.lr.ph ], [ %.sroa.09.012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %i.z = tail call noundef ptr @_ZN2v88internal6maglev23GetCurrentGraphLabellerEv() #28
  tail call void @_ZN2v88internal6maglev19MaglevGraphLabeller14PrintNodeLabelERSoPKNS1_8NodeBaseEb(ptr noundef nonnull align 8 dereferenceable(52) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.sroa.09.014, i1 noundef zeroext false)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.331, i64 noundef 2) #28 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 80
  %.sroa.09.0 = load ptr, ptr %i.ab, align 8      ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef ptr @_ZN2v88internal6maglev23GetCurrentGraphLabellerEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev19MaglevGraphLabeller14PrintNodeLabelERSoPKNS1_8NodeBaseEb(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65535
  %i.d = icmp eq i64 %i.c, 217
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.417, i64 noundef 3) #28 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.h) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.418, i64 noundef 2) #28 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev20CallKnownApiFunction38GenerateCallApiCallbackOptimizedInlineEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE:bb.a
  store i8 %.sink, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 %i.k, ptr %i.n, align 1
  store i16 -9472, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZNK2v88internal6maglev15MaglevAssembler14native_contextEv.exit, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler26TemporaryRegisterScopeBaseINS2_22TemporaryRegisterScopeEE7AcquireEv.exit157
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.427) #29
  unreachable

_ZNK2v88internal6maglev15MaglevAssembler14native_contextEv.exit: ; preds = %_ZN2v88internal6maglev15MaglevAssembler26TemporaryRegisterScopeBaseINS2_22TemporaryRegisterScopeEE7AcquireEv.exit157
  store ptr %i.u, ptr %4, align 8
  %i.v = call ptr @_ZNK2v88internal8compiler16NativeContextRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 6, ptr %i.v, i8 noundef signext 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %1, i32 noundef 224, i8 6) #28
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 0, i16 noundef zeroext 0) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = call ptr @_ZNK2v88internal8compiler23FunctionTemplateInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr %i.x) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 6) #28
  %i.y = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #28
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 7, i64 %i.y) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 7) #28
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0) #28
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ad = call noundef i64 @_ZNK2v88internal8compiler23FunctionTemplateInfoRef8callbackEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.ac) #28
  store i64 %i.ad, ptr %5, align 8
  %i.ae = call i64 @_ZN2v88internal17ExternalReference6CreateEPNS_11ApiFunctionENS1_4TypeE(ptr noundef nonnull %5, i32 noundef 8) #28
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 2, i64 %i.ae) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 0, ptr %6, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i32 0, ptr %7, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ag, align 4
  call void @_ZN2v88internal9Assembler4callEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %7) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler27DefineExceptionHandlerPointEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = lshr i64 %i.ai, 32
  %i.ak = trunc i64 %i.aj to i16                  ; 2 uses
  %i.al = and i16 %i.ak, 2
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.am = and i16 %i.ak, 6
  %i.an = icmp eq i16 %i.am, 4
  %.neg2.i.i.i = select i1 %i.an, i64 -56, i64 0
  %.neg3.i.i.i = add nsw i64 %.neg.i.i.i, %.neg2.i.i.i
  %i.ao = trunc i64 %i.ai to i32
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -8
  %narrow.i.i.i.i = sub nsw i32 1, %i.ap
  %i.ar = sext i32 %narrow.i.i.i.i to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %.neg3.i.i.i, %i.at
  %i.av = inttoptr i64 %i.au to ptr
  call void @_ZN2v88internal6maglev15MaglevAssembler20DefineLazyDeoptPointEPNS1_13LazyDeoptInfoE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %i.av)
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %6, i32 noundef 1) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %7) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 426 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 2, !range !21, !noundef !16
  store i8 1, ptr %i.aw, align 2
  call void @_ZN2v88internal14MacroAssembler14EnterExitFrameEiNS0_10StackFrame4TypeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef 3, i32 noundef 28, i8 2) #28
  %i.ay = load i64, ptr %i.ah, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = lshr i32 %i.az, 16
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal6maglev15MaglevAssembler14native_contextEv.exit
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 0, i8 0, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit

bb.e:                                             ; preds = %_ZNK2v88internal6maglev15MaglevAssembler14native_contextEv.exit
  %i.bd = zext i32 %i.bb to i64
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0, i64 %i.bd, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit

_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterEi.exit: ; preds = %bb.d, %bb.e
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 8) #28
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0, i64 272957440, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #28
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 8) #28
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 0, i64 1212481536, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #28
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 8) #28
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 7, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #28
  %i.be = load i64, ptr %i.ah, align 8
  %i.bf = trunc i64 %i.be to i32
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = add nuw nsw i32 %i.bg, 6
  store <4 x i8> <i8 0, i8 0, i8 69, i8 40>, ptr %8, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %.sroa.9291.0..sroa_idx, align 8
  call void @_ZN2v88internal24CallApiFunctionAndReturnEPNS0_14MacroAssemblerEbNS0_8RegisterENS0_17ExternalReferenceES3_iPNS0_7OperandES5_(ptr noundef nonnull %1, i1 noundef zeroext false, i8 2, i64 0, i8 -1, i32 noundef %i.bh, ptr noundef null, ptr noundef nonnull byval(%"class.v8::internal::Operand") align 8 %8) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %6) #28
  store i8 %i.ax, ptr %i.aw, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 448
  store ptr %i.bi, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

declare noundef i64 @_ZNK2v88internal8compiler23FunctionTemplateInfoRef8callbackEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference6CreateEPNS_11ApiFunctionENS1_4TypeE(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_ZNK2v88internal8compiler23FunctionTemplateInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #3

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #3

declare void @_ZN2v88internal24CallApiFunctionAndReturnEPNS0_14MacroAssemblerEbNS0_8RegisterENS0_17ExternalReferenceES3_iPNS0_7OperandES5_(ptr noundef, i1 noundef zeroext, i8, i64, i8, i32 noundef, ptr noundef, ptr noundef byval(%"class.v8::internal::Operand") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal6maglev11CallBuiltin16MaxCallStackArgsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.b) #28 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4
  %i.e = and i32 %.sroa.0.0.copyload.i.i.i, 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = load i32, ptr %i.c, align 8
  %i.i = sub nsw i32 %i.g, %i.h
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.a, align 4
  %i.k = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.j) #28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.l, align 4
  %i.m = and i32 %.sroa.0.0.copyload.i.i.i.i, 1
  %sext.i = add nsw i32 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 16
  %i.r = add nsw i32 %sext.i, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i8, ptr %i.s, align 8, !range !21, !noundef !16
  %i.u = shl nuw nsw i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i32
  %i.w = load i32, ptr %i.c, align 8
  %i.x = sub i32 %i.r, %i.w
  %i.y = add i32 %i.x, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.y, %bb.c ], [ %i.i, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev11CallBuiltin27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.b) #28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 9 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.i) #28 ; 2 uses
  %i.k = load i8, ptr %i.e, align 8, !range !21, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 4
  %i.n = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.m) #28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.o, align 4
  %i.p = and i32 %.sroa.0.0.copyload.i.i.i.i.i, 1
  %i.q = load i64, ptr %i.f, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 16
  %i.t = add nuw nsw i32 %i.s, %i.p               ; 2 uses
  %i.u = load i32, ptr %i.j, align 8              ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.u, -2
  br label %_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.t, %i.u
  %i.y = sext i1 %i.x to i32
  %spec.select.i = add nsw i32 %i.u, %i.y
  br label %_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit

bb.f:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.j, align 8
  br label %_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit

_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.z, %bb.f ], [ %i.w, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.aa = sext i32 %.1.i to i64
  %i.ab = icmp slt i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit
  %i.ac = and i32 %.sroa.0.0.copyload.i.i.i, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.af) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.0.0.copyload.i.i.i.i32 = load i32, ptr %i.ah, align 4
  %i.ai = and i32 %.sroa.0.0.copyload.i.i.i.i32, 1
  %sext.i33 = add nsw i32 %i.ai, -1
  %i.aj = load i64, ptr %i.f, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = lshr i32 %i.ak, 16
  %i.am = add nsw i32 %sext.i33, %i.al
  %i.an = icmp sgt i32 %i.am, %i.ae
  br i1 %i.an, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %_ZNK2v88internal6maglev11CallBuiltin21InputsInRegisterCountEv.exit
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ap, align 1 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = icmp samesign ult i8 %.sroa.0.0.copyload.i.i, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 41
  %i.ax = or disjoint i64 %i.aw, 824633720825
  store i64 %i.ax, ptr %i.at, align 8
  %1 = sub nsw i64 0, %indvars.iv
  %2 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %1
  %i.ay = load ptr, ptr %2, align 8
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i64, ptr %i.bc, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.ay, i64 %.sroa.0.0.copyload.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !169

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph ], [ %indvars.iv, %.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv36
  store i64 755914244089, ptr %i.bg, align 8
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 3 uses
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.bh) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bj, align 4
  %i.bk = and i32 %.sroa.0.0.copyload.i.i.i.i, 1
  %sext.i = add nsw i32 %i.bk, -1
  %i.bl = load i64, ptr %i.f, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = add nsw i32 %sext.i, %i.bn
  %i.bp = trunc nuw i64 %indvars.iv.next37 to i32
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.1.lcssa = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next37, %.lr.ph ] ; 3 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.1.lcssa
  store i64 14018773254137, ptr %i.bu, align 8
  %i.bv = sub nsw i64 0, %.1.lcssa
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.1.lcssa
  %.sroa.0.0.copyload.i30 = load i64, ptr %i.cb, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.bx, i64 %.sroa.0.0.copyload.i30)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i64 824633720825, ptr %i.cd, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev11CallBuiltin26PassFeedbackSlotInRegisterEPNS1_15MaglevAssemblerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.b) #28 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.d) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.f, align 4
  %i.g = and i32 %.sroa.0.0.copyload.i.i.i.i, 1
  %sext.i = add nsw i32 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = add nsw i32 %sext.i, %i.k                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  switch i32 %i.n, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.r, align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i8, ptr %i.s, align 8, !range !21, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.26.0..sroa_idx, align 8
  %i.w = call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #28 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 1                      ; 5 uses
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 51, i8 %.sroa.0.0.copyload.i.i, i8 %.sroa.0.0.copyload.i.i, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit

bb.e:                                             ; preds = %_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit
  %.not.i.i.i.i.i = icmp ult i64 %i.y, 4294967296
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %.sroa.0.0.copyload.i.i, i64 %i.y, i32 noundef 4) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp samesign ugt i64 %i.y, -2147483649
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.015.0.insert.ext.i.i.i = and i64 %i.y, 4294967294
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %.sroa.0.0.copyload.i.i, i64 %.sroa.015.0.insert.ext.i.i.i, i32 noundef 8) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %.sroa.0.0.copyload.i.i, i64 %i.y, i8 0, i32 noundef 8) #28
  br label %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit

_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = sext i32 %i.l to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %.sroa.0.0.copyload.i.i12 = load i8, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !range !21, !noundef !16
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit18: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i13 = load ptr, ptr %i.ai, align 8
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload.i15 = load i32, ptr %.sroa.2.0..sroa_idx.i14, align 8
  store ptr %.sroa.0.0.copyload.i13, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload.i15, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aj = call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #28
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 32
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %.sroa.0.0.copyload.i.i12, i64 %i.al) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal6maglev11CallBuiltin8feedbackEv.exit18, %_ZN2v88internal6maglev15MaglevAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_11TaggedIndexEEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev11CallBuiltin24PushFeedbackAndArgumentsEPNS1_15MaglevAssemblerE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::FeedbackSource", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.b) #28 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = tail call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef %i.d) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.f, align 4
  %i.g = and i32 %.sroa.0.0.copyload.i.i.i.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = add nuw nsw i32 %i.k, %i.g               ; 3 uses
  %i.m = load i32, ptr %i.c, align 8              ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.d

end_hunk_1
