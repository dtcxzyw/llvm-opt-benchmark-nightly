Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json-stringifier?download=true
inline.NumInlined: 8192
inline.NumDeleted: 1259
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN2v88internal15JsonStringifier15SerializeStringILb1EEEbNS0_6HandleINS0_6StringEEE:bb.a
  store ptr %.sroa.0304.sroa.0.0.ph, ptr %3, align 8
  %.sroa.0304.sroa.7.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.gb, ptr %.sroa.0304.sroa.7.0..sroa_idx358, align 8
  %.sroa.0304.sroa.8.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0304.sroa.8.0.ph, ptr %.sroa.0304.sroa.8.0..sroa_idx364, align 4
  %.sroa.0304.sroa.9.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %8, ptr %.sroa.0304.sroa.9.0..sroa_idx370, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20

bb.bm:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20: ; preds = %bb.bm, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit51
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8, !range !33, !noundef !34
  %i.hv = trunc nuw i8 %i.hu to i1
  store i8 0, ptr %i.ht, align 8
  br i1 %i.hv, label %bb.bn, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53

bb.bn:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20
  %i.hw = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i52, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !301
  %i.hx = load ptr, ptr %3, align 8               ; 18 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load i32, ptr %i.hy, align 8            ; 3 uses
  %i.ia = zext i32 %i.hz to i64                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ib = icmp ugt i32 %i.hz, 16384
  br i1 %i.ib, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader, label %.split537, !prof !39

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader: ; preds = %.split537, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.hx, i64 noundef 0, i64 noundef %i.ia)
  br label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb1EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

.split537:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53
  %i.ic = shl nuw nsw i64 %i.ia, 3
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ig = load i64, ptr %i.if, align 8            ; 3 uses
  %i.ih = sub i64 %i.ie, %i.ig
  %i.ii = icmp ugt i64 %i.ih, %i.ic
  br i1 %i.ii, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader, !prof !36

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %.split537
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ig ; 20 uses
  switch i32 %i.hz, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i32 0, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 3, label %bb.br
    i32 4, label %bb.bs
    i32 5, label %bb.bt
    i32 6, label %bb.bu
    i32 7, label %bb.bv
    i32 8, label %bb.bw
    i32 9, label %bb.bx
    i32 10, label %bb.by
    i32 11, label %bb.bz
    i32 12, label %bb.ca
    i32 13, label %bb.cb
    i32 14, label %bb.cc
    i32 15, label %bb.cd
    i32 16, label %bb.ce
  ]

bb.bp:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.im = load i16, ptr %i.hx, align 2
  store i16 %i.im, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bq:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.in = load i32, ptr %i.hx, align 2
  store i32 %i.in, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.br:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.il, ptr noundef nonnull align 2 dereferenceable(6) %i.hx, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bs:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.io = load i64, ptr %i.hx, align 2
  store i64 %i.io, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bt:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.il, ptr noundef nonnull align 2 dereferenceable(10) %i.hx, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bu:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.il, ptr noundef nonnull align 2 dereferenceable(12) %i.hx, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bv:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.il, ptr noundef nonnull align 2 dereferenceable(14) %i.hx, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bw:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.il, ptr noundef nonnull align 2 dereferenceable(16) %i.hx, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bx:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.il, ptr noundef nonnull align 2 dereferenceable(18) %i.hx, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.by:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.il, ptr noundef nonnull align 2 dereferenceable(20) %i.hx, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bz:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.il, ptr noundef nonnull align 2 dereferenceable(22) %i.hx, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ca:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.il, ptr noundef nonnull align 2 dereferenceable(24) %i.hx, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cb:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.il, ptr noundef nonnull align 2 dereferenceable(26) %i.hx, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cc:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.il, ptr noundef nonnull align 2 dereferenceable(28) %i.hx, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cd:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.il, ptr noundef nonnull align 2 dereferenceable(30) %i.hx, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ce:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.il, ptr noundef nonnull align 2 dereferenceable(32) %i.hx, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.ia, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.il, ptr nonnull align 2 %i.hx, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.ia
  %.pre = load i64, ptr %i.if, align 8
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit: ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %i.iq = phi i64 [ %i.ig, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.pre, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  %.sroa.6293.0 = phi ptr [ %i.il, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %i.ip, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  %i.ir = ptrtoint ptr %.sroa.6293.0 to i64
  %i.is = ptrtoint ptr %i.il to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 1
  %i.iv = add i64 %i.iu, %i.iq
  store i64 %i.iv, ptr %i.if, align 8
  br label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb1EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

_ZN2v88internal15JsonStringifier16SerializeString_IhhLb1EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit: ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit27.preheader, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit29.preheader, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, !prof !314

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 15
  %i.f = add i64 %i.a, 30
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, !prof !314

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 14
  %i.h = add i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, !prof !314

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %0, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i8, ptr %i.cs, align 1
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %i.ct, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.cx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i8, ptr %1, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %0, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i16
  store i16 %i.el, ptr %i.ej, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = load i8, ptr %i.em, align 1
  %i.ep = zext i8 %i.eo to i16
  store i16 %i.ep, ptr %i.en, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i8, ptr %1, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %0, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eu = load i8, ptr %i.es, align 1
  %i.ev = zext i8 %i.eu to i16
  store i16 %i.ev, ptr %i.et, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = load i8, ptr %i.ew, align 1
  %i.ez = zext i8 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ie = load i8, ptr %i.ic, align 1
  %i.if = zext i8 %i.ie to i16
  store i16 %i.if, ptr %i.id, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ii = load i8, ptr %i.ig, align 1
  %i.ij = zext i8 %i.ii to i16
  store i16 %i.ij, ptr %i.ih, align 2
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.im = load i8, ptr %i.ik, align 1
  %i.in = zext i8 %i.im to i16
  store i16 %i.in, ptr %i.il, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i8, ptr %1, align 1
  %i.ip = zext i8 %i.io to i16
  store i16 %i.ip, ptr %0, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i16
  store i16 %i.it, ptr %i.ir, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iw = load i8, ptr %i.iu, align 1
  %i.ix = zext i8 %i.iw to i16
  store i16 %i.ix, ptr %i.iv, align 2
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ja = load i8, ptr %i.iy, align 1
  %i.jb = zext i8 %i.ja to i16
  store i16 %i.jb, ptr %i.iz, align 2
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i8, ptr %i.jc, align 1
  %i.jf = zext i8 %i.je to i16
  store i16 %i.jf, ptr %i.jd, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ji = load i8, ptr %i.jg, align 1
  %i.jj = zext i8 %i.ji to i16
  store i16 %i.jj, ptr %i.jh, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = load i8, ptr %i.jk, align 1
  %i.jn = zext i8 %i.jm to i16
  store i16 %i.jn, ptr %i.jl, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i8, ptr %1, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %0, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i8, ptr %i.kc, align 1
  %i.kf = zext i8 %i.ke to i16
  store i16 %i.kf, ptr %i.kd, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ki = load i8, ptr %i.kg, align 1
  %i.kj = zext i8 %i.ki to i16
  store i16 %i.kj, ptr %i.kh, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i8, ptr %1, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %0, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.kw = load i8, ptr %i.ku, align 1
  %i.kx = zext i8 %i.kw to i16
  store i16 %i.kx, ptr %i.kv, align 2
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load i8, ptr %i.ky, align 1
  %i.lb = zext i8 %i.la to i16
  store i16 %i.lb, ptr %i.kz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i8, ptr %1, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %0, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lk = load i8, ptr %i.li, align 1
  %i.ll = zext i8 %i.lk to i16
  store i16 %i.ll, ptr %i.lj, align 2
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lo = load i8, ptr %i.lm, align 1
  %i.lp = zext i8 %i.lo to i16
  store i16 %i.lp, ptr %i.ln, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i8, ptr %1, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %0, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lu = load i8, ptr %i.ls, align 1
  %i.lv = zext i8 %i.lu to i16
  store i16 %i.lv, ptr %i.lt, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ly = load i8, ptr %i.lw, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %i.lx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i8, ptr %1, align 1
  %i.mb = zext i8 %i.ma to i16
  store i16 %i.mb, ptr %0, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.me = load i8, ptr %i.mc, align 1
  %i.mf = zext i8 %i.me to i16
  store i16 %i.mf, ptr %i.md, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i8, ptr %1, align 1
  %i.mh = zext i8 %i.mg to i16
  store i16 %i.mh, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mj
  %scevgep147 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = shl nuw i64 %n.vec, 1
  %i.mn = getelementptr i8, ptr %0, i64 %i.mm
  %i.mo = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mp ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !alias.scope !315
  %wide.load150 = load <8 x i8>, ptr %i.mq, align 1, !alias.scope !315
  %i.mr = zext <8 x i8> %wide.load to <8 x i16>
  %i.ms = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.mt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mr, ptr %next.gep, align 2, !alias.scope !316, !noalias !315
  store <8 x i16> %i.ms, ptr %i.mt, align 2, !alias.scope !316, !noalias !315
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = shl nuw i64 %n.vec153, 1
  %i.mx = getelementptr i8, ptr %0, i64 %i.mw
  %i.my = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.mz = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %0, i64 %i.mz
  %next.gep156 = getelementptr i8, ptr %1, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !alias.scope !315
  %i.na = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.na, ptr %next.gep155, align 2, !alias.scope !316, !noalias !315
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.nd = zext i8 %i.nc to i16
  store i16 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !313

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i8>, ptr %1, align 1
  %i.nj = zext <8 x i8> %i.ni to <8 x i16>
  store <8 x i16> %i.nj, ptr %0, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load <4 x i8>, ptr %i.nk, align 1
  %i.nn = zext <4 x i8> %i.nm to <4 x i16>
  store <4 x i16> %i.nn, ptr %i.nl, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load i8, ptr %i.no, align 1
  %i.nr = zext i8 %i.nq to i16
  store i16 %i.nr, ptr %i.np, align 2
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.nu = load i8, ptr %i.ns, align 1
  %i.nv = zext i8 %i.nu to i16
  store i16 %i.nv, ptr %i.nt, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i8, ptr %1, align 1
  %i.nx = zext i8 %i.nw to i16
  store i16 %i.nx, ptr %0, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oa = load i8, ptr %i.ny, align 1
  %i.ob = zext i8 %i.oa to i16
  store i16 %i.ob, ptr %i.nz, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.oe = load i8, ptr %i.oc, align 1
  %i.of = zext i8 %i.oe to i16
  store i16 %i.of, ptr %i.od, align 2
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.oi = load i8, ptr %i.og, align 1
  %i.oj = zext i8 %i.oi to i16
  store i16 %i.oj, ptr %i.oh, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.om = load i8, ptr %i.ok, align 1
  %i.on = zext i8 %i.om to i16
  store i16 %i.on, ptr %i.ol, align 2
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.oq = load i8, ptr %i.oo, align 1
  %i.or = zext i8 %i.oq to i16
  store i16 %i.or, ptr %i.op, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ou = load i8, ptr %i.os, align 1
  %i.ov = zext i8 %i.ou to i16
  store i16 %i.ov, ptr %i.ot, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.oy = load i8, ptr %i.ow, align 1
  %i.oz = zext i8 %i.oy to i16
  store i16 %i.oz, ptr %i.ox, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pc = load i8, ptr %i.pa, align 1
  %i.pd = zext i8 %i.pc to i16
  store i16 %i.pd, ptr %i.pb, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pg = load i8, ptr %i.pe, align 1
  %i.ph = zext i8 %i.pg to i16
  store i16 %i.ph, ptr %i.pf, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pk = load i8, ptr %i.pi, align 1
  %i.pl = zext i8 %i.pk to i16
  store i16 %i.pl, ptr %i.pj, align 2
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.po = load i8, ptr %i.pm, align 1
  %i.pp = zext i8 %i.po to i16
  store i16 %i.pp, ptr %i.pn, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ps = load i8, ptr %i.pq, align 1
  %i.pt = zext i8 %i.ps to i16
  store i16 %i.pt, ptr %i.pr, align 2
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.pw = load i8, ptr %i.pu, align 1
  %i.px = zext i8 %i.pw to i16
  store i16 %i.px, ptr %i.pv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i8>, ptr %1, align 1
  %i.pz = zext <8 x i8> %i.py to <8 x i16>
  store <8 x i16> %i.pz, ptr %0, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = load <4 x i8>, ptr %i.qa, align 1
  %i.qd = zext <4 x i8> %i.qc to <4 x i16>
  store <4 x i16> %i.qd, ptr %i.qb, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qg = load i8, ptr %i.qe, align 1
  %i.qh = zext i8 %i.qg to i16
  store i16 %i.qh, ptr %i.qf, align 2
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.qk = load i8, ptr %i.qi, align 1
  %i.ql = zext i8 %i.qk to i16
  store i16 %i.ql, ptr %i.qj, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qo = load i8, ptr %i.qm, align 1
  %i.qp = zext i8 %i.qo to i16
  store i16 %i.qp, ptr %i.qn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i8, ptr %1, align 1
  %i.qr = zext i8 %i.qq to i16
  store i16 %i.qr, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qu = load i8, ptr %i.qs, align 1
  %i.qv = zext i8 %i.qu to i16
  store i16 %i.qv, ptr %i.qt, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qy = load i8, ptr %i.qw, align 1
  %i.qz = zext i8 %i.qy to i16
  store i16 %i.qz, ptr %i.qx, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rc = load i8, ptr %i.ra, align 1
  %i.rd = zext i8 %i.rc to i16
  store i16 %i.rd, ptr %i.rb, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = load i8, ptr %i.re, align 1
  %i.rh = zext i8 %i.rg to i16
  store i16 %i.rh, ptr %i.rf, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rk = load i8, ptr %i.ri, align 1
  %i.rl = zext i8 %i.rk to i16
  store i16 %i.rl, ptr %i.rj, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ro = load i8, ptr %i.rm, align 1
  %i.rp = zext i8 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.rs = load i8, ptr %i.rq, align 1
  %i.rt = zext i8 %i.rs to i16
  store i16 %i.rt, ptr %i.rr, align 2
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i8, ptr %i.ru, align 1
  %i.rx = zext i8 %i.rw to i16
  store i16 %i.rx, ptr %i.rv, align 2
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sa = load i8, ptr %i.ry, align 1
  %i.sb = zext i8 %i.sa to i16
  store i16 %i.sb, ptr %i.rz, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.se = load i8, ptr %i.sc, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.vg = load i8, ptr %i.ve, align 1
  %i.vh = zext i8 %i.vg to i16
  store i16 %i.vh, ptr %i.vf, align 2
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.vk = load i8, ptr %i.vi, align 1
  %i.vl = zext i8 %i.vk to i16
  store i16 %i.vl, ptr %i.vj, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit
}

declare void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind writable sret(%"class.v8::internal::String::FlatContent") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  ret ptr %.0
}

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  ret ptr %.0
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = and i16 %i.r, -121
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.critedge39, label %.critedge

.critedge39:                                      ; preds = %bb.b
  tail call void @_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.l, i32 noundef 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 %i.v, i32 noundef 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !32

bb.c:                                             ; preds = %.critedge39
  %i.ab = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.critedge39, %bb.c
  %.0.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.critedge39 ] ; 3 uses
  %i.ac = ptrtoint ptr %.0.i to i64
  %i.ad = add i64 %i.ac, 8
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.w, align 8
  store i64 %i.l, ptr %.0.i, align 8
  br label %bb.ah

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not = icmp eq i8 %2, 5
  br i1 %.not, label %bb.e, label %bb.d, !prof !32

bb.d:                                             ; preds = %.critedge
  %i.af = and i64 %i.a, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i, 24
  %.not122 = icmp eq i64 %i.ah, 0
  %spec.select = select i1 %.not122, i8 1, i8 %2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.0 = phi i8 [ %spec.select, %bb.d ], [ 5, %.critedge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 4 uses
  %i.ak = load i64, ptr %1, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, 8
  %.not123 = icmp eq i16 %i.ar, 0
  br i1 %.not123, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj, i8 noundef zeroext %.0, i8 0) #21 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #22
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.au = load i64, ptr %1, align 8               ; 2 uses
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !321
  call void @_ZN2v88internal6String12WriteToFlat2IhEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef nonnull %i.ay, i64 %i.au, i32 noundef 0, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #21
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !33, !noundef !34
  %i.bb = trunc nuw i8 %i.ba to i1
  store i8 0, ptr %i.az, align 8
  br i1 %i.bb, label %bb.h, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.h:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bd = add i64 %i.au, -1                       ; 5 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.as, align 8            ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store atomic volatile i64 %i.bf, ptr %i.bg monotonic, align 8
  %i.bh = trunc i64 %i.bf to i1
  br i1 %i.bh, label %bb.j, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.bi = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bk = and i64 %i.bd, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i64, ptr %i.bl, align 262144       ; 2 uses
  %i.bn = and i64 %i.bm, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  %i.bo = and i64 %i.bm, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = and i64 %i.bf, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bq, align 262144
  %i.br = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bi, i64 noundef %i.bj, i64 %i.bf) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !36

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bi, i64 %i.bj, i64 %i.bf) #21
  br label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.m, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bt = load i64, ptr %i.bs, align 8            ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store atomic volatile i64 %i.bt, ptr %i.bu monotonic, align 8
  %i.bv = trunc i64 %i.bt to i1
  br i1 %i.bv, label %bb.o, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.o:                                             ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.bw = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.by = and i64 %i.bd, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load i64, ptr %i.bz, align 262144       ; 2 uses
  %i.cb = and i64 %i.ca, 32
  %.not.i.i.i.i.i40 = icmp eq i64 %i.cb, 0
  %i.cc = and i64 %i.ca, 25
  %.not38.i.i.i.i.i41 = icmp eq i64 %i.cc, 0
  br i1 %.not38.i.i.i.i.i41, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cd = and i64 %i.bt, -262144
  %i.ce = inttoptr i64 %i.cd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i42 = load i64, ptr %i.ce, align 262144
  %i.cf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i42, 25
  %.not39.i.i.i.i.i43 = icmp eq i64 %i.cf, 0
  br i1 %.not39.i.i.i.i.i43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bw, i64 noundef %i.bx, i64 %i.bt) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i40, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.s, !prof !36

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bw, i64 %i.bx, i64 %i.bt) #21
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ah

bb.t:                                             ; preds = %bb.e
  %i.cg = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj, i8 noundef zeroext %.0, i8 0) #21 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.u, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit, !prof !32

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #22
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ci = load i64, ptr %1, align 8               ; 2 uses
  %i.cj = load i64, ptr %i.cg, align 8
  %i.ck = add i64 %i.cj, -1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !322
  call void @_ZN2v88internal6String12WriteToFlat2ItEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef nonnull %i.cm, i64 %i.ci, i32 noundef 0, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %5) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !range !33, !noundef !34
  %i.cp = trunc nuw i8 %i.co to i1
  store i8 0, ptr %i.cn, align 8
  br i1 %i.cp, label %bb.v, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45

bb.v:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit
  %i.cq = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i.i.i44 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i44, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45: ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE5CheckEv.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.cr = add i64 %i.ci, -1                       ; 5 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load i64, ptr %i.cg, align 8            ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  store atomic volatile i64 %i.ct, ptr %i.cu monotonic, align 8
  %i.cv = trunc i64 %i.ct to i1
  br i1 %i.cv, label %bb.x, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50

bb.x:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45
  %i.cw = or disjoint i64 %i.cr, 1                ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cy = and i64 %i.cr, -262144
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i64, ptr %i.cz, align 262144       ; 2 uses
  %i.db = and i64 %i.da, 32
  %.not.i.i.i.i.i46 = icmp eq i64 %i.db, 0
  %i.dc = and i64 %i.da, 25
  %.not38.i.i.i.i.i47 = icmp eq i64 %i.dc, 0
  br i1 %.not38.i.i.i.i.i47, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dd = and i64 %i.ct, -262144
  %i.de = inttoptr i64 %i.dd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i48 = load i64, ptr %i.de, align 262144
  %i.df = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i48, 25
  %.not39.i.i.i.i.i49 = icmp eq i64 %i.df, 0
  br i1 %.not39.i.i.i.i.i49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cw, i64 noundef %i.cx, i64 %i.ct) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  br i1 %.not.i.i.i.i.i46, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50, label %bb.ab, !prof !36

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cw, i64 %i.cx, i64 %i.ct) #21
  br label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50

_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit45, %bb.aa, %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.dh = load i64, ptr %i.dg, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  store atomic volatile i64 %i.dh, ptr %i.di monotonic, align 8
  %i.dj = trunc i64 %i.dh to i1
  br i1 %i.dj, label %bb.ac, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55

bb.ac:                                            ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50
  %i.dk = or disjoint i64 %i.cr, 1                ; 2 uses
  %i.dl = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dm = and i64 %i.cr, -262144
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 262144       ; 2 uses
  %i.dp = and i64 %i.do, 32
  %.not.i.i.i.i.i51 = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.do, 25
  %.not38.i.i.i.i.i52 = icmp eq i64 %i.dq, 0
  br i1 %.not38.i.i.i.i.i52, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dr = and i64 %i.dh, -262144
  %i.ds = inttoptr i64 %i.dr to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i53 = load i64, ptr %i.ds, align 262144
  %i.dt = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i53, 25
  %.not39.i.i.i.i.i54 = icmp eq i64 %i.dt, 0
  br i1 %.not39.i.i.i.i.i54, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dk, i64 noundef %i.dl, i64 %i.dh) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  br i1 %.not.i.i.i.i.i51, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55, label %bb.ag, !prof !36

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dk, i64 %i.dl, i64 %i.dh) #21
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.096.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.as, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit ], [ %i.cg, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55 ]
  ret ptr %.sroa.096.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = icmp sgt i32 %2, 1
  %i.c = trunc i64 %1 to i1
  %or.cond.i.i.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = and i64 %i.d, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #21
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = icmp sgt i32 %2, 1
  %i.c = trunc i64 %1 to i1
  %or.cond.i.i.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = and i64 %i.d, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %1) #21
  br label %_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_6StringENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #4

declare void @_ZN2v88internal6String12WriteToFlat2IhEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #4

declare void @_ZN2v88internal6String12WriteToFlat2ItEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef, i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #4

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JsonStringifier15AppendSubstringIhEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 %3, %2                           ; 2 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = load i64, ptr %i.d, align 8
  %i.h = load i64, ptr %i.e, align 8
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, %i.c
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %i.k = load i8, ptr %i.f, align 4, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.c, !prof !32, !llvm.loop !323

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @_ZN2v88internal15JsonStringifier21AppendSubstringByCopyIhEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.m, i64 noundef %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JsonStringifier21AppendSubstringByCopyIhEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 17 uses
  switch i64 %2, label %bb.s [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load i16, ptr %1, align 1
  store i16 %i.j, ptr %i.h, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.b
  %i.k = load i32, ptr %1, align 1
  store i32 %i.k, ptr %i.h, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) %1, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.h, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.b
  %i.l = load i64, ptr %1, align 1
  store i64 %i.l, ptr %i.h, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.h, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.h, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.h, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.s:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %2, 1
  br i1 %i.m, label %bb.t, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !36

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.u:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.e
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.p, ptr noundef %1, i64 noundef %2)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.u
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, %2
  store i64 %i.s, ptr %i.q, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 %3, %2                           ; 2 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = load i64, ptr %i.d, align 8
  %i.h = load i64, ptr %i.e, align 8
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, %i.c
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %i.k = load i8, ptr %i.f, align 4, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.c, !prof !32, !llvm.loop !324

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  tail call void @_ZN2v88internal15JsonStringifier21AppendSubstringByCopyItEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.m, i64 noundef %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15JsonStringifier21AppendSubstringByCopyItEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal15JsonStringifier14ChangeEncodingEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g ; 17 uses
  switch i64 %2, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %1, align 2
  store i16 %i.i, ptr %i.h, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %1, align 2
  store i32 %i.j, ptr %i.h, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.h, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.b
  %i.k = load i64, ptr %1, align 2
  store i64 %i.k, ptr %i.h, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.h, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.h, ptr noundef nonnull align 2 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.h, ptr noundef nonnull align 2 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.h, ptr noundef nonnull align 2 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.h, ptr noundef nonnull align 2 dereferenceable(18) %1, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.h, ptr noundef nonnull align 2 dereferenceable(20) %1, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.h, ptr noundef nonnull align 2 dereferenceable(22) %1, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.h, ptr noundef nonnull align 2 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.h, ptr noundef nonnull align 2 dereferenceable(26) %1, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.h, ptr noundef nonnull align 2 dereferenceable(28) %1, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.h, ptr noundef nonnull align 2 dereferenceable(30) %1, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, ptr noundef nonnull align 2 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b
  %.idx.i.i.i = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.h, ptr nonnull align 2 %1, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.s:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.o ; 17 uses
  switch i64 %2, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i5 [
    i64 1, label %bb.t
    i64 2, label %bb.u
    i64 3, label %bb.v
    i64 4, label %bb.w
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
    i64 8, label %bb.aa
    i64 9, label %bb.ab
    i64 10, label %bb.ac
    i64 11, label %bb.ad
    i64 12, label %bb.ae
    i64 13, label %bb.af
    i64 14, label %bb.ag
    i64 15, label %bb.ah
    i64 16, label %bb.ai
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.t:                                             ; preds = %bb.s
  %i.q = load i16, ptr %1, align 2
  store i16 %i.q, ptr %i.p, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.u:                                             ; preds = %bb.s
  %i.r = load i32, ptr %1, align 2
  store i32 %i.r, ptr %i.p, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.p, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.w:                                             ; preds = %bb.s
  %i.s = load i64, ptr %1, align 2
  store i64 %i.s, ptr %i.p, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.x:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.p, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.y:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.p, ptr noundef nonnull align 2 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.z:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.p, ptr noundef nonnull align 2 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.aa:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.p, ptr noundef nonnull align 2 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ab:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, ptr noundef nonnull align 2 dereferenceable(18) %1, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ac:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.p, ptr noundef nonnull align 2 dereferenceable(20) %1, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ad:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.p, ptr noundef nonnull align 2 dereferenceable(22) %1, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ae:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.p, ptr noundef nonnull align 2 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.af:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.p, ptr noundef nonnull align 2 dereferenceable(26) %1, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ag:                                            ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.p, ptr noundef nonnull align 2 dereferenceable(28) %1, i64 28, i1 false)
end_hunk_2
begin_hunk_3_@_ZN2v88internal31CircularStructureMessageBuilder9AppendKeyENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  store i16 121, ptr %i.zm, align 2
  %i.zn = load i32, ptr %i.qt, align 4            ; 2 uses
  %i.zo = load i32, ptr %i.qu, align 8
  %i.zp = icmp eq i32 %i.zn, %i.zo
  br i1 %i.zp, label %bb.bi, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7

bb.bi:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.6
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  %.pre87 = load i32, ptr %i.qt, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7: ; preds = %bb.bi, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.6
  %i.zq = phi i32 [ %.pre87, %bb.bi ], [ %i.zn, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.6 ] ; 2 uses
  %i.zr = load ptr, ptr %i.qs, align 8
  %i.zs = load i64, ptr %i.zr, align 8
  %i.zt = add i64 %i.zs, -1
  %i.zu = inttoptr i64 %i.zt to ptr
  %i.zv = add nsw i32 %i.zq, 1
  store i32 %i.zv, ptr %i.qt, align 4
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zx = zext i32 %i.zq to i64
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.zw, i64 %i.zx
  store i16 32, ptr %i.zy, align 2
  %i.zz = load i32, ptr %i.qt, align 4            ; 2 uses
  %i.aaa = load i32, ptr %i.qu, align 8
  %i.aab = icmp eq i32 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.bj, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.8

bb.bj:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  %.pre88 = load i32, ptr %i.qt, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.8

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.8: ; preds = %bb.bj, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7
  %i.aac = phi i32 [ %.pre88, %bb.bj ], [ %i.zz, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.7 ] ; 2 uses
  %i.aad = load ptr, ptr %i.qs, align 8
  %i.aae = load i64, ptr %i.aad, align 8
  %i.aaf = add i64 %i.aae, -1
  %i.aag = inttoptr i64 %i.aaf to ptr
  %i.aah = add nsw i32 %i.aac, 1
  store i32 %i.aah, ptr %i.qt, align 4
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aaj = zext i32 %i.aac to i64
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.aai, i64 %i.aaj
  store i16 39, ptr %i.aak, align 2
  %i.aal = load i32, ptr %i.qt, align 4
  %i.aam = load i32, ptr %i.qu, align 8
  %i.aan = icmp eq i32 %i.aal, %i.aam
  br i1 %i.aan, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.8, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i21.8, %bb.ar
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i17.8, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i21.8, %bb.ar
  tail call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %1) #21
  %i.aao = load i32, ptr %i.fv, align 8
  %i.aap = icmp eq i32 %i.aao, 0
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aar = load ptr, ptr %i.aaq, align 8
  %i.aas = load i64, ptr %i.aar, align 8
  %i.aat = add i64 %i.aas, -1
  %i.aau = inttoptr i64 %i.aat to ptr
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.aaw = load i32, ptr %i.aav, align 4          ; 2 uses
  %i.aax = add nsw i32 %i.aaw, 1
  store i32 %i.aax, ptr %i.aav, align 4
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 16 ; 2 uses
  %i.aaz = zext i32 %i.aaw to i64                 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.aap, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aaz
  store i8 39, ptr %i.abb, align 1
  %i.abc = load i32, ptr %i.aav, align 4
  %i.abd = load i32, ptr %i.aba, align 8
  %i.abe = icmp eq i32 %i.abc, %i.abd
  br i1 %i.abe, label %bb.bl, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi12EEEvRAT__Kc.exit

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi12EEEvRAT__Kc.exit

bb.bm:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi11EEEvRAT__Kc.exit
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.aay, i64 %i.aaz
  store i16 39, ptr %i.abf, align 2
  %i.abg = load i32, ptr %i.aav, align 4
  %i.abh = load i32, ptr %i.aba, align 8
  %i.abi = icmp eq i32 %i.abg, %i.abh
  br i1 %i.abi, label %bb.bn, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi12EEEvRAT__Kc.exit

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi12EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi12EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.i10.9, %bb.ao, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.i14.9, %bb.ad, %bb.r, %bb.s, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi7EEEvRAT__Kc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal31CircularStructureMessageBuilder9AppendSmiENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = lshr i64 %1, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.c, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 4 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = icmp sgt i32 %i.o, %i.g
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = zext i32 %i.n to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = and i64 %i.e, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.f, i64 %i.y, i1 false)
  %i.z = load i32, ptr %i.m, align 4
  %i.aa = add i32 %i.z, %i.g                      ; 2 uses
  store i32 %i.aa, ptr %i.m, align 4
  %i.ab = load i32, ptr %i.k, align 8
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i
  %.0.i14 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.i14
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = load i32, ptr %i.h, align 8
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = load ptr, ptr %i.ad, align 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, -1
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ae, align 4
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  store i8 %i.ah, ptr %i.as, align 1
  %i.at = load i32, ptr %i.ae, align 4
  %i.au = load i32, ptr %i.af, align 8
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aw = zext i8 %i.ah to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay
  store i16 %i.aw, ptr %i.az, align 2
  %i.ba = load i32, ptr %i.ae, align 4
  %i.bb = load i32, ptr %i.af, align 8
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split: ; preds = %bb.h, %bb.g
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i.sink.split, %bb.h, %bb.g
  %i.bd = add nuw i64 %.0.i14, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.e
  br i1 %exitcond.not, label %_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.f, !llvm.loop !325

_ZN2v88internal24IncrementalStringBuilder12AppendStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.i, %bb.e, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE(i64 %0, i32 %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %i.a = lshr i32 %1, 19
  %i.b = and i32 %i.a, 1023                       ; 3 uses
  %i.c = lshr i32 %1, 6
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 7                           ; 3 uses
  %i.f = add i64 %0, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i8, ptr %i.g monotonic, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = add i64 %0, 8
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = load atomic volatile i8, ptr %i.k monotonic, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = sub nsw i32 %i.i, %i.m                   ; 3 uses
  %i.o = icmp slt i32 %i.b, %i.n                  ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic volatile i8, ptr %i.k monotonic, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 30
  %i.s = load atomic volatile i8, ptr %i.k monotonic, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.b, %i.t
  %i.v = shl nuw nsw i32 %i.u, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = sub nsw i32 %i.b, %i.n
  %i.x = shl nuw nsw i32 %i.w, 3
  %i.y = add nuw nsw i32 %i.x, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.013.i = phi i64 [ %i.r, %bb.b ], [ 2147483648, %bb.c ]
  %.0.i = phi i32 [ %i.v, %bb.b ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 %i.e, ptr %2, align 1
  %i.z = icmp samesign ult i8 %i.e, 5
  br i1 %i.z, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.23, ptr noundef %i.aa) #21
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.ab = zext nneg i8 %i.e to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE, i64 %i.ab
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ac = select i1 %i.o, i64 16384, i64 0
  %i.ad = sext i32 %.0.i to i64
  %i.ae = sext i32 %i.n to i64
  %i.af = shl nsw i64 %i.ae, 17
  %i.ag = or disjoint i64 %i.af, %i.ac
  %i.ah = or i64 %.013.i, %i.ag
  %i.ai = or i64 %i.ah, %i.ad
  %i.aj = or i64 %i.ai, %switch.ext
  ret i64 %i.aj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_10FieldIndexE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 16384
  %.not.i = icmp eq i64 %i.a, 0
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16383
  %i.c = add nsw i64 %i.b, -1
  %i.d = add i64 %i.c, %.sroa.0.0.copyload.i.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  %.pre.i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 10624
  %.pre11.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  br i1 %i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 312
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %.critedge.i.i, label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 304
  %i.n = load i64, ptr %i.m, align 8
  br label %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i

_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i: ; preds = %.critedge.i.i, %bb.d
  %.sroa.05.0.i.i = phi i64 [ %i.n, %.critedge.i.i ], [ %i.g, %bb.d ]
  %sh.diff.i = lshr i64 %1, 27
  %i.o = and i64 %sh.diff.i, 120
  %.mask.i = and i64 %1, 16376
  %i.p = add nuw nsw i64 %.mask.i, 15
  %i.q = sub nsw i64 %i.p, %i.o
  %i.r = add i64 %i.q, %.sroa.05.0.i.i
  br label %_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit

_ZNK2v88internal8JSObject17RawFastPropertyAtENS0_16PtrComprCageBaseENS0_10FieldIndexE.exit: ; preds = %bb.b, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i
  %.sink9.i = phi i64 [ %i.r, %_ZNK2v88internal10JSReceiver14property_arrayENS0_16PtrComprCageBaseE.exit.i ], [ %i.d, %bb.b ]
  %i.s = inttoptr i64 %.sink9.i to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  ret i64 %i.t
}

declare ptr @_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE(ptr noundef, ptr, i8, i64) local_unnamed_addr #4

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp ult i8 %i.a, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK2v88internal14Representation8MnemonicEv, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ult i16 %i.h, 128
  br i1 %i.i, label %bb.b, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8 ; 4 uses
  %i.l = and i32 %i.k, -536870909
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10624
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 8, !range !33, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 55464
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, -55464
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6: ; preds = %bb.e, %bb.f
end_hunk_3
begin_hunk_4_@_ZN2v88internal15JsonStringifier29TrySerializeSimplePropertyKeyIhEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = lshr i64 %1, 4
  %i.i = and i64 %i.h, 63
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 3                  ; 3 uses
  %i.q = and i64 %i.p, 8589934588                 ; 2 uses
  %i.r = or i64 %i.p, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.w, %i.r
  br i1 %i.x, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 6 uses
  store i8 34, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  switch i64 %i.q, label %bb.i [
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
    i64 16, label %bb.h
    i64 8, label %bb.f
    i64 4, label %bb.e
    i64 12, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ac, align 8
  store i32 %i.ad, ptr %i.ab, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.ac, align 8
  store i64 %i.ae, ptr %i.ab, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 8 %i.ac, i64 %i.q, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.o ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 34, ptr %i.af, align 1
  store i8 58, ptr %i.ag, align 1
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = add i64 %i.p, %i.ah
  store i64 %i.ai, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal15JsonStringifier29TrySerializeSimplePropertyKeyItEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, i64 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = lshr i64 %1, 4
  %i.i = and i64 %i.h, 63
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = add nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.u, %i.p
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.t ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  store i16 34, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.z, ptr noundef %i.aa, i64 noundef %i.o)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.o ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 34, ptr %i.ab, align 2
  store i16 58, ptr %i.ac, align 2
  %i.ad = load i64, ptr %i.s, align 8
  %i.ae = add i64 %i.p, %i.ad
  store i64 %i.ae, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE10ResumeFromIhQltstTL0__stT_EENS0_25FastJsonStringifierResultERNS1_IS5_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(944) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.11 = alloca [15 x i8], align 1           ; 6 uses
  %3 = alloca %"class.v8::internal::ContinuationRecord", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.c = load i64, ptr %i.a, align 8
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.f = load i64, ptr %i.d, align 8
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %._ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit_crit_edge, label %bb.b

._ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, %i.o
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(536) %i.h)
  %i.w = icmp ugt i64 %i.o, 9223372036854775776
  br i1 %i.w, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i: ; preds = %bb.c
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 3 uses
  store ptr %i.x, ptr %i.h, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store ptr %i.y, ptr %i.p, align 8
  %i.z = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not9.i.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.x, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.z, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !326

bb.e:                                             ; preds = %bb.b
  %i.ad = icmp sgt i64 %i.o, 32
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.o, 32
  br i1 %i.ae, label %bb.h, label %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  br label %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i

_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.h, %bb.g, %bb.f, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE22AllocateDynamicStorageEm.exit.i
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.o ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.ag, ptr %i.ah, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit: ; preds = %._ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit_crit_edge, %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i
  %i.ai = phi ptr [ %.pre, %._ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit_crit_edge ], [ %i.ag, %_ZSt18uninitialized_copyIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -32 ; 3 uses
  %i.al = load <2 x i32>, ptr %i.ak, align 8
  %.sroa.014.0.copyload = load i32, ptr %i.ak, align 8
  %.sroa.825.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %.sroa.825.0.copyload = load i64, ptr %.sroa.825.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11.0..sroa_idx, i64 15, i1 false)
  store ptr %i.ak, ptr %i.aj, align 8
  %i.am = icmp eq i32 %.sroa.014.0.copyload, 10
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit
  %i.an = trunc nuw i8 %.sroa.10.0.copyload to i1
  %i.ao = tail call noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyILb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.825.0.copyload, i1 noundef zeroext %i.an, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  %i.ap = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32 ; 2 uses
  %i.ar = load <2 x i32>, ptr %i.aq, align 8
  %.sroa.825.0..sroa_idx26 = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %.sroa.825.0.copyload27 = load i64, ptr %.sroa.825.0..sroa_idx26, align 8
  %.sroa.10.0..sroa_idx32 = getelementptr inbounds i8, ptr %i.ap, i64 -16
  %.sroa.10.0.copyload33 = load i8, ptr %.sroa.10.0..sroa_idx32, align 8
  %.sroa.11.0..sroa_idx38 = getelementptr inbounds i8, ptr %i.ap, i64 -15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11.0..sroa_idx38, i64 15, i1 false)
  store ptr %i.aq, ptr %i.aj, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit
  %.sroa.825.0 = phi i64 [ %.sroa.825.0.copyload27, %bb.i ], [ %.sroa.825.0.copyload, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit ] ; 2 uses
  %.sroa.10.0 = phi i8 [ %.sroa.10.0.copyload33, %bb.i ], [ %.sroa.10.0.copyload, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit ]
  %i.as = phi <2 x i32> [ %i.ar, %bb.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EEaSERKS5_.exit ] ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  %i.au = icmp eq i32 %i.at, 9
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.825.0) ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.l, label %bb.n, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.ax = load ptr, ptr %i.h, align 8
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.l
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -32 ; 2 uses
  %i.ba = load <2 x i32>, ptr %i.az, align 8
  %.sroa.825.0..sroa_idx28 = getelementptr inbounds i8, ptr %i.aw, i64 -24
  %.sroa.825.0.copyload29 = load i64, ptr %.sroa.825.0..sroa_idx28, align 8
  %.sroa.10.0..sroa_idx34 = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %.sroa.10.0.copyload35 = load i8, ptr %.sroa.10.0..sroa_idx34, align 8
  %.sroa.11.0..sroa_idx39 = getelementptr inbounds i8, ptr %i.aw, i64 -15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11.0..sroa_idx39, i64 15, i1 false)
  store ptr %i.az, ptr %i.aj, align 8
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.j
  %.sroa.825.1 = phi i64 [ %.sroa.825.0.copyload29, %.critedge ], [ %.sroa.825.0, %bb.j ]
  %.sroa.10.1 = phi i8 [ %.sroa.10.0.copyload35, %.critedge ], [ %.sroa.10.0, %bb.j ]
  %i.bb = phi <2 x i32> [ %i.ba, %.critedge ], [ %i.as, %bb.j ]
  store <2 x i32> %i.bb, ptr %3, align 8
  %.sroa.825.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.825.1, ptr %.sroa.825.0..sroa_idx30, align 8
  %.sroa.10.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx36, align 8
  %.sroa.11.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11.0..sroa_idx40, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11, i64 15, i1 false)
  %i.bc = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull byval(%"class.v8::internal::ContinuationRecord") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.1 = phi i32 [ %i.bc, %bb.m ], [ 0, %bb.l ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %2 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = and i64 %1, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = lshr i64 %1, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.e, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 6 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.p, i64 noundef %i.g)
  %.pre285 = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.l, %bb.b ], [ %.pre285, %bb.c ] ; 17 uses
  switch i64 %i.g, label %bb.t [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.d:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.r = load i8, ptr %i.h, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.s = load i16, ptr %i.h, align 1
  store i16 %i.s, ptr %i.q, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.f:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) %i.h, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.g:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.t = load i32, ptr %i.h, align 1
  store i32 %i.t, ptr %i.q, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, ptr noundef nonnull align 1 dereferenceable(5) %i.h, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) %i.h, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.q, ptr noundef nonnull align 1 dereferenceable(7) %i.h, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.u = load i64, ptr %i.h, align 1
  store i64 %i.u, ptr %i.q, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.q, ptr noundef nonnull align 1 dereferenceable(9) %i.h, i64 9, i1 false)
end_hunk_4
begin_hunk_5_@_ZN2v88internal19FastJsonStringifierIhE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.loopexit2649

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310: ; preds = %bb.xz
  %i.dec = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.cmy, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  switch i32 %i.dec, label %bb.abp [
    i32 3, label %bb.abj
    i32 4, label %.loopexit2649
    i32 1, label %.loopexit2650
    i32 2, label %.loopexit2650
    i32 0, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.abj:                                           ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread2537, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310
  %i.ded = load ptr, ptr %i.h, align 8
  %i.dee = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.def = ptrtoint ptr %i.ded to i64
  %i.deg = ptrtoint ptr %i.dee to i64
  %i.deh = sub i64 %i.def, %i.deg
  %.not.i698 = icmp ult i64 %i.deh, 4
  br i1 %.not.i698, label %bb.abk, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, !prof !32

bb.abk:                                           ; preds = %bb.abj
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.j, i64 noundef 4)
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

.loopexit2649:                                    ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread2545
  %i.dei = add nuw i32 %.014.i2603202, 1
  %i.dej = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.dek = load ptr, ptr %i.m, align 8
  %i.del = icmp eq ptr %i.dej, %i.dek
  br i1 %i.del, label %bb.abl, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701, !prof !32

bb.abl:                                           ; preds = %.loopexit2649
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.k)
  %.pre.i.i700 = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701: ; preds = %.loopexit2649, %bb.abl
  %i.dem = phi ptr [ %.pre.i.i700, %bb.abl ], [ %i.dej, %.loopexit2649 ] ; 5 uses
  %i.den = getelementptr inbounds nuw i8, ptr %i.dem, i64 32
  store ptr %i.den, ptr %i.l, align 8
  store i32 6, ptr %i.dem, align 8
  %.sroa.52358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dem, i64 8
  store i64 %.sroa.01.0.copyload.i665, ptr %.sroa.52358.0..sroa_idx, align 8
  %.sroa.62359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dem, i64 16
  store i32 %i.dei, ptr %.sroa.62359.0..sroa_idx, align 8
  %.sroa.72360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dem, i64 20
  store i32 %i.cmc, ptr %.sroa.72360.0..sroa_idx, align 4
  %i.deo = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.dep = load ptr, ptr %i.m, align 8
  %i.deq = icmp eq ptr %i.deo, %i.dep
  br i1 %i.deq, label %bb.abm, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit703, !prof !32

bb.abm:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.k)
  %.pre.i.i702 = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit703

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit703: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701, %bb.abm
  %i.der = phi ptr [ %.pre.i.i702, %bb.abm ], [ %i.deo, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit701 ] ; 5 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.der, i64 32
  store ptr %i.des, ptr %i.l, align 8
  store i32 9, ptr %i.der, align 8
  %.sroa.52364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.der, i64 8
  store i64 %i.cmy, ptr %.sroa.52364.0..sroa_idx, align 8
  %.sroa.62365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.der, i64 16
  store i32 0, ptr %.sroa.62365.0..sroa_idx, align 8
  %.sroa.72366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.der, i64 20
  store i32 0, ptr %.sroa.72366.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2562

.loopexit2650:                                    ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread2541
  %.2.i.i3112543 = phi i32 [ %.2.i.i311.ph2540, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread2541 ], [ %i.dec, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310 ], [ %i.dec, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310 ]
  %i.det = add nuw i32 %.014.i2603202, 1
  %i.deu = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.dev = load ptr, ptr %i.m, align 8
  %i.dew = icmp eq ptr %i.deu, %i.dev
  br i1 %i.dew, label %bb.abn, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705, !prof !32

bb.abn:                                           ; preds = %.loopexit2650
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.k)
  %.pre.i.i704 = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705: ; preds = %.loopexit2650, %bb.abn
  %i.dex = phi ptr [ %.pre.i.i704, %bb.abn ], [ %i.deu, %.loopexit2650 ] ; 5 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dex, i64 32
  store ptr %i.dey, ptr %i.l, align 8
  store i32 6, ptr %i.dex, align 8
  %.sroa.52370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dex, i64 8
  store i64 %.sroa.01.0.copyload.i665, ptr %.sroa.52370.0..sroa_idx, align 8
  %.sroa.62371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dex, i64 16
  store i32 %i.det, ptr %.sroa.62371.0..sroa_idx, align 8
  %.sroa.72372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dex, i64 20
  store i32 %i.cmc, ptr %.sroa.72372.0..sroa_idx, align 4
  %i.dez = add nsw i32 %.2.i.i3112543, -1
  %i.dfa = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.dfb = load ptr, ptr %i.m, align 8
  %i.dfc = icmp eq ptr %i.dfa, %i.dfb
  br i1 %i.dfc, label %bb.abo, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit707, !prof !32

bb.abo:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.k)
  %.pre.i.i706 = load ptr, ptr %i.l, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit707

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit707: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705, %bb.abo
  %i.dfd = phi ptr [ %.pre.i.i706, %bb.abo ], [ %i.dfa, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit705 ] ; 5 uses
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dfd, i64 32
  store ptr %i.dfe, ptr %i.l, align 8
  store i32 %i.dez, ptr %i.dfd, align 8
  %.sroa.52376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dfd, i64 8
  store i64 %i.cmy, ptr %.sroa.52376.0..sroa_idx, align 8
  %.sroa.62377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dfd, i64 16
  store i32 0, ptr %.sroa.62377.0..sroa_idx, align 8
  %.sroa.72378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dfd, i64 20
  store i32 0, ptr %.sroa.72378.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.abp:                                           ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread
  %.1.i313 = phi i32 [ %i.dec, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310 ], [ %.2.i.i311.ph, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310.thread ], [ %i.dec, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310 ], [ %i.dec, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i310 ] ; 2 uses
  %.not.i265 = icmp eq i32 %.1.i313, 0
  br i1 %.not.i265, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.xb, %bb.abk
  %.pre3942 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.abj, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit667
  %.sink = phi ptr [ %.pre3949, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit667 ], [ %i.dee, %bb.abj ], [ %.pre3942, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store i32 1819047278, ptr %.sink, align 1
  %i.dff = load ptr, ptr %i.i, align 8
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dff, i64 4
  store ptr %i.dfg, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.dfh = add nuw i32 %.014.i2603202, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dfh, %i.cmc
  br i1 %exitcond.not, label %._crit_edge, label %bb.wy, !llvm.loop !16

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %bb.wx
  %i.dfi = load ptr, ptr %i.h, align 8
  %i.dfj = load ptr, ptr %i.i, align 8            ; 2 uses
  %.not.i708 = icmp eq ptr %i.dfi, %i.dfj
  br i1 %.not.i708, label %bb.abq, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit709, !prof !32

bb.abq:                                           ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.j, i64 noundef 1)
  %.pre3950 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit709

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit709: ; preds = %._crit_edge, %bb.abq
  %i.dfk = phi ptr [ %i.dfj, %._crit_edge ], [ %.pre3950, %bb.abq ] ; 2 uses
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfk, i64 1
  store ptr %i.dfl, ptr %i.i, align 8
  store i8 93, ptr %i.dfk, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.abr:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i710 = load i64, ptr %i.e, align 8
  %i.dfm = load i32, ptr %i.f, align 8
  %i.dfn = load i32, ptr %i.g, align 4
  %i.dfo = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %.sroa.01.0.copyload.i710, i32 noundef %i.dfm, i32 noundef %i.dfn)
  br label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.abs:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i711 = load i64, ptr %i.e, align 8
  %i.dfp = load i32, ptr %i.f, align 8
  %i.dfq = load i32, ptr %i.g, align 4
  %i.dfr = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %.sroa.01.0.copyload.i711, i32 noundef %i.dfp, i32 noundef %i.dfq)
  br label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.abt:                                           ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.abs, %bb.abr, %bb.qv
  %.023 = phi i32 [ %i.dfr, %bb.abs ], [ %i.bsk, %bb.qv ], [ %.0.i286, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %i.dfo, %bb.abr ], [ %.1.i313, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %i.dfs = icmp sgt i32 %.023, 2
  br i1 %i.dfs, label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2562, label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, !prof !48

_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit612, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit468, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit507, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit662, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit573, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit377, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit707, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit431, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit709, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit664, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit618, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit579, %bb.hz, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit513, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit474, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit437, %bb.aq, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit383, %bb.ar, %bb.ia, %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit
  %i.dft = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.dfu = load ptr, ptr %i.k, align 8
  %i.dfv = icmp eq ptr %i.dft, %i.dfu
  br i1 %i.dfv, label %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2562, label %bb.abu

bb.abu:                                           ; preds = %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread
  %i.dfw = getelementptr inbounds i8, ptr %i.dft, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dfw, i64 32, i1 false)
  store ptr %i.dfw, ptr %i.l, align 8
  br label %bb.b, !llvm.loop !327

_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2562: ; preds = %.critedge.i268, %bb.h, %bb.e, %bb.f, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit, %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, %bb.c, %bb.qn, %bb.qn, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103, %bb.hr, %bb.hr, %bb.gn, %bb.gn, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %bb.ag, %bb.ag, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit703, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit658, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit616, %.critedge.i234.thread2505, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit577, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103.thread2478, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit511, %.thread2464, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit472, %.critedge.i195.thread2439, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit435, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2412, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit381, %.thread2398, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit375, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit608, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit503, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit464
  %.0 = phi i32 [ %i.blo, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103 ], [ 5, %.critedge.i195.thread2439 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit435 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit608 ], [ %i.brf, %bb.qn ], [ 5, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2412 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit381 ], [ %i.gi, %bb.ag ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit703 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit658 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit616 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit503 ], [ %i.acr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ 5, %.critedge.i234.thread2505 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit577 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit464 ], [ %i.ahy, %bb.gn ], [ 5, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103.thread2478 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit511 ], [ 5, %.thread2398 ], [ %i.anq, %bb.hr ], [ 5, %.thread2464 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit472 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE12emplace_backIJS3_EEEvDpOT_.exit375 ], [ %i.gi, %bb.ag ], [ %i.acr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.ahy, %bb.gn ], [ %i.anq, %bb.hr ], [ %i.blo, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i103 ], [ %i.brf, %bb.qn ], [ 5, %.critedge.i268 ], [ 5, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit ], [ 5, %bb.e ], [ 5, %bb.h ], [ %.023, %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit ], [ %i.t, %bb.c ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread ], [ 5, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 3 uses
  %i.b = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ueq double %i.b, +inf
  br i1 %or.cond, label %.critedge, label %bb.c, !prof !49

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not.i = icmp ult i64 %i.i, 4
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.b:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.j, i64 noundef 4)
  %.pre11 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %.critedge, %bb.b
  %i.k = phi ptr [ %i.f, %.critedge ], [ %.pre11, %bb.b ]
  store i32 1819047278, ptr %i.k, align 1
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %i.e, align 8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = call { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef %1, ptr nonnull %i.a, i64 100) #21 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 6 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i7 = icmp ugt i64 %i.o, %i.w
  br i1 %.not.i7, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i64 noundef %i.o)
  %.pre = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8: ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.t, %bb.c ], [ %.pre, %bb.d ] ; 17 uses
  switch i64 %i.o, label %bb.u [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
    i64 13, label %bb.q
    i64 14, label %bb.r
    i64 15, label %bb.s
    i64 16, label %bb.t
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  %i.z = load i8, ptr %i.p, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.f:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  %i.aa = load i16, ptr %i.p, align 1
  store i16 %i.aa, ptr %i.y, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.g:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, ptr noundef nonnull align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  %i.ab = load i32, ptr %i.p, align 1
  store i32 %i.ab, ptr %i.y, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.y, ptr noundef nonnull align 1 dereferenceable(5) %i.p, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.y, ptr noundef nonnull align 1 dereferenceable(6) %i.p, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.y, ptr noundef nonnull align 1 dereferenceable(7) %i.p, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  %i.ac = load i64, ptr %i.p, align 1
  store i64 %i.ac, ptr %i.y, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.y, ptr noundef nonnull align 1 dereferenceable(9) %i.p, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.y, ptr noundef nonnull align 1 dereferenceable(10) %i.p, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.y, ptr noundef nonnull align 1 dereferenceable(11) %i.p, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 1 dereferenceable(13) %i.p, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.y, ptr noundef nonnull align 1 dereferenceable(14) %i.p, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.y, ptr noundef nonnull align 1 dereferenceable(15) %i.p, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8
  %i.ad = icmp sgt i64 %i.o, 1
  br i1 %i.ad, label %bb.v, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !36

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.p, i64 %i.o, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit8, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %i.ae = load ptr, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i, %bb.a
  %.sroa.6.020.i = phi i64 [ %1, %bb.a ], [ %i.s, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i ]
  %i.d = add i64 %.sroa.6.020.i, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 15
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 268435456
  %.not.not.not.i.not = icmp eq i32 %i.j, 0
  br i1 %.not.not.not.i.not, label %bb.c, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = icmp eq i16 %i.n, 302
  br i1 %i.o, label %bb.d, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit.i: ; preds = %bb.c
  %i.p = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.q = add i64 %i.p, 23
end_hunk_5
begin_hunk_6_@_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = inttoptr i64 %i.fs to ptr               ; 6 uses
  %i.fu = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.fv = add i64 %i.fu, 11
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i16, ptr %i.fw monotonic, align 2
  %i.fy = and i16 %i.fx, 16
  %.not.i68 = icmp eq i16 %i.fy, 0
  br i1 %.not.i68, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = load ptr, ptr %i.ft, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.ft) #21, !inline_history !40
  br i1 %i.gc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #21
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.gf = load ptr, ptr %i.ft, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call noundef ptr %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #21, !inline_history !40
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.w, %bb.x
  %.0.i69 = phi ptr [ %i.ge, %bb.w ], [ %i.gi, %bb.x ] ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.gk = load i32, ptr %i.gj, align 4            ; 3 uses
  %i.gl = zext i32 %i.gk to i64                   ; 8 uses
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = or disjoint i64 %i.gm, 2                ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.gs = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %.not.i70 = icmp ugt i64 %i.gn, %i.gv
  br i1 %.not.i70, label %bb.y, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit71, !prof !32

bb.y:                                             ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.go, i64 noundef %i.gn)
  %.pre316 = load ptr, ptr %i.gr, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit71

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit71: ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.y
  %i.gw = phi ptr [ %i.gs, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.pre316, %bb.y ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gx, ptr %i.gr, align 8
  store i8 34, ptr %i.gw, align 1
  %i.gy = icmp ugt i32 %i.gk, 31
  br i1 %i.gy, label %.lr.ph283, label %.preheader267

.preheader267:                                    ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit71
  %i.gz = icmp samesign ugt i32 %i.gk, 3
  br i1 %i.gz, label %.lr.ph.preheader, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit4.i51

.lr.ph.preheader:                                 ; preds = %.preheader267
  %i.ha = and i64 %i.gl, 28
  br label %.lr.ph

.lr.ph283:                                        ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit71
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i69, i64 %i.gl
  %i.hc = ptrtoint ptr %.0.i69 to i64             ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph283, %bb.ad
  %.054.i.i54282 = phi i64 [ 0, %.lr.ph283 ], [ %.155.i.i60, %bb.ad ] ; 3 uses
  %.056.i.i53281 = phi ptr [ %.0.i69, %.lr.ph283 ], [ %i.ib, %bb.ad ] ; 4 uses
  %i.hd = load <16 x i8>, ptr %.056.i.i53281, align 1 ; 3 uses
  %i.he = icmp ult <16 x i8> %i.hd, splat (i8 32)
  %i.hf = icmp eq <16 x i8> %i.hd, splat (i8 34)
  %i.hg = icmp eq <16 x i8> %i.hd, splat (i8 92)
  %i.hh = or <16 x i1> %i.he, %i.hf
  %i.hi = or <16 x i1> %i.hg, %i.hh
  %i.hj = bitcast <16 x i1> %i.hi to i16          ; 2 uses
  %i.hk = icmp eq i16 %i.hj, 0
  br i1 %i.hk, label %bb.ad, label %bb.aa, !prof !36

bb.aa:                                            ; preds = %bb.z
  %i.hl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hj, i1 true)
  %i.hm = zext nneg i16 %i.hl to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.056.i.i53281, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1             ; 2 uses
  %i.hp = ptrtoint ptr %.056.i.i53281 to i64
  %i.hq = sub i64 %i.hp, %i.hc
  %i.hr = add i64 %i.hq, %i.hm                    ; 2 uses
  %i.hs = sub i64 %i.hr, %.054.i.i54282
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i69, i64 %.054.i.i54282
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.go, ptr noundef %i.ht, i64 noundef %i.hs)
  %i.hu = icmp ult i8 %i.ho, 96
  br i1 %i.hu, label %bb.ac, label %bb.ab, !prof !36

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hv = zext nneg i8 %i.ho to i64
  %i.hw = shl nuw nsw i64 %i.hv, 3
  %i.hx = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.hw ; 2 uses
  %i.hy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hx) #26
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.go, ptr noundef nonnull %i.hx, i64 noundef %i.hy)
  %i.hz = add i64 %i.hr, 1
  %i.ia = getelementptr inbounds i8, ptr %i.hn, i64 -15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.157.i.i59 = phi ptr [ %i.ia, %bb.ac ], [ %.056.i.i53281, %bb.z ] ; 2 uses
  %.155.i.i60 = phi i64 [ %i.hz, %bb.ac ], [ %.054.i.i54282, %bb.z ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.157.i.i59, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.157.i.i59, i64 31
  %i.id = icmp ult ptr %i.ic, %i.hb
  br i1 %i.id, label %bb.z, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56, !llvm.loop !13

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56: ; preds = %bb.ad
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.ie, %i.hc                    ; 3 uses
  %i.ig = add i64 %i.if, 3
  %i.ih = icmp ult i64 %i.ig, %i.gl
  br i1 %i.ih, label %.lr.ph287, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i58

.lr.ph287:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56, %bb.ae
  %.013.i.i57286 = phi i64 [ %i.iu, %bb.ae ], [ %i.if, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56 ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i69, i64 %.013.i.i57286
  %i.ij = load i32, ptr %i.ii, align 4            ; 4 uses
  %i.ik = add i32 %i.ij, -538976288
  %i.il = xor i32 %i.ij, 572662306
  %i.im = add i32 %i.il, -16843009
  %i.in = xor i32 %i.ij, 1549556828
  %i.io = add i32 %i.in, -16843009
  %i.ip = and i32 %i.ij, -2139062144
  %i.iq = xor i32 %i.ip, -2139062144
  %i.ir = or i32 %i.im, %i.ik
  %i.is = or i32 %i.ir, %i.io
  %i.it = and i32 %i.is, %i.iq
  %.not262 = icmp eq i32 %i.it, 0
  br i1 %.not262, label %bb.ae, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i58

bb.ae:                                            ; preds = %.lr.ph287
  %i.iu = add i64 %.013.i.i57286, 4               ; 2 uses
  %i.iv = add i64 %.013.i.i57286, 7
  %i.iw = icmp ult i64 %i.iv, %i.gl
  br i1 %i.iw, label %.lr.ph287, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i58, !llvm.loop !14

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i58: ; preds = %bb.ae, %.lr.ph287, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56
  %.013.i.i57.lcssa = phi i64 [ %i.if, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i56 ], [ %.013.i.i57286, %.lr.ph287 ], [ %i.iu, %bb.ae ]
  %i.ix = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef %.0.i69, i64 noundef %i.gl, i64 noundef %.013.i.i57.lcssa, i64 noundef %.155.i.i60, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.af
  %.013.i3.i50278 = phi i64 [ %i.jk, %bb.af ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i69, i64 %.013.i3.i50278
  %i.iz = load i32, ptr %i.iy, align 4            ; 4 uses
  %i.ja = add i32 %i.iz, -538976288
  %i.jb = xor i32 %i.iz, 572662306
  %i.jc = add i32 %i.jb, -16843009
  %i.jd = xor i32 %i.iz, 1549556828
  %i.je = add i32 %i.jd, -16843009
  %i.jf = and i32 %i.iz, -2139062144
  %i.jg = xor i32 %i.jf, -2139062144
  %i.jh = or i32 %i.jc, %i.ja
  %i.ji = or i32 %i.jh, %i.je
  %i.jj = and i32 %i.ji, %i.jg
  %.not261 = icmp eq i32 %i.jj, 0
  br i1 %.not261, label %bb.af, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit4.i51

bb.af:                                            ; preds = %.lr.ph
  %i.jk = add nuw nsw i64 %.013.i3.i50278, 4      ; 2 uses
  %i.jl = or disjoint i64 %i.jk, 3
  %i.jm = icmp samesign ult i64 %i.jl, %i.gl
  br i1 %i.jm, label %.lr.ph, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit4.i51, !llvm.loop !14

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit4.i51: ; preds = %bb.af, %.lr.ph, %.preheader267
  %.013.i3.i50.lcssa = phi i64 [ 0, %.preheader267 ], [ %.013.i3.i50278, %.lr.ph ], [ %i.ha, %bb.af ]
  %i.jn = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef %.0.i69, i64 noundef %i.gl, i64 noundef %.013.i3.i50.lcssa, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit

_ZZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i58, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit4.i51
  %i.jo = load ptr, ptr %i.gr, align 8            ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.gr, align 8
  store i8 34, ptr %i.jo, align 1
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.ag:                                            ; preds = %.preheader268
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSB_2EEEEEUlNS7_INS0_16SeqOneByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_16SeqTwoByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_21ExternalOneByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_21ExternalTwoByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_10ThinStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_10ConsStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_12SlicedStringEEEE_EEEEEDaNS7_INS0_6StringEEEOT_.exit: ; preds = %.preheader268, %.preheader268
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.jr = load i64, ptr %i.jq, align 8
  br label %.preheader268, !llvm.loop !328

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.js = and i64 %i.x, 1
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ju = add nsw i64 %i.x, -1
  %i.jv = inttoptr i64 %i.ju to ptr               ; 5 uses
  %i.jw = load atomic volatile i64, ptr %i.jv monotonic, align 8
  %i.jx = add i64 %i.jw, 11
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load atomic volatile i16, ptr %i.jy monotonic, align 2
  %i.ka = icmp eq i16 %i.jz, 130
  br i1 %i.ka, label %.thread256, label %bb.bb

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 8840
  %i.kc = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %i.b, i64 %1, ptr nonnull %i.kb)
  %.not = icmp eq i32 %i.kc, 1072
  br i1 %.not, label %bb.ah, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, !prof !36

.thread256:                                       ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 8840
  %i.ke = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %i.b, i64 %1, ptr nonnull %i.kd)
  %.not257 = icmp eq i32 %i.ke, 1072
  br i1 %.not257, label %.thread258, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, !prof !36

bb.ah:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.kf = lshr i64 %i.x, 32
  %i.kg = trunc nuw i64 %i.kf to i32
  %i.kh = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.kg, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.ki = extractvalue { i64, ptr } %i.kh, 0      ; 6 uses
  %i.kj = extractvalue { i64, ptr } %i.kh, 1      ; 17 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8            ; 2 uses
  %i.ko = ptrtoint ptr %i.kl to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %.not.i73 = icmp ugt i64 %i.ki, %i.kq
  br i1 %.not.i73, label %bb.ai, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74, !prof !32

bb.ai:                                            ; preds = %bb.ah
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.kr, i64 noundef %i.ki)
  %.pre315 = load ptr, ptr %i.km, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74: ; preds = %bb.ah, %bb.ai
  %i.ks = phi ptr [ %i.kn, %bb.ah ], [ %.pre315, %bb.ai ] ; 17 uses
  switch i64 %i.ki, label %bb.az [
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
    i64 5, label %bb.an
    i64 6, label %bb.ao
    i64 7, label %bb.ap
    i64 8, label %bb.aq
    i64 9, label %bb.ar
    i64 10, label %bb.as
    i64 11, label %bb.at
    i64 12, label %bb.au
    i64 13, label %bb.av
    i64 14, label %bb.aw
    i64 15, label %bb.ax
    i64 16, label %bb.ay
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.aj:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  %i.kt = load i8, ptr %i.kj, align 1
  store i8 %i.kt, ptr %i.ks, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ak:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  %i.ku = load i16, ptr %i.kj, align 1
  store i16 %i.ku, ptr %i.ks, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.al:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ks, ptr noundef nonnull align 1 dereferenceable(3) %i.kj, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.am:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  %i.kv = load i32, ptr %i.kj, align 1
  store i32 %i.kv, ptr %i.ks, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.an:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ks, ptr noundef nonnull align 1 dereferenceable(5) %i.kj, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ao:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ks, ptr noundef nonnull align 1 dereferenceable(6) %i.kj, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ap:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ks, ptr noundef nonnull align 1 dereferenceable(7) %i.kj, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.aq:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  %i.kw = load i64, ptr %i.kj, align 1
  store i64 %i.kw, ptr %i.ks, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ar:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ks, ptr noundef nonnull align 1 dereferenceable(9) %i.kj, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.as:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ks, ptr noundef nonnull align 1 dereferenceable(10) %i.kj, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.at:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ks, ptr noundef nonnull align 1 dereferenceable(11) %i.kj, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.au:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ks, ptr noundef nonnull align 1 dereferenceable(12) %i.kj, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.av:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ks, ptr noundef nonnull align 1 dereferenceable(13) %i.kj, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.aw:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ks, ptr noundef nonnull align 1 dereferenceable(14) %i.kj, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ax:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ks, ptr noundef nonnull align 1 dereferenceable(15) %i.kj, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.ay:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ks, ptr noundef nonnull align 1 dereferenceable(16) %i.kj, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.az:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74
  %i.kx = icmp sgt i64 %i.ki, 1
  br i1 %i.kx, label %bb.ba, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !36

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ks, ptr nonnull align 1 %i.kj, i64 %i.ki, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit74, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  %i.ky = load ptr, ptr %i.km, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ki
  store ptr %i.kz, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

.thread258:                                       ; preds = %.thread256
  %i.la = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.la, align 8
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.bb:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.y, label %bb.bc, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.lb = load atomic volatile i64, ptr %i.jv monotonic, align 8
  %i.lc = add i64 %i.lb, 11
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = load atomic volatile i16, ptr %i.ld monotonic, align 2
  %i.lf = icmp eq i16 %i.le, 131
  br i1 %i.lf, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.bc
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = and i64 %i.lh, 1090921693184
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %bb.bd, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.bd:                                            ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = icmp eq i64 %i.x, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  %i.lq = load ptr, ptr %i.lp, align 8            ; 3 uses
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 2 uses
  br i1 %i.lm, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not.i76 = icmp ult i64 %i.lt, 4
  br i1 %.not.i76, label %bb.bf, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit77, !prof !32

bb.bf:                                            ; preds = %bb.be
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.lu, i64 noundef 4)
end_hunk_6
begin_hunk_7_@_ZN2v88internal9OutBufferIhE6ExtendEm:bb.a

_ZN2v88internal8ZoneListINS_4base6VectorIhEEE9ResizeAddERKS4_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayINS_4base6VectorIhEEA_S5_EEPT_m.exit.i.i.i.i
  %i.cc = phi i32 [ %i.bu, %_ZN2v88internal4Zone13AllocateArrayINS_4base6VectorIhEEA_S5_EEPT_m.exit.i.i.i.i ], [ %.pre.i.i.i3, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i ]
  store ptr %i.bw, ptr %i.an, align 8
  store i32 %i.bn, ptr %i.bi, align 8
  br label %_ZN2v88internal8ZoneListINS_4base6VectorIhEEE3AddERKS4_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS_4base6VectorIhEEE3AddERKS4_PNS0_4ZoneE.exit: ; preds = %bb.j, %_ZN2v88internal8ZoneListINS_4base6VectorIhEEE9ResizeAddERKS4_PNS0_4ZoneE.exit.i
  %.sink27 = phi i32 [ %i.bh, %bb.j ], [ %i.cc, %_ZN2v88internal8ZoneListINS_4base6VectorIhEEE9ResizeAddERKS4_PNS0_4ZoneE.exit.i ] ; 2 uses
  %.sink24 = phi ptr [ %i.bl, %bb.j ], [ %i.bw, %_ZN2v88internal8ZoneListINS_4base6VectorIhEEE9ResizeAddERKS4_PNS0_4ZoneE.exit.i ]
  %i.cd = inttoptr i64 %i.bd to ptr
  %i.ce = add nsw i32 %.sink27, 1
  store i32 %i.ce, ptr %i.ao, align 4
  %i.cf = sext i32 %.sink27 to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %.sink24, i64 %i.cf ; 2 uses
  store ptr %i.cd, ptr %i.cg, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx5, align 8
  %i.ch = load i32, ptr %i.ao, align 4
  %i.ci = load ptr, ptr %i.an, align 8
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr [16 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %i.ck, i64 -8
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.cq, ptr %i.cr, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #16

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #4

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  switch i64 %2, label %bb.r [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
    i64 14, label %bb.o
    i64 15, label %bb.p
    i64 16, label %bb.q
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  store i8 %i.c, ptr %i.b, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 1
  store i16 %i.d, ptr %i.b, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  store i32 %i.e, ptr %i.b, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) %1, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 1
  store i64 %i.f, ptr %i.b, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.b, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.a
  %i.g = icmp sgt i64 %2, 1
  br i1 %i.g, label %bb.s, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !36

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store ptr %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %3, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.021.lcssa = phi i64 [ %4, %bb.a ], [ %.122, %bb.d ] ; 3 uses
  %.020.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ]
  %i.c = icmp ult i64 %.021.lcssa, %2
  br i1 %i.c, label %bb.e, label %bb.x, !prof !36

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.026 = phi i64 [ %3, %.lr.ph ], [ %.pre-phi, %bb.d ] ; 4 uses
  %.02025 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %.02124 = phi i64 [ %4, %.lr.ph ], [ %.122, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.026
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !range !33, !noundef !34
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge28, label %bb.c, !prof !36

._crit_edge28:                                    ; preds = %bb.b
  %.pre = add i64 %.026, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.02124
  %i.k = sub i64 %.026, %.02124
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef %i.j, i64 noundef %i.k)
  %i.l = shl nuw nsw i64 %i.f, 3
  %i.m = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.l ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #26
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef nonnull %i.m, i64 noundef %i.n)
  %i.o = add i64 %.026, 1                         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28, %bb.c
  %.pre-phi = phi i64 [ %.pre, %._crit_edge28 ], [ %i.o, %bb.c ] ; 2 uses
  %.122 = phi i64 [ %.02124, %._crit_edge28 ], [ %i.o, %bb.c ] ; 2 uses
  %.1 = phi i1 [ %.02025, %._crit_edge28 ], [ true, %bb.c ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !329

bb.e:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.021.lcssa ; 17 uses
  %i.q = sub nuw i64 %2, %.021.lcssa              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 17 uses
  switch i64 %i.q, label %bb.v [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
    i64 16, label %bb.u
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i16, ptr %i.p, align 1
  store i16 %i.u, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.p, align 1
  store i32 %i.v, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) %i.p, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.s, ptr noundef nonnull align 1 dereferenceable(6) %i.p, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.s, ptr noundef nonnull align 1 dereferenceable(7) %i.p, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.p, align 1
  store i64 %i.w, ptr %i.s, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.s, ptr noundef nonnull align 1 dereferenceable(9) %i.p, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.s, ptr noundef nonnull align 1 dereferenceable(10) %i.p, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.s, ptr noundef nonnull align 1 dereferenceable(11) %i.p, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) %i.p, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) %i.p, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.s, ptr noundef nonnull align 1 dereferenceable(14) %i.p, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.s, ptr noundef nonnull align 1 dereferenceable(15) %i.p, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %i.q, 1
  br i1 %i.x, label %bb.w, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !36

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.z, ptr %i.r, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge
  ret i1 %.020.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -32768, 32768) i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = ptrtoint ptr %.0.i.i to i64              ; 2 uses
  %i.k = add i64 %i.j, 8
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.a, align 8
  store i64 %1, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.pre.pre = load i64, ptr %2, align 8
  %i.m = add i64 %.pre.pre, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 128
  br i1 %i.s, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.c
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.w = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.w, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.j, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  %i.ai = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = and i16 %i.al, -96
  %.not.i21.i.i = icmp eq i16 %i.am, 32
  br i1 %.not.i21.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !33, !noundef !34
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.aq = load i8, ptr %i.ap, align 8, !range !33
  %i.ar = trunc nuw i8 %i.aq to i1
  %not..i.i.i23.i.i = xor i1 %i.ao, true
  %i.as = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.ar
  br i1 %i.as, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.au = load i8, ptr %i.at, align 8, !range !33, !noundef !34
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.d
  %.pn.i.i26.i.i = phi ptr [ %i.ax, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.d ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ay = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.az = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.az, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.ac, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.ba = load i32, ptr %i.x, align 4
  %cond = icmp eq i32 %i.ba, 7
  br i1 %cond, label %bb.g, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit
  %i.bb = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #21 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !32

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #22
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %bb.g
  %i.bd = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.bf = add nsw i64 %i.bd, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = add i16 %i.bk, -2065
  %i.bm = icmp ult i16 %i.bl, 17
  br i1 %i.bm, label %bb.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.i:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bn = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10688
  %i.bp = add i64 %i.bd, 23
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i32, ptr %i.bq monotonic, align 4
  %i.bs = lshr i32 %i.br, 8
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  %i.bx = icmp ugt i64 %i.bw, -281474976710657
  br i1 %i.bx, label %bb.j, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit, !prof !32

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #22
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = or i64 %i.ca, 1
  %i.cc = add nuw nsw i64 %i.cb, 89
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = sext i16 %i.ce to i32
  br label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  %.1 = phi i32 [ -1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit ], [ -1, %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit ], [ %i.cf, %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit ], [ -1, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr %i.b, ptr %i.a, align 8
  %i.cg = load i32, ptr %i.e, align 8
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.e, align 8
  %i.ci = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !36

bb.k:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  ret i32 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(536) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(536) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 144115188075855871
  br i1 %i.k, label %bb.b, label %bb.e, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 288230376151711743
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 32, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.07.i.i.i.i, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  %i.u = icmp eq ptr %i.s, %i.q
  br i1 %i.u, label %_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZSt18uninitialized_moveIPN2v88internal18ContinuationRecordES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.v = shl nuw i64 1, %i.j
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.w, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  store ptr %i.o, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  store ptr %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.v
  store ptr %i.z, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal18ContinuationRecordElET_S4_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal18ContinuationRecordElET_S4_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal18ContinuationRecordElET_S4_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE28HandleInterruptAndCheckCycleEv(ptr noundef nonnull align 8 dereferenceable(944) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef 0) #21
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 912
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE10CheckCycleEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
  %. = select i1 %i.m, i32 5, i32 0, !prof !32
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.1 = phi i32 [ %., %.critedge ], [ 6, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %2 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 15 uses
  %i.b = alloca [11 x i8], align 1                ; 3 uses
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 15 uses
  %i.c = alloca [11 x i8], align 1                ; 6 uses
  %i.d = alloca [11 x i8], align 1                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 936
  %.sroa.042.0.copyload = load i64, ptr %i.e, align 8
  %i.f = add i64 %1, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = add i64 %i.h, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 268435456
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit: ; preds = %bb.a
  %i.m = add i64 %i.h, 23
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, %.sroa.042.0.copyload
  br i1 %i.p, label %bb.b, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !46

bb.b:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 56 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 38 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 154 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i137 = icmp eq ptr %i.s, %i.u
  br i1 %.not.i137, label %bb.c, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.u, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.t, align 8
  store i8 91, ptr %i.v, align 1
  %i.x = add i64 %1, 23
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.ac = lshr i64 %i.z, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = sitofp i32 %i.ad to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.af = add nsw i64 %i.z, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ah, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.d, %bb.e
  %i.ai = phi double [ %i.ae, %bb.d ], [ %.0.copyload.i.i.i.i.i, %bb.e ]
  %i.aj = fptoui double %i.ai to i32              ; 32 uses
  %i.ak = add i64 %1, 15
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8            ; 16 uses
  %i.an = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.ao = add i64 %i.an, 14
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = lshr i8 %i.aq, 2
  switch i8 %i.ar, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit [
    i8 0, label %bb.f
    i8 2, label %bb.ax
    i8 4, label %bb.ef
    i8 1, label %bb.el
    i8 3, label %bb.gh
    i8 5, label %bb.jq
  ]

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.as = icmp ugt i32 %i.aj, 4000
  br i1 %i.as, label %bb.aa, label %.preheader, !prof !32

.preheader:                                       ; preds = %bb.f
  %.not928 = icmp eq i32 %i.aj, 0
  br i1 %.not928, label %.preheader.._crit_edge922_crit_edge, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

.preheader.._crit_edge922_crit_edge:              ; preds = %.preheader
  %.pre1052 = load ptr, ptr %i.t, align 8
  br label %._crit_edge922

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %.preheader
  %i.at = add i64 %i.am, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ay, ptr nonnull %i.d, i64 11) #21 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0      ; 6 uses
  %i.bb = extractvalue { i64, ptr } %i.az, 1      ; 17 uses
  %i.bc = load ptr, ptr %i.r, align 8
  %i.bd = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.not.i142.peel = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i142.peel, label %bb.g, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel, !prof !32

bb.g:                                             ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.ba)
  %.pre1049 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel: ; preds = %bb.g, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel
  %i.bh = phi ptr [ %.pre1049, %bb.g ], [ %i.bd, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 17 uses
  switch i64 %i.ba, label %bb.x [
    i64 1, label %bb.w
    i64 2, label %bb.v
    i64 3, label %bb.u
    i64 4, label %bb.t
    i64 5, label %bb.s
    i64 6, label %bb.r
end_hunk_7
begin_hunk_8_@_ZN2v88internal19FastJsonStringifierIhE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bi = load i64, ptr %i.bb, align 1
  store i64 %i.bi, ptr %i.bh, align 1
  br label %bb.z

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bh, ptr noundef nonnull align 1 dereferenceable(7) %i.bb, i64 7, i1 false)
  br label %bb.z

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bh, ptr noundef nonnull align 1 dereferenceable(6) %i.bb, i64 6, i1 false)
  br label %bb.z

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bh, ptr noundef nonnull align 1 dereferenceable(5) %i.bb, i64 5, i1 false)
  br label %bb.z

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bj = load i32, ptr %i.bb, align 1
  store i32 %i.bj, ptr %i.bh, align 1
  br label %bb.z

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bh, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %bb.z

bb.v:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bk = load i16, ptr %i.bb, align 1
  store i16 %i.bk, ptr %i.bh, align 1
  br label %bb.z

bb.w:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bl = load i8, ptr %i.bb, align 1
  store i8 %i.bl, ptr %i.bh, align 1
  br label %bb.z

bb.x:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bm = icmp sgt i64 %i.ba, 1
  br i1 %i.bm, label %bb.y, label %bb.z, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull align 1 %i.bb, i64 %i.ba, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143.peel
  %i.bn = load ptr, ptr %i.t, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ba ; 3 uses
  store ptr %i.bo, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %exitcond1007.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond1007.peel.not, label %._crit_edge922, label %.peel.next1009

bb.aa:                                            ; preds = %bb.f
  %i.bp = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1009:                                   ; preds = %bb.z, %bb.av
  %i.bq = phi ptr [ %i.co, %bb.av ], [ %i.bo, %bb.z ] ; 2 uses
  %.014.i55920 = phi i32 [ %i.cp, %bb.av ], [ 1, %bb.z ] ; 2 uses
  %i.br = load ptr, ptr %i.r, align 8
  %.not.i140 = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i140, label %bb.ab, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, !prof !32

bb.ab:                                            ; preds = %.peel.next1009
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1050 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %bb.ab, %.peel.next1009
  %i.bs = phi ptr [ %i.bq, %.peel.next1009 ], [ %.pre1050, %bb.ab ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bt, ptr %i.t, align 8
  store i8 44, ptr %i.bs, align 1
  %i.bu = sext i32 %.014.i55920 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bu
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.by, ptr nonnull %i.d, i64 11) #21 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0      ; 6 uses
  %i.cb = extractvalue { i64, ptr } %i.bz, 1      ; 17 uses
  %i.cc = load ptr, ptr %i.r, align 8
  %i.cd = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %.not.i142 = icmp ugt i64 %i.ca, %i.cg
  br i1 %.not.i142, label %bb.ac, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143, !prof !32

bb.ac:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.ca)
  %.pre1051 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.ac
  %i.ch = phi ptr [ %i.cd, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.pre1051, %bb.ac ] ; 17 uses
  switch i64 %i.ca, label %bb.at [
    i64 1, label %bb.ad
    i64 2, label %bb.ae
    i64 3, label %bb.af
    i64 4, label %bb.ag
    i64 5, label %bb.ah
    i64 6, label %bb.ai
    i64 7, label %bb.aj
    i64 8, label %bb.ak
    i64 9, label %bb.al
    i64 10, label %bb.am
    i64 11, label %bb.an
    i64 12, label %bb.ao
    i64 13, label %bb.ap
    i64 14, label %bb.aq
    i64 15, label %bb.ar
    i64 16, label %bb.as
    i64 0, label %bb.av
  ]

bb.ad:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.ci = load i8, ptr %i.cb, align 1
  store i8 %i.ci, ptr %i.ch, align 1
  br label %bb.av

bb.ae:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.cj = load i16, ptr %i.cb, align 1
  store i16 %i.cj, ptr %i.ch, align 1
  br label %bb.av

bb.af:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ch, ptr noundef nonnull align 1 dereferenceable(3) %i.cb, i64 3, i1 false)
  br label %bb.av

bb.ag:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.ck = load i32, ptr %i.cb, align 1
  store i32 %i.ck, ptr %i.ch, align 1
  br label %bb.av

bb.ah:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ch, ptr noundef nonnull align 1 dereferenceable(5) %i.cb, i64 5, i1 false)
  br label %bb.av

bb.ai:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ch, ptr noundef nonnull align 1 dereferenceable(6) %i.cb, i64 6, i1 false)
  br label %bb.av

bb.aj:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ch, ptr noundef nonnull align 1 dereferenceable(7) %i.cb, i64 7, i1 false)
  br label %bb.av

bb.ak:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.cl = load i64, ptr %i.cb, align 1
  store i64 %i.cl, ptr %i.ch, align 1
  br label %bb.av

bb.al:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ch, ptr noundef nonnull align 1 dereferenceable(9) %i.cb, i64 9, i1 false)
  br label %bb.av

bb.am:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ch, ptr noundef nonnull align 1 dereferenceable(10) %i.cb, i64 10, i1 false)
  br label %bb.av

bb.an:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ch, ptr noundef nonnull align 1 dereferenceable(11) %i.cb, i64 11, i1 false)
  br label %bb.av

bb.ao:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ch, ptr noundef nonnull align 1 dereferenceable(12) %i.cb, i64 12, i1 false)
  br label %bb.av

bb.ap:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ch, ptr noundef nonnull align 1 dereferenceable(13) %i.cb, i64 13, i1 false)
  br label %bb.av

bb.aq:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ch, ptr noundef nonnull align 1 dereferenceable(14) %i.cb, i64 14, i1 false)
  br label %bb.av

bb.ar:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ch, ptr noundef nonnull align 1 dereferenceable(15) %i.cb, i64 15, i1 false)
  br label %bb.av

bb.as:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(16) %i.cb, i64 16, i1 false)
  br label %bb.av

bb.at:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.cm = icmp sgt i64 %i.ca, 1
  br i1 %i.cm, label %bb.au, label %bb.av, !prof !36

bb.au:                                            ; preds = %bb.at
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.cb, i64 %i.ca, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit143
  %i.cn = load ptr, ptr %i.t, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ca ; 3 uses
  store ptr %i.co, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.cp = add nuw i32 %.014.i55920, 1             ; 2 uses
  %exitcond1007.not = icmp eq i32 %i.cp, %i.aj
  br i1 %exitcond1007.not, label %._crit_edge922, label %.peel.next1009, !llvm.loop !331

._crit_edge922:                                   ; preds = %bb.av, %bb.z, %.preheader.._crit_edge922_crit_edge
  %i.cq = phi ptr [ %.pre1052, %.preheader.._crit_edge922_crit_edge ], [ %i.bo, %bb.z ], [ %i.co, %bb.av ] ; 2 uses
  %i.cr = load ptr, ptr %i.r, align 8
  %.not.i144 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i144, label %bb.aw, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.aw:                                            ; preds = %._crit_edge922
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1053 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.aw, %._crit_edge922
  %i.cs = phi ptr [ %.pre1053, %bb.aw ], [ %i.cq, %._crit_edge922 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.t, align 8
  store i8 93, ptr %i.cs, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.ax:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.cu = icmp ugt i32 %i.aj, 4000
  br i1 %i.cu, label %bb.ay, label %.preheader693, !prof !32

.preheader693:                                    ; preds = %bb.ax
  %.not927 = icmp eq i32 %i.aj, 0
  br i1 %.not927, label %._crit_edge919, label %.lr.ph918

.lr.ph918:                                        ; preds = %.preheader693
  %i.cv = add i64 %i.am, -1
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.cy = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.az:                                            ; preds = %.lr.ph918, %bb.ed
  %.014.i915 = phi i32 [ 0, %.lr.ph918 ], [ %i.vg, %bb.ed ] ; 5 uses
  %.not679 = icmp eq i32 %.014.i915, 0
  br i1 %.not679, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i88, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cz = load ptr, ptr %i.r, align 8
  %i.da = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i146 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i146, label %bb.bb, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit147, !prof !32

bb.bb:                                            ; preds = %bb.ba
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1038 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit147

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit147: ; preds = %bb.ba, %bb.bb
  %i.db = phi ptr [ %i.da, %bb.ba ], [ %.pre1038, %bb.bb ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.t, align 8
  store i8 44, ptr %i.db, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i88

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i88: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit147, %bb.az
  %i.dd = sext i32 %.014.i915 to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dg = and i64 %i.df, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.bc, label %bb.bw

bb.bc:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.di = lshr i64 %i.df, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.dj, ptr nonnull %i.b, i64 11) #21 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0      ; 6 uses
  %i.dm = extractvalue { i64, ptr } %i.dk, 1      ; 17 uses
  %i.dn = load ptr, ptr %i.r, align 8
  %i.do = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %.not.i148 = icmp ugt i64 %i.dl, %i.dr
  br i1 %.not.i148, label %bb.bd, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149, !prof !32

bb.bd:                                            ; preds = %bb.bc
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.dl)
  %.pre1047 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149: ; preds = %bb.bc, %bb.bd
  %i.ds = phi ptr [ %i.do, %bb.bc ], [ %.pre1047, %bb.bd ] ; 17 uses
  switch i64 %i.dl, label %bb.bu [
    i64 1, label %bb.be
    i64 2, label %bb.bf
    i64 3, label %bb.bg
    i64 4, label %bb.bh
    i64 5, label %bb.bi
    i64 6, label %bb.bj
    i64 7, label %bb.bk
    i64 8, label %bb.bl
    i64 9, label %bb.bm
    i64 10, label %bb.bn
    i64 11, label %bb.bo
    i64 12, label %bb.bp
    i64 13, label %bb.bq
    i64 14, label %bb.br
    i64 15, label %bb.bs
    i64 16, label %bb.bt
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150
  ]

bb.be:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  %i.dt = load i8, ptr %i.dm, align 1
  store i8 %i.dt, ptr %i.ds, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bf:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  %i.du = load i16, ptr %i.dm, align 1
  store i16 %i.du, ptr %i.ds, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bg:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ds, ptr noundef nonnull align 1 dereferenceable(3) %i.dm, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bh:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  %i.dv = load i32, ptr %i.dm, align 1
  store i32 %i.dv, ptr %i.ds, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bi:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ds, ptr noundef nonnull align 1 dereferenceable(5) %i.dm, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bj:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ds, ptr noundef nonnull align 1 dereferenceable(6) %i.dm, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bk:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ds, ptr noundef nonnull align 1 dereferenceable(7) %i.dm, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bl:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  %i.dw = load i64, ptr %i.dm, align 1
  store i64 %i.dw, ptr %i.ds, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bm:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ds, ptr noundef nonnull align 1 dereferenceable(9) %i.dm, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bn:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ds, ptr noundef nonnull align 1 dereferenceable(10) %i.dm, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bo:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ds, ptr noundef nonnull align 1 dereferenceable(11) %i.dm, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bp:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ds, ptr noundef nonnull align 1 dereferenceable(12) %i.dm, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bq:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ds, ptr noundef nonnull align 1 dereferenceable(13) %i.dm, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.br:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ds, ptr noundef nonnull align 1 dereferenceable(14) %i.dm, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bs:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ds, ptr noundef nonnull align 1 dereferenceable(15) %i.dm, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bt:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ds, ptr noundef nonnull align 1 dereferenceable(16) %i.dm, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

bb.bu:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149
  %i.dx = icmp sgt i64 %i.dl, 1
  br i1 %i.dx, label %bb.bv, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150, !prof !36

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dm, i64 %i.dl, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit150: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit149, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %i.dy = load ptr, ptr %i.t, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dl
  store ptr %i.dz, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.bw:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i88
  %i.ea = add nsw i64 %i.df, -1
  %i.eb = inttoptr i64 %i.ea to ptr               ; 9 uses
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.ec, 11
  %i.ee = inttoptr i64 %i.ed to ptr
end_hunk_8
begin_hunk_9_@_ZN2v88internal19FastJsonStringifierIhE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
  ]

bb.dw:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread619, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.tv = load ptr, ptr %i.r, align 8
  %i.tw = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %.not.i172 = icmp ult i64 %i.tz, 4
  br i1 %.not.i172, label %bb.dx, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread632, !prof !32

bb.dx:                                            ; preds = %bb.dw
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 4)
  %.pre1042 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread632

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread632: ; preds = %bb.dx, %bb.dw
  %i.ua = phi ptr [ %.pre1042, %bb.dx ], [ %i.tw, %bb.dw ]
  store i32 1819047278, ptr %i.ua, align 1
  %i.ub = load ptr, ptr %i.t, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store ptr %i.uc, ptr %i.t, align 8
  br label %bb.ed

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread627
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ue = add nuw i32 %.014.i915, 1
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.ug = load ptr, ptr %i.uf, align 8            ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = icmp eq ptr %i.ug, %i.ui
  br i1 %i.uj, label %bb.dy, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.dy:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.ud)
  %.pre.i.i = load ptr, ptr %i.uf, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.dy
  %i.uk = phi ptr [ %.pre.i.i, %bb.dy ], [ %i.ug, %.loopexit ] ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  store ptr %i.ul, ptr %i.uf, align 8
  store i32 5, ptr %i.uk, align 8
  %.sroa.5571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i64 %i.am, ptr %.sroa.5571.0..sroa_idx, align 8
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store i32 %i.ue, ptr %.sroa.6572.0..sroa_idx, align 8
  %.sroa.7573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 20
  store i32 %i.aj, ptr %.sroa.7573.0..sroa_idx, align 4
  %i.um = load ptr, ptr %i.uf, align 8            ; 2 uses
  %i.un = load ptr, ptr %i.uh, align 8
  %i.uo = icmp eq ptr %i.um, %i.un
  br i1 %i.uo, label %bb.dz, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit175, !prof !32

bb.dz:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.ud)
  %.pre.i.i174 = load ptr, ptr %i.uf, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit175

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit175: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, %bb.dz
  %i.up = phi ptr [ %.pre.i.i174, %bb.dz ], [ %i.um, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  store ptr %i.uq, ptr %i.uf, align 8
  store i32 9, ptr %i.up, align 8
  %.sroa.5576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store i64 %i.df, ptr %.sroa.5576.0..sroa_idx, align 8
  %.sroa.6577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store i32 0, ptr %.sroa.6577.0..sroa_idx, align 8
  %.sroa.7578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  store i32 0, ptr %.sroa.7578.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.loopexit694:                                     ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread623
  %.2.i.i625 = phi i32 [ %.2.i.i.ph622, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread623 ], [ %i.tu, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.tu, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.us = add nuw i32 %.014.i915, 1
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.uu = load ptr, ptr %i.ut, align 8            ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = icmp eq ptr %i.uu, %i.uw
  br i1 %i.ux, label %bb.ea, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177, !prof !32

bb.ea:                                            ; preds = %.loopexit694
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.ur)
  %.pre.i.i176 = load ptr, ptr %i.ut, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177: ; preds = %.loopexit694, %bb.ea
  %i.uy = phi ptr [ %.pre.i.i176, %bb.ea ], [ %i.uu, %.loopexit694 ] ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  store ptr %i.uz, ptr %i.ut, align 8
  store i32 5, ptr %i.uy, align 8
  %.sroa.5582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i64 %i.am, ptr %.sroa.5582.0..sroa_idx, align 8
  %.sroa.6583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store i32 %i.us, ptr %.sroa.6583.0..sroa_idx, align 8
  %.sroa.7584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uy, i64 20
  store i32 %i.aj, ptr %.sroa.7584.0..sroa_idx, align 4
  %i.va = add nsw i32 %.2.i.i625, -1
  %i.vb = load ptr, ptr %i.ut, align 8            ; 2 uses
  %i.vc = load ptr, ptr %i.uv, align 8
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %bb.eb, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit179, !prof !32

bb.eb:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.ur)
  %.pre.i.i178 = load ptr, ptr %i.ut, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit179

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit179: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177, %bb.eb
  %i.ve = phi ptr [ %.pre.i.i178, %bb.eb ], [ %i.vb, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit177 ] ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  store ptr %i.vf, ptr %i.ut, align 8
  store i32 %i.va, ptr %i.ve, align 8
  %.sroa.5588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store i64 %i.df, ptr %.sroa.5588.0..sroa_idx, align 8
  %.sroa.6589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store i32 0, ptr %.sroa.6589.0..sroa_idx, align 8
  %.sroa.7590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 20
  store i32 0, ptr %.sroa.7590.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.ec:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %.0.i89 = phi i32 [ %i.tu, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.tu, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %.2.i.i.ph, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.tu, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i89, 0
  br i1 %.not.i, label %bb.ed, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.ed:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread632, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.vg = add nuw i32 %.014.i915, 1               ; 2 uses
  %exitcond1006.not = icmp eq i32 %i.vg, %i.aj
  br i1 %exitcond1006.not, label %._crit_edge919, label %bb.az, !llvm.loop !15

._crit_edge919:                                   ; preds = %bb.ed, %.preheader693
  %i.vh = load ptr, ptr %i.r, align 8
  %i.vi = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i180 = icmp eq ptr %i.vh, %i.vi
  br i1 %.not.i180, label %bb.ee, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit181, !prof !32

bb.ee:                                            ; preds = %._crit_edge919
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1048 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit181

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit181: ; preds = %._crit_edge919, %bb.ee
  %i.vj = phi ptr [ %i.vi, %._crit_edge919 ], [ %.pre1048, %bb.ee ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  store ptr %i.vk, ptr %i.t, align 8
  store i8 93, ptr %i.vj, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.ef:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.vl = icmp ugt i32 %i.aj, 4000
  br i1 %i.vl, label %bb.eh, label %.preheader695, !prof !32

.preheader695:                                    ; preds = %bb.ef
  %.not926 = icmp eq i32 %i.aj, 0
  br i1 %.not926, label %._crit_edge850, label %bb.eg

bb.eg:                                            ; preds = %.preheader695
  %i.vm = add i64 %i.am, -1
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i184.peel.pre = load double, ptr %i.vo, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i184.peel.pre)
  %exitcond1002.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond1002.peel.not, label %._crit_edge850, label %.peel.next1004

bb.eh:                                            ; preds = %bb.ef
  %i.vp = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1004:                                   ; preds = %bb.eg, %bb.ej
  %.014.i62848 = phi i32 [ %i.vw, %bb.ej ], [ 1, %bb.eg ] ; 2 uses
  %i.vq = load ptr, ptr %i.r, align 8
  %i.vr = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i182 = icmp eq ptr %i.vq, %i.vr
  br i1 %.not.i182, label %bb.ei, label %bb.ej, !prof !32

bb.ei:                                            ; preds = %.peel.next1004
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1036 = load ptr, ptr %i.t, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.peel.next1004
  %i.vs = phi ptr [ %i.vr, %.peel.next1004 ], [ %.pre1036, %bb.ei ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  store ptr %i.vt, ptr %i.t, align 8
  store i8 44, ptr %i.vs, align 1
  %i.vu = sext i32 %.014.i62848 to i64
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %i.vu
  %.0.copyload.i.i.i.i184 = load double, ptr %i.vv, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i184)
  %i.vw = add nuw i32 %.014.i62848, 1             ; 2 uses
  %exitcond1002.not = icmp eq i32 %i.vw, %i.aj
  br i1 %exitcond1002.not, label %._crit_edge850, label %.peel.next1004, !llvm.loop !332

._crit_edge850:                                   ; preds = %bb.ej, %bb.eg, %.preheader695
  %i.vx = load ptr, ptr %i.r, align 8
  %i.vy = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i185 = icmp eq ptr %i.vx, %i.vy
  br i1 %.not.i185, label %bb.ek, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.ek:                                            ; preds = %._crit_edge850
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1037 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.ek, %._crit_edge850
  %i.vz = phi ptr [ %.pre1037, %bb.ek ], [ %i.vy, %._crit_edge850 ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  store ptr %i.wa, ptr %i.t, align 8
  store i8 93, ptr %i.vz, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.el:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.wb = load ptr, ptr %0, align 8               ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 9080
  %i.wd = load i64, ptr %i.wc, align 8
  %i.we = add i64 %i.wd, 23
  %i.wf = inttoptr i64 %i.we to ptr
  %i.wg = load i64, ptr %i.wf, align 8
  %i.wh = and i64 %i.wg, -4294967295
  %i.wi = icmp eq i64 %i.wh, 4294967296
  br i1 %i.wi, label %bb.em, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.em:                                            ; preds = %bb.el
  %i.wj = icmp ugt i32 %i.aj, 4000
  br i1 %i.wj, label %bb.fi, label %.preheader696, !prof !32

.preheader696:                                    ; preds = %bb.em
  %.not925 = icmp eq i32 %i.aj, 0
  br i1 %.not925, label %.preheader696.._crit_edge847_crit_edge, label %.lr.ph846

.preheader696.._crit_edge847_crit_edge:           ; preds = %.preheader696
  %.pre1032 = load ptr, ptr %i.t, align 8
  br label %._crit_edge847

.lr.ph846:                                        ; preds = %.preheader696
  %i.wk = add i64 %i.am, -1
  %i.wl = inttoptr i64 %i.wk to ptr
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16 ; 3 uses
  %i.wn = load atomic volatile i64, ptr %i.wm monotonic, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wb, i64 656
  %i.wp = load i64, ptr %i.wo, align 8
  %i.wq = icmp eq i64 %i.wn, %i.wp
  br i1 %i.wq, label %bb.fg, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i.peel

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i.peel: ; preds = %.lr.ph846
  %i.wr = load atomic volatile i64, ptr %i.wm monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ws = lshr i64 %i.wr, 32
  %i.wt = trunc nuw i64 %i.ws to i32
  %i.wu = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.wt, ptr nonnull %i.c, i64 11) #21 ; 2 uses
  %i.wv = extractvalue { i64, ptr } %i.wu, 0      ; 6 uses
  %i.ww = extractvalue { i64, ptr } %i.wu, 1      ; 17 uses
  %i.wx = load ptr, ptr %i.r, align 8
  %i.wy = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %.not.i191.peel = icmp ugt i64 %i.wv, %i.xb
  br i1 %.not.i191.peel, label %bb.en, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel, !prof !32

bb.en:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i.peel
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.wv)
  %.pre1028 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel: ; preds = %bb.en, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i.peel
  %i.xc = phi ptr [ %.pre1028, %bb.en ], [ %i.wy, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i.peel ] ; 17 uses
  switch i64 %i.wv, label %bb.fe [
    i64 1, label %bb.fd
    i64 2, label %bb.fc
    i64 3, label %bb.fb
    i64 4, label %bb.fa
    i64 5, label %bb.ez
    i64 6, label %bb.ey
    i64 7, label %bb.ex
    i64 8, label %bb.ew
    i64 9, label %bb.ev
    i64 10, label %bb.eu
    i64 11, label %bb.et
    i64 12, label %bb.es
    i64 13, label %bb.er
    i64 14, label %bb.eq
    i64 15, label %bb.ep
    i64 16, label %bb.eo
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel
  ]

bb.eo:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.xc, ptr noundef nonnull align 1 dereferenceable(16) %i.ww, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ep:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.xc, ptr noundef nonnull align 1 dereferenceable(15) %i.ww, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.eq:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.xc, ptr noundef nonnull align 1 dereferenceable(14) %i.ww, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.er:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.xc, ptr noundef nonnull align 1 dereferenceable(13) %i.ww, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.es:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.xc, ptr noundef nonnull align 1 dereferenceable(12) %i.ww, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.et:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.xc, ptr noundef nonnull align 1 dereferenceable(11) %i.ww, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.eu:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.xc, ptr noundef nonnull align 1 dereferenceable(10) %i.ww, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ev:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.xc, ptr noundef nonnull align 1 dereferenceable(9) %i.ww, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ew:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xd = load i64, ptr %i.ww, align 1
  store i64 %i.xd, ptr %i.xc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ex:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.xc, ptr noundef nonnull align 1 dereferenceable(7) %i.ww, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ey:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.xc, ptr noundef nonnull align 1 dereferenceable(6) %i.ww, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.ez:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.xc, ptr noundef nonnull align 1 dereferenceable(5) %i.ww, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.fa:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xe = load i32, ptr %i.ww, align 1
  store i32 %i.xe, ptr %i.xc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.fb:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xc, ptr noundef nonnull align 1 dereferenceable(3) %i.ww, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.fc:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xf = load i16, ptr %i.ww, align 1
  store i16 %i.xf, ptr %i.xc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.fd:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xg = load i8, ptr %i.ww, align 1
  store i8 %i.xg, ptr %i.xc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

bb.fe:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xh = icmp sgt i64 %i.wv, 1
  br i1 %i.xh, label %bb.ff, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel, !prof !36

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xc, ptr nonnull align 1 %i.ww, i64 %i.wv, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel: ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192.peel
  %i.xi = load ptr, ptr %i.t, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.wv ; 2 uses
  store ptr %i.xj, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

bb.fg:                                            ; preds = %.lr.ph846
  %i.xk = load ptr, ptr %i.r, align 8
  %i.xl = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %.not.i187.peel = icmp ult i64 %i.xo, 5
  br i1 %.not.i187.peel, label %bb.fh, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i.peel, !prof !32

bb.fh:                                            ; preds = %bb.fg
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 5)
  %.pre1029.pre = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i.peel

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i.peel: ; preds = %bb.fg, %bb.fh
  %.pre1029 = phi ptr [ %.pre1029.pre, %bb.fh ], [ %i.xl, %bb.fg ]
  store i32 1819047278, ptr %.pre1029, align 1
  %i.xp = load ptr, ptr %i.t, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4 ; 2 uses
  store ptr %i.xq, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i.peel, %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel
  %i.xr = phi ptr [ %i.xq, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i.peel ], [ %i.xj, %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193.peel ] ; 2 uses
  %exitcond998.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond998.peel.not, label %._crit_edge847, label %.peel.next1000

bb.fi:                                            ; preds = %bb.em
  %i.xs = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1000:                                   ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.xt = phi ptr [ %i.zf, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %i.xr, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 3 uses
  %.014.i69845 = phi i32 [ %i.zg, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 1, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 2 uses
  %i.xu = load ptr, ptr %0, align 8
  %i.xv = sext i32 %.014.i69845 to i64
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.wm, i64 %i.xv ; 2 uses
  %i.xx = load atomic volatile i64, ptr %i.xw monotonic, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 656
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = icmp eq i64 %i.xx, %i.xz
  %i.yb = load ptr, ptr %i.r, align 8             ; 2 uses
  br i1 %i.ya, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %.peel.next1000
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = ptrtoint ptr %i.xt to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %.not.i187 = icmp ult i64 %i.ye, 5
  br i1 %.not.i187, label %bb.fk, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i, !prof !32

bb.fk:                                            ; preds = %bb.fj
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 5)
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i: ; preds = %bb.fj, %bb.fk
  %i.yf = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1
  store ptr %i.yg, ptr %i.t, align 8
  store i8 44, ptr %i.yf, align 1
  %i.yh = load ptr, ptr %i.t, align 8
  store i32 1819047278, ptr %i.yh, align 1
  %i.yi = load ptr, ptr %i.t, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4 ; 2 uses
  store ptr %i.yj, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.fl:                                            ; preds = %.peel.next1000
  %.not.i189 = icmp eq ptr %i.yb, %i.xt
  br i1 %.not.i189, label %bb.fm, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, !prof !32

bb.fm:                                            ; preds = %bb.fl
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1030 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i: ; preds = %bb.fm, %bb.fl
  %i.yk = phi ptr [ %i.xt, %bb.fl ], [ %.pre1030, %bb.fm ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 1
  store ptr %i.yl, ptr %i.t, align 8
  store i8 44, ptr %i.yk, align 1
  %i.ym = load atomic volatile i64, ptr %i.xw monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.yn = lshr i64 %i.ym, 32
  %i.yo = trunc nuw i64 %i.yn to i32
  %i.yp = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.yo, ptr nonnull %i.c, i64 11) #21 ; 2 uses
  %i.yq = extractvalue { i64, ptr } %i.yp, 0      ; 6 uses
  %i.yr = extractvalue { i64, ptr } %i.yp, 1      ; 17 uses
  %i.ys = load ptr, ptr %i.r, align 8
  %i.yt = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = ptrtoint ptr %i.yt to i64
  %i.yw = sub i64 %i.yu, %i.yv
  %.not.i191 = icmp ugt i64 %i.yq, %i.yw
  br i1 %.not.i191, label %bb.fn, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192, !prof !32

bb.fn:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.yq)
  %.pre1031 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192: ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, %bb.fn
  %i.yx = phi ptr [ %i.yt, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i ], [ %.pre1031, %bb.fn ] ; 17 uses
  switch i64 %i.yq, label %bb.ge [
    i64 1, label %bb.fo
    i64 2, label %bb.fp
    i64 3, label %bb.fq
    i64 4, label %bb.fr
    i64 5, label %bb.fs
    i64 6, label %bb.ft
    i64 7, label %bb.fu
    i64 8, label %bb.fv
    i64 9, label %bb.fw
    i64 10, label %bb.fx
    i64 11, label %bb.fy
    i64 12, label %bb.fz
    i64 13, label %bb.ga
    i64 14, label %bb.gb
    i64 15, label %bb.gc
    i64 16, label %bb.gd
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193
  ]

bb.fo:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  %i.yy = load i8, ptr %i.yr, align 1
  store i8 %i.yy, ptr %i.yx, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fp:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  %i.yz = load i16, ptr %i.yr, align 1
  store i16 %i.yz, ptr %i.yx, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fq:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yx, ptr noundef nonnull align 1 dereferenceable(3) %i.yr, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fr:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  %i.za = load i32, ptr %i.yr, align 1
  store i32 %i.za, ptr %i.yx, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fs:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.yx, ptr noundef nonnull align 1 dereferenceable(5) %i.yr, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.ft:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.yx, ptr noundef nonnull align 1 dereferenceable(6) %i.yr, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fu:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.yx, ptr noundef nonnull align 1 dereferenceable(7) %i.yr, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fv:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  %i.zb = load i64, ptr %i.yr, align 1
  store i64 %i.zb, ptr %i.yx, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fw:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.yx, ptr noundef nonnull align 1 dereferenceable(9) %i.yr, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fx:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.yx, ptr noundef nonnull align 1 dereferenceable(10) %i.yr, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fy:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.yx, ptr noundef nonnull align 1 dereferenceable(11) %i.yr, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.fz:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.yx, ptr noundef nonnull align 1 dereferenceable(12) %i.yr, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.ga:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.yx, ptr noundef nonnull align 1 dereferenceable(13) %i.yr, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.gb:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.yx, ptr noundef nonnull align 1 dereferenceable(14) %i.yr, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.gc:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.yx, ptr noundef nonnull align 1 dereferenceable(15) %i.yr, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.gd:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.yx, ptr noundef nonnull align 1 dereferenceable(16) %i.yr, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

bb.ge:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192
  %i.zc = icmp sgt i64 %i.yq, 1
  br i1 %i.zc, label %bb.gf, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193, !prof !36

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yx, ptr nonnull align 1 %i.yr, i64 %i.yq, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit192, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf
  %i.zd = load ptr, ptr %i.t, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yq ; 2 uses
  store ptr %i.ze, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i
  %i.zf = phi ptr [ %i.ze, %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit193 ], [ %i.yj, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i ] ; 2 uses
  %i.zg = add nuw i32 %.014.i69845, 1             ; 2 uses
  %exitcond998.not = icmp eq i32 %i.zg, %i.aj
  br i1 %exitcond998.not, label %._crit_edge847, label %.peel.next1000, !llvm.loop !333

._crit_edge847:                                   ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %.preheader696.._crit_edge847_crit_edge
  %i.zh = phi ptr [ %.pre1032, %.preheader696.._crit_edge847_crit_edge ], [ %i.xr, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ], [ %i.zf, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %i.zi = load ptr, ptr %i.r, align 8
  %.not.i194 = icmp eq ptr %i.zi, %i.zh
  br i1 %.not.i194, label %bb.gg, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.gg:                                            ; preds = %._crit_edge847
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1033 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.gg, %._crit_edge847
  %i.zj = phi ptr [ %.pre1033, %bb.gg ], [ %i.zh, %._crit_edge847 ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  store ptr %i.zk, ptr %i.t, align 8
  store i8 93, ptr %i.zj, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gh:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.zl = load ptr, ptr %0, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 9080
  %i.zn = load i64, ptr %i.zm, align 8
  %i.zo = add i64 %i.zn, 23
  %i.zp = inttoptr i64 %i.zo to ptr
  %i.zq = load i64, ptr %i.zp, align 8
  %i.zr = and i64 %i.zq, -4294967295
  %i.zs = icmp eq i64 %i.zr, 4294967296
  br i1 %i.zs, label %bb.gi, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.gi:                                            ; preds = %bb.gh
  %i.zt = icmp ugt i32 %i.aj, 4000
  br i1 %i.zt, label %bb.gj, label %.preheader701, !prof !32

.preheader701:                                    ; preds = %bb.gi
  %.not924 = icmp eq i32 %i.aj, 0
  br i1 %.not924, label %._crit_edge844, label %.lr.ph843

.lr.ph843:                                        ; preds = %.preheader701
  %i.zu = add i64 %i.am, -1
  %i.zv = inttoptr i64 %i.zu to ptr
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.zx = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gk:                                            ; preds = %.lr.ph843, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread
  %.014.i47840 = phi i32 [ 0, %.lr.ph843 ], [ %i.ary, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ] ; 6 uses
  %i.zy = load ptr, ptr %0, align 8
  %i.zz = sext i32 %.014.i47840 to i64
  %i.aaa = getelementptr inbounds [8 x i8], ptr %i.zw, i64 %i.zz ; 2 uses
  %i.aab = load atomic volatile i64, ptr %i.aaa monotonic, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 656
  %i.aad = load i64, ptr %i.aac, align 8
  %i.aae = icmp eq i64 %i.aab, %i.aad
  br i1 %i.aae, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %bb.gk
  %i.aaf = load ptr, ptr %i.r, align 8
  %i.aag = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %.not.i196 = icmp ult i64 %i.aaj, 5
  br i1 %.not.i196, label %bb.gm, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197, !prof !32

bb.gm:                                            ; preds = %bb.gl
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 5)
  %.pre1026.pre = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197: ; preds = %bb.gl, %bb.gm
  %.pre1026 = phi ptr [ %i.aag, %bb.gl ], [ %.pre1026.pre, %bb.gm ] ; 3 uses
  %.not675 = icmp eq i32 %.014.i47840, 0
  br i1 %.not675, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, label %bb.gn

bb.gn:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197
  %i.aak = getelementptr inbounds nuw i8, ptr %.pre1026, i64 1
  store ptr %i.aak, ptr %i.t, align 8
  store i8 44, ptr %.pre1026, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.go:                                            ; preds = %bb.gk
  %.not666 = icmp eq i32 %.014.i47840, 0
  br i1 %.not666, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i93, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aal = load ptr, ptr %i.r, align 8
  %i.aam = load ptr, ptr %i.t, align 8            ; 2 uses
  %.not.i198 = icmp eq ptr %i.aal, %i.aam
  br i1 %.not.i198, label %bb.gq, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit199, !prof !32

bb.gq:                                            ; preds = %bb.gp
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1015 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit199

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit199: ; preds = %bb.gp, %bb.gq
  %i.aan = phi ptr [ %i.aam, %bb.gp ], [ %.pre1015, %bb.gq ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 1
  store ptr %i.aao, ptr %i.t, align 8
  store i8 44, ptr %i.aan, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i93

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i93: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit199, %bb.go
  %i.aap = load atomic volatile i64, ptr %i.aaa monotonic, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aaq = and i64 %i.aap, 1
  %i.aar = icmp eq i64 %i.aaq, 0
  br i1 %i.aar, label %bb.gr, label %bb.hl

bb.gr:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aas = lshr i64 %i.aap, 32
  %i.aat = trunc nuw i64 %i.aas to i32
  %i.aau = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.aat, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.aav = extractvalue { i64, ptr } %i.aau, 0    ; 6 uses
  %i.aaw = extractvalue { i64, ptr } %i.aau, 1    ; 17 uses
  %i.aax = load ptr, ptr %i.r, align 8
  %i.aay = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %.not.i200 = icmp ugt i64 %i.aav, %i.abb
  br i1 %.not.i200, label %bb.gs, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201, !prof !32

bb.gs:                                            ; preds = %bb.gr
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef %i.aav)
  %.pre1024 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201: ; preds = %bb.gr, %bb.gs
  %i.abc = phi ptr [ %i.aay, %bb.gr ], [ %.pre1024, %bb.gs ] ; 17 uses
  switch i64 %i.aav, label %bb.hj [
    i64 1, label %bb.gt
    i64 2, label %bb.gu
    i64 3, label %bb.gv
    i64 4, label %bb.gw
    i64 5, label %bb.gx
    i64 6, label %bb.gy
    i64 7, label %bb.gz
    i64 8, label %bb.ha
    i64 9, label %bb.hb
    i64 10, label %bb.hc
    i64 11, label %bb.hd
    i64 12, label %bb.he
    i64 13, label %bb.hf
    i64 14, label %bb.hg
    i64 15, label %bb.hh
    i64 16, label %bb.hi
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202
  ]

bb.gt:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  %i.abd = load i8, ptr %i.aaw, align 1
  store i8 %i.abd, ptr %i.abc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gu:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  %i.abe = load i16, ptr %i.aaw, align 1
  store i16 %i.abe, ptr %i.abc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gv:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abc, ptr noundef nonnull align 1 dereferenceable(3) %i.aaw, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gw:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  %i.abf = load i32, ptr %i.aaw, align 1
  store i32 %i.abf, ptr %i.abc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gx:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.abc, ptr noundef nonnull align 1 dereferenceable(5) %i.aaw, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gy:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abc, ptr noundef nonnull align 1 dereferenceable(6) %i.aaw, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.gz:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.abc, ptr noundef nonnull align 1 dereferenceable(7) %i.aaw, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.ha:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  %i.abg = load i64, ptr %i.aaw, align 1
  store i64 %i.abg, ptr %i.abc, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.hb:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.abc, ptr noundef nonnull align 1 dereferenceable(9) %i.aaw, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.hc:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.abc, ptr noundef nonnull align 1 dereferenceable(10) %i.aaw, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit202

bb.hd:                                            ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit201
end_hunk_9
begin_hunk_10_@_ZN2v88internal19FastJsonStringifierIhE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
bb.jm:                                            ; preds = %.loopexit703
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.arh)
  %.pre.i.i229 = load ptr, ptr %i.arj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit230

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit230: ; preds = %.loopexit703, %bb.jm
  %i.aro = phi ptr [ %.pre.i.i229, %bb.jm ], [ %i.ark, %.loopexit703 ] ; 5 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 32
  store ptr %i.arp, ptr %i.arj, align 8
  store i32 6, ptr %i.aro, align 8
  %.sroa.5606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  store i64 %i.am, ptr %.sroa.5606.0..sroa_idx, align 8
  %.sroa.6607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aro, i64 16
  store i32 %i.ari, ptr %.sroa.6607.0..sroa_idx, align 8
  %.sroa.7608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aro, i64 20
  store i32 %i.aj, ptr %.sroa.7608.0..sroa_idx, align 4
  %i.arq = add nsw i32 %.2.i.i96647, -1
  %i.arr = load ptr, ptr %i.arj, align 8          ; 2 uses
  %i.ars = load ptr, ptr %i.arl, align 8
  %i.art = icmp eq ptr %i.arr, %i.ars
  br i1 %i.art, label %bb.jn, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit232, !prof !32

bb.jn:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit230
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.arh)
  %.pre.i.i231 = load ptr, ptr %i.arj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit232

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit232: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit230, %bb.jn
  %i.aru = phi ptr [ %.pre.i.i231, %bb.jn ], [ %i.arr, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit230 ] ; 5 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 32
  store ptr %i.arv, ptr %i.arj, align 8
  store i32 %i.arq, ptr %i.aru, align 8
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  store i64 %i.aap, ptr %.sroa.5612.0..sroa_idx, align 8
  %.sroa.6613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  store i32 0, ptr %.sroa.6613.0..sroa_idx, align 8
  %.sroa.7614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aru, i64 20
  store i32 0, ptr %.sroa.7614.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.jo:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread
  %.1.i = phi i32 [ %i.aqn, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ], [ %.2.i.i96.ph, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread ], [ %i.aqn, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ], [ %i.aqn, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ] ; 2 uses
  %.not.i52 = icmp eq i32 %.1.i, 0
  br i1 %.not.i52, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.gn, %bb.jj
  %.pre1019 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.ji, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197
  %.sink = phi ptr [ %.pre1026, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit197 ], [ %i.aqp, %bb.ji ], [ %.pre1019, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store i32 1819047278, ptr %.sink, align 1
  %i.arw = load ptr, ptr %i.t, align 8
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  store ptr %i.arx, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.ary = add nuw i32 %.014.i47840, 1            ; 2 uses
  %exitcond997.not = icmp eq i32 %i.ary, %i.aj
  br i1 %exitcond997.not, label %._crit_edge844, label %bb.gk, !llvm.loop !16

._crit_edge844:                                   ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %.preheader701
  %i.arz = load ptr, ptr %i.r, align 8
  %i.asa = load ptr, ptr %i.t, align 8            ; 2 uses
  %.not.i233 = icmp eq ptr %i.arz, %i.asa
  br i1 %.not.i233, label %bb.jp, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit234, !prof !32

bb.jp:                                            ; preds = %._crit_edge844
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1027 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit234

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit234: ; preds = %._crit_edge844, %bb.jp
  %i.asb = phi ptr [ %i.asa, %._crit_edge844 ], [ %.pre1027, %bb.jp ] ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 1
  store ptr %i.asc, ptr %i.t, align 8
  store i8 93, ptr %i.asb, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.jq:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.asd = load ptr, ptr %0, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 9080
  %i.asf = load i64, ptr %i.ase, align 8
  %i.asg = add i64 %i.asf, 23
  %i.ash = inttoptr i64 %i.asg to ptr
  %i.asi = load i64, ptr %i.ash, align 8
  %i.asj = and i64 %i.asi, -4294967295
  %i.ask = icmp eq i64 %i.asj, 4294967296
  br i1 %i.ask, label %bb.jr, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.jr:                                            ; preds = %bb.jq
  %i.asl = icmp ugt i32 %i.aj, 4000
  br i1 %i.asl, label %bb.ju, label %.preheader705, !prof !32

.preheader705:                                    ; preds = %bb.jr
  %.not923 = icmp eq i32 %i.aj, 0
  br i1 %.not923, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader705
  %i.asm = add i64 %i.am, -1
  %i.asn = inttoptr i64 %i.asm to ptr
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %i.aso, align 1 ; 2 uses
  %i.asp = icmp eq i64 %.0.copyload.i.i.i.i.i.i.peel, -2251799814209537
  br i1 %i.asp, label %bb.js, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86.peel

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86.peel: ; preds = %.lr.ph
  %i.asq = bitcast i64 %.0.copyload.i.i.i.i.i.i.peel to double
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %i.asq)
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

bb.js:                                            ; preds = %.lr.ph
  %i.asr = load ptr, ptr %i.r, align 8
  %i.ass = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = ptrtoint ptr %i.ass to i64
  %i.asv = sub i64 %i.ast, %i.asu
  %.not.i235.peel = icmp ult i64 %i.asv, 5
  br i1 %.not.i235.peel, label %bb.jt, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87.peel, !prof !32

bb.jt:                                            ; preds = %bb.js
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 5)
  %.pre1011.pre = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87.peel

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87.peel: ; preds = %bb.js, %bb.jt
  %.pre1011 = phi ptr [ %.pre1011.pre, %bb.jt ], [ %i.ass, %bb.js ]
  store i32 1819047278, ptr %.pre1011, align 1
  %i.asw = load ptr, ptr %i.t, align 8
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 4
  store ptr %i.asx, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87.peel, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86.peel
  %exitcond.peel.not = icmp eq i32 %i.aj, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.ju:                                            ; preds = %bb.jr
  %i.asy = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.am, i32 noundef 0, i32 noundef %i.aj)
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next:                                       ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.014.i76776 = phi i32 [ %i.ato, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 1, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 2 uses
  %i.asz = sext i32 %.014.i76776 to i64
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.aso, i64 %i.asz ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ata, align 1
  %i.atb = icmp eq i64 %.0.copyload.i.i.i.i.i.i, -2251799814209537
  %i.atc = load ptr, ptr %i.r, align 8            ; 2 uses
  %i.atd = load ptr, ptr %i.t, align 8            ; 3 uses
  br i1 %i.atb, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %.peel.next
  %i.ate = ptrtoint ptr %i.atc to i64
  %i.atf = ptrtoint ptr %i.atd to i64
  %i.atg = sub i64 %i.ate, %i.atf
  %.not.i235 = icmp ult i64 %i.atg, 5
  br i1 %.not.i235, label %bb.jw, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87, !prof !32

bb.jw:                                            ; preds = %bb.jv
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 5)
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87: ; preds = %bb.jv, %bb.jw
  %i.ath = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 1
  store ptr %i.ati, ptr %i.t, align 8
  store i8 44, ptr %i.ath, align 1
  %i.atj = load ptr, ptr %i.t, align 8
  store i32 1819047278, ptr %i.atj, align 1
  %i.atk = load ptr, ptr %i.t, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
  store ptr %i.atl, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.jx:                                            ; preds = %.peel.next
  %.not.i237 = icmp eq ptr %i.atc, %i.atd
  br i1 %.not.i237, label %bb.jy, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86, !prof !32

bb.jy:                                            ; preds = %bb.jx
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1012 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86: ; preds = %bb.jy, %bb.jx
  %i.atm = phi ptr [ %i.atd, %bb.jx ], [ %.pre1012, %bb.jy ] ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 1
  store ptr %i.atn, ptr %i.t, align 8
  store i8 44, ptr %i.atm, align 1
  %.0.copyload.i.i.i.i239.pre = load double, ptr %i.ata, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i239.pre)
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i86, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i87
  %i.ato = add nuw i32 %.014.i76776, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ato, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !334

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %.preheader705
  %i.atp = load ptr, ptr %i.r, align 8
  %i.atq = load ptr, ptr %i.t, align 8            ; 2 uses
  %.not.i240 = icmp eq ptr %i.atp, %i.atq
  br i1 %.not.i240, label %bb.jz, label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.jz:                                            ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.q, i64 noundef 1)
  %.pre1014 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.jz, %._crit_edge
  %i.atr = phi ptr [ %.pre1014, %bb.jz ], [ %i.atq, %._crit_edge ] ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 1
  store ptr %i.ats, ptr %i.t, align 8
  store i8 93, ptr %i.atr, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit228, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit232, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit175, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit179, %bb.a, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit234, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit181, %bb.aa, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.ay, %bb.eh, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.fi, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.gj, %bb.ju, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.el, %bb.gh, %bb.jq, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit
  %.1 = phi i32 [ 5, %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit ], [ 5, %bb.jq ], [ %i.bp, %bb.aa ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ %i.cy, %bb.ay ], [ %.2.i.i625, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit179 ], [ %i.vp, %bb.eh ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ %i.xs, %bb.fi ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ 5, %bb.el ], [ %i.zx, %bb.gj ], [ 5, %bb.a ], [ 5, %bb.gh ], [ %i.asy, %bb.ju ], [ 5, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit181 ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit234 ], [ %.2.i.i96647, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit232 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit175 ], [ %.0.i89, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit228 ], [ %.1.i, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 15 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated62 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 51 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.g = add i64 %1, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated62, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph373, label %._crit_edge

.lr.ph373:                                        ; preds = %bb.b, %bb.dp
  %.122370 = phi i32 [ %i.sh, %bb.dp ], [ %.021, %bb.b ] ; 5 uses
  %.not263 = icmp eq i32 %.122370, 0
  br i1 %.not263, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph373
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 1)
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.e, align 8
  store i8 44, ptr %i.n, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, %.lr.ph373
  %i.p = sext i32 %.122370 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.s = and i64 %i.r, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.y

bb.e:                                             ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.u = lshr i64 %i.r, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.v, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0        ; 6 uses
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 17 uses
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %.not.i25 = icmp ugt i64 %i.x, %i.ad
  br i1 %.not.i25, label %bb.f, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef %i.x)
  %.pre418 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %i.aa, %bb.e ], [ %.pre418, %bb.f ] ; 17 uses
  switch i64 %i.x, label %bb.w [
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.o
    i64 10, label %bb.p
    i64 11, label %bb.q
    i64 12, label %bb.r
    i64 13, label %bb.s
    i64 14, label %bb.t
    i64 15, label %bb.u
    i64 16, label %bb.v
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.g:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.af = load i8, ptr %i.y, align 1
  store i8 %i.af, ptr %i.ae, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ag = load i16, ptr %i.y, align 1
  store i16 %i.ag, ptr %i.ae, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) %i.y, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ah = load i32, ptr %i.y, align 1
  store i32 %i.ah, ptr %i.ae, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ae, ptr noundef nonnull align 1 dereferenceable(5) %i.y, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) %i.y, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ae, ptr noundef nonnull align 1 dereferenceable(7) %i.y, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ai = load i64, ptr %i.y, align 1
  store i64 %i.ai, ptr %i.ae, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ae, ptr noundef nonnull align 1 dereferenceable(9) %i.y, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ae, ptr noundef nonnull align 1 dereferenceable(10) %i.y, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ae, ptr noundef nonnull align 1 dereferenceable(11) %i.y, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(12) %i.y, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ae, ptr noundef nonnull align 1 dereferenceable(13) %i.y, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ae, ptr noundef nonnull align 1 dereferenceable(14) %i.y, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ae, ptr noundef nonnull align 1 dereferenceable(15) %i.y, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ae, ptr noundef nonnull align 1 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.w:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.aj = icmp sgt i64 %i.x, 1
  br i1 %i.aj, label %bb.x, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !36

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.y, i64 %i.x, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.x
end_hunk_10
begin_hunk_11_@_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45: ; preds = %bb.de, %bb.df
  %i.qk = phi ptr [ %i.qg, %bb.de ], [ %.pre411, %bb.df ]
  store i32 1702195828, ptr %i.qk, align 1
  %i.ql = load ptr, ptr %i.e, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  store ptr %i.qm, ptr %i.e, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.dg:                                            ; preds = %bb.db
  %i.qn = load ptr, ptr %i.d, align 8
  %i.qo = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %.not.i46 = icmp ult i64 %i.qr, 4
  br i1 %.not.i46, label %bb.dh, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47, !prof !32

bb.dh:                                            ; preds = %bb.dg
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 4)
  %.pre410 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47: ; preds = %bb.dg, %bb.dh
  %i.qs = phi ptr [ %i.qo, %bb.dg ], [ %.pre410, %bb.dh ]
  store i32 1819047278, ptr %i.qs, align 1
  %i.qt = load ptr, ptr %i.e, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  store ptr %i.qu, ptr %i.e, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread: ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit28.i, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit24.i, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit26.i, %bb.da, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit43, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %bb.y
  %.2.i.i.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47 ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45 ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit43 ], [ 0, %bb.da ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit26.i ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit24.i ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit28.i ], [ 0, %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit ], [ 5, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread243: ; preds = %bb.db, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.di

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247.loopexit: ; preds = %bb.y
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247: ; preds = %bb.y, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247.loopexit
  %.2.i.i.ph246 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247.loopexit ], [ 2, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit275

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread251: ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i: ; preds = %bb.y
  %i.qv = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.r, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %i.qv, label %bb.do [
    i32 3, label %bb.di
    i32 4, label %.loopexit
    i32 1, label %.loopexit275
    i32 2, label %.loopexit275
    i32 0, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.di:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread243, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.qw = load ptr, ptr %i.d, align 8
  %i.qx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %.not.i48 = icmp ult i64 %i.ra, 4
  br i1 %.not.i48, label %bb.dj, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread256, !prof !32

bb.dj:                                            ; preds = %bb.di
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 4)
  %.pre413 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread256

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread256: ; preds = %bb.dj, %bb.di
  %i.rb = phi ptr [ %.pre413, %bb.dj ], [ %i.qx, %bb.di ]
  store i32 1819047278, ptr %i.rb, align 1
  %i.rc = load ptr, ptr %i.e, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store ptr %i.rd, ptr %i.e, align 8
  br label %bb.dp

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread251
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.rf = add nuw i32 %.122370, 1
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.rh = load ptr, ptr %i.rg, align 8            ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = icmp eq ptr %i.rh, %i.rj
  br i1 %i.rk, label %bb.dk, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.dk:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.re)
  %.pre.i.i = load ptr, ptr %i.rg, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.dk
  %i.rl = phi ptr [ %.pre.i.i, %bb.dk ], [ %i.rh, %.loopexit ] ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  store ptr %i.rm, ptr %i.rg, align 8
  store i32 7, ptr %i.rl, align 8
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store i64 %1, ptr %.sroa.5220.0..sroa_idx, align 8
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store i32 %i.rf, ptr %.sroa.6221.0..sroa_idx, align 8
  %.sroa.7222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  store i32 %3, ptr %.sroa.7222.0..sroa_idx, align 4
  %i.rn = load ptr, ptr %i.rg, align 8            ; 2 uses
  %i.ro = load ptr, ptr %i.ri, align 8
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %bb.dl, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51, !prof !32

bb.dl:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.re)
  %.pre.i.i50 = load ptr, ptr %i.rg, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, %bb.dl
  %i.rq = phi ptr [ %.pre.i.i50, %bb.dl ], [ %i.rn, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  store ptr %i.rr, ptr %i.rg, align 8
  store i32 9, ptr %i.rq, align 8
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %i.r, ptr %.sroa.5225.0..sroa_idx, align 8
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store i32 0, ptr %.sroa.6226.0..sroa_idx, align 8
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 20
  store i32 0, ptr %.sroa.7227.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

.loopexit275:                                     ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247
  %.2.i.i249 = phi i32 [ %.2.i.i.ph246, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread247 ], [ %i.qv, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.qv, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.rt = add nuw i32 %.122370, 1
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.rv = load ptr, ptr %i.ru, align 8            ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = icmp eq ptr %i.rv, %i.rx
  br i1 %i.ry, label %bb.dm, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53, !prof !32

bb.dm:                                            ; preds = %.loopexit275
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.rs)
  %.pre.i.i52 = load ptr, ptr %i.ru, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53: ; preds = %.loopexit275, %bb.dm
  %i.rz = phi ptr [ %.pre.i.i52, %bb.dm ], [ %i.rv, %.loopexit275 ] ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  store ptr %i.sa, ptr %i.ru, align 8
  store i32 7, ptr %i.rz, align 8
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %1, ptr %.sroa.5231.0..sroa_idx, align 8
  %.sroa.6232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i32 %i.rt, ptr %.sroa.6232.0..sroa_idx, align 8
  %.sroa.7233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 20
  store i32 %3, ptr %.sroa.7233.0..sroa_idx, align 4
  %i.sb = add nsw i32 %.2.i.i249, -1
  %i.sc = load ptr, ptr %i.ru, align 8            ; 2 uses
  %i.sd = load ptr, ptr %i.rw, align 8
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %bb.dn, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55, !prof !32

bb.dn:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.rs)
  %.pre.i.i54 = load ptr, ptr %i.ru, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53, %bb.dn
  %i.sf = phi ptr [ %.pre.i.i54, %bb.dn ], [ %i.sc, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53 ] ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 32
  store ptr %i.sg, ptr %i.ru, align 8
  store i32 %i.sb, ptr %i.sf, align 8
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store i64 %i.r, ptr %.sroa.5237.0..sroa_idx, align 8
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store i32 0, ptr %.sroa.6238.0..sroa_idx, align 8
  %.sroa.7239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sf, i64 20
  store i32 0, ptr %.sroa.7239.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

bb.do:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %.0.i = phi i32 [ %i.qv, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.qv, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %.2.i.i.ph, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.qv, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not24 = icmp eq i32 %.0.i, 0
  br i1 %.not24, label %bb.dp, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

bb.dp:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread256, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.sh = add nuw i32 %.122370, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.sh, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph373, !llvm.loop !335

._crit_edge:                                      ; preds = %bb.dp, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.dp ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %._crit_edge
  %i.si = load ptr, ptr %i.d, align 8
  %i.sj = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i56 = icmp eq ptr %i.si, %i.sj
  br i1 %.not.i56, label %bb.dr, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57, !prof !32

bb.dr:                                            ; preds = %bb.dq
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 1)
  %.pre419 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57: ; preds = %bb.dq, %bb.dr
  %i.sk = phi ptr [ %i.sj, %bb.dq ], [ %.pre419, %bb.dr ] ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  store ptr %i.sl, ptr %i.e, align 8
  store i8 93, ptr %i.sk, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

bb.ds:                                            ; preds = %._crit_edge
  %i.sm = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.sm, i32 %3)
  %i.sn = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.so = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.sp = icmp ult i64 %i.sn, %i.so
  br i1 %i.sp, label %bb.dt, label %.backedge

.backedge:                                        ; preds = %bb.ds, %bb.dt
  br label %bb.b, !llvm.loop !336

bb.dt:                                            ; preds = %bb.ds
  %i.sq = load ptr, ptr %0, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.sr, i32 noundef 0) #21
  %i.st = load ptr, ptr %0, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 912
  %i.sv = load i64, ptr %i.su, align 8
  %i.sw = icmp eq i64 %i.ss, %i.sv
  br i1 %i.sw, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %.backedge

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %bb.dt, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57
  %.4 = phi i32 [ %.0.i, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57 ], [ %.2.i.i249, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51 ], [ 6, %bb.dt ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 15 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated62 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = add i64 %1, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 49 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated62, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph376, label %._crit_edge

.lr.ph376:                                        ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread
  %.122373 = phi i32 [ %i.sc, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ], [ %.021, %bb.b ] ; 6 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = sext i32 %.122373 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 656
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph376
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i = icmp ult i64 %i.w, 5
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 5)
  %.pre422.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre422 = phi ptr [ %i.t, %bb.c ], [ %.pre422.pre, %bb.d ] ; 3 uses
  %.not274 = icmp eq i32 %.122373, 0
  br i1 %.not274, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pre422, i64 1
  store ptr %i.x, ptr %i.h, align 8
  store i8 44, ptr %.pre422, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.f:                                             ; preds = %.lr.ph376
  %.not265 = icmp eq i32 %.122373, 0
  br i1 %.not265, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i25 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 1)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %i.z, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.h, align 8
  store i8 44, ptr %i.aa, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, %bb.f
  %i.ac = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ag, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 6 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 17 uses
  %i.ak = load ptr, ptr %i.g, align 8
  %i.al = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not.i27 = icmp ugt i64 %i.ai, %i.ao
  br i1 %.not.i27, label %bb.j, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28, !prof !32

bb.j:                                             ; preds = %bb.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef %i.ai)
  %.pre420 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28: ; preds = %bb.i, %bb.j
  %i.ap = phi ptr [ %i.al, %bb.i ], [ %.pre420, %bb.j ] ; 17 uses
  switch i64 %i.ai, label %bb.aa [
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
    i64 8, label %bb.r
    i64 9, label %bb.s
    i64 10, label %bb.t
    i64 11, label %bb.u
    i64 12, label %bb.v
    i64 13, label %bb.w
    i64 14, label %bb.x
    i64 15, label %bb.y
    i64 16, label %bb.z
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.aq = load i8, ptr %i.aj, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.ar = load i16, ptr %i.aj, align 1
  store i16 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, ptr noundef nonnull align 1 dereferenceable(3) %i.aj, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.as = load i32, ptr %i.aj, align 1
  store i32 %i.as, ptr %i.ap, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ap, ptr noundef nonnull align 1 dereferenceable(5) %i.aj, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ap, ptr noundef nonnull align 1 dereferenceable(6) %i.aj, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ap, ptr noundef nonnull align 1 dereferenceable(7) %i.aj, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.at = load i64, ptr %i.aj, align 1
  store i64 %i.at, ptr %i.ap, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ap, ptr noundef nonnull align 1 dereferenceable(9) %i.aj, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ap, ptr noundef nonnull align 1 dereferenceable(10) %i.aj, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ap, ptr noundef nonnull align 1 dereferenceable(11) %i.aj, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ap, ptr noundef nonnull align 1 dereferenceable(12) %i.aj, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.w:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ap, ptr noundef nonnull align 1 dereferenceable(13) %i.aj, i64 13, i1 false)
end_hunk_11
begin_hunk_12_@_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  %i.qg = phi ptr [ %i.qc, %bb.by ], [ %.pre413, %bb.bz ]
  store i32 1702195828, ptr %i.qg, align 1
  %i.qh = load ptr, ptr %i.h, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  store ptr %i.qi, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.ca:                                            ; preds = %bb.bv
  %i.qj = load ptr, ptr %i.g, align 8
  %i.qk = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %.not.i46 = icmp ult i64 %i.qn, 4
  br i1 %.not.i46, label %bb.cb, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47, !prof !32

bb.cb:                                            ; preds = %bb.ca
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 4)
  %.pre412 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47: ; preds = %bb.ca, %bb.cb
  %i.qo = phi ptr [ %i.qk, %bb.ca ], [ %.pre412, %bb.cb ]
  store i32 1819047278, ptr %i.qo, align 1
  %i.qp = load ptr, ptr %i.h, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  store ptr %i.qq, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread: ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit30.i, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit26.i, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit28.i, %bb.bu, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit43, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %bb.ac
  %.2.i.i.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit47 ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit45 ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit43 ], [ 0, %bb.bu ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit28.i ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit26.i ], [ 0, %_ZN2v88internal19FastJsonStringifierIhE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit30.i ], [ 0, %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit ], [ 5, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread244: ; preds = %bb.bv, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.cc

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248.loopexit: ; preds = %bb.ac
  br label %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248: ; preds = %bb.ac, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248.loopexit
  %.2.i.i.ph247 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248.loopexit ], [ 2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit278

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread252: ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i: ; preds = %bb.ac
  %i.qr = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %i.qr, label %bb.ci [
    i32 3, label %bb.cc
    i32 4, label %.loopexit
    i32 1, label %.loopexit278
    i32 2, label %.loopexit278
    i32 0, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.cc:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread244, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.qs = load ptr, ptr %i.g, align 8
  %i.qt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %.not.i48 = icmp ult i64 %i.qw, 4
  br i1 %.not.i48, label %bb.cd, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, !prof !32

bb.cd:                                            ; preds = %bb.cc
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 4)
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread252
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.qy = add nuw i32 %.122373, 1
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.ra = load ptr, ptr %i.qz, align 8            ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = icmp eq ptr %i.ra, %i.rc
  br i1 %i.rd, label %bb.ce, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.ce:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.qx)
  %.pre.i.i = load ptr, ptr %i.qz, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.ce
  %i.re = phi ptr [ %.pre.i.i, %bb.ce ], [ %i.ra, %.loopexit ] ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  store ptr %i.rf, ptr %i.qz, align 8
  store i32 8, ptr %i.re, align 8
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i64 %1, ptr %.sroa.5221.0..sroa_idx, align 8
  %.sroa.6222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store i32 %i.qy, ptr %.sroa.6222.0..sroa_idx, align 8
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  store i32 %3, ptr %.sroa.7223.0..sroa_idx, align 4
  %i.rg = load ptr, ptr %i.qz, align 8            ; 2 uses
  %i.rh = load ptr, ptr %i.rb, align 8
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %bb.cf, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51, !prof !32

bb.cf:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.qx)
  %.pre.i.i50 = load ptr, ptr %i.qz, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, %bb.cf
  %i.rj = phi ptr [ %.pre.i.i50, %bb.cf ], [ %i.rg, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  store ptr %i.rk, ptr %i.qz, align 8
  store i32 9, ptr %i.rj, align 8
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store i64 %i.ac, ptr %.sroa.5226.0..sroa_idx, align 8
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store i32 0, ptr %.sroa.6227.0..sroa_idx, align 8
  %.sroa.7228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 20
  store i32 0, ptr %.sroa.7228.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259

.loopexit278:                                     ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248
  %.2.i.i250 = phi i32 [ %.2.i.i.ph247, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread248 ], [ %i.qr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.qr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.rm = add nuw i32 %.122373, 1
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.ro = load ptr, ptr %i.rn, align 8            ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = icmp eq ptr %i.ro, %i.rq
  br i1 %i.rr, label %bb.cg, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53, !prof !32

bb.cg:                                            ; preds = %.loopexit278
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.rl)
  %.pre.i.i52 = load ptr, ptr %i.rn, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53: ; preds = %.loopexit278, %bb.cg
  %i.rs = phi ptr [ %.pre.i.i52, %bb.cg ], [ %i.ro, %.loopexit278 ] ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  store ptr %i.rt, ptr %i.rn, align 8
  store i32 8, ptr %i.rs, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i64 %1, ptr %.sroa.5232.0..sroa_idx, align 8
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store i32 %i.rm, ptr %.sroa.6233.0..sroa_idx, align 8
  %.sroa.7234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rs, i64 20
  store i32 %3, ptr %.sroa.7234.0..sroa_idx, align 4
  %i.ru = add nsw i32 %.2.i.i250, -1
  %i.rv = load ptr, ptr %i.rn, align 8            ; 2 uses
  %i.rw = load ptr, ptr %i.rp, align 8
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %bb.ch, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55, !prof !32

bb.ch:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.rl)
  %.pre.i.i54 = load ptr, ptr %i.rn, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55: ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53, %bb.ch
  %i.ry = phi ptr [ %.pre.i.i54, %bb.ch ], [ %i.rv, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit53 ] ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  store ptr %i.rz, ptr %i.rn, align 8
  store i32 %i.ru, ptr %i.ry, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i64 %i.ac, ptr %.sroa.5238.0..sroa_idx, align 8
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i32 0, ptr %.sroa.6239.0..sroa_idx, align 8
  %.sroa.7240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 20
  store i32 0, ptr %.sroa.7240.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259

bb.ci:                                            ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread
  %.1.i = phi i32 [ %i.qr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %.2.i.i.ph, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.qr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.qr, %_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not24 = icmp eq i32 %.1.i, 0
  br i1 %.not24, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.e, %bb.cd
  %.pre415 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.cc, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %.sink = phi ptr [ %.pre422, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit ], [ %i.qt, %bb.cc ], [ %.pre415, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store i32 1819047278, ptr %.sink, align 1
  %i.sa = load ptr, ptr %i.h, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store ptr %i.sb, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.sc = add nuw i32 %.122373, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.sc, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph376, !llvm.loop !337

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge
  %i.sd = load ptr, ptr %i.g, align 8
  %i.se = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i56 = icmp eq ptr %i.sd, %i.se
  br i1 %.not.i56, label %bb.ck, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57, !prof !32

bb.ck:                                            ; preds = %bb.cj
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 1)
  %.pre423 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57: ; preds = %bb.cj, %bb.ck
  %i.sf = phi ptr [ %i.se, %bb.cj ], [ %.pre423, %bb.ck ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  store ptr %i.sg, ptr %i.h, align 8
  store i8 93, ptr %i.sf, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259

bb.cl:                                            ; preds = %._crit_edge
  %i.sh = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.sh, i32 %3)
  %i.si = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.sj = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.sk = icmp ult i64 %i.si, %i.sj
  br i1 %i.sk, label %bb.cm, label %.backedge

.backedge:                                        ; preds = %bb.cl, %bb.cm
  br label %bb.b, !llvm.loop !338

bb.cm:                                            ; preds = %bb.cl
  %i.sl = load ptr, ptr %0, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.sm, i32 noundef 0) #21
  %i.so = load ptr, ptr %0, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 912
  %i.sq = load i64, ptr %i.sp, align 8
  %i.sr = icmp eq i64 %i.sn, %i.sq
  br i1 %i.sr, label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259, label %.backedge

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread259: ; preds = %bb.cm, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57
  %.4 = phi i32 [ %.1.i, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit57 ], [ %.2.i.i250, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit55 ], [ 4, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit51 ], [ 6, %bb.cm ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE10CheckCycleEv(ptr noundef nonnull align 8 dereferenceable(944) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set.808", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not31.not = icmp eq ptr %i.i, %i.j
  br i1 %.not31.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.l = phi ptr [ %i.j, %.lr.ph ], [ %i.aj, %bb.i ] ; 2 uses
  %i.m = phi ptr [ %i.i, %.lr.ph ], [ %i.ak, %bb.i ]
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.i ]
  %.0732 = phi i32 [ 0, %.lr.ph ], [ %i.al, %bb.i ]
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %i.o, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8 ; 5 uses
  %.sroa.018.0.copyload.off = add i32 %.sroa.018.0.copyload, -9
  %switch = icmp ult i32 %.sroa.018.0.copyload.off, 2
  br i1 %switch, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.k, align 8
  %.not.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 3 uses
  %i.q = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %.sroa.520.0.copyload, %i.s
  br i1 %i.t, label %.critedge, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = urem i64 %.sroa.520.0.copyload, %i.u     ; 2 uses
  %i.w = load ptr, ptr %2, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %.sroa.520.0.copyload, %i.ab
  br i1 %i.ac, label %.critedge, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %.sroa.520.0.copyload, %i.ag
  br i1 %i.ad, label %.critedge, label %.lr.ph.i.i.i.i, !llvm.loop !18

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !18

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %.sroa.520.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %2, ptr %1, align 8
  %i.ai = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueImmNS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load ptr, ptr %i.h, align 8
  %.pre39 = load ptr, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit
  %i.aj = phi ptr [ %i.l, %bb.b ], [ %.pre39, %.loopexit ] ; 2 uses
  %i.ak = phi ptr [ %i.m, %bb.b ], [ %.pre, %.loopexit ] ; 2 uses
  %i.al = add i32 %.0732, 1                       ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %.not = icmp ugt i64 %i.aq, %i.am
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !339

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.g, %bb.d, %bb.a
  %.not30 = phi i1 [ true, %bb.g ], [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.i ], [ true, %bb.f ]
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.critedge, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i12 ], [ %i.ar, %.critedge ] ; 2 uses
  %i.as = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12, !llvm.loop !19

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i12, %.critedge
  %i.at = load ptr, ptr %2, align 8
  %i.au = load i64, ptr %i.c, align 8
  %i.av = shl i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.b
  br i1 %i.ax, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ay = load i64, ptr %i.c, align 8
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #25
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %.not30
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueImmNS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.l = icmp eq ptr %.sroa.025.0, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !340

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = urem i64 %i.k, %i.q
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.s = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !341

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = urem i64 %i.z, %i.e
  %.not19.i.i = icmp eq i64 %i.aa, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !341

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !341

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread31
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.f, %.thread31 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ac = phi ptr [ %i.p, %bb.e ], [ %i.d, %.thread31 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.ad = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread31 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 8 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %1, align 8
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ac, align 8
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef 1) #21 ; 2 uses
  %i.al = extractvalue { i8, i64 } %i.ak, 0
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.an = extractvalue { i8, i64 } %i.ak, 1
  tail call void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.an)
  %i.ao = load i64, ptr %i.ac, align 8
  %i.ap = urem i64 %i.ad, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.ap, %bb.i ], [ %i.ab, %.critedge ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.0.i17 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.ae, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  store ptr %i.ae, ptr %i.au, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  store ptr %i.aw, ptr %i.ae, align 8
  store ptr %i.ae, ptr %i.av, align 8
  %.not11.i.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ac, align 8
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = urem i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba
  store ptr %i.ae, ptr %i.bb, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = phi ptr [ %.pre, %bb.m ], [ %i.aq, %bb.l ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.i17
  store ptr %i.av, ptr %i.bd, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.a, align 8
  br label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ae, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !342

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = and i16 %i.f, 15
  switch i16 %i.g, label %bb.k [
    i16 8, label %bb.b
    i16 0, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 9, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 1, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 10, label %bb.e
    i16 2, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 11, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 3, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 13, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
    i16 5, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 5 uses
  %i.l = icmp ugt i32 %i.j, 3
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.m = and i64 %i.k, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.0131.i = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0131.i
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = add i32 %i.o, -538976288
  %i.q = xor i32 %i.o, 572662306
  %i.r = add i32 %i.q, -16843009
  %i.s = xor i32 %i.o, 1549556828
  %i.t = add i32 %i.s, -16843009
  %i.u = and i32 %i.o, -2139062144
  %i.v = xor i32 %i.u, -2139062144
  %i.w = or i32 %i.r, %i.p
  %i.x = or i32 %i.w, %i.t
  %i.y = and i32 %i.x, %i.v
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw nsw i64 %.0131.i, 4              ; 2 uses
  %i.aa = or disjoint i64 %i.z, 3
  %i.ab = icmp samesign ult i64 %i.aa, %i.k
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !343

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.013.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ], [ %.0131.i, %.lr.ph.i ] ; 5 uses
  %i.ac = icmp samesign ult i64 %.013.lcssa.i, %i.k
  br i1 %i.ac, label %.lr.ph7.i.preheader, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"

.lr.ph7.i.preheader:                              ; preds = %._crit_edge.i
  %i.ad = sub nuw i64 %i.k, %.013.lcssa.i         ; 2 uses
  %xtraiter7 = and i64 %i.ad, 3                   ; 3 uses
  %i.ae = sub i64 %.013.lcssa.i, %i.k
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.lr.ph7.i.epil.preheader, label %.lr.ph7.i.preheader.new

.lr.ph7.i.preheader.new:                          ; preds = %.lr.ph7.i.preheader
  %unroll_iter12 = and i64 %i.ad, 4294967292
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.critedge, %.lr.ph7.i.preheader.new
  %.15.i = phi i64 [ %.013.lcssa.i, %.lr.ph7.i.preheader.new ], [ %i.bi, %.critedge ] ; 5 uses
  %.0144.i = phi i1 [ true, %.lr.ph7.i.preheader.new ], [ %i.bh, %.critedge ]
  %niter13 = phi i64 [ 0, %.lr.ph7.i.preheader.new ], [ %niter13.next.3, %.critedge ]
  br i1 %.0144.i, label %.lr.ph7.i.1, label %.critedge

.lr.ph7.i.1:                                      ; preds = %.lr.ph7.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %.15.i
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !range !33, !noundef !34
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.lr.ph7.i.2, label %.critedge

.lr.ph7.i.2:                                      ; preds = %.lr.ph7.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %.15.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !range !33, !noundef !34
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.lr.ph7.i.3, label %.critedge

.lr.ph7.i.3:                                      ; preds = %.lr.ph7.i.2
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %.15.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !range !33, !noundef !34
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph7.i.3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 %.15.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !range !33, !noundef !34
  %i.bg = trunc nuw i8 %i.bf to i1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph7.i.2, %.lr.ph7.i, %.lr.ph7.i.1, %bb.d, %.lr.ph7.i.3
  %i.bh = phi i1 [ false, %.lr.ph7.i.3 ], [ %i.bg, %bb.d ], [ false, %.lr.ph7.i.1 ], [ false, %.lr.ph7.i ], [ false, %.lr.ph7.i.2 ] ; 3 uses
  %i.bi = add nuw nsw i64 %.15.i, 4               ; 2 uses
  %niter13.next.3 = add i64 %niter13, 4           ; 2 uses
  %niter13.ncmp.3 = icmp eq i64 %niter13.next.3, %unroll_iter12
  br i1 %niter13.ncmp.3, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa", label %.lr.ph7.i, !llvm.loop !344

bb.e:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = inttoptr i64 %i.bk to ptr               ; 6 uses
  %i.bm = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = and i16 %i.bp, 16
  %.not.i3 = icmp eq i16 %i.bq, 0
  br i1 %.not.i3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #21, !inline_history !40
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.bx = load ptr, ptr %i.bl, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21, !inline_history !40
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.g, %bb.h
  %.0.i4 = phi ptr [ %i.bw, %bb.g ], [ %i.ca, %bb.h ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 5 uses
  %i.ce = icmp ugt i32 %i.cc, 3
  br i1 %i.ce, label %.lr.ph.preheader.i12, label %._crit_edge.i5

.lr.ph.preheader.i12:                             ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.cf = and i64 %i.cd, 4294967292
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.i, %.lr.ph.preheader.i12
  %.0131.i14 = phi i64 [ %i.cs, %bb.i ], [ 0, %.lr.ph.preheader.i12 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.0131.i14
  %i.ch = load i32, ptr %i.cg, align 4            ; 4 uses
  %i.ci = add i32 %i.ch, -538976288
  %i.cj = xor i32 %i.ch, 572662306
  %i.ck = add i32 %i.cj, -16843009
  %i.cl = xor i32 %i.ch, 1549556828
  %i.cm = add i32 %i.cl, -16843009
  %i.cn = and i32 %i.ch, -2139062144
  %i.co = xor i32 %i.cn, -2139062144
  %i.cp = or i32 %i.ck, %i.ci
  %i.cq = or i32 %i.cp, %i.cm
  %i.cr = and i32 %i.cq, %i.co
  %.not.i15 = icmp eq i32 %i.cr, 0
  br i1 %.not.i15, label %bb.i, label %._crit_edge.i5

bb.i:                                             ; preds = %.lr.ph.i13
  %i.cs = add nuw nsw i64 %.0131.i14, 4           ; 2 uses
  %i.ct = or disjoint i64 %i.cs, 3
  %i.cu = icmp samesign ult i64 %i.ct, %i.cd
  br i1 %i.cu, label %.lr.ph.i13, label %._crit_edge.i5, !llvm.loop !343

._crit_edge.i5:                                   ; preds = %bb.i, %.lr.ph.i13, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %.013.lcssa.i6 = phi i64 [ 0, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %i.cf, %bb.i ], [ %.0131.i14, %.lr.ph.i13 ] ; 5 uses
  %i.cv = icmp samesign ult i64 %.013.lcssa.i6, %i.cd
  br i1 %i.cv, label %.lr.ph7.i8.preheader, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit"

.lr.ph7.i8.preheader:                             ; preds = %._crit_edge.i5
  %i.cw = sub nuw i64 %i.cd, %.013.lcssa.i6       ; 2 uses
  %xtraiter = and i64 %i.cw, 3                    ; 3 uses
  %i.cx = sub i64 %.013.lcssa.i6, %i.cd
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.lr.ph7.i8.epil.preheader, label %.lr.ph7.i8.preheader.new

.lr.ph7.i8.preheader.new:                         ; preds = %.lr.ph7.i8.preheader
  %unroll_iter = and i64 %i.cw, 4294967292
  br label %.lr.ph7.i8

.lr.ph7.i8:                                       ; preds = %.critedge20, %.lr.ph7.i8.preheader.new
  %.15.i9 = phi i64 [ %.013.lcssa.i6, %.lr.ph7.i8.preheader.new ], [ %i.eb, %.critedge20 ] ; 5 uses
  %.0144.i10 = phi i1 [ true, %.lr.ph7.i8.preheader.new ], [ %i.ea, %.critedge20 ]
  %niter = phi i64 [ 0, %.lr.ph7.i8.preheader.new ], [ %niter.next.3, %.critedge20 ]
  br i1 %.0144.i10, label %.lr.ph7.i8.1, label %.critedge20

.lr.ph7.i8.1:                                     ; preds = %.lr.ph7.i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.15.i9
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !range !33, !noundef !34
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.lr.ph7.i8.2, label %.critedge20

.lr.ph7.i8.2:                                     ; preds = %.lr.ph7.i8.1
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.15.i9
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !range !33, !noundef !34
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %.lr.ph7.i8.3, label %.critedge20

.lr.ph7.i8.3:                                     ; preds = %.lr.ph7.i8.2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.15.i9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !range !33, !noundef !34
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.j, label %.critedge20

bb.j:                                             ; preds = %.lr.ph7.i8.3
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.15.i9
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !range !33, !noundef !34
  %i.dz = trunc nuw i8 %i.dy to i1
  br label %.critedge20

.critedge20:                                      ; preds = %.lr.ph7.i8.2, %.lr.ph7.i8, %.lr.ph7.i8.1, %bb.j, %.lr.ph7.i8.3
  %i.ea = phi i1 [ false, %.lr.ph7.i8.3 ], [ %i.dz, %bb.j ], [ false, %.lr.ph7.i8.1 ], [ false, %.lr.ph7.i8 ], [ false, %.lr.ph7.i8.2 ] ; 3 uses
  %i.eb = add nuw nsw i64 %.15.i9, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa", label %.lr.ph7.i8, !llvm.loop !344

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa": ; preds = %.critedge
  %lcmp.mod9.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod9.not, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit", label %.lr.ph7.i.epil.preheader

.lr.ph7.i.epil.preheader:                         ; preds = %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa", %.lr.ph7.i.preheader
  %.15.i.epil.init = phi i64 [ %.013.lcssa.i, %.lr.ph7.i.preheader ], [ %i.bi, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa" ]
  %.0144.i.epil.init = phi i1 [ true, %.lr.ph7.i.preheader ], [ %i.bh, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa" ]
  %lcmp.mod11 = icmp ne i64 %xtraiter7, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph7.i.epil

.lr.ph7.i.epil:                                   ; preds = %bb.m, %.lr.ph7.i.epil.preheader
  %.15.i.epil = phi i64 [ %i.ej, %bb.m ], [ %.15.i.epil.init, %.lr.ph7.i.epil.preheader ] ; 2 uses
  %.0144.i.epil = phi i1 [ %i.ei, %bb.m ], [ %.0144.i.epil.init, %.lr.ph7.i.epil.preheader ]
  %epil.iter8 = phi i64 [ %epil.iter8.next, %bb.m ], [ 0, %.lr.ph7.i.epil.preheader ]
  br i1 %.0144.i.epil, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph7.i.epil
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 %.15.i.epil
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !range !33, !noundef !34
  %i.eh = trunc nuw i8 %i.eg to i1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph7.i.epil
  %i.ei = phi i1 [ false, %.lr.ph7.i.epil ], [ %i.eh, %bb.l ] ; 2 uses
  %i.ej = add nuw nsw i64 %.15.i.epil, 1
  %epil.iter8.next = add i64 %epil.iter8, 1       ; 2 uses
  %epil.iter8.cmp.not = icmp eq i64 %epil.iter8.next, %xtraiter7
  br i1 %epil.iter8.cmp.not, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit", label %.lr.ph7.i.epil, !llvm.loop !345

"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa": ; preds = %.critedge20
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit", label %.lr.ph7.i8.epil.preheader

.lr.ph7.i8.epil.preheader:                        ; preds = %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa", %.lr.ph7.i8.preheader
  %.15.i9.epil.init = phi i64 [ %.013.lcssa.i6, %.lr.ph7.i8.preheader ], [ %i.eb, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa" ]
  %.0144.i10.epil.init = phi i1 [ true, %.lr.ph7.i8.preheader ], [ %i.ea, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa" ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph7.i8.epil

.lr.ph7.i8.epil:                                  ; preds = %bb.o, %.lr.ph7.i8.epil.preheader
  %.15.i9.epil = phi i64 [ %i.er, %bb.o ], [ %.15.i9.epil.init, %.lr.ph7.i8.epil.preheader ] ; 2 uses
  %.0144.i10.epil = phi i1 [ %i.eq, %bb.o ], [ %.0144.i10.epil.init, %.lr.ph7.i8.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.o ], [ 0, %.lr.ph7.i8.epil.preheader ]
  br i1 %.0144.i10.epil, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph7.i8.epil
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i4, i64 %.15.i9.epil
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !range !33, !noundef !34
  %i.ep = trunc nuw i8 %i.eo to i1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph7.i8.epil
  %i.eq = phi i1 [ false, %.lr.ph7.i8.epil ], [ %i.ep, %bb.n ] ; 2 uses
  %i.er = add nuw nsw i64 %.15.i9.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit", label %.lr.ph7.i8.epil, !llvm.loop !346

"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit": ; preds = %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa", %bb.o, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa", %bb.m, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %._crit_edge.i5, %bb.a, %bb.a, %bb.a, %._crit_edge.i
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ %i.ei, %bb.m ], [ false, %bb.a ], [ true, %._crit_edge.i ], [ false, %bb.a ], [ true, %._crit_edge.i5 ], [ false, %bb.a ], [ false, %bb.a ], [ %i.bh, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit.unr-lcssa" ], [ %i.ea, %"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_19IsFastKeyENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEEE3$_0ZNS5_9IsFastKeyES8_SD_E3$_1ZNS5_9IsFastKeyES8_SD_E3$_2EEEEEDaS8_OT_.exit.loopexit3.unr-lcssa" ], [ %i.eq, %bb.o ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyILb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  switch i16 %i.f, label %bb.y [
    i16 8, label %bb.b
    i16 10, label %bb.l
    i16 26, label %bb.l
    i16 0, label %bb.z
    i16 2, label %bb.z
    i16 18, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 8 uses
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = or disjoint i64 %i.k, 4                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i = icmp ugt i64 %i.l, %i.t
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.m, i64 noundef %i.l)
  %.pre118.pre = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.b, %bb.c
  %.pre118 = phi ptr [ %i.q, %bb.b ], [ %.pre118.pre, %bb.c ] ; 3 uses
  br i1 %2, label %bb.d, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit22

bb.d:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.pre118, i64 1
  store ptr %i.u, ptr %i.p, align 8
  store i8 44, ptr %.pre118, align 1
  %.pre117 = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit22

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit22: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, %bb.d
  %i.v = phi ptr [ %.pre118, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit ], [ %.pre117, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.p, align 8
  store i8 34, ptr %i.v, align 1
  %i.x = icmp ugt i32 %i.i, 31
  br i1 %i.x, label %.lr.ph106, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit22
  %i.y = icmp samesign ugt i32 %i.i, 3
  br i1 %i.y, label %.lr.ph99.preheader, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i

.lr.ph99.preheader:                               ; preds = %.preheader
  %i.z = and i64 %i.j, 28
  br label %.lr.ph99

.lr.ph106:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.ab = ptrtoint ptr %i.g to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph106, %bb.i
  %.0.i12.i105 = phi i1 [ false, %.lr.ph106 ], [ %.1.i.i, %bb.i ]
  %.054.i.i104 = phi i64 [ 0, %.lr.ph106 ], [ %.155.i.i, %bb.i ] ; 3 uses
  %.056.i.i103 = phi ptr [ %i.g, %.lr.ph106 ], [ %i.ba, %bb.i ] ; 4 uses
  %i.ac = load <16 x i8>, ptr %.056.i.i103, align 1 ; 3 uses
  %i.ad = icmp ult <16 x i8> %i.ac, splat (i8 32)
  %i.ae = icmp eq <16 x i8> %i.ac, splat (i8 34)
  %i.af = icmp eq <16 x i8> %i.ac, splat (i8 92)
  %i.ag = or <16 x i1> %i.ad, %i.ae
  %i.ah = or <16 x i1> %i.af, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true)
  %i.al = zext nneg i16 %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.056.i.i103, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = ptrtoint ptr %.056.i.i103 to i64
  %i.ap = sub i64 %i.ao, %i.ab
  %i.aq = add i64 %i.ap, %i.al                    ; 2 uses
  %i.ar = sub i64 %i.aq, %.054.i.i104
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054.i.i104
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.m, ptr noundef nonnull %i.as, i64 noundef %i.ar)
  %i.at = icmp ult i8 %i.an, 96
  br i1 %i.at, label %bb.h, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.au = zext nneg i8 %i.an to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.av ; 2 uses
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #26
  tail call void @_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(384) %i.m, ptr noundef nonnull %i.aw, i64 noundef %i.ax)
  %i.ay = add i64 %i.aq, 1
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 -15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.157.i.i = phi ptr [ %i.az, %bb.h ], [ %.056.i.i103, %bb.e ] ; 2 uses
  %.155.i.i = phi i64 [ %i.ay, %bb.h ], [ %.054.i.i104, %bb.e ] ; 2 uses
  %.1.i.i = phi i1 [ true, %bb.h ], [ %.0.i12.i105, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.157.i.i, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.157.i.i, i64 31
  %i.bc = icmp ult ptr %i.bb, %i.aa
  br i1 %i.bc, label %bb.e, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, !llvm.loop !13

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i: ; preds = %bb.i
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bd, %i.ab                    ; 3 uses
  %i.bf = add i64 %i.be, 3
  %i.bg = icmp ult i64 %i.bf, %i.j
  br i1 %i.bg, label %.lr.ph111, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i

.lr.ph111:                                        ; preds = %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %bb.j
  %.013.i.i110 = phi i64 [ %i.bt, %bb.j ], [ %i.be, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %.013.i.i110
  %i.bi = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.bj = add i32 %i.bi, -538976288
  %i.bk = xor i32 %i.bi, 572662306
  %i.bl = add i32 %i.bk, -16843009
  %i.bm = xor i32 %i.bi, 1549556828
  %i.bn = add i32 %i.bm, -16843009
  %i.bo = and i32 %i.bi, -2139062144
  %i.bp = xor i32 %i.bo, -2139062144
  %i.bq = or i32 %i.bl, %i.bj
  %i.br = or i32 %i.bq, %i.bn
  %i.bs = and i32 %i.br, %i.bp
  %.not75 = icmp eq i32 %i.bs, 0
  br i1 %.not75, label %bb.j, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i

bb.j:                                             ; preds = %.lr.ph111
  %i.bt = add i64 %.013.i.i110, 4                 ; 2 uses
  %i.bu = add i64 %.013.i.i110, 7
  %i.bv = icmp ult i64 %i.bu, %i.j
  br i1 %i.bv, label %.lr.ph111, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, !llvm.loop !14

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i: ; preds = %bb.j, %.lr.ph111, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i
  %.013.i.i.lcssa = phi i64 [ %i.be, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ], [ %.013.i.i110, %.lr.ph111 ], [ %i.bt, %bb.j ]
  %i.bw = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef nonnull %i.g, i64 noundef %i.j, i64 noundef %.013.i.i.lcssa, i64 noundef %.155.i.i, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bx = select i1 %i.bw, i1 true, i1 %.1.i.i
  br label %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.k
  %.013.i13.i98 = phi i64 [ %i.ck, %bb.k ], [ 0, %.lr.ph99.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %.013.i13.i98
  %i.bz = load i32, ptr %i.by, align 4            ; 4 uses
  %i.ca = add i32 %i.bz, -538976288
  %i.cb = xor i32 %i.bz, 572662306
  %i.cc = add i32 %i.cb, -16843009
  %i.cd = xor i32 %i.bz, 1549556828
  %i.ce = add i32 %i.cd, -16843009
  %i.cf = and i32 %i.bz, -2139062144
  %i.cg = xor i32 %i.cf, -2139062144
  %i.ch = or i32 %i.cc, %i.ca
  %i.ci = or i32 %i.ch, %i.ce
  %i.cj = and i32 %i.ci, %i.cg
  %.not74 = icmp eq i32 %i.cj, 0
  br i1 %.not74, label %bb.k, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i

bb.k:                                             ; preds = %.lr.ph99
  %i.ck = add nuw nsw i64 %.013.i13.i98, 4        ; 2 uses
  %i.cl = or disjoint i64 %i.ck, 3
  %i.cm = icmp samesign ult i64 %i.cl, %i.j
  br i1 %i.cm, label %.lr.ph99, label %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i, !llvm.loop !14

_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i: ; preds = %bb.k, %.lr.ph99, %.preheader
  %.013.i13.i.lcssa = phi i64 [ 0, %.preheader ], [ %.013.i13.i98, %.lr.ph99 ], [ %i.z, %bb.k ]
  %i.cn = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierIhE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef nonnull %i.g, i64 noundef %i.j, i64 noundef %.013.i13.i.lcssa, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i
  %.0.i.i = phi i1 [ %i.bx, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ], [ %i.cn, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit14.i ]
  %i.co = select i1 %.0.i.i, i8 2, i8 0
  %i.cp = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.p, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyILb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE:bb.a
_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_21ExternalOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i18, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit13.i
  %.0.i.i13 = phi i1 [ %i.gb, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i18 ], [ %i.gr, %_ZN2v88internal19FastJsonStringifierIhE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit13.i ]
  %i.gs = select i1 %.0.i.i13, i8 2, i8 0
  %i.gt = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store ptr %i.gu, ptr %i.dt, align 8
  store i8 34, ptr %i.gt, align 1
  %i.gv = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store ptr %i.gw, ptr %i.dt, align 8
  br label %.sink.split

bb.y:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

.sink.split:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit, %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_21ExternalOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit
  %.sink = phi ptr [ %i.gv, %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_21ExternalOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit ], [ %i.cr, %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit ]
  %.0.ph = phi i8 [ %i.gs, %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_21ExternalOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit ], [ %i.co, %_ZN2v88internal19FastJsonStringifierIhE18SerializeObjectKeyINS0_16SeqOneByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit ]
  store i8 58, ptr %.sink, align 1
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a, %bb.a, %bb.a
  %.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated33 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = add i64 %1, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated33, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.x
  %.12256 = phi i32 [ %i.ak, %bb.x ], [ %.021, %bb.b ] ; 3 uses
  %.not55 = icmp eq i32 %.12256, 0
  br i1 %.not55, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 1)
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.e, align 8
  store i8 44, ptr %i.n, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit: ; preds = %.lr.ph, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.p = sext i32 %.12256 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.t, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0        ; 6 uses
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 17 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.not.i25 = icmp ugt i64 %i.v, %i.ab
  br i1 %.not.i25, label %bb.e, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.e:                                             ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef %i.v)
  %.pre57 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit, %bb.e
  %i.ac = phi ptr [ %i.y, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit ], [ %.pre57, %bb.e ] ; 17 uses
  switch i64 %i.v, label %bb.v [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
    i64 16, label %bb.u
    i64 0, label %bb.x
  ]

bb.f:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ad = load i8, ptr %i.w, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %bb.x

bb.g:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ae = load i16, ptr %i.w, align 1
  store i16 %i.ae, ptr %i.ac, align 1
  br label %bb.x

bb.h:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ac, ptr noundef nonnull align 1 dereferenceable(3) %i.w, i64 3, i1 false)
  br label %bb.x

bb.i:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.af = load i32, ptr %i.w, align 1
  store i32 %i.af, ptr %i.ac, align 1
  br label %bb.x

bb.j:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) %i.w, i64 5, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) %i.w, i64 6, i1 false)
  br label %bb.x

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ac, ptr noundef nonnull align 1 dereferenceable(7) %i.w, i64 7, i1 false)
  br label %bb.x

bb.m:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ag = load i64, ptr %i.w, align 1
  store i64 %i.ag, ptr %i.ac, align 1
  br label %bb.x

bb.n:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ac, ptr noundef nonnull align 1 dereferenceable(9) %i.w, i64 9, i1 false)
  br label %bb.x

bb.o:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ac, ptr noundef nonnull align 1 dereferenceable(10) %i.w, i64 10, i1 false)
  br label %bb.x

bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ac, ptr noundef nonnull align 1 dereferenceable(11) %i.w, i64 11, i1 false)
  br label %bb.x

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ac, ptr noundef nonnull align 1 dereferenceable(12) %i.w, i64 12, i1 false)
  br label %bb.x

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(13) %i.w, i64 13, i1 false)
  br label %bb.x

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ac, ptr noundef nonnull align 1 dereferenceable(14) %i.w, i64 14, i1 false)
  br label %bb.x

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ac, ptr noundef nonnull align 1 dereferenceable(15) %i.w, i64 15, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ah = icmp sgt i64 %i.v, 1
  br i1 %i.ah, label %bb.w, label %bb.x, !prof !36

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.w, i64 %i.v, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v
  store ptr %i.aj, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ak = add i32 %.12256, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !347

._crit_edge:                                      ; preds = %bb.x, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.x ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i27 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i27, label %bb.z, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28, !prof !32

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i64 noundef 1)
  %.pre58 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28: ; preds = %bb.y, %bb.z
  %i.an = phi ptr [ %i.am, %bb.y ], [ %.pre58, %bb.z ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.e, align 8
  store i8 93, ptr %i.an, align 1
  br label %.thread

bb.aa:                                            ; preds = %._crit_edge
  %i.ap = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ap, i32 %3)
  %i.aq = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.ar = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.ab, label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.ab
  br label %bb.b, !llvm.loop !348

bb.ab:                                            ; preds = %bb.aa
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i32 noundef 0) #21
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 912
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.ab, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28 ], [ 6, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = add i32 %2, 4000
  %.sroa.speculated31 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = add i64 %1, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated31, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.j = icmp ult i32 %.021, %.020
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.12250 = phi i32 [ %i.q, %bb.e ], [ %.021, %bb.b ] ; 3 uses
  %.not49 = icmp eq i32 %.12250, 0
  br i1 %.not49, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.e, i64 noundef 1)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.d, align 8
  store i8 44, ptr %i.m, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, %.lr.ph
  %i.o = sext i32 %.12250 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  %.0.copyload.i.i.i.i = load double, ptr %i.p, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i)
  %i.q = add i32 %.12250, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !349

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.e ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i25 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i25, label %bb.g, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.e, i64 noundef 1)
  %.pre51 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.f ], [ %.pre51, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.d, align 8
  store i8 93, ptr %i.t, align 1
  br label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.v = add i32 %.020, 4000
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %3)
  %i.w = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.x = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.i
  br label %bb.b, !llvm.loop !350

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i32 noundef 0) #21
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 912
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.i, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26 ], [ 6, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated35 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = add i64 %1, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated35, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.12260 = phi i32 [ %i.ay, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.021, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = sext i32 %.12260 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 656
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i = icmp ult i64 %i.w, 5
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 5)
  %.pre63.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre63 = phi ptr [ %i.t, %bb.c ], [ %.pre63.pre, %bb.d ] ; 3 uses
  %.not59 = icmp eq i32 %.12260, 0
  br i1 %.not59, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pre63, i64 1
  store ptr %i.x, ptr %i.h, align 8
  store i8 44, ptr %.pre63, align 1
  %.pre62 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i: ; preds = %bb.e, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.y = phi ptr [ %.pre62, %bb.e ], [ %.pre63, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit ]
  store i32 1819047278, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.f:                                             ; preds = %.lr.ph
  %.not58 = icmp eq i32 %.12260, 0
  br i1 %.not58, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i25 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 1)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.h, align 8
  store i8 44, ptr %i.ad, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, %bb.f
  %i.af = load atomic volatile i64, ptr %i.n monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ah, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0      ; 6 uses
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 17 uses
  %i.al = load ptr, ptr %i.g, align 8
  %i.am = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.not.i27 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i27, label %bb.i, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28, !prof !32

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef %i.aj)
  %.pre61 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28: ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, %bb.i
  %i.aq = phi ptr [ %i.am, %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i ], [ %.pre61, %bb.i ] ; 17 uses
  switch i64 %i.aj, label %bb.z [
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
    i64 8, label %bb.q
    i64 9, label %bb.r
    i64 10, label %bb.s
    i64 11, label %bb.t
    i64 12, label %bb.u
    i64 13, label %bb.v
    i64 14, label %bb.w
    i64 15, label %bb.x
    i64 16, label %bb.y
    i64 0, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.j:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.ar = load i8, ptr %i.ak, align 1
  store i8 %i.ar, ptr %i.aq, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.as = load i16, ptr %i.ak, align 1
  store i16 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aq, ptr noundef nonnull align 1 dereferenceable(3) %i.ak, i64 3, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.at = load i32, ptr %i.ak, align 1
  store i32 %i.at, ptr %i.aq, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aq, ptr noundef nonnull align 1 dereferenceable(5) %i.ak, i64 5, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aq, ptr noundef nonnull align 1 dereferenceable(6) %i.ak, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aq, ptr noundef nonnull align 1 dereferenceable(7) %i.ak, i64 7, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.au = load i64, ptr %i.ak, align 1
  store i64 %i.au, ptr %i.aq, align 1
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aq, ptr noundef nonnull align 1 dereferenceable(9) %i.ak, i64 9, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aq, ptr noundef nonnull align 1 dereferenceable(10) %i.ak, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.aq, ptr noundef nonnull align 1 dereferenceable(11) %i.ak, i64 11, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aq, ptr noundef nonnull align 1 dereferenceable(12) %i.ak, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(13) %i.ak, i64 13, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.w:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.aq, ptr noundef nonnull align 1 dereferenceable(14) %i.ak, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.x:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.aq, ptr noundef nonnull align 1 dereferenceable(15) %i.ak, i64 15, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.y:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aq, ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

bb.z:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %i.av = icmp sgt i64 %i.aj, 1
  br i1 %i.av, label %bb.aa, label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, !prof !36

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %i.ak, i64 %i.aj, i1 false)
  br label %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.aw = load ptr, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aj
  store ptr %i.ax, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal9OutBufferIhE6AppendIhQgestT_stTL0__EEvPKS4_m.exit, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i
  %i.ay = add i32 %.12260, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.g, align 8
  %i.ba = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i29 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i29, label %bb.ac, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit30, !prof !32

bb.ac:                                            ; preds = %bb.ab
  call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.i, i64 noundef 1)
  %.pre64 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit30

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit30: ; preds = %bb.ab, %bb.ac
  %i.bb = phi ptr [ %i.ba, %bb.ab ], [ %.pre64, %bb.ac ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.h, align 8
  store i8 93, ptr %i.bb, align 1
  br label %.thread

bb.ad:                                            ; preds = %._crit_edge
  %i.bd = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.bd, i32 %3)
  %i.be = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.bf = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.ae, label %.backedge

.backedge:                                        ; preds = %bb.ad, %bb.ae
  br label %bb.b, !llvm.loop !352

bb.ae:                                            ; preds = %bb.ad
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i32 noundef 0) #21
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 912
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.ae, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit30
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit30 ], [ 6, %bb.ae ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierIhE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(944) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = add i32 %2, 4000
  %.sroa.speculated33 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3)
  %i.c = add i64 %1, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated33, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.j = icmp ult i32 %.021, %.020
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.12254 = phi i32 [ %i.ab, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.021, %bb.b ] ; 4 uses
  %i.k = sext i32 %.12254 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 1 ; 2 uses
  %i.m = icmp eq i64 %.0.copyload.i.i.i.i.i.i, -2251799814209537
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i = icmp ult i64 %i.r, 5
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.h, i64 noundef 5)
  %.pre57.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre57 = phi ptr [ %i.o, %bb.c ], [ %.pre57.pre, %bb.d ] ; 3 uses
  %.not53 = icmp eq i32 %.12254, 0
  br i1 %.not53, label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pre57, i64 1
  store ptr %i.s, ptr %i.g, align 8
  store i8 44, ptr %.pre57, align 1
  %.pre56 = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i: ; preds = %bb.e, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit
  %i.t = phi ptr [ %.pre56, %bb.e ], [ %.pre57, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit ]
  store i32 1819047278, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.f:                                             ; preds = %.lr.ph
  %i.w = bitcast i64 %.0.copyload.i.i.i.i.i.i to double
  %.not52 = icmp eq i32 %.12254, 0
  br i1 %.not52, label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i25 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.h, i64 noundef 1)
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.g, align 8
  store i8 44, ptr %i.z, align 1
  %.0.copyload.i.i.i.i.pre = load double, ptr %i.l, align 1
  br label %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26, %bb.f
  %.0.copyload.i.i.i.i = phi double [ %.0.copyload.i.i.i.i.pre, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit26 ], [ %i.w, %bb.f ]
  tail call void @_ZN2v88internal19FastJsonStringifierIhE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(944) %0, double noundef %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierIhE9SeparatorEb.exit.i, %_ZN2v88internal19FastJsonStringifierIhE18SeparatorUncheckedEb.exit.i
  %i.ab = add i32 %.12254, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !353

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierIhE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i27 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i27, label %bb.j, label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferIhE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(384) %i.h, i64 noundef 1)
  %.pre58 = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28: ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ %.pre58, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.g, align 8
  store i8 93, ptr %i.ae, align 1
  br label %.thread

bb.k:                                             ; preds = %._crit_edge
  %i.ag = add i32 %.020, 4000
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %3)
  %i.ah = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.ai = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.l, label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.l
  br label %bb.b, !llvm.loop !354

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i32 noundef 0) #21
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 912
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.am, %i.ap
  br i1 %i.aq, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.l, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferIhE14EnsureCapacityEm.exit28 ], [ 6, %bb.l ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyILb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  switch i16 %i.f, label %bb.ai [
    i16 8, label %bb.b
    i16 10, label %bb.p
    i16 26, label %bb.p
    i16 0, label %bb.ag
    i16 2, label %bb.ah
    i16 18, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 13 uses
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = or disjoint i64 %i.k, 4                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 26 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 1
  %.not.i = icmp ugt i64 %i.l, %i.t
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.u, i64 noundef %i.l)
  %.pre171.pre = load ptr, ptr %i.o, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.b, %bb.c
  %.pre171 = phi ptr [ %i.p, %bb.b ], [ %.pre171.pre, %bb.c ] ; 3 uses
  br i1 %2, label %bb.d, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit13

bb.d:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.pre171, i64 2
  store ptr %i.v, ptr %i.o, align 8
  store i16 44, ptr %.pre171, align 2
  %.pre170 = load ptr, ptr %i.o, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit13

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit13: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.d
  %i.w = phi ptr [ %.pre171, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre170, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.x, ptr %i.o, align 8
  store i16 34, ptr %i.w, align 2
  %i.y = icmp ugt i32 %i.i, 31
  br i1 %i.y, label %.lr.ph157, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit13
  %i.z = icmp samesign ugt i32 %i.i, 3
  br i1 %i.z, label %.lr.ph150.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit27

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.aa = and i64 %i.j, 28
  br label %.lr.ph150

.lr.ph157:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.ac = ptrtoint ptr %i.g to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph157, %bb.i
  %.0.i16156 = phi i1 [ false, %.lr.ph157 ], [ %.1.i, %bb.i ]
  %.054.i155 = phi i64 [ 0, %.lr.ph157 ], [ %.155.i, %bb.i ] ; 3 uses
  %.056.i154 = phi ptr [ %i.g, %.lr.ph157 ], [ %i.bg, %bb.i ] ; 4 uses
  %i.ad = load <16 x i8>, ptr %.056.i154, align 1 ; 3 uses
  %i.ae = icmp ult <16 x i8> %i.ad, splat (i8 32)
  %i.af = icmp eq <16 x i8> %i.ad, splat (i8 34)
  %i.ag = icmp eq <16 x i8> %i.ad, splat (i8 92)
  %i.ah = or <16 x i1> %i.ae, %i.af
  %i.ai = or <16 x i1> %i.ag, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.am = zext nneg i16 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.056.i154, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = ptrtoint ptr %.056.i154 to i64
  %i.aq = sub i64 %i.ap, %i.ac
  %i.ar = add i64 %i.aq, %i.am                    ; 2 uses
  %i.as = sub i64 %i.ar, %.054.i155               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054.i155
  %i.au = load ptr, ptr %i.o, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.au, ptr noundef %i.at, i64 noundef %i.as)
  %i.av = load ptr, ptr %i.o, align 8
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.as ; 2 uses
  store ptr %i.aw, ptr %i.o, align 8
  %i.ax = icmp ult i8 %i.ao, 96
  br i1 %i.ax, label %bb.h, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ay = zext nneg i8 %i.ao to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.az ; 2 uses
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aw, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  %i.bc = load ptr, ptr %i.o, align 8
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bb
  store ptr %i.bd, ptr %i.o, align 8
  %i.be = add i64 %i.ar, 1
  %i.bf = getelementptr inbounds i8, ptr %i.an, i64 -15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.157.i = phi ptr [ %i.bf, %bb.h ], [ %.056.i154, %bb.e ] ; 2 uses
  %.155.i = phi i64 [ %i.be, %bb.h ], [ %.054.i155, %bb.e ] ; 3 uses
  %.1.i = phi i1 [ true, %bb.h ], [ %.0.i16156, %bb.e ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.157.i, i64 31
  %i.bi = icmp ult ptr %i.bh, %i.ab
  br i1 %i.bi, label %bb.e, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit, !llvm.loop !20

_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit: ; preds = %bb.i
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bj, %i.ac                    ; 3 uses
  %i.bl = add i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bl, %i.j
  br i1 %i.bm, label %.lr.ph162, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25

.lr.ph162:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit, %bb.j
  %.013.i24161 = phi i64 [ %i.bz, %bb.j ], [ %i.bk, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.013.i24161
  %i.bo = load i32, ptr %i.bn, align 4            ; 4 uses
  %i.bp = add i32 %i.bo, -538976288
  %i.bq = xor i32 %i.bo, 572662306
  %i.br = add i32 %i.bq, -16843009
  %i.bs = xor i32 %i.bo, 1549556828
  %i.bt = add i32 %i.bs, -16843009
  %i.bu = and i32 %i.bo, -2139062144
  %i.bv = xor i32 %i.bu, -2139062144
  %i.bw = or i32 %i.br, %i.bp
  %i.bx = or i32 %i.bw, %i.bt
  %i.by = and i32 %i.bx, %i.bv
  %.not126 = icmp eq i32 %i.by, 0
  br i1 %.not126, label %bb.j, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25

bb.j:                                             ; preds = %.lr.ph162
  %i.bz = add i64 %.013.i24161, 4                 ; 2 uses
  %i.ca = add i64 %.013.i24161, 7
  %i.cb = icmp ult i64 %i.ca, %i.j
  br i1 %i.cb, label %.lr.ph162, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25, !llvm.loop !21

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25: ; preds = %.lr.ph162, %bb.j, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit
  %.013.i24.lcssa = phi i64 [ %i.bk, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit ], [ %i.bz, %bb.j ], [ %.013.i24161, %.lr.ph162 ] ; 2 uses
  %i.cc = icmp ult i64 %.013.i24.lcssa, %i.j
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i.loopexit:                           ; preds = %bb.l
  %i.cd = select i1 %.1.i30, i1 true, i1 %.1.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25
  %.021.lcssa.i = phi i64 [ %.155.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25 ], [ %.122.i, %._crit_edge.i.loopexit ] ; 2 uses
  %.020.lcssa.i = phi i1 [ %.1.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25 ], [ %i.cd, %._crit_edge.i.loopexit ] ; 2 uses
  %i.ce = icmp ult i64 %.021.lcssa.i, %i.j
  %.pre172.pre = load ptr, ptr %i.o, align 8      ; 2 uses
  br i1 %i.ce, label %_ZN2v88internal19FastJsonStringifierItE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit15.sink.split, label %_ZN2v88internal19FastJsonStringifierItE12AppendStringIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit15, !prof !36

.lr.ph.i:                                         ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25, %bb.l
  %.026.i = phi i64 [ %.pre-phi.i, %bb.l ], [ %.013.i24.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25 ] ; 4 uses
  %.02025.i = phi i1 [ %.1.i30, %bb.l ], [ false, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25 ]
  %.02124.i = phi i64 [ %.122.i, %bb.l ], [ %.155.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit25 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.026.i
  %i.cg = load i8, ptr %i.cf, align 1
end_hunk_13
begin_hunk_14_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.gfy, align 2
  %i.gfz = load ptr, ptr %i.y, align 8
  %i.gga = getelementptr inbounds nuw i8, ptr %i.gfz, i64 8
  store ptr %i.gga, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread

bb.api:                                           ; preds = %bb.apd
  %i.ggb = load ptr, ptr %i.x, align 8
  %i.ggc = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ggd = ptrtoint ptr %i.ggb to i64
  %i.gge = ptrtoint ptr %i.ggc to i64
  %i.ggf = sub i64 %i.ggd, %i.gge
  %.not.i1260 = icmp ult i64 %i.ggf, 8
  br i1 %.not.i1260, label %bb.apj, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1261, !prof !32

bb.apj:                                           ; preds = %bb.api
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef 4)
  %.pre3719 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1261

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1261: ; preds = %bb.api, %bb.apj
  %i.ggg = phi ptr [ %i.ggc, %bb.api ], [ %.pre3719, %bb.apj ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.ggg, align 2
  %i.ggh = load ptr, ptr %i.y, align 8
  %i.ggi = getelementptr inbounds nuw i8, ptr %i.ggh, i64 8
  store ptr %i.ggi, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1073, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i352, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i347, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i337, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i333, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, %bb.apc, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1257, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1259, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1261, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit52.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i, %bb.agr
  %.3.i.i323.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit52.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1261 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1259 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1257 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i ], [ 0, %bb.apc ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i333 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i337 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i347 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i352 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1073 ], [ 5, %bb.agr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2782: ; preds = %bb.apd, %bb.agr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.apk

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786.loopexit: ; preds = %bb.agr
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786: ; preds = %bb.agr, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786.loopexit
  %.3.i.i323.ph2785 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786.loopexit ], [ 2, %bb.agr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.loopexit2934

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322: ; preds = %bb.agr
  %i.ggj = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.esx, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  switch i32 %i.ggj, label %bb.app [
    i32 3, label %bb.apk
    i32 4, label %bb.apm
    i32 1, label %.loopexit2934
    i32 2, label %.loopexit2934
    i32 0, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.apk:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2782, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322
  %i.ggk = load ptr, ptr %i.x, align 8
  %i.ggl = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ggm = ptrtoint ptr %i.ggk to i64
  %i.ggn = ptrtoint ptr %i.ggl to i64
  %i.ggo = sub i64 %i.ggm, %i.ggn
  %.not.i1262 = icmp ult i64 %i.ggo, 8
  br i1 %.not.i1262, label %bb.apl, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, !prof !32

bb.apl:                                           ; preds = %bb.apk
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef 4)
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.apm:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

.loopexit2934:                                    ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786
  %.3.i.i3232788 = phi i32 [ %.3.i.i323.ph2785, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread2786 ], [ %i.ggj, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322 ], [ %i.ggj, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322 ]
  %i.ggp = add nuw i32 %.014.i2583209, 1
  %i.ggq = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ggr = load ptr, ptr %i.ac, align 8
  %i.ggs = icmp eq ptr %i.ggq, %i.ggr
  br i1 %i.ggs, label %bb.apn, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265, !prof !32

bb.apn:                                           ; preds = %.loopexit2934
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.aa)
  %.pre.i.i1264 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265: ; preds = %.loopexit2934, %bb.apn
  %i.ggt = phi ptr [ %.pre.i.i1264, %bb.apn ], [ %i.ggq, %.loopexit2934 ] ; 5 uses
  %i.ggu = getelementptr inbounds nuw i8, ptr %i.ggt, i64 32
  store ptr %i.ggu, ptr %i.ab, align 8
  store i32 6, ptr %i.ggt, align 8
  %.sroa.52612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggt, i64 8
  store i64 %.sroa.01.0.copyload.i1067, ptr %.sroa.52612.0..sroa_idx, align 8
  %.sroa.62613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggt, i64 16
  store i32 %i.ggp, ptr %.sroa.62613.0..sroa_idx, align 8
  %.sroa.72614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggt, i64 20
  store i32 %i.esb, ptr %.sroa.72614.0..sroa_idx, align 4
  %i.ggv = add nsw i32 %.3.i.i3232788, -1
  %i.ggw = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ggx = load ptr, ptr %i.ac, align 8
  %i.ggy = icmp eq ptr %i.ggw, %i.ggx
  br i1 %i.ggy, label %bb.apo, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2793, !prof !32

bb.apo:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.aa)
  %.pre.i.i1266 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2793

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2793: ; preds = %bb.apo, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265
  %i.ggz = phi ptr [ %.pre.i.i1266, %bb.apo ], [ %i.ggw, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1265 ] ; 5 uses
  %i.gha = getelementptr inbounds nuw i8, ptr %i.ggz, i64 32
  store ptr %i.gha, ptr %i.ab, align 8
  store i32 %i.ggv, ptr %i.ggz, align 8
  %.sroa.52618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggz, i64 8
  store i64 %i.esx, ptr %.sroa.52618.0..sroa_idx, align 8
  %.sroa.62619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggz, i64 16
  store i32 0, ptr %.sroa.62619.0..sroa_idx, align 8
  %.sroa.72620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggz, i64 20
  store i32 0, ptr %.sroa.72620.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.app:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread
  %.1.i325 = phi i32 [ %i.ggj, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322 ], [ %.3.i.i323.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322.thread ], [ %i.ggj, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322 ], [ %i.ggj, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i322 ] ; 2 uses
  %.not.i263 = icmp eq i32 %.1.i325, 0
  br i1 %.not.i263, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.agl, %bb.apl
  %.pre3722 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.apk, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1069
  %.sink = phi ptr [ %.pre3745, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1069 ], [ %i.ggl, %bb.apk ], [ %.pre3722, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.sink, align 2
  %i.ghb = load ptr, ptr %i.y, align 8
  %i.ghc = getelementptr inbounds nuw i8, ptr %i.ghb, i64 8
  store ptr %i.ghc, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.ghd = add nuw i32 %.014.i2583209, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ghd, %i.esb
  br i1 %exitcond.not, label %._crit_edge3214, label %bb.agi, !llvm.loop !25

._crit_edge3214:                                  ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %bb.agh
  %i.ghe = load ptr, ptr %i.x, align 8
  %i.ghf = load ptr, ptr %i.y, align 8            ; 2 uses
  %.not.i1268 = icmp eq ptr %i.ghe, %i.ghf
  br i1 %.not.i1268, label %bb.apq, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1269, !prof !32

bb.apq:                                           ; preds = %._crit_edge3214
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef 1)
  %.pre3746 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1269

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1269: ; preds = %._crit_edge3214, %bb.apq
  %i.ghg = phi ptr [ %i.ghf, %._crit_edge3214 ], [ %.pre3746, %bb.apq ] ; 2 uses
  %i.ghh = getelementptr inbounds nuw i8, ptr %i.ghg, i64 2
  store ptr %i.ghh, ptr %i.y, align 8
  store i16 93, ptr %i.ghg, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.apr:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i1270 = load i64, ptr %i.u, align 8
  %i.ghi = load i32, ptr %i.v, align 8
  %i.ghj = load i32, ptr %i.w, align 4
  %i.ghk = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.01.0.copyload.i1270, i32 noundef %i.ghi, i32 noundef %i.ghj)
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.aps:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i1271 = load i64, ptr %i.u, align 8
  %i.ghl = load i32, ptr %i.v, align 8
  %i.ghm = load i32, ptr %i.w, align 4
  %i.ghn = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.01.0.copyload.i1271, i32 noundef %i.ghl, i32 noundef %i.ghm)
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.apt:                                           ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.aps, %bb.apr, %bb.vt
  %.023 = phi i32 [ %i.ghn, %bb.aps ], [ %i.ghk, %bb.apr ], [ %i.dcu, %bb.vt ], [ %.0.i281, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.1.i325, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %i.gho = icmp sgt i32 %.023, 2
  br i1 %i.gho, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2803, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, !prof !48

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2793, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2768, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit379, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit856, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit833, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit609, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit586, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit565, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1269, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1066, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit858, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit835, %bb.ke, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit611, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit588, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit567, %bb.af, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit381, %bb.ag, %bb.kf, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit
  %i.ghp = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ghq = load ptr, ptr %i.aa, align 8
  %i.ghr = icmp eq ptr %i.ghp, %i.ghq
  br i1 %i.ghr, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2803, label %bb.apu

bb.apu:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread
  %i.ghs = getelementptr inbounds i8, ptr %i.ghp, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ghs, i64 32, i1 false)
  store ptr %i.ghs, ptr %i.ab, align 8
  br label %bb.b, !llvm.loop !355

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2803: ; preds = %.critedge.i.i, %bb.h, %bb.e, %bb.f, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit.i, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, %bb.c, %bb.vn, %bb.vn, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86, %bb.jy, %bb.jy, %bb.jf, %bb.jf, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %bb.x, %bb.x, %.critedge.i244.thread2745, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86.thread2722, %.thread2704, %.critedge.i216.thread2680, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2657, %.thread2639
  %.0 = phi i32 [ %i.cyk, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86 ], [ 5, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86.thread2722 ], [ %i.dcb, %bb.vn ], [ %i.fj, %bb.x ], [ 5, %.thread2704 ], [ 5, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2657 ], [ %i.axx, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.bbd, %bb.jf ], [ 5, %.critedge.i216.thread2680 ], [ %i.bev, %bb.jy ], [ 5, %.critedge.i244.thread2745 ], [ 5, %.thread2639 ], [ %i.fj, %bb.x ], [ %i.axx, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.bbd, %bb.jf ], [ %i.bev, %bb.jy ], [ %i.cyk, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i86 ], [ %i.dcb, %bb.vn ], [ 5, %.critedge.i.i ], [ 5, %bb.e ], [ 0, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread ], [ 5, %bb.h ], [ %.023, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit ], [ 5, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit.i ], [ 5, %bb.f ], [ %i.aj, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_16SeqTwoByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 5 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = or disjoint i64 %i.h, 4                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 35 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 1
  %.not.i = icmp ugt i64 %i.i, %i.r
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.i)
  %.pre21.pre = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %.pre21 = phi ptr [ %i.n, %bb.a ], [ %.pre21.pre, %bb.b ] ; 3 uses
  br i1 %2, label %bb.c, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

bb.c:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pre21, i64 2
  store ptr %i.s, ptr %i.m, align 8
  store i16 44, ptr %.pre21, align 2
  %.pre = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.c
  %i.t = phi ptr [ %.pre21, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %i.m, align 8
  store i16 34, ptr %i.t, align 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %.pre2229 = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.v = icmp ugt i32 %i.f, %.2.i
  %.pre22 = load ptr, ptr %i.m, align 8           ; 18 uses
  br i1 %i.v, label %bb.o, label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i20 = phi i32 [ %.2.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 4 uses
  %.057.i19 = phi i32 [ %i.ci, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 9 uses
  %i.w = zext i32 %.057.i19 to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 11 uses
  %i.z = and i16 %i.y, -2
  %or.cond.i = icmp eq i16 %i.z, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt i16 %i.y, 34
  %i.ab = icmp ne i16 %i.y, 92
  %or.cond5.i = and i1 %i.aa, %i.ab
  %i.ac = add i16 %i.y, 8192
  %i.ad = icmp ult i16 %i.ac, -2048
  %or.cond = and i1 %or.cond5.i, %i.ad
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17, !prof !51

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17: ; preds = %bb.d
  %i.ae = icmp slt i16 %i.y, -8192
  %i.af = zext i32 %.055.i20 to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.af
  %i.ah = sub i32 %.057.i19, %.055.i20
  %i.ai = zext i32 %i.ah to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull %i.ag, i64 noundef %i.ai)
  br i1 %i.ae, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aj = icmp samesign ult i16 %i.y, -9216
  br i1 %i.aj, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ak = add nuw i32 %.057.i19, 1                ; 3 uses
  %i.al = icmp ugt i32 %i.f, %i.ak
  br i1 %i.al, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = and i16 %i.ao, -1024
  %i.aq = icmp eq i16 %i.ap, -9216
  %i.ar = load ptr, ptr %i.m, align 8             ; 4 uses
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.m, align 8
  store i16 %i.y, ptr %i.ar, align 2
  %i.at = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.au, ptr %i.m, align 8
  store i16 %i.ao, ptr %i.at, align 2
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  store i16 92, ptr %i.ar, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 117, ptr %i.av, align 2
  %i.aw = load ptr, ptr %i.m, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.ax, ptr %i.m, align 8
  %i.ay = uitofp i16 %i.y to double
  %i.az = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ay, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bc, ptr noundef %i.bb, i64 noundef %i.ba)
  %i.bd = load ptr, ptr %i.m, align 8
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.be, ptr %i.m, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.m, align 8             ; 2 uses
  store i16 92, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i16 117, ptr %i.bg, align 2
  %i.bh = load ptr, ptr %i.m, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.m, align 8
  %i.bj = uitofp i16 %i.y to double
  %i.bk = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bj, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %i.bl)
  %i.bo = load ptr, ptr %i.m, align 8
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bl
  store ptr %i.bp, ptr %i.m, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.m, align 8             ; 2 uses
  store i16 92, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 117, ptr %i.br, align 2
  %i.bs = load ptr, ptr %i.m, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store ptr %i.bt, ptr %i.m, align 8
  %i.bu = uitofp i16 %i.y to double
  %i.bv = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bu, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bv, 1
  %i.by = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.by, ptr noundef %i.bx, i64 noundef %i.bw)
  %i.bz = load ptr, ptr %i.m, align 8
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.bw
  store ptr %i.ca, ptr %i.m, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.259.i = phi i32 [ %.057.i19, %bb.k ], [ %.057.i19, %bb.j ], [ %i.ak, %bb.h ], [ %.057.i19, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17
  %i.cb = zext i16 %i.y to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cc ; 2 uses
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #26 ; 2 uses
  %i.cf = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cf, ptr noundef nonnull %i.cd, i64 noundef %i.ce)
  %i.cg = load ptr, ptr %i.m, align 8
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.ch, ptr %i.m, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3.i = phi i32 [ %.259.i, %bb.l ], [ %.057.i19, %bb.m ] ; 2 uses
  %.156.i = add nuw i32 %.3.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.n
  %.4.i = phi i32 [ %.3.i, %bb.n ], [ %.057.i19, %bb.d ], [ %.057.i19, %.lr.ph ]
end_hunk_14
begin_hunk_15_@_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  store i16 92, ptr %i.tb, align 2
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  store i16 117, ptr %i.tf, align 2
  %i.tg = load ptr, ptr %i.rx, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  store ptr %i.th, ptr %i.rx, align 8
  %i.ti = uitofp i16 %i.si to double
  %i.tj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ti, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.tk = extractvalue { i64, ptr } %i.tj, 0      ; 2 uses
  %i.tl = extractvalue { i64, ptr } %i.tj, 1
  %i.tm = load ptr, ptr %i.rx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.tm, ptr noundef %i.tl, i64 noundef %i.tk)
  %i.tn = load ptr, ptr %i.rx, align 8
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %i.tk
  store ptr %i.to, ptr %i.rx, align 8
  br label %bb.cf

bb.cd:                                            ; preds = %bb.bz
  %i.tp = load ptr, ptr %i.rx, align 8            ; 2 uses
  store i16 92, ptr %i.tp, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 2
  store i16 117, ptr %i.tq, align 2
  %i.tr = load ptr, ptr %i.rx, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store ptr %i.ts, ptr %i.rx, align 8
  %i.tt = uitofp i16 %i.si to double
  %i.tu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.tt, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.tv = extractvalue { i64, ptr } %i.tu, 0      ; 2 uses
  %i.tw = extractvalue { i64, ptr } %i.tu, 1
  %i.tx = load ptr, ptr %i.rx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.tx, ptr noundef %i.tw, i64 noundef %i.tv)
  %i.ty = load ptr, ptr %i.rx, align 8
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.ty, i64 %i.tv
  store ptr %i.tz, ptr %i.rx, align 8
  br label %bb.cf

bb.ce:                                            ; preds = %bb.by
  %i.ua = load ptr, ptr %i.rx, align 8            ; 2 uses
  store i16 92, ptr %i.ua, align 2
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 2
  store i16 117, ptr %i.ub, align 2
  %i.uc = load ptr, ptr %i.rx, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store ptr %i.ud, ptr %i.rx, align 8
  %i.ue = uitofp i16 %i.si to double
  %i.uf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ue, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ug = extractvalue { i64, ptr } %i.uf, 0      ; 2 uses
  %i.uh = extractvalue { i64, ptr } %i.uf, 1
  %i.ui = load ptr, ptr %i.rx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ui, ptr noundef %i.uh, i64 noundef %i.ug)
  %i.uj = load ptr, ptr %i.rx, align 8
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %i.ug
  store ptr %i.uk, ptr %i.rx, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.259.i.i.i69 = phi i32 [ %.057.i.i.i61365, %bb.ce ], [ %.057.i.i.i61365, %bb.cd ], [ %i.su, %bb.cb ], [ %.057.i.i.i61365, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ch

bb.cg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread331
  %i.ul = zext i16 %i.si to i64
  %i.um = shl nuw nsw i64 %i.ul, 3
  %i.un = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.um ; 2 uses
  %i.uo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.un) #26 ; 2 uses
  %i.up = load ptr, ptr %i.rx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.up, ptr noundef nonnull %i.un, i64 noundef %i.uo)
  %i.uq = load ptr, ptr %i.rx, align 8
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %i.uo
  store ptr %i.ur, ptr %i.rx, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.3.i.i.i64 = phi i32 [ %.259.i.i.i69, %bb.cf ], [ %.057.i.i.i61365, %bb.cg ] ; 2 uses
  %.156.i.i.i65 = add nuw i32 %.3.i.i.i64, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread: ; preds = %bb.bx, %.lr.ph, %bb.ch
  %.4.i.i.i66 = phi i32 [ %.3.i.i.i64, %bb.ch ], [ %.057.i.i.i61365, %bb.bx ], [ %.057.i.i.i61365, %.lr.ph ]
  %.2.i.i.i67 = phi i32 [ %.156.i.i.i65, %bb.ch ], [ %.055.i.i.i62366, %bb.bx ], [ %.055.i.i.i62366, %.lr.ph ] ; 3 uses
  %i.us = add nuw i32 %.4.i.i.i66, 1              ; 2 uses
  %i.ut = icmp ugt i32 %i.rq, %i.us
  br i1 %i.ut, label %.lr.ph, label %._crit_edge, !llvm.loop !23

bb.ci:                                            ; preds = %._crit_edge
  %i.uu = zext i32 %.2.i.i.i67 to i64             ; 2 uses
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %.0.i125, i64 %i.uu ; 17 uses
  %i.uw = sub nuw nsw i64 %i.rr, %i.uu            ; 3 uses
  %trunc = trunc nuw i64 %i.uw to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i133 [
    i32 1, label %bb.cj
    i32 2, label %bb.ck
    i32 3, label %bb.cl
    i32 4, label %bb.cm
    i32 5, label %bb.cn
    i32 6, label %bb.co
    i32 7, label %bb.cp
    i32 8, label %bb.cq
    i32 9, label %bb.cr
    i32 10, label %bb.cs
    i32 11, label %bb.ct
    i32 12, label %bb.cu
    i32 13, label %bb.cv
    i32 14, label %bb.cw
    i32 15, label %bb.cx
    i32 16, label %bb.cy
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.ux = load i16, ptr %i.uv, align 2
  store i16 %i.ux, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.ck:                                            ; preds = %bb.ci
  %i.uy = load i32, ptr %i.uv, align 2
  store i32 %i.uy, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre417, ptr noundef nonnull align 2 dereferenceable(6) %i.uv, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cm:                                            ; preds = %bb.ci
  %i.uz = load i64, ptr %i.uv, align 2
  store i64 %i.uz, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cn:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre417, ptr noundef nonnull align 2 dereferenceable(10) %i.uv, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.co:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre417, ptr noundef nonnull align 2 dereferenceable(12) %i.uv, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cp:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre417, ptr noundef nonnull align 2 dereferenceable(14) %i.uv, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cq:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre417, ptr noundef nonnull align 2 dereferenceable(16) %i.uv, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cr:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre417, ptr noundef nonnull align 2 dereferenceable(18) %i.uv, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre417, ptr noundef nonnull align 2 dereferenceable(20) %i.uv, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.ct:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre417, ptr noundef nonnull align 2 dereferenceable(22) %i.uv, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cu:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre417, ptr noundef nonnull align 2 dereferenceable(24) %i.uv, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cv:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre417, ptr noundef nonnull align 2 dereferenceable(26) %i.uv, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cw:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre417, ptr noundef nonnull align 2 dereferenceable(28) %i.uv, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cx:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre417, ptr noundef nonnull align 2 dereferenceable(30) %i.uv, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cy:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre417, ptr noundef nonnull align 2 dereferenceable(32) %i.uv, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i133: ; preds = %bb.ci
  %.idx.i.i.i.i134 = shl nuw nsw i64 %i.uw, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre417, ptr nonnull align 2 %i.uv, i64 %.idx.i.i.i.i134, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135: ; preds = %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i133
  %i.va = load ptr, ptr %i.rx, align 8
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.uw
  br label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit

_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit: ; preds = %._crit_edge.thread, %._crit_edge, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135
  %i.vc = phi ptr [ %.pre417, %._crit_edge ], [ %i.vb, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135 ], [ %.pre417461, %._crit_edge.thread ] ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  store ptr %i.vd, ptr %i.rx, align 8
  store i16 34, ptr %i.vc, align 2
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.cz:                                            ; preds = %.preheader354
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSB_2EEEEEUlNS7_INS0_16SeqOneByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_16SeqTwoByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_21ExternalOneByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_21ExternalTwoByteStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_10ThinStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_10ConsStringEEEE_ZNS6_27SerializeJSPrimitiveWrapperES9_SE_EUlNS7_INS0_12SlicedStringEEEE_EEEEEDaNS7_INS0_6StringEEEOT_.exit: ; preds = %.preheader354, %.preheader354
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.vf = load i64, ptr %i.ve, align 8
  br label %.preheader354, !llvm.loop !356

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.vg = and i64 %i.z, 1
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.vi = add nsw i64 %i.z, -1
  %i.vj = inttoptr i64 %i.vi to ptr               ; 5 uses
  %i.vk = load atomic volatile i64, ptr %i.vj monotonic, align 8
  %i.vl = add i64 %i.vk, 11
  %i.vm = inttoptr i64 %i.vl to ptr
  %i.vn = load atomic volatile i16, ptr %i.vm monotonic, align 2
  %i.vo = icmp eq i16 %i.vn, 130
  br i1 %i.vo, label %.thread338, label %bb.dc

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.vp = getelementptr inbounds nuw i8, ptr %i.d, i64 8840
  %i.vq = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %i.d, i64 %1, ptr nonnull %i.vp)
  %.not = icmp eq i32 %i.vq, 1072
  br i1 %.not, label %bb.da, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, !prof !36

.thread338:                                       ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %i.d, i64 8840
  %i.vs = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_110GetBuiltinEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_12DirectHandleINS0_4NameEEE(ptr noundef %i.d, i64 %1, ptr nonnull %i.vr)
  %.not339 = icmp eq i32 %i.vs, 1072
  br i1 %.not339, label %.thread340, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, !prof !36

bb.da:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.vt = lshr i64 %i.z, 32
  %i.vu = trunc nuw i64 %i.vt to i32
  %i.vv = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.vu, ptr nonnull %i.c, i64 11) #21 ; 2 uses
  %i.vw = extractvalue { i64, ptr } %i.vv, 0      ; 4 uses
  %i.vx = extractvalue { i64, ptr } %i.vv, 1
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.wb = load ptr, ptr %i.wa, align 8            ; 2 uses
  %i.wc = ptrtoint ptr %i.vz to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = ashr exact i64 %i.we, 1
  %.not.i137 = icmp ugt i64 %i.vw, %i.wf
  br i1 %.not.i137, label %bb.db, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit138, !prof !32

bb.db:                                            ; preds = %bb.da
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.wg, i64 noundef %i.vw)
  %.pre415 = load ptr, ptr %i.wa, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit138

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit138: ; preds = %bb.da, %bb.db
  %i.wh = phi ptr [ %i.wb, %bb.da ], [ %.pre415, %bb.db ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.wh, ptr noundef %i.vx, i64 noundef %i.vw)
  %i.wi = load ptr, ptr %i.wa, align 8
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.wi, i64 %i.vw
  store ptr %i.wj, ptr %i.wa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

.thread340:                                       ; preds = %.thread338
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.wk, align 8
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.dc:                                            ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.aa, label %bb.dd, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.wl = load atomic volatile i64, ptr %i.vj monotonic, align 8
  %i.wm = add i64 %i.wl, 11
  %i.wn = inttoptr i64 %i.wm to ptr
  %i.wo = load atomic volatile i16, ptr %i.wn monotonic, align 2
  %i.wp = icmp eq i16 %i.wo, 131
  br i1 %i.wp, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.dd
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  %i.wr = load i64, ptr %i.wq, align 8
  %i.ws = and i64 %i.wr, 1090921693184
  %i.wt = icmp eq i64 %i.ws, 0
  br i1 %i.wt, label %bb.de, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit

bb.de:                                            ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.wv = load i64, ptr %i.wu, align 8
  %i.ww = icmp eq i64 %i.z, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 7 uses
  %i.xa = load ptr, ptr %i.wz, align 8            ; 3 uses
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc                    ; 2 uses
  br i1 %i.ww, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not.i140 = icmp ult i64 %i.xd, 8
  br i1 %.not.i140, label %bb.dg, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit141, !prof !32

bb.dg:                                            ; preds = %bb.df
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.xe, i64 noundef 4)
  %.pre414 = load ptr, ptr %i.wz, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit141

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit141: ; preds = %bb.df, %bb.dg
  %i.xf = phi ptr [ %i.xa, %bb.df ], [ %.pre414, %bb.dg ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.xf, align 2
  %i.xg = load ptr, ptr %i.wz, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store ptr %i.xh, ptr %i.wz, align 8
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.dh:                                            ; preds = %bb.de
  %.not.i142 = icmp ult i64 %i.xd, 9
  br i1 %.not.i142, label %bb.di, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143, !prof !32

bb.di:                                            ; preds = %bb.dh
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.xi, i64 noundef 5)
  %.pre = load ptr, ptr %i.wz, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143: ; preds = %bb.dh, %bb.di
  %i.xj = phi ptr [ %i.xa, %bb.dh ], [ %.pre, %bb.di ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.xj, align 2
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i16 101, ptr %i.xk, align 2
  %i.xl = load ptr, ptr %i.wz, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 10
  store ptr %i.xm, ptr %i.wz, align 8
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, %bb.dd
  %i.xn = load atomic volatile i64, ptr %i.vj monotonic, align 8
  %i.xo = add i64 %i.xn, 11
  %i.xp = inttoptr i64 %i.xo to ptr
  %i.xq = load atomic volatile i16, ptr %i.xp monotonic, align 2
  %i.xr = icmp eq i16 %i.xq, 129
  br i1 %i.xr, label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.dc, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit: ; preds = %bb.b, %.preheader354, %.preheader354, %.preheader354, %.preheader354, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit138, %.thread340, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %.thread338, %bb.k, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqTwoByteStringEEEE_clESC_.exit, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit, %bb.e, %bb.f, %bb.h, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.j, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit141, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit
  %.7 = phi i32 [ 5, %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit ], [ 5, %.preheader354 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit141 ], [ 5, %bb.h ], [ 0, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit ], [ 5, %bb.j ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143 ], [ 5, %bb.f ], [ 5, %bb.e ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ 5, %bb.k ], [ 0, %.thread340 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit138 ], [ 5, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 5, %.thread338 ], [ 0, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit ], [ 0, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit ], [ 0, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqTwoByteStringEEEE_clESC_.exit ], [ 5, %.preheader354 ], [ 5, %.preheader354 ], [ 5, %.preheader354 ], [ 5, %bb.b ]
  ret i32 %.7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE28HandleInterruptAndCheckCycleEv(ptr noundef nonnull align 8 dereferenceable(1200) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef 0) #21
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 912
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE10CheckCycleEv(ptr noundef nonnull align 8 dereferenceable(1200) %0)
  %. = select i1 %i.m, i32 5, i32 0, !prof !32
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.1 = phi i32 [ %., %.critedge ], [ 6, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = alloca [2200 x i8], align 16             ; 5 uses
  %i.c = alloca [2200 x i8], align 16             ; 5 uses
  %i.d = alloca [2200 x i8], align 16             ; 5 uses
  %i.e = alloca [11 x i8], align 1                ; 3 uses
  %2 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 10 uses
  %i.f = alloca [2200 x i8], align 16             ; 5 uses
  %i.g = alloca [2200 x i8], align 16             ; 5 uses
  %i.h = alloca [2200 x i8], align 16             ; 5 uses
  %i.i = alloca [2200 x i8], align 16             ; 5 uses
  %i.j = alloca [11 x i8], align 1                ; 3 uses
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 10 uses
  %i.k = alloca [11 x i8], align 1                ; 6 uses
  %i.l = alloca [11 x i8], align 1                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.042.0.copyload = load i64, ptr %i.m, align 8
  %i.n = add i64 %1, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8 ; 2 uses
  %i.q = add i64 %i.p, 15
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i32, ptr %i.r monotonic, align 4
  %i.t = and i32 %i.s, 268435456
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit: ; preds = %bb.a
  %i.u = add i64 %i.p, 23
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, %.sroa.042.0.copyload
  br i1 %i.x, label %bb.b, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !46

bb.b:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 60 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 46 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 482 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i137 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i137, label %bb.c, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.ab, align 8
  store i16 91, ptr %i.ad, align 2
  %i.af = add i64 %1, 23
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.ak = lshr i64 %i.ah, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = sitofp i32 %i.al to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.an = add nsw i64 %i.ah, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ap, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi double [ %i.am, %bb.d ], [ %.0.copyload.i.i.i.i.i, %bb.e ]
  %i.ar = fptoui double %i.aq to i32              ; 30 uses
  %i.as = add i64 %1, 15
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8            ; 14 uses
  %i.av = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.aw = add i64 %i.av, 14
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = lshr i8 %i.ay, 2
  switch i8 %i.az, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit [
    i8 0, label %bb.f
    i8 2, label %bb.n
    i8 4, label %bb.gb
    i8 1, label %bb.gh
    i8 3, label %bb.gt
    i8 5, label %bb.nf
  ]

bb.f:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.ba = icmp ugt i32 %i.ar, 4000
  br i1 %i.ba, label %bb.i, label %.preheader, !prof !32

.preheader:                                       ; preds = %bb.f
  %.not1183 = icmp eq i32 %i.ar, 0
  br i1 %.not1183, label %.preheader.._crit_edge1169_crit_edge, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

.preheader.._crit_edge1169_crit_edge:             ; preds = %.preheader
  %.pre1321 = load ptr, ptr %i.ab, align 8
  br label %._crit_edge1169

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %.preheader
  %i.bb = add i64 %i.au, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.bg, ptr nonnull %i.l, i64 11) #21 ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0      ; 4 uses
  %i.bj = extractvalue { i64, ptr } %i.bh, 1
  %i.bk = load ptr, ptr %i.z, align 8
  %i.bl = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 1
  %.not.i142.peel = icmp ugt i64 %i.bi, %i.bp
  br i1 %.not.i142.peel, label %bb.g, label %bb.h, !prof !32

bb.g:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.bi)
  %.pre1318 = load ptr, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel
  %i.bq = phi ptr [ %.pre1318, %bb.g ], [ %i.bl, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bq, ptr noundef %i.bj, i64 noundef %i.bi)
  %i.br = load ptr, ptr %i.ab, align 8
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bi ; 3 uses
  store ptr %i.bs, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  %exitcond1256.peel.not = icmp eq i32 %i.ar, 1
  br i1 %exitcond1256.peel.not, label %._crit_edge1169, label %.peel.next1258

bb.i:                                             ; preds = %bb.f
  %i.bt = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1258:                                   ; preds = %bb.h, %bb.l
  %i.bu = phi ptr [ %i.co, %bb.l ], [ %i.bs, %bb.h ] ; 2 uses
  %.014.i551167 = phi i32 [ %i.cp, %bb.l ], [ 1, %bb.h ] ; 2 uses
  %i.bv = load ptr, ptr %i.z, align 8
  %.not.i140 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i140, label %bb.j, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, !prof !32

bb.j:                                             ; preds = %.peel.next1258
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1319 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %bb.j, %.peel.next1258
  %i.bw = phi ptr [ %i.bu, %.peel.next1258 ], [ %.pre1319, %bb.j ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store ptr %i.bx, ptr %i.ab, align 8
  store i16 44, ptr %i.bw, align 2
  %i.by = sext i32 %.014.i551167 to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.by
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.cc, ptr nonnull %i.l, i64 11) #21 ; 2 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0      ; 4 uses
  %i.cf = extractvalue { i64, ptr } %i.cd, 1
  %i.cg = load ptr, ptr %i.z, align 8
  %i.ch = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 1
  %.not.i142 = icmp ugt i64 %i.ce, %i.cl
  br i1 %.not.i142, label %bb.k, label %bb.l, !prof !32

bb.k:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.ce)
  %.pre1320 = load ptr, ptr %i.ab, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.cm = phi ptr [ %.pre1320, %bb.k ], [ %i.ch, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE0ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cm, ptr noundef %i.cf, i64 noundef %i.ce)
  %i.cn = load ptr, ptr %i.ab, align 8
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ce ; 3 uses
  store ptr %i.co, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  %i.cp = add nuw i32 %.014.i551167, 1            ; 2 uses
  %exitcond1256.not = icmp eq i32 %i.cp, %i.ar
  br i1 %exitcond1256.not, label %._crit_edge1169, label %.peel.next1258, !llvm.loop !357

._crit_edge1169:                                  ; preds = %bb.l, %bb.h, %.preheader.._crit_edge1169_crit_edge
  %i.cq = phi ptr [ %.pre1321, %.preheader.._crit_edge1169_crit_edge ], [ %i.bs, %bb.h ], [ %i.co, %bb.l ] ; 2 uses
  %i.cr = load ptr, ptr %i.z, align 8
  %.not.i144 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i144, label %bb.m, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.m:                                             ; preds = %._crit_edge1169
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1322 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.m, %._crit_edge1169
  %i.cs = phi ptr [ %.pre1322, %bb.m ], [ %i.cq, %._crit_edge1169 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store ptr %i.ct, ptr %i.ab, align 8
  store i16 93, ptr %i.cs, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.cu = icmp ugt i32 %i.ar, 4000
  br i1 %i.cu, label %bb.o, label %.preheader908, !prof !32

.preheader908:                                    ; preds = %bb.n
  %.not1178 = icmp eq i32 %i.ar, 0
  br i1 %.not1178, label %._crit_edge1166, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %.preheader908
  %i.cv = add i64 %i.au, -1
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.p:                                             ; preds = %.lr.ph1165, %bb.fz
  %.014.i1162 = phi i32 [ 0, %.lr.ph1165 ], [ %i.anw, %bb.fz ] ; 4 uses
  %.not892 = icmp eq i32 %.014.i1162, 0
  br i1 %.not892, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %i.z, align 8
  %i.da = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i146 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i146, label %bb.r, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit147, !prof !32

bb.r:                                             ; preds = %bb.q
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1297 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit147

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit147: ; preds = %bb.q, %bb.r
  %i.db = phi ptr [ %i.da, %bb.q ], [ %.pre1297, %bb.r ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store ptr %i.dc, ptr %i.ab, align 8
  store i16 44, ptr %i.db, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i88

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i88: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit147, %bb.p
  %i.dd = sext i32 %.014.i1162 to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load atomic volatile i64, ptr %i.de monotonic, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dg = and i64 %i.df, 1
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.di = lshr i64 %i.df, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.dj, ptr nonnull %i.j, i64 11) #21 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0      ; 4 uses
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = load ptr, ptr %i.z, align 8
  %i.do = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 1
  %.not.i148 = icmp ugt i64 %i.dl, %i.ds
  br i1 %.not.i148, label %bb.t, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit149, !prof !32

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.dl)
  %.pre1316 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit149

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit149: ; preds = %bb.s, %bb.t
  %i.dt = phi ptr [ %i.do, %bb.s ], [ %.pre1316, %bb.t ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dt, ptr noundef %i.dm, i64 noundef %i.dl)
  %i.du = load ptr, ptr %i.ab, align 8
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dl
  store ptr %i.dv, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.u:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i88
  %i.dw = add nsw i64 %i.df, -1
  %i.dx = inttoptr i64 %i.dw to ptr               ; 15 uses
  %i.dy = load atomic volatile i64, ptr %i.dx monotonic, align 8
  %i.dz = add i64 %i.dy, 11
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load atomic volatile i16, ptr %i.ea monotonic, align 2
  switch i16 %i.eb, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread [
    i16 8, label %bb.v
    i16 40, label %bb.v
    i16 10, label %bb.ai
    i16 26, label %bb.ai
    i16 42, label %bb.ai
    i16 58, label %bb.ai
    i16 45, label %bb.ay
    i16 0, label %bb.bu
    i16 32, label %bb.bu
    i16 2, label %bb.cy
    i16 18, label %bb.cy
    i16 34, label %bb.cy
    i16 50, label %bb.cy
    i16 37, label %bb.ef
    i16 130, label %bb.fl
    i16 131, label %bb.fm
    i16 128, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread819
    i16 1041, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
    i16 1057, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823.loopexit
    i16 2119, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 11 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.ee = load i32, ptr %i.ed, align 4            ; 3 uses
  %i.ef = zext i32 %i.ee to i64                   ; 13 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = or disjoint i64 %i.eg, 2                ; 2 uses
  %i.ei = load ptr, ptr %i.z, align 8
  %i.ej = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 1
  %.not.i151 = icmp ugt i64 %i.eh, %i.en
  br i1 %.not.i151, label %bb.w, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit152, !prof !32

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.eh)
  %.pre1313 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit152

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit152: ; preds = %bb.v, %bb.w
  %i.eo = phi ptr [ %i.ej, %bb.v ], [ %.pre1313, %bb.w ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store ptr %i.ep, ptr %i.ab, align 8
  store i16 34, ptr %i.eo, align 2
  %i.eq = icmp ugt i32 %i.ee, 31
  br i1 %i.eq, label %.lr.ph1154, label %.preheader904

.preheader904:                                    ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit152
  %i.er = icmp samesign ugt i32 %i.ee, 3
  br i1 %i.er, label %.lr.ph1147.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i

.lr.ph1147.preheader:                             ; preds = %.preheader904
  %i.es = and i64 %i.ef, 28
  br label %.lr.ph1147

.lr.ph1154:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit152
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ef
  %i.eu = ptrtoint ptr %i.ec to i64               ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1154, %bb.ab
  %.054.i.i.i1152 = phi i64 [ 0, %.lr.ph1154 ], [ %.155.i.i.i, %bb.ab ] ; 3 uses
  %.056.i.i.i1151 = phi ptr [ %i.ec, %.lr.ph1154 ], [ %i.fy, %bb.ab ] ; 4 uses
  %i.ev = load <16 x i8>, ptr %.056.i.i.i1151, align 1 ; 3 uses
  %i.ew = icmp ult <16 x i8> %i.ev, splat (i8 32)
  %i.ex = icmp eq <16 x i8> %i.ev, splat (i8 34)
  %i.ey = icmp eq <16 x i8> %i.ev, splat (i8 92)
  %i.ez = or <16 x i1> %i.ew, %i.ex
  %i.fa = or <16 x i1> %i.ey, %i.ez
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.ab, label %bb.y, !prof !36

bb.y:                                             ; preds = %bb.x
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fb, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.056.i.i.i1151, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1             ; 2 uses
  %i.fh = ptrtoint ptr %.056.i.i.i1151 to i64
  %i.fi = sub i64 %i.fh, %i.eu
  %i.fj = add i64 %i.fi, %i.fe                    ; 2 uses
  %i.fk = sub i64 %i.fj, %.054.i.i.i1152          ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.054.i.i.i1152
  %i.fm = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fm, ptr noundef %i.fl, i64 noundef %i.fk)
  %i.fn = load ptr, ptr %i.ab, align 8
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fk ; 2 uses
  store ptr %i.fo, ptr %i.ab, align 8
  %i.fp = icmp ult i8 %i.fg, 96
end_hunk_15
begin_hunk_16_@_ZN2v88internal19FastJsonStringifierItE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
  %i.amu = sub i64 %i.ams, %i.amt
  %.not.i244 = icmp ult i64 %i.amu, 8
  br i1 %.not.i244, label %bb.fs, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245, !prof !32

bb.fs:                                            ; preds = %bb.fr
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 4)
  %.pre1298 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245: ; preds = %bb.fr, %bb.fs
  %i.amv = phi ptr [ %i.amr, %bb.fr ], [ %.pre1298, %bb.fs ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.amv, align 2
  %i.amw = load ptr, ptr %i.ab, align 8
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  store ptr %i.amx, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit149, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, %bb.fl, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit241, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit243, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit50.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i, %bb.u
  %.3.i.i.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit50.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit243 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit241 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i ], [ 0, %bb.fl ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit149 ], [ 5, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread819: ; preds = %bb.fm, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ft

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823.loopexit: ; preds = %bb.u
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823: ; preds = %bb.u, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823.loopexit
  %.3.i.i.ph822 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823.loopexit ], [ 2, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.loopexit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i: ; preds = %bb.u
  %i.amy = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.df, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  switch i32 %i.amy, label %bb.fy [
    i32 3, label %bb.ft
    i32 4, label %bb.fv
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 0, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.ft:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread819, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.amz = load ptr, ptr %i.z, align 8
  %i.ana = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.anb = ptrtoint ptr %i.amz to i64
  %i.anc = ptrtoint ptr %i.ana to i64
  %i.and = sub i64 %i.anb, %i.anc
  %.not.i246 = icmp ult i64 %i.and, 8
  br i1 %.not.i246, label %bb.fu, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, !prof !32

bb.fu:                                            ; preds = %bb.ft
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 4)
  %.pre1301 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %bb.fu, %bb.ft
  %i.ane = phi ptr [ %.pre1301, %bb.fu ], [ %i.ana, %bb.ft ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.ane, align 2
  %i.anf = load ptr, ptr %i.ab, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  store ptr %i.ang, ptr %i.ab, align 8
  br label %bb.fz

bb.fv:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823
  %.3.i.i825 = phi i32 [ %.3.i.i.ph822, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread823 ], [ %i.amy, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.amy, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ani = add nuw i32 %.014.i1162, 1
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.ank = load ptr, ptr %i.anj, align 8          ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = icmp eq ptr %i.ank, %i.anm
  br i1 %i.ann, label %bb.fw, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.fw:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anh)
  %.pre.i.i = load ptr, ptr %i.anj, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.fw
  %i.ano = phi ptr [ %.pre.i.i, %bb.fw ], [ %i.ank, %.loopexit ] ; 5 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 32
  store ptr %i.anp, ptr %i.anj, align 8
  store i32 5, ptr %i.ano, align 8
  %.sroa.5791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  store i64 %i.au, ptr %.sroa.5791.0..sroa_idx, align 8
  %.sroa.6792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  store i32 %i.ani, ptr %.sroa.6792.0..sroa_idx, align 8
  %.sroa.7793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ano, i64 20
  store i32 %i.ar, ptr %.sroa.7793.0..sroa_idx, align 4
  %i.anq = add nsw i32 %.3.i.i825, -1
  %i.anr = load ptr, ptr %i.anj, align 8          ; 2 uses
  %i.ans = load ptr, ptr %i.anl, align 8
  %i.ant = icmp eq ptr %i.anr, %i.ans
  br i1 %i.ant, label %bb.fx, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread830, !prof !32

bb.fx:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anh)
  %.pre.i.i248 = load ptr, ptr %i.anj, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread830

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread830: ; preds = %bb.fx, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  %i.anu = phi ptr [ %.pre.i.i248, %bb.fx ], [ %i.anr, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 32
  store ptr %i.anv, ptr %i.anj, align 8
  store i32 %i.anq, ptr %i.anu, align 8
  %.sroa.5796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  store i64 %i.df, ptr %.sroa.5796.0..sroa_idx, align 8
  %.sroa.6797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  store i32 0, ptr %.sroa.6797.0..sroa_idx, align 8
  %.sroa.7798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anu, i64 20
  store i32 0, ptr %.sroa.7798.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.fy:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %.0.i89 = phi i32 [ %.3.i.i.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.amy, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.amy, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.amy, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i89, 0
  br i1 %.not.i, label %bb.fz, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.fz:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.anw = add nuw i32 %.014.i1162, 1             ; 2 uses
  %exitcond1255.not = icmp eq i32 %i.anw, %i.ar
  br i1 %exitcond1255.not, label %._crit_edge1166, label %bb.p, !llvm.loop !24

._crit_edge1166:                                  ; preds = %bb.fz, %.preheader908
  %i.anx = load ptr, ptr %i.z, align 8
  %i.any = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i250 = icmp eq ptr %i.anx, %i.any
  br i1 %.not.i250, label %bb.ga, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit251, !prof !32

bb.ga:                                            ; preds = %._crit_edge1166
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1317 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit251

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit251: ; preds = %._crit_edge1166, %bb.ga
  %i.anz = phi ptr [ %i.any, %._crit_edge1166 ], [ %.pre1317, %bb.ga ] ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 2
  store ptr %i.aoa, ptr %i.ab, align 8
  store i16 93, ptr %i.anz, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gb:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.aob = icmp ugt i32 %i.ar, 4000
  br i1 %i.aob, label %bb.gd, label %.preheader909, !prof !32

.preheader909:                                    ; preds = %bb.gb
  %.not1177 = icmp eq i32 %i.ar, 0
  br i1 %.not1177, label %._crit_edge1077, label %bb.gc

bb.gc:                                            ; preds = %.preheader909
  %i.aoc = add i64 %i.au, -1
  %i.aod = inttoptr i64 %i.aoc to ptr
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i254.peel.pre = load double, ptr %i.aoe, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i254.peel.pre)
  %exitcond1251.peel.not = icmp eq i32 %i.ar, 1
  br i1 %exitcond1251.peel.not, label %._crit_edge1077, label %.peel.next1253

bb.gd:                                            ; preds = %bb.gb
  %i.aof = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1253:                                   ; preds = %bb.gc, %bb.gf
  %.014.i621075 = phi i32 [ %i.aom, %bb.gf ], [ 1, %bb.gc ] ; 2 uses
  %i.aog = load ptr, ptr %i.z, align 8
  %i.aoh = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i252 = icmp eq ptr %i.aog, %i.aoh
  br i1 %.not.i252, label %bb.ge, label %bb.gf, !prof !32

bb.ge:                                            ; preds = %.peel.next1253
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1295 = load ptr, ptr %i.ab, align 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.peel.next1253
  %i.aoi = phi ptr [ %i.aoh, %.peel.next1253 ], [ %.pre1295, %bb.ge ] ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  store ptr %i.aoj, ptr %i.ab, align 8
  store i16 44, ptr %i.aoi, align 2
  %i.aok = sext i32 %.014.i621075 to i64
  %i.aol = getelementptr inbounds [8 x i8], ptr %i.aoe, i64 %i.aok
  %.0.copyload.i.i.i.i254 = load double, ptr %i.aol, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i254)
  %i.aom = add nuw i32 %.014.i621075, 1           ; 2 uses
  %exitcond1251.not = icmp eq i32 %i.aom, %i.ar
  br i1 %exitcond1251.not, label %._crit_edge1077, label %.peel.next1253, !llvm.loop !358

._crit_edge1077:                                  ; preds = %bb.gf, %bb.gc, %.preheader909
  %i.aon = load ptr, ptr %i.z, align 8
  %i.aoo = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i255 = icmp eq ptr %i.aon, %i.aoo
  br i1 %.not.i255, label %bb.gg, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.gg:                                            ; preds = %._crit_edge1077
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1296 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.gg, %._crit_edge1077
  %i.aop = phi ptr [ %.pre1296, %bb.gg ], [ %i.aoo, %._crit_edge1077 ] ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 2
  store ptr %i.aoq, ptr %i.ab, align 8
  store i16 93, ptr %i.aop, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gh:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.aor = load ptr, ptr %0, align 8              ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 9080
  %i.aot = load i64, ptr %i.aos, align 8
  %i.aou = add i64 %i.aot, 23
  %i.aov = inttoptr i64 %i.aou to ptr
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = and i64 %i.aow, -4294967295
  %i.aoy = icmp eq i64 %i.aox, 4294967296
  br i1 %i.aoy, label %bb.gi, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.gi:                                            ; preds = %bb.gh
  %i.aoz = icmp ugt i32 %i.ar, 4000
  br i1 %i.aoz, label %bb.gm, label %.preheader910, !prof !32

.preheader910:                                    ; preds = %bb.gi
  %.not1176 = icmp eq i32 %i.ar, 0
  br i1 %.not1176, label %.preheader910.._crit_edge1074_crit_edge, label %.lr.ph1073

.preheader910.._crit_edge1074_crit_edge:          ; preds = %.preheader910
  %.pre1291 = load ptr, ptr %i.ab, align 8
  br label %._crit_edge1074

.lr.ph1073:                                       ; preds = %.preheader910
  %i.apa = add i64 %i.au, -1
  %i.apb = inttoptr i64 %i.apa to ptr
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 16 ; 3 uses
  %i.apd = load atomic volatile i64, ptr %i.apc monotonic, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aor, i64 656
  %i.apf = load i64, ptr %i.ape, align 8
  %i.apg = icmp eq i64 %i.apd, %i.apf
  br i1 %i.apg, label %bb.gk, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i.peel

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i.peel: ; preds = %.lr.ph1073
  %i.aph = load atomic volatile i64, ptr %i.apc monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.api = lshr i64 %i.aph, 32
  %i.apj = trunc nuw i64 %i.api to i32
  %i.apk = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.apj, ptr nonnull %i.k, i64 11) #21 ; 2 uses
  %i.apl = extractvalue { i64, ptr } %i.apk, 0    ; 4 uses
  %i.apm = extractvalue { i64, ptr } %i.apk, 1
  %i.apn = load ptr, ptr %i.z, align 8
  %i.apo = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = ptrtoint ptr %i.apo to i64
  %i.apr = sub i64 %i.app, %i.apq
  %i.aps = ashr exact i64 %i.apr, 1
  %.not.i261.peel = icmp ugt i64 %i.apl, %i.aps
  br i1 %.not.i261.peel, label %bb.gj, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262.peel, !prof !32

bb.gj:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i.peel
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.apl)
  %.pre1287 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262.peel

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262.peel: ; preds = %bb.gj, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i.peel
  %i.apt = phi ptr [ %.pre1287, %bb.gj ], [ %i.apo, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i.peel ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.apt, ptr noundef %i.apm, i64 noundef %i.apl)
  %i.apu = load ptr, ptr %i.ab, align 8
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.apu, i64 %i.apl ; 2 uses
  store ptr %i.apv, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

bb.gk:                                            ; preds = %.lr.ph1073
  %i.apw = load ptr, ptr %i.z, align 8
  %i.apx = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.apy = ptrtoint ptr %i.apw to i64
  %i.apz = ptrtoint ptr %i.apx to i64
  %i.aqa = sub i64 %i.apy, %i.apz
  %.not.i257.peel = icmp ult i64 %i.aqa, 9
  br i1 %.not.i257.peel, label %bb.gl, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i.peel, !prof !32

bb.gl:                                            ; preds = %bb.gk
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  %.pre1288.pre = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i.peel

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i.peel: ; preds = %bb.gk, %bb.gl
  %.pre1288 = phi ptr [ %.pre1288.pre, %bb.gl ], [ %i.apx, %bb.gk ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.pre1288, align 2
  %i.aqb = load ptr, ptr %i.ab, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8 ; 2 uses
  store ptr %i.aqc, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i.peel, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262.peel
  %i.aqd = phi ptr [ %i.aqc, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i.peel ], [ %i.apv, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262.peel ] ; 2 uses
  %exitcond1247.peel.not = icmp eq i32 %i.ar, 1
  br i1 %exitcond1247.peel.not, label %._crit_edge1074, label %.peel.next1249

bb.gm:                                            ; preds = %bb.gi
  %i.aqe = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next1249:                                   ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.aqf = phi ptr [ %i.arn, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %i.aqd, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 3 uses
  %.014.i691072 = phi i32 [ %i.aro, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 1, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 2 uses
  %i.aqg = load ptr, ptr %0, align 8
  %i.aqh = sext i32 %.014.i691072 to i64
  %i.aqi = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.aqh ; 2 uses
  %i.aqj = load atomic volatile i64, ptr %i.aqi monotonic, align 8
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqg, i64 656
  %i.aql = load i64, ptr %i.aqk, align 8
  %i.aqm = icmp eq i64 %i.aqj, %i.aql
  %i.aqn = load ptr, ptr %i.z, align 8            ; 2 uses
  br i1 %i.aqm, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.peel.next1249
  %i.aqo = ptrtoint ptr %i.aqn to i64
  %i.aqp = ptrtoint ptr %i.aqf to i64
  %i.aqq = sub i64 %i.aqo, %i.aqp
  %.not.i257 = icmp ult i64 %i.aqq, 9
  br i1 %.not.i257, label %bb.go, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i, !prof !32

bb.go:                                            ; preds = %bb.gn
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i: ; preds = %bb.gn, %bb.go
  %i.aqr = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 2
  store ptr %i.aqs, ptr %i.ab, align 8
  store i16 44, ptr %i.aqr, align 2
  %i.aqt = load ptr, ptr %i.ab, align 8
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.aqt, align 2
  %i.aqu = load ptr, ptr %i.ab, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8 ; 2 uses
  store ptr %i.aqv, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.gp:                                            ; preds = %.peel.next1249
  %.not.i259 = icmp eq ptr %i.aqn, %i.aqf
  br i1 %.not.i259, label %bb.gq, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, !prof !32

bb.gq:                                            ; preds = %bb.gp
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1289 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i: ; preds = %bb.gq, %bb.gp
  %i.aqw = phi ptr [ %i.aqf, %bb.gp ], [ %.pre1289, %bb.gq ] ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2
  store ptr %i.aqx, ptr %i.ab, align 8
  store i16 44, ptr %i.aqw, align 2
  %i.aqy = load atomic volatile i64, ptr %i.aqi monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.aqz = lshr i64 %i.aqy, 32
  %i.ara = trunc nuw i64 %i.aqz to i32
  %i.arb = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ara, ptr nonnull %i.k, i64 11) #21 ; 2 uses
  %i.arc = extractvalue { i64, ptr } %i.arb, 0    ; 4 uses
  %i.ard = extractvalue { i64, ptr } %i.arb, 1
  %i.are = load ptr, ptr %i.z, align 8
  %i.arf = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.arg = ptrtoint ptr %i.are to i64
  %i.arh = ptrtoint ptr %i.arf to i64
  %i.ari = sub i64 %i.arg, %i.arh
  %i.arj = ashr exact i64 %i.ari, 1
  %.not.i261 = icmp ugt i64 %i.arc, %i.arj
  br i1 %.not.i261, label %bb.gr, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262, !prof !32

bb.gr:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.arc)
  %.pre1290 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262: ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, %bb.gr
  %i.ark = phi ptr [ %i.arf, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i ], [ %.pre1290, %bb.gr ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ark, ptr noundef %i.ard, i64 noundef %i.arc)
  %i.arl = load ptr, ptr %i.ab, align 8
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr %i.arl, i64 %i.arc ; 2 uses
  store ptr %i.arm, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i
  %i.arn = phi ptr [ %i.arm, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit262 ], [ %i.aqv, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i ] ; 2 uses
  %i.aro = add nuw i32 %.014.i691072, 1           ; 2 uses
  %exitcond1247.not = icmp eq i32 %i.aro, %i.ar
  br i1 %exitcond1247.not, label %._crit_edge1074, label %.peel.next1249, !llvm.loop !359

._crit_edge1074:                                  ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %.preheader910.._crit_edge1074_crit_edge
  %i.arp = phi ptr [ %.pre1291, %.preheader910.._crit_edge1074_crit_edge ], [ %i.aqd, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ], [ %i.arn, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %i.arq = load ptr, ptr %i.z, align 8
  %.not.i263 = icmp eq ptr %i.arq, %i.arp
  br i1 %.not.i263, label %bb.gs, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.gs:                                            ; preds = %._crit_edge1074
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1292 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.gs, %._crit_edge1074
  %i.arr = phi ptr [ %.pre1292, %bb.gs ], [ %i.arp, %._crit_edge1074 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  store ptr %i.ars, ptr %i.ab, align 8
  store i16 93, ptr %i.arr, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gt:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.art = load ptr, ptr %0, align 8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 9080
  %i.arv = load i64, ptr %i.aru, align 8
  %i.arw = add i64 %i.arv, 23
  %i.arx = inttoptr i64 %i.arw to ptr
  %i.ary = load i64, ptr %i.arx, align 8
  %i.arz = and i64 %i.ary, -4294967295
  %i.asa = icmp eq i64 %i.arz, 4294967296
  br i1 %i.asa, label %bb.gu, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.gu:                                            ; preds = %bb.gt
  %i.asb = icmp ugt i32 %i.ar, 4000
  br i1 %i.asb, label %bb.gv, label %.preheader915, !prof !32

.preheader915:                                    ; preds = %bb.gu
  %.not1171 = icmp eq i32 %i.ar, 0
  br i1 %.not1171, label %._crit_edge1071, label %.lr.ph1070

.lr.ph1070:                                       ; preds = %.preheader915
  %i.asc = add i64 %i.au, -1
  %i.asd = inttoptr i64 %i.asc to ptr
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.asf = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.gw:                                            ; preds = %.lr.ph1070, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread
  %.014.i481067 = phi i32 [ 0, %.lr.ph1070 ], [ %i.ccf, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ] ; 5 uses
  %i.asg = load ptr, ptr %0, align 8
  %i.ash = sext i32 %.014.i481067 to i64
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.ase, i64 %i.ash ; 2 uses
  %i.asj = load atomic volatile i64, ptr %i.asi monotonic, align 8
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asg, i64 656
  %i.asl = load i64, ptr %i.ask, align 8
  %i.asm = icmp eq i64 %i.asj, %i.asl
  br i1 %i.asm, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.asn = load ptr, ptr %i.z, align 8
  %i.aso = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.asp = ptrtoint ptr %i.asn to i64
  %i.asq = ptrtoint ptr %i.aso to i64
  %i.asr = sub i64 %i.asp, %i.asq
  %.not.i265 = icmp ult i64 %i.asr, 9
  br i1 %.not.i265, label %bb.gy, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266, !prof !32

bb.gy:                                            ; preds = %bb.gx
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  %.pre1285.pre = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266: ; preds = %bb.gx, %bb.gy
  %.pre1285 = phi ptr [ %i.aso, %bb.gx ], [ %.pre1285.pre, %bb.gy ] ; 3 uses
  %.not888 = icmp eq i32 %.014.i481067, 0
  br i1 %.not888, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, label %bb.gz

bb.gz:                                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266
  %i.ass = getelementptr inbounds nuw i8, ptr %.pre1285, i64 2
  store ptr %i.ass, ptr %i.ab, align 8
  store i16 44, ptr %.pre1285, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.ha:                                            ; preds = %bb.gw
  %.not878 = icmp eq i32 %.014.i481067, 0
  br i1 %.not878, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i93, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ast = load ptr, ptr %i.z, align 8
  %i.asu = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i267 = icmp eq ptr %i.ast, %i.asu
  br i1 %.not.i267, label %bb.hc, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit268, !prof !32

bb.hc:                                            ; preds = %bb.hb
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1264 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit268

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit268: ; preds = %bb.hb, %bb.hc
  %i.asv = phi ptr [ %i.asu, %bb.hb ], [ %.pre1264, %bb.hc ] ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 2
  store ptr %i.asw, ptr %i.ab, align 8
  store i16 44, ptr %i.asv, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i93

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i93: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit268, %bb.ha
  %i.asx = load atomic volatile i64, ptr %i.asi monotonic, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.asy = and i64 %i.asx, 1
  %i.asz = icmp eq i64 %i.asy, 0
  br i1 %i.asz, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.ata = lshr i64 %i.asx, 32
  %i.atb = trunc nuw i64 %i.ata to i32
  %i.atc = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.atb, ptr nonnull %i.e, i64 11) #21 ; 2 uses
  %i.atd = extractvalue { i64, ptr } %i.atc, 0    ; 4 uses
  %i.ate = extractvalue { i64, ptr } %i.atc, 1
  %i.atf = load ptr, ptr %i.z, align 8
  %i.atg = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ath = ptrtoint ptr %i.atf to i64
  %i.ati = ptrtoint ptr %i.atg to i64
  %i.atj = sub i64 %i.ath, %i.ati
  %i.atk = ashr exact i64 %i.atj, 1
  %.not.i269 = icmp ugt i64 %i.atd, %i.atk
  br i1 %.not.i269, label %bb.he, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit270, !prof !32

bb.he:                                            ; preds = %bb.hd
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.atd)
  %.pre1283 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit270

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit270: ; preds = %bb.hd, %bb.he
  %i.atl = phi ptr [ %i.atg, %bb.hd ], [ %.pre1283, %bb.he ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.atl, ptr noundef %i.ate, i64 noundef %i.atd)
  %i.atm = load ptr, ptr %i.ab, align 8
  %i.atn = getelementptr inbounds nuw [2 x i8], ptr %i.atm, i64 %i.atd
  store ptr %i.atn, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.hf:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i93
  %i.ato = add nsw i64 %i.asx, -1
  %i.atp = inttoptr i64 %i.ato to ptr             ; 15 uses
  %i.atq = load atomic volatile i64, ptr %i.atp monotonic, align 8
  %i.atr = add i64 %i.atq, 11
  %i.ats = inttoptr i64 %i.atr to ptr
  %i.att = load atomic volatile i16, ptr %i.ats monotonic, align 2
  switch i16 %i.att, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread [
    i16 8, label %bb.hg
    i16 40, label %bb.hg
    i16 10, label %bb.ht
    i16 26, label %bb.ht
    i16 42, label %bb.ht
    i16 58, label %bb.ht
    i16 45, label %bb.ij
    i16 0, label %bb.jc
    i16 32, label %bb.jc
    i16 2, label %bb.kg
    i16 18, label %bb.kg
    i16 34, label %bb.kg
    i16 50, label %bb.kg
    i16 37, label %bb.ln
    i16 130, label %bb.mq
    i16 131, label %bb.mr
    i16 128, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread842
    i16 1041, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95
    i16 1057, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread846.loopexit
    i16 2119, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread846
  ]

bb.hg:                                            ; preds = %bb.hf, %bb.hf
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atp, i64 16 ; 11 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atp, i64 12
  %i.atw = load i32, ptr %i.atv, align 4          ; 3 uses
  %i.atx = zext i32 %i.atw to i64                 ; 13 uses
  %i.aty = shl nuw nsw i64 %i.atx, 3
  %i.atz = or disjoint i64 %i.aty, 2              ; 2 uses
  %i.aua = load ptr, ptr %i.z, align 8
  %i.aub = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.auc = ptrtoint ptr %i.aua to i64
  %i.aud = ptrtoint ptr %i.aub to i64
  %i.aue = sub i64 %i.auc, %i.aud
  %i.auf = ashr exact i64 %i.aue, 1
  %.not.i272 = icmp ugt i64 %i.atz, %i.auf
  br i1 %.not.i272, label %bb.hh, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit273, !prof !32

bb.hh:                                            ; preds = %bb.hg
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.atz)
  %.pre1280 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit273

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit273: ; preds = %bb.hg, %bb.hh
  %i.aug = phi ptr [ %i.aub, %bb.hg ], [ %.pre1280, %bb.hh ] ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 2
  store ptr %i.auh, ptr %i.ab, align 8
  store i16 34, ptr %i.aug, align 2
  %i.aui = icmp ugt i32 %i.atw, 31
end_hunk_16
begin_hunk_17_@_ZN2v88internal19FastJsonStringifierItE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
bb.nb:                                            ; preds = %.loopexit916
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.cbo)
  %.pre.i.i387 = load ptr, ptr %i.cbq, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit388

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit388: ; preds = %.loopexit916, %bb.nb
  %i.cbv = phi ptr [ %.pre.i.i387, %bb.nb ], [ %i.cbr, %.loopexit916 ] ; 5 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 32
  store ptr %i.cbw, ptr %i.cbq, align 8
  store i32 6, ptr %i.cbv, align 8
  %.sroa.5802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cbv, i64 8
  store i64 %i.au, ptr %.sroa.5802.0..sroa_idx, align 8
  %.sroa.6803.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cbv, i64 16
  store i32 %i.cbp, ptr %.sroa.6803.0..sroa_idx, align 8
  %.sroa.7804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cbv, i64 20
  store i32 %i.ar, ptr %.sroa.7804.0..sroa_idx, align 4
  %i.cbx = add nsw i32 %.3.i.i96848, -1
  %i.cby = load ptr, ptr %i.cbq, align 8          ; 2 uses
  %i.cbz = load ptr, ptr %i.cbs, align 8
  %i.cca = icmp eq ptr %i.cby, %i.cbz
  br i1 %i.cca, label %bb.nc, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread853, !prof !32

bb.nc:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit388
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.cbo)
  %.pre.i.i389 = load ptr, ptr %i.cbq, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread853

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread853: ; preds = %bb.nc, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit388
  %i.ccb = phi ptr [ %.pre.i.i389, %bb.nc ], [ %i.cby, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit388 ] ; 5 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 32
  store ptr %i.ccc, ptr %i.cbq, align 8
  store i32 %i.cbx, ptr %i.ccb, align 8
  %.sroa.5808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ccb, i64 8
  store i64 %i.asx, ptr %.sroa.5808.0..sroa_idx, align 8
  %.sroa.6809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ccb, i64 16
  store i32 0, ptr %.sroa.6809.0..sroa_idx, align 8
  %.sroa.7810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ccb, i64 20
  store i32 0, ptr %.sroa.7810.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.nd:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread
  %.1.i = phi i32 [ %i.cbi, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ], [ %.3.i.i96.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread ], [ %i.cbi, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ], [ %i.cbi, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95 ] ; 2 uses
  %.not.i53 = icmp eq i32 %.1.i, 0
  br i1 %.not.i53, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.gz, %bb.mz
  %.pre1268 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.my, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266
  %.sink = phi ptr [ %.pre1285, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit266 ], [ %i.cbk, %bb.my ], [ %.pre1268, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.sink, align 2
  %i.ccd = load ptr, ptr %i.ab, align 8
  %i.cce = getelementptr inbounds nuw i8, ptr %i.ccd, i64 8
  store ptr %i.cce, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.ccf = add nuw i32 %.014.i481067, 1           ; 2 uses
  %exitcond1246.not = icmp eq i32 %i.ccf, %i.ar
  br i1 %exitcond1246.not, label %._crit_edge1071, label %bb.gw, !llvm.loop !25

._crit_edge1071:                                  ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %.preheader915
  %i.ccg = load ptr, ptr %i.z, align 8
  %i.cch = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i391 = icmp eq ptr %i.ccg, %i.cch
  br i1 %.not.i391, label %bb.ne, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit392, !prof !32

bb.ne:                                            ; preds = %._crit_edge1071
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1286 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit392

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit392: ; preds = %._crit_edge1071, %bb.ne
  %i.cci = phi ptr [ %i.cch, %._crit_edge1071 ], [ %.pre1286, %bb.ne ] ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 2
  store ptr %i.ccj, ptr %i.ab, align 8
  store i16 93, ptr %i.cci, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

bb.nf:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.cck = load ptr, ptr %0, align 8
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 9080
  %i.ccm = load i64, ptr %i.ccl, align 8
  %i.ccn = add i64 %i.ccm, 23
  %i.cco = inttoptr i64 %i.ccn to ptr
  %i.ccp = load i64, ptr %i.cco, align 8
  %i.ccq = and i64 %i.ccp, -4294967295
  %i.ccr = icmp eq i64 %i.ccq, 4294967296
  br i1 %i.ccr, label %bb.ng, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !36

bb.ng:                                            ; preds = %bb.nf
  %i.ccs = icmp ugt i32 %i.ar, 4000
  br i1 %i.ccs, label %bb.nj, label %.preheader918, !prof !32

.preheader918:                                    ; preds = %bb.ng
  %.not1170 = icmp eq i32 %i.ar, 0
  br i1 %.not1170, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader918
  %i.cct = add i64 %i.au, -1
  %i.ccu = inttoptr i64 %i.cct to ptr
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccu, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %i.ccv, align 1 ; 2 uses
  %i.ccw = icmp eq i64 %.0.copyload.i.i.i.i.i.i.peel, -2251799814209537
  br i1 %i.ccw, label %bb.nh, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86.peel

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86.peel: ; preds = %.lr.ph
  %i.ccx = bitcast i64 %.0.copyload.i.i.i.i.i.i.peel to double
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %i.ccx)
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

bb.nh:                                            ; preds = %.lr.ph
  %i.ccy = load ptr, ptr %i.z, align 8
  %i.ccz = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.cda = ptrtoint ptr %i.ccy to i64
  %i.cdb = ptrtoint ptr %i.ccz to i64
  %i.cdc = sub i64 %i.cda, %i.cdb
  %.not.i393.peel = icmp ult i64 %i.cdc, 9
  br i1 %.not.i393.peel, label %bb.ni, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87.peel, !prof !32

bb.ni:                                            ; preds = %bb.nh
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  %.pre1260.pre = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87.peel

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87.peel: ; preds = %bb.nh, %bb.ni
  %.pre1260 = phi ptr [ %.pre1260.pre, %bb.ni ], [ %i.ccz, %bb.nh ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.pre1260, align 2
  %i.cdd = load ptr, ptr %i.ab, align 8
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 8
  store ptr %i.cde, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87.peel, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86.peel
  %exitcond.peel.not = icmp eq i32 %i.ar, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.nj:                                            ; preds = %bb.ng
  %i.cdf = tail call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.au, i32 noundef 0, i32 noundef %i.ar)
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

.peel.next:                                       ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.014.i76983 = phi i32 [ %i.cdv, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 1, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel ] ; 2 uses
  %i.cdg = sext i32 %.014.i76983 to i64
  %i.cdh = getelementptr inbounds [8 x i8], ptr %i.ccv, i64 %i.cdg ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cdh, align 1
  %i.cdi = icmp eq i64 %.0.copyload.i.i.i.i.i.i, -2251799814209537
  %i.cdj = load ptr, ptr %i.z, align 8            ; 2 uses
  %i.cdk = load ptr, ptr %i.ab, align 8           ; 3 uses
  br i1 %i.cdi, label %bb.nk, label %bb.nm

bb.nk:                                            ; preds = %.peel.next
  %i.cdl = ptrtoint ptr %i.cdj to i64
  %i.cdm = ptrtoint ptr %i.cdk to i64
  %i.cdn = sub i64 %i.cdl, %i.cdm
  %.not.i393 = icmp ult i64 %i.cdn, 9
  br i1 %.not.i393, label %bb.nl, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87, !prof !32

bb.nl:                                            ; preds = %bb.nk
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87: ; preds = %bb.nk, %bb.nl
  %i.cdo = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 2
  store ptr %i.cdp, ptr %i.ab, align 8
  store i16 44, ptr %i.cdo, align 2
  %i.cdq = load ptr, ptr %i.ab, align 8
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.cdq, align 2
  %i.cdr = load ptr, ptr %i.ab, align 8
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 8
  store ptr %i.cds, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.nm:                                            ; preds = %.peel.next
  %.not.i395 = icmp eq ptr %i.cdj, %i.cdk
  br i1 %.not.i395, label %bb.nn, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86, !prof !32

bb.nn:                                            ; preds = %bb.nm
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1261 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86: ; preds = %bb.nn, %bb.nm
  %i.cdt = phi ptr [ %i.cdk, %bb.nm ], [ %.pre1261, %bb.nn ] ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 2
  store ptr %i.cdu, ptr %i.ab, align 8
  store i16 44, ptr %i.cdt, align 2
  %.0.copyload.i.i.i.i397.pre = load double, ptr %i.cdh, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i397.pre)
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i86, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i87
  %i.cdv = add nuw i32 %.014.i76983, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cdv, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !360

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb0ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.peel, %.preheader918
  %i.cdw = load ptr, ptr %i.z, align 8
  %i.cdx = load ptr, ptr %i.ab, align 8           ; 2 uses
  %.not.i398 = icmp eq ptr %i.cdw, %i.cdx
  br i1 %.not.i398, label %bb.no, label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, !prof !32

bb.no:                                            ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 1)
  %.pre1263 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %bb.no, %._crit_edge
  %i.cdy = phi ptr [ %.pre1263, %bb.no ], [ %i.cdx, %._crit_edge ] ; 2 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 2
  store ptr %i.cdz, ptr %i.ab, align 8
  store i16 93, ptr %i.cdy, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit

_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread853, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread830, %bb.a, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit392, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit251, %bb.i, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.o, %bb.gd, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.gm, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.gv, %bb.nj, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit, %bb.gh, %bb.gt, %bb.nf, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit
  %.1 = phi i32 [ 5, %_ZN2v88internal12_GLOBAL__N_131CanFastSerializeJSArrayFastPathENS0_6TaggedINS0_7JSArrayEEENS2_INS0_10HeapObjectEEEPNS0_7IsolateE.exit ], [ 5, %bb.nf ], [ %i.bt, %bb.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ %i.cy, %bb.o ], [ %.0.i89, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %i.aof, %bb.gd ], [ 0, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ 0, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ %i.aqe, %bb.gm ], [ 0, %_ZN2v88internal19FastJsonStringifierItE19SerializeFixedArrayILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj.exit ], [ 5, %bb.gh ], [ %i.asf, %bb.gv ], [ 5, %bb.a ], [ 5, %bb.gt ], [ %i.cdf, %bb.nj ], [ 5, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit251 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit392 ], [ %.3.i.i825, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread830 ], [ %.3.i.i96848, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread853 ], [ %.1.i, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = alloca [2200 x i8], align 16             ; 5 uses
  %i.c = alloca [2200 x i8], align 16             ; 5 uses
  %i.d = alloca [2200 x i8], align 16             ; 5 uses
  %i.e = alloca [11 x i8], align 1                ; 3 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 6 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = add i32 %2, 4000
  %.sroa.speculated198 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 239 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.k = add i64 %1, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated198, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.o = icmp ult i32 %.021, %.020
  br i1 %i.o, label %.lr.ph559, label %._crit_edge560

.lr.ph559:                                        ; preds = %bb.b, %bb.if
  %.122555 = phi i32 [ %i.aof, %bb.if ], [ %.021, %bb.b ] ; 4 uses
  %.not426 = icmp eq i32 %.122555, 0
  br i1 %.not426, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph559
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 1)
  %.pre = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.i, align 8
  store i16 44, ptr %i.r, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %.lr.ph559
  %i.t = sext i32 %.122555 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.w = and i64 %i.v, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.z, ptr nonnull %i.e, i64 11) #21 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 4 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  %.not.i25 = icmp ugt i64 %i.ab, %i.ai
  br i1 %.not.i25, label %bb.f, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, !prof !32

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.ab)
  %.pre622 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26: ; preds = %bb.e, %bb.f
  %i.aj = phi ptr [ %i.ae, %bb.e ], [ %.pre622, %bb.f ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aj, ptr noundef %i.ac, i64 noundef %i.ab)
  %i.ak = load ptr, ptr %i.i, align 8
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.ab
  store ptr %i.al, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.g:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  %i.am = add nsw i64 %i.v, -1
  %i.an = inttoptr i64 %i.am to ptr               ; 15 uses
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  switch i16 %i.ar, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread [
    i16 8, label %bb.h
    i16 40, label %bb.h
    i16 10, label %bb.u
    i16 26, label %bb.u
    i16 42, label %bb.u
    i16 58, label %bb.u
    i16 45, label %bb.ak
    i16 0, label %bb.bo
    i16 32, label %bb.bo
    i16 2, label %bb.cs
    i16 18, label %bb.cs
    i16 34, label %bb.cs
    i16 50, label %bb.cs
    i16 37, label %bb.ff
    i16 130, label %bb.hr
    i16 131, label %bb.hs
    i16 128, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread402
    i16 1041, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
    i16 1057, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406.loopexit
    i16 2119, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 13 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = or disjoint i64 %i.aw, 2                ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8
  %i.az = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 1
  %.not.i27 = icmp ugt i64 %i.ax, %i.bd
  br i1 %.not.i27, label %bb.i, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, !prof !32

bb.i:                                             ; preds = %bb.h
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.ax)
  %.pre619 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28: ; preds = %bb.h, %bb.i
  %i.be = phi ptr [ %i.az, %bb.h ], [ %.pre619, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store ptr %i.bf, ptr %i.i, align 8
  store i16 34, ptr %i.be, align 2
  %i.bg = icmp ugt i32 %i.au, 31
  br i1 %i.bg, label %.lr.ph547, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28
  %i.bh = icmp samesign ugt i32 %i.au, 3
  br i1 %i.bh, label %.lr.ph540.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i

.lr.ph540.preheader:                              ; preds = %.preheader
  %i.bi = and i64 %i.av, 28
  br label %.lr.ph540

.lr.ph547:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.bk = ptrtoint ptr %i.as to i64               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph547, %bb.n
  %.054.i.i.i545 = phi i64 [ 0, %.lr.ph547 ], [ %.155.i.i.i, %bb.n ] ; 3 uses
  %.056.i.i.i544 = phi ptr [ %i.as, %.lr.ph547 ], [ %i.co, %bb.n ] ; 4 uses
  %i.bl = load <16 x i8>, ptr %.056.i.i.i544, align 1 ; 3 uses
  %i.bm = icmp ult <16 x i8> %i.bl, splat (i8 32)
  %i.bn = icmp eq <16 x i8> %i.bl, splat (i8 34)
  %i.bo = icmp eq <16 x i8> %i.bl, splat (i8 92)
  %i.bp = or <16 x i1> %i.bm, %i.bn
  %i.bq = or <16 x i1> %i.bo, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.k, !prof !36

bb.k:                                             ; preds = %bb.j
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
end_hunk_17
begin_hunk_18_@_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.hs:                                            ; preds = %bb.g
  %i.ame = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.amf = load i64, ptr %i.ame, align 8
  %i.amg = lshr i64 %i.amf, 32
  %i.amh = trunc i64 %i.amg to i8
  switch i8 %i.amh, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread402 [
    i8 0, label %bb.ht
    i8 1, label %bb.hv
    i8 3, label %bb.hx
  ]

bb.ht:                                            ; preds = %bb.hs
  %i.ami = load ptr, ptr %i.h, align 8
  %i.amj = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.amk = ptrtoint ptr %i.ami to i64
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = sub i64 %i.amk, %i.aml
  %.not.i182 = icmp ult i64 %i.amm, 9
  br i1 %.not.i182, label %bb.hu, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit183, !prof !32

bb.hu:                                            ; preds = %bb.ht
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 5)
  %.pre600 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit183

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit183: ; preds = %bb.ht, %bb.hu
  %i.amn = phi ptr [ %i.amj, %bb.ht ], [ %.pre600, %bb.hu ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.amn, align 2
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  store i16 101, ptr %i.amo, align 2
  %i.amp = load ptr, ptr %i.i, align 8
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 10
  store ptr %i.amq, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.hv:                                            ; preds = %bb.hs
  %i.amr = load ptr, ptr %i.h, align 8
  %i.ams = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.amt = ptrtoint ptr %i.amr to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %.not.i184 = icmp ult i64 %i.amv, 8
  br i1 %.not.i184, label %bb.hw, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit185, !prof !32

bb.hw:                                            ; preds = %bb.hv
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 4)
  %.pre599 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit185

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit185: ; preds = %bb.hv, %bb.hw
  %i.amw = phi ptr [ %i.ams, %bb.hv ], [ %.pre599, %bb.hw ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.amw, align 2
  %i.amx = load ptr, ptr %i.i, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr %i.amy, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.hx:                                            ; preds = %bb.hs
  %i.amz = load ptr, ptr %i.h, align 8
  %i.ana = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.anb = ptrtoint ptr %i.amz to i64
  %i.anc = ptrtoint ptr %i.ana to i64
  %i.and = sub i64 %i.anb, %i.anc
  %.not.i186 = icmp ult i64 %i.and, 8
  br i1 %.not.i186, label %bb.hy, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit187, !prof !32

bb.hy:                                            ; preds = %bb.hx
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 4)
  %.pre598 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit187

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit187: ; preds = %bb.hx, %bb.hy
  %i.ane = phi ptr [ %i.ana, %bb.hx ], [ %.pre598, %bb.hy ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.ane, align 2
  %i.anf = load ptr, ptr %i.i, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  store ptr %i.ang, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, %bb.hr, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit183, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit185, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit187, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit50.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i, %bb.g
  %.3.i.i.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit50.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit187 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit185 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit183 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i ], [ 0, %bb.hr ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26 ], [ 5, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread402: ; preds = %bb.hs, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.hz

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406.loopexit: ; preds = %bb.g
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406: ; preds = %bb.g, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406.loopexit
  %.3.i.i.ph405 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406.loopexit ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i: ; preds = %bb.g
  %i.anh = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.v, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %i.anh, label %bb.ie [
    i32 3, label %bb.hz
    i32 4, label %bb.ib
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 0, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.hz:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread402, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.ani = load ptr, ptr %i.h, align 8
  %i.anj = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.ank = ptrtoint ptr %i.ani to i64
  %i.anl = ptrtoint ptr %i.anj to i64
  %i.anm = sub i64 %i.ank, %i.anl
  %.not.i188 = icmp ult i64 %i.anm, 8
  br i1 %.not.i188, label %bb.ia, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, !prof !32

bb.ia:                                            ; preds = %bb.hz
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 4)
  %.pre601 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %bb.ia, %bb.hz
  %i.ann = phi ptr [ %.pre601, %bb.ia ], [ %i.anj, %bb.hz ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.ann, align 2
  %i.ano = load ptr, ptr %i.i, align 8
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  store ptr %i.anp, ptr %i.i, align 8
  br label %bb.if

bb.ib:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406
  %.3.i.i408 = phi i32 [ %.3.i.i.ph405, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread406 ], [ %i.anh, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.anh, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.anr = add nuw i32 %.122555, 1
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.ant = load ptr, ptr %i.ans, align 8          ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8
  %i.anw = icmp eq ptr %i.ant, %i.anv
  br i1 %i.anw, label %bb.ic, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.ic:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anq)
  %.pre.i.i = load ptr, ptr %i.ans, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.ic
  %i.anx = phi ptr [ %.pre.i.i, %bb.ic ], [ %i.ant, %.loopexit ] ; 5 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  store ptr %i.any, ptr %i.ans, align 8
  store i32 7, ptr %i.anx, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  store i64 %1, ptr %.sroa.5387.0..sroa_idx, align 8
  %.sroa.6388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  store i32 %i.anr, ptr %.sroa.6388.0..sroa_idx, align 8
  %.sroa.7389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anx, i64 20
  store i32 %3, ptr %.sroa.7389.0..sroa_idx, align 4
  %i.anz = add nsw i32 %.3.i.i408, -1
  %i.aoa = load ptr, ptr %i.ans, align 8          ; 2 uses
  %i.aob = load ptr, ptr %i.anu, align 8
  %i.aoc = icmp eq ptr %i.aoa, %i.aob
  br i1 %i.aoc, label %bb.id, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread413, !prof !32

bb.id:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anq)
  %.pre.i.i190 = load ptr, ptr %i.ans, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread413

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread413: ; preds = %bb.id, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  %i.aod = phi ptr [ %.pre.i.i190, %bb.id ], [ %i.aoa, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 32
  store ptr %i.aoe, ptr %i.ans, align 8
  store i32 %i.anz, ptr %i.aod, align 8
  %.sroa.5392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  store i64 %i.v, ptr %.sroa.5392.0..sroa_idx, align 8
  %.sroa.6393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  store i32 0, ptr %.sroa.6393.0..sroa_idx, align 8
  %.sroa.7394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aod, i64 20
  store i32 0, ptr %.sroa.7394.0..sroa_idx, align 4
  br label %.thread

bb.ie:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %.0.i = phi i32 [ %.3.i.i.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.anh, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.anh, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.anh, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not24 = icmp eq i32 %.0.i, 0
  br i1 %.not24, label %bb.if, label %.thread

bb.if:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.aof = add nuw i32 %.122555, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aof, %.020
  br i1 %exitcond.not, label %._crit_edge560, label %.lr.ph559, !llvm.loop !361

._crit_edge560:                                   ; preds = %bb.if, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.if ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %._crit_edge560
  %i.aog = load ptr, ptr %i.h, align 8
  %i.aoh = load ptr, ptr %i.i, align 8            ; 2 uses
  %.not.i192 = icmp eq ptr %i.aog, %i.aoh
  br i1 %.not.i192, label %bb.ih, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit193, !prof !32

bb.ih:                                            ; preds = %bb.ig
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef 1)
  %.pre623 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit193

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit193: ; preds = %bb.ig, %bb.ih
  %i.aoi = phi ptr [ %i.aoh, %bb.ig ], [ %.pre623, %bb.ih ] ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 2
  store ptr %i.aoj, ptr %i.i, align 8
  store i16 93, ptr %i.aoi, align 2
  br label %.thread

bb.ii:                                            ; preds = %._crit_edge560
  %i.aok = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aok, i32 %3)
  %i.aol = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.aom = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.aon = icmp ult i64 %i.aol, %i.aom
  br i1 %i.aon, label %bb.ij, label %.backedge

.backedge:                                        ; preds = %bb.ii, %bb.ij
  br label %bb.b, !llvm.loop !362

bb.ij:                                            ; preds = %bb.ii
  %i.aoo = load ptr, ptr %0, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aoq = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.aop, i32 noundef 0) #21
  %i.aor = load ptr, ptr %0, align 8
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 912
  %i.aot = load i64, ptr %i.aos, align 8
  %i.aou = icmp eq i64 %i.aoq, %i.aot
  br i1 %i.aou, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.ij, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread413, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit193
  %.4 = phi i32 [ %.0.i, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit193 ], [ %.3.i.i408, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread413 ], [ 6, %bb.ij ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = alloca [2200 x i8], align 16             ; 5 uses
  %i.c = alloca [2200 x i8], align 16             ; 5 uses
  %i.d = alloca [2200 x i8], align 16             ; 5 uses
  %i.e = alloca [11 x i8], align 1                ; 3 uses
  %4 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 6 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = add i32 %2, 4000
  %.sroa.speculated195 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %3)
  %i.h = add i64 %1, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 241 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated195, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.o = icmp ult i32 %.021, %.020
  br i1 %i.o, label %.lr.ph558, label %._crit_edge559

.lr.ph558:                                        ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread
  %.122554 = phi i32 [ %i.aoi, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ], [ %.021, %bb.b ] ; 5 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = sext i32 %.122554 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q ; 2 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 656
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph558
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not.i = icmp ult i64 %i.aa, 9
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 5)
  %.pre622.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre622 = phi ptr [ %i.x, %bb.c ], [ %.pre622.pre, %bb.d ] ; 3 uses
  %.not436 = icmp eq i32 %.122554, 0
  br i1 %.not436, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre622, i64 2
  store ptr %i.ab, ptr %i.l, align 8
  store i16 44, ptr %.pre622, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.f:                                             ; preds = %.lr.ph558
  %.not424 = icmp eq i32 %.122554, 0
  br i1 %.not424, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i25 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 1)
  %.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store ptr %i.af, ptr %i.l, align 8
  store i16 44, ptr %i.ae, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, %bb.f
  %i.ag = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ah = and i64 %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ak, ptr nonnull %i.e, i64 11) #21 ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0      ; 4 uses
  %i.an = extractvalue { i64, ptr } %i.al, 1
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 1
  %.not.i27 = icmp ugt i64 %i.am, %i.at
  br i1 %.not.i27, label %bb.j, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, !prof !32

bb.j:                                             ; preds = %bb.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.am)
  %.pre620 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28: ; preds = %bb.i, %bb.j
  %i.au = phi ptr [ %i.ap, %bb.i ], [ %.pre620, %bb.j ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.au, ptr noundef %i.an, i64 noundef %i.am)
  %i.av = load ptr, ptr %i.l, align 8
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.am
  store ptr %i.aw, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.k:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  %i.ax = add nsw i64 %i.ag, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 15 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  switch i16 %i.bc, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread [
    i16 8, label %bb.l
    i16 40, label %bb.l
    i16 10, label %bb.y
    i16 26, label %bb.y
    i16 42, label %bb.y
    i16 58, label %bb.y
    i16 45, label %bb.ao
    i16 0, label %bb.bs
    i16 32, label %bb.bs
    i16 2, label %bb.cw
    i16 18, label %bb.cw
    i16 34, label %bb.cw
    i16 50, label %bb.cw
    i16 37, label %bb.ed
    i16 130, label %bb.gp
    i16 131, label %bb.gq
    i16 128, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread400
    i16 1041, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
    i16 1057, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404.loopexit
    i16 2119, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = zext i32 %i.bf to i64                   ; 13 uses
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = or disjoint i64 %i.bh, 2                ; 2 uses
  %i.bj = load ptr, ptr %i.k, align 8
  %i.bk = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 1
  %.not.i29 = icmp ugt i64 %i.bi, %i.bo
  br i1 %.not.i29, label %bb.m, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30, !prof !32

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.bi)
  %.pre617 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30: ; preds = %bb.l, %bb.m
  %i.bp = phi ptr [ %i.bk, %bb.l ], [ %.pre617, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store ptr %i.bq, ptr %i.l, align 8
  store i16 34, ptr %i.bp, align 2
  %i.br = icmp ugt i32 %i.bf, 31
  br i1 %i.br, label %.lr.ph546, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30
  %i.bs = icmp samesign ugt i32 %i.bf, 3
  br i1 %i.bs, label %.lr.ph539.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i
end_hunk_18
begin_hunk_19_@_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.amj = load i64, ptr %i.ami, align 8
  %i.amk = lshr i64 %i.amj, 32
  %i.aml = trunc i64 %i.amk to i8
  switch i8 %i.aml, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread400 [
    i8 0, label %bb.gr
    i8 1, label %bb.gt
    i8 3, label %bb.gv
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.amm = load ptr, ptr %i.k, align 8
  %i.amn = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.amo = ptrtoint ptr %i.amm to i64
  %i.amp = ptrtoint ptr %i.amn to i64
  %i.amq = sub i64 %i.amo, %i.amp
  %.not.i179 = icmp ult i64 %i.amq, 9
  br i1 %.not.i179, label %bb.gs, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit180, !prof !32

bb.gs:                                            ; preds = %bb.gr
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 5)
  %.pre598 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit180

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit180: ; preds = %bb.gr, %bb.gs
  %i.amr = phi ptr [ %i.amn, %bb.gr ], [ %.pre598, %bb.gs ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.amr, align 2
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  store i16 101, ptr %i.ams, align 2
  %i.amt = load ptr, ptr %i.l, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 10
  store ptr %i.amu, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.gt:                                            ; preds = %bb.gq
  %i.amv = load ptr, ptr %i.k, align 8
  %i.amw = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.amx = ptrtoint ptr %i.amv to i64
  %i.amy = ptrtoint ptr %i.amw to i64
  %i.amz = sub i64 %i.amx, %i.amy
  %.not.i181 = icmp ult i64 %i.amz, 8
  br i1 %.not.i181, label %bb.gu, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit182, !prof !32

bb.gu:                                            ; preds = %bb.gt
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 4)
  %.pre597 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit182

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit182: ; preds = %bb.gt, %bb.gu
  %i.ana = phi ptr [ %i.amw, %bb.gt ], [ %.pre597, %bb.gu ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.ana, align 2
  %i.anb = load ptr, ptr %i.l, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  store ptr %i.anc, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.gv:                                            ; preds = %bb.gq
  %i.and = load ptr, ptr %i.k, align 8
  %i.ane = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.anf = ptrtoint ptr %i.and to i64
  %i.ang = ptrtoint ptr %i.ane to i64
  %i.anh = sub i64 %i.anf, %i.ang
  %.not.i183 = icmp ult i64 %i.anh, 8
  br i1 %.not.i183, label %bb.gw, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184, !prof !32

bb.gw:                                            ; preds = %bb.gv
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 4)
  %.pre596 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184: ; preds = %bb.gv, %bb.gw
  %i.ani = phi ptr [ %i.ane, %bb.gv ], [ %.pre596, %bb.gw ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.ani, align 2
  %i.anj = load ptr, ptr %i.l, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  store ptr %i.ank, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, %bb.gp, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit180, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit182, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit52.i, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i, %bb.k
  %.3.i.i.ph = phi i32 [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit52.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit182 ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit180 ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i ], [ 0, %bb.gp ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28 ], [ 5, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread400: ; preds = %bb.gq, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.gx

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404.loopexit: ; preds = %bb.k
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404: ; preds = %bb.k, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404.loopexit
  %.3.i.i.ph403 = phi i32 [ 1, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404.loopexit ], [ 2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i: ; preds = %bb.k
  %i.anl = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %i.anl, label %bb.hc [
    i32 3, label %bb.gx
    i32 4, label %bb.gz
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 0, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 5, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
    i32 6, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  ]

bb.gx:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread400, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  %i.anm = load ptr, ptr %i.k, align 8
  %i.ann = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.ano = ptrtoint ptr %i.anm to i64
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %.not.i185 = icmp ult i64 %i.anq, 8
  br i1 %.not.i185, label %bb.gy, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, !prof !32

bb.gy:                                            ; preds = %bb.gx
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 4)
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split

bb.gz:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

.loopexit:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404
  %.3.i.i406 = phi i32 [ %.3.i.i.ph403, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread404 ], [ %i.anl, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.anl, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ans = add nuw i32 %.122554, 1
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.anu = load ptr, ptr %i.ant, align 8          ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 8
  %i.anx = icmp eq ptr %i.anu, %i.anw
  br i1 %i.anx, label %bb.ha, label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit, !prof !32

bb.ha:                                            ; preds = %.loopexit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anr)
  %.pre.i.i = load ptr, ptr %i.ant, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit: ; preds = %.loopexit, %bb.ha
  %i.any = phi ptr [ %.pre.i.i, %bb.ha ], [ %i.anu, %.loopexit ] ; 5 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 32
  store ptr %i.anz, ptr %i.ant, align 8
  store i32 8, ptr %i.any, align 8
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  store i64 %1, ptr %.sroa.5385.0..sroa_idx, align 8
  %.sroa.6386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  store i32 %i.ans, ptr %.sroa.6386.0..sroa_idx, align 8
  %.sroa.7387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 20
  store i32 %3, ptr %.sroa.7387.0..sroa_idx, align 4
  %i.aoa = add nsw i32 %.3.i.i406, -1
  %i.aob = load ptr, ptr %i.ant, align 8          ; 2 uses
  %i.aoc = load ptr, ptr %i.anv, align 8
  %i.aod = icmp eq ptr %i.aob, %i.aoc
  br i1 %i.aod, label %bb.hb, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread411, !prof !32

bb.hb:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.anr)
  %.pre.i.i187 = load ptr, ptr %i.ant, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread411

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread411: ; preds = %bb.hb, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit
  %i.aoe = phi ptr [ %.pre.i.i187, %bb.hb ], [ %i.aob, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit ] ; 5 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32
  store ptr %i.aof, ptr %i.ant, align 8
  store i32 %i.aoa, ptr %i.aoe, align 8
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  store i64 %i.ag, ptr %.sroa.5390.0..sroa_idx, align 8
  %.sroa.6391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16
  store i32 0, ptr %.sroa.6391.0..sroa_idx, align 8
  %.sroa.7392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 20
  store i32 0, ptr %.sroa.7392.0..sroa_idx, align 4
  br label %.thread

bb.hc:                                            ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread
  %.1.i = phi i32 [ %i.anl, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %.3.i.i.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread ], [ %i.anl, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.anl, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ] ; 2 uses
  %.not24 = icmp eq i32 %.1.i, 0
  br i1 %.not24, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.e, %bb.gy
  %.pre599 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.gx, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %.sink = phi ptr [ %.pre622, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %i.ann, %bb.gx ], [ %.pre599, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.sink, align 2
  %i.aog = load ptr, ptr %i.l, align 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  store ptr %i.aoh, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.aoi = add nuw i32 %.122554, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aoi, %.020
  br i1 %exitcond.not, label %._crit_edge559, label %.lr.ph558, !llvm.loop !363

._crit_edge559:                                   ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %._crit_edge559
  %i.aoj = load ptr, ptr %i.k, align 8
  %i.aok = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i189 = icmp eq ptr %i.aoj, %i.aok
  br i1 %.not.i189, label %bb.he, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit190, !prof !32

bb.he:                                            ; preds = %bb.hd
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef 1)
  %.pre623 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit190

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit190: ; preds = %bb.hd, %bb.he
  %i.aol = phi ptr [ %i.aok, %bb.hd ], [ %.pre623, %bb.he ] ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 2
  store ptr %i.aom, ptr %i.l, align 8
  store i16 93, ptr %i.aol, align 2
  br label %.thread

bb.hf:                                            ; preds = %._crit_edge559
  %i.aon = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.aon, i32 %3)
  %i.aoo = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.aop = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.aoq = icmp ult i64 %i.aoo, %i.aop
  br i1 %i.aoq, label %bb.hg, label %.backedge

.backedge:                                        ; preds = %bb.hf, %bb.hg
  br label %bb.b, !llvm.loop !364

bb.hg:                                            ; preds = %bb.hf
  %i.aor = load ptr, ptr %0, align 8
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.aot = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.aos, i32 noundef 0) #21
  %i.aou = load ptr, ptr %0, align 8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 912
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = icmp eq i64 %i.aot, %i.aow
  br i1 %i.aox, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.hg, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread411, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit190
  %.4 = phi i32 [ %.1.i, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit190 ], [ %.3.i.i406, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread411 ], [ 6, %bb.hg ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE10CheckCycleEv(ptr noundef nonnull align 8 dereferenceable(1200) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set.808", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not31.not = icmp eq ptr %i.i, %i.j
  br i1 %.not31.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.l = phi ptr [ %i.j, %.lr.ph ], [ %i.aj, %bb.i ] ; 2 uses
  %i.m = phi ptr [ %i.i, %.lr.ph ], [ %i.ak, %bb.i ]
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.i ]
  %.0732 = phi i32 [ 0, %.lr.ph ], [ %i.al, %bb.i ]
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %i.o, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8 ; 5 uses
  %.sroa.018.0.copyload.off = add i32 %.sroa.018.0.copyload, -9
  %switch = icmp ult i32 %.sroa.018.0.copyload.off, 2
  br i1 %switch, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.k, align 8
  %.not.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 3 uses
  %i.q = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %.sroa.520.0.copyload, %i.s
  br i1 %i.t, label %.critedge, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = urem i64 %.sroa.520.0.copyload, %i.u     ; 2 uses
  %i.w = load ptr, ptr %2, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %.sroa.520.0.copyload, %i.ab
  br i1 %i.ac, label %.critedge, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %.sroa.520.0.copyload, %i.ag
  br i1 %i.ad, label %.critedge, label %.lr.ph.i.i.i.i, !llvm.loop !18

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !18

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %.sroa.520.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %2, ptr %1, align 8
  %i.ai = call { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueImmNS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load ptr, ptr %i.h, align 8
  %.pre39 = load ptr, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit
  %i.aj = phi ptr [ %i.l, %bb.b ], [ %.pre39, %.loopexit ] ; 2 uses
  %i.ak = phi ptr [ %i.m, %bb.b ], [ %.pre, %.loopexit ] ; 2 uses
  %i.al = add i32 %.0732, 1                       ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %.not = icmp ugt i64 %i.aq, %i.am
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !365

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.g, %bb.d, %bb.a
  %.not30 = phi i1 [ true, %bb.g ], [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.i ], [ true, %bb.f ]
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.critedge, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i12 ], [ %i.ar, %.critedge ] ; 2 uses
  %i.as = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #25
  %.not.i.i.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i12, !llvm.loop !19

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i12, %.critedge
  %i.at = load ptr, ptr %2, align 8
  %i.au = load i64, ptr %i.c, align 8
  %i.av = shl i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.b
  br i1 %i.ax, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ay = load i64, ptr %i.c, align 8
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #25
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %.not30
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_16SeqTwoByteStringELb1EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = add nuw nsw i64 %i.f, 4                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 10 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.p, i64 noundef %i.g)
  %.pre12.pre = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %.pre12 = phi ptr [ %i.k, %bb.a ], [ %.pre12.pre, %bb.b ] ; 3 uses
  br i1 %2, label %bb.c, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

bb.c:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.pre12, i64 2
  store ptr %i.q, ptr %i.j, align 8
  store i16 44, ptr %.pre12, align 2
  %.pre = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.c
  %i.r = phi ptr [ %.pre12, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.j, align 8
  store i16 34, ptr %i.r, align 2
  %i.t = load ptr, ptr %i.j, align 8              ; 17 uses
  switch i32 %i.e, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
    i32 14, label %bb.q
    i32 15, label %bb.r
    i32 16, label %bb.s
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.d:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.u = load i16, ptr %i.c, align 4
  store i16 %i.u, ptr %i.t, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.e:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.v = load i32, ptr %i.c, align 4
  store i32 %i.v, ptr %i.t, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.f:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.t, ptr noundef nonnull align 4 dereferenceable(6) %i.c, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.g:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.w = load i64, ptr %i.c, align 4
  store i64 %i.w, ptr %i.t, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.t, ptr noundef nonnull align 4 dereferenceable(10) %i.c, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.t, ptr noundef nonnull align 4 dereferenceable(14) %i.c, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.t, ptr noundef nonnull align 4 dereferenceable(18) %i.c, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.t, ptr noundef nonnull align 4 dereferenceable(22) %i.c, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.t, ptr noundef nonnull align 4 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.t, ptr noundef nonnull align 4 dereferenceable(26) %i.c, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.t, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.t, ptr noundef nonnull align 4 dereferenceable(30) %i.c, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.t, ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %.idx.i.i.i.i = shl nuw nsw i64 %i.f, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.t, ptr nonnull align 4 %i.c, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.f ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store ptr %i.z, ptr %i.j, align 8
  store i16 34, ptr %i.y, align 2
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.j, align 8
  store i16 58, ptr %i.aa, align 2
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_21ExternalTwoByteStringELb1EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.f = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = and i16 %i.i, 16
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.b

end_hunk_19
begin_hunk_20_@_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_21ExternalTwoByteStringELb1EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE:bb.a
_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.e
  %.pre12 = phi ptr [ %i.ab, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre12.pre, %bb.e ] ; 3 uses
  br i1 %2, label %bb.f, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

bb.f:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre12, i64 2
  store ptr %i.ah, ptr %i.aa, align 8
  store i16 44, ptr %.pre12, align 2
  %.pre = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.f
  %i.ai = phi ptr [ %.pre12, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.aj, ptr %i.aa, align 8
  store i16 34, ptr %i.ai, align 2
  %i.ak = load ptr, ptr %i.aa, align 8            ; 17 uses
  switch i32 %i.v, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
    i32 14, label %bb.t
    i32 15, label %bb.u
    i32 16, label %bb.v
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.g:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.al = load i16, ptr %.0.i, align 2
  store i16 %i.al, ptr %i.ak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.h:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.am = load i32, ptr %.0.i, align 2
  store i32 %i.am, ptr %i.ak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ak, ptr noundef nonnull align 2 dereferenceable(6) %.0.i, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.j:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %i.an = load i64, ptr %.0.i, align 2
  store i64 %i.an, ptr %i.ak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.k:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ak, ptr noundef nonnull align 2 dereferenceable(10) %.0.i, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.l:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ak, ptr noundef nonnull align 2 dereferenceable(12) %.0.i, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.m:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ak, ptr noundef nonnull align 2 dereferenceable(14) %.0.i, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.n:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ak, ptr noundef nonnull align 2 dereferenceable(16) %.0.i, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.o:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ak, ptr noundef nonnull align 2 dereferenceable(18) %.0.i, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.p:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.ak, ptr noundef nonnull align 2 dereferenceable(20) %.0.i, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.ak, ptr noundef nonnull align 2 dereferenceable(22) %.0.i, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ak, ptr noundef nonnull align 2 dereferenceable(24) %.0.i, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.ak, ptr noundef nonnull align 2 dereferenceable(26) %.0.i, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.ak, ptr noundef nonnull align 2 dereferenceable(28) %.0.i, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.ak, ptr noundef nonnull align 2 dereferenceable(30) %.0.i, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ak, ptr noundef nonnull align 2 dereferenceable(32) %.0.i, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %.idx.i.i.i.i = shl nuw nsw i64 %i.w, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ak, ptr nonnull align 2 %.0.i, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.ao = load ptr, ptr %i.aa, align 8
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.w ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.aa, align 8
  store i16 34, ptr %i.ap, align 2
  %i.ar = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.aa, align 8
  store i16 58, ptr %i.ar, align 2
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE0EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated33 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = add i64 %1, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated33, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.12256 = phi i32 [ %i.ag, %bb.f ], [ %.021, %bb.b ] ; 3 uses
  %.not55 = icmp eq i32 %.12256, 0
  br i1 %.not55, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.f, i64 noundef 1)
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.o, ptr %i.e, align 8
  store i16 44, ptr %i.n, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit: ; preds = %.lr.ph, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.p = sext i32 %.12256 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.t, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0        ; 4 uses
  %i.w = extractvalue { i64, ptr } %i.u, 1
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1
  %.not.i25 = icmp ugt i64 %i.v, %i.ac
  br i1 %.not.i25, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.f, i64 noundef %i.v)
  %.pre57 = load ptr, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit
  %i.ad = phi ptr [ %.pre57, %bb.e ], [ %i.y, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ad, ptr noundef %i.w, i64 noundef %i.v)
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.v
  store ptr %i.af, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ag = add i32 %.12256, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !366

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.f ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %i.d, align 8
  %i.ai = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i27 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i27, label %bb.h, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, !prof !32

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.f, i64 noundef 1)
  %.pre58 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28: ; preds = %bb.g, %bb.h
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %.pre58, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ak, ptr %i.e, align 8
  store i16 93, ptr %i.aj, align 2
  br label %.thread

bb.i:                                             ; preds = %._crit_edge
  %i.al = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.al, i32 %3)
  %i.am = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.an = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %.backedge

.backedge:                                        ; preds = %bb.i, %bb.j
  br label %bb.b, !llvm.loop !367

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i32 noundef 0) #21
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 912
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp eq i64 %i.ar, %i.au
  br i1 %i.av, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.j, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28 ], [ 6, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE4EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = add i32 %2, 4000
  %.sroa.speculated31 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = add i64 %1, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated31, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.j = icmp ult i32 %.021, %.020
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.12250 = phi i32 [ %i.q, %bb.e ], [ %.021, %bb.b ] ; 3 uses
  %.not49 = icmp eq i32 %.12250, 0
  br i1 %.not49, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.e, i64 noundef 1)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.n, ptr %i.d, align 8
  store i16 44, ptr %i.m, align 2
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %.lr.ph
  %i.o = sext i32 %.12250 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  %.0.copyload.i.i.i.i = load double, ptr %i.p, align 1
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i)
  %i.q = add i32 %.12250, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !368

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %bb.e ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i25 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i25, label %bb.g, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, !prof !32

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.e, i64 noundef 1)
  %.pre51 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26: ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.f ], [ %.pre51, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %i.d, align 8
  store i16 93, ptr %i.t, align 2
  br label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.v = add i32 %.020, 4000
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %3)
  %i.w = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.x = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.i
  br label %bb.b, !llvm.loop !369

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i32 noundef 0) #21
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 912
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.i, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26 ], [ 6, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE1EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = add i32 %2, 4000
  %.sroa.speculated35 = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %3)
  %i.d = add i64 %1, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated35, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.k = icmp ult i32 %.021, %.020
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.12260 = phi i32 [ %i.au, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.021, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = sext i32 %.12260 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 656
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i = icmp ult i64 %i.w, 9
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 noundef 5)
  %.pre63.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre63 = phi ptr [ %i.t, %bb.c ], [ %.pre63.pre, %bb.d ] ; 3 uses
  %.not59 = icmp eq i32 %.12260, 0
  br i1 %.not59, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pre63, i64 2
  store ptr %i.x, ptr %i.h, align 8
  store i16 44, ptr %.pre63, align 2
  %.pre62 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i: ; preds = %bb.e, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.y = phi ptr [ %.pre62, %bb.e ], [ %.pre63, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.y, align 2
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.h, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.f:                                             ; preds = %.lr.ph
  %.not58 = icmp eq i32 %.12260, 0
  br i1 %.not58, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i25 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 noundef 1)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.h, align 8
  store i16 44, ptr %i.ad, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, %bb.f
  %i.af = load atomic volatile i64, ptr %i.n monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.ah, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0      ; 4 uses
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  %i.al = load ptr, ptr %i.g, align 8
  %i.am = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 1
  %.not.i27 = icmp ugt i64 %i.aj, %i.aq
  br i1 %.not.i27, label %bb.i, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, !prof !32

bb.i:                                             ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 noundef %i.aj)
  %.pre61 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28: ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, %bb.i
  %i.ar = phi ptr [ %i.am, %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i ], [ %.pre61, %bb.i ]
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ar, ptr noundef %i.ak, i64 noundef %i.aj)
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aj
  store ptr %i.at, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i
  %i.au = add i32 %.12260, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !370

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE1ELb1ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.g, align 8
  %i.aw = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i29 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i29, label %bb.k, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30, !prof !32

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 noundef 1)
  %.pre64 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30: ; preds = %bb.j, %bb.k
  %i.ax = phi ptr [ %i.aw, %bb.j ], [ %.pre64, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store ptr %i.ay, ptr %i.h, align 8
  store i16 93, ptr %i.ax, align 2
  br label %.thread

bb.l:                                             ; preds = %._crit_edge
  %i.az = add i32 %.020, 4000
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.az, i32 %3)
  %i.ba = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.bb = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.m
  br label %bb.b, !llvm.loop !371

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i32 noundef 0) #21
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 912
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp eq i64 %i.bf, %i.bi
  br i1 %i.bj, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.m, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit30 ], [ 6, %bb.m ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE5EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = add i32 %2, 4000
  %.sroa.speculated33 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3)
  %i.c = add i64 %1, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi i32 [ %2, %bb.a ], [ %.122.lcssa, %.backedge ] ; 3 uses
  %.020 = phi i32 [ %.sroa.speculated33, %bb.a ], [ %.sroa.speculated, %.backedge ] ; 4 uses
  %i.j = icmp ult i32 %.021, %.020
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %.12254 = phi i32 [ %i.ab, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.021, %bb.b ] ; 4 uses
  %i.k = sext i32 %.12254 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 1 ; 2 uses
  %i.m = icmp eq i64 %.0.copyload.i.i.i.i.i.i, -2251799814209537
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i = icmp ult i64 %i.r, 9
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.h, i64 noundef 5)
  %.pre57.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.c, %bb.d
  %.pre57 = phi ptr [ %i.o, %bb.c ], [ %.pre57.pre, %bb.d ] ; 3 uses
  %.not53 = icmp eq i32 %.12254, 0
  br i1 %.not53, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pre57, i64 2
  store ptr %i.s, ptr %i.g, align 8
  store i16 44, ptr %.pre57, align 2
  %.pre56 = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i: ; preds = %bb.e, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.t = phi ptr [ %.pre56, %bb.e ], [ %.pre57, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %i.t, align 2
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

bb.f:                                             ; preds = %.lr.ph
  %i.w = bitcast i64 %.0.copyload.i.i.i.i.i.i to double
  %.not52 = icmp eq i32 %.12254, 0
  br i1 %.not52, label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i25 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i25, label %bb.h, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, !prof !32

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.h, i64 noundef 1)
  %.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26: ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.aa, ptr %i.g, align 8
  store i16 44, ptr %i.z, align 2
  %.0.copyload.i.i.i.i.pre = load double, ptr %i.l, align 1
  br label %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i

_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26, %bb.f
  %.0.copyload.i.i.i.i = phi double [ %.0.copyload.i.i.i.i.pre, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit26 ], [ %i.w, %bb.f ]
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE9SeparatorEb.exit.i, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit.i
  %i.ab = add i32 %.12254, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %.020
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !372

._crit_edge:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.b
  %.122.lcssa = phi i32 [ %.021, %bb.b ], [ %.020, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE5ELb1ENS0_16FixedDoubleArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %.not = icmp ult i32 %.122.lcssa, %3
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i27 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i27, label %bb.j, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.h, i64 noundef 1)
  %.pre58 = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28: ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ %.pre58, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store ptr %i.af, ptr %i.g, align 8
  store i16 93, ptr %i.ae, align 2
  br label %.thread

bb.k:                                             ; preds = %._crit_edge
  %i.ag = add i32 %.020, 4000
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %3)
  %i.ah = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #21
  %i.ai = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.l, label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.l
  br label %bb.b, !llvm.loop !373

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = tail call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i32 noundef 0) #21
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 912
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.am, %i.ap
  br i1 %i.aq, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.l, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28
  %.4 = phi i32 [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit28 ], [ 6, %bb.l ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9OutBufferIhE6CopyToIhEEvPT_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 35 uses
  br i1 %i.c, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  switch i64 %i.f, label %bb.s [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 8
  store i8 %i.g, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.d, align 8
  store i16 %i.h, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 8 dereferenceable(3) %i.d, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8
  store i32 %i.i, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(5) %i.d, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(6) %i.d, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 8 dereferenceable(7) %i.d, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8
  store i64 %i.j, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(9) %i.d, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.d, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(13) %i.d, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(14) %i.d, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(15) %i.d, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.s:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %i.f, 1
  br i1 %i.k, label %bb.t, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !36

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 8 %i.d, i64 %i.f, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.l = load i64, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.am

._crit_edge:                                      ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %.0.lcssa = phi ptr [ %i.m, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ], [ %i.ap, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13 ] ; 17 uses
  %.lcssa = phi i32 [ %i.p, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ], [ %i.aq, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13 ]
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = sext i32 %.lcssa to i64
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8 ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  switch i64 %i.aa, label %bb.ak [
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.x
    i64 5, label %bb.y
    i64 6, label %bb.z
    i64 7, label %bb.aa
    i64 8, label %bb.ab
    i64 9, label %bb.ac
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ag
    i64 14, label %bb.ah
    i64 15, label %bb.ai
    i64 16, label %bb.aj
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12
  ]

bb.u:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %.sroa.0.0.copyload, align 1
  store i8 %i.ab, ptr %.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.v:                                             ; preds = %._crit_edge
  %i.ac = load i16, ptr %.sroa.0.0.copyload, align 1
  store i16 %i.ac, ptr %.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.w:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.0.copyload, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.x:                                             ; preds = %._crit_edge
  %i.ad = load i32, ptr %.sroa.0.0.copyload, align 1
  store i32 %i.ad, ptr %.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.y:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.0.copyload, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.z:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.0.0.copyload, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.0.copyload, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ab:                                            ; preds = %._crit_edge
  %i.ae = load i64, ptr %.sroa.0.0.copyload, align 1
  store i64 %i.ae, ptr %.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ac:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.0.0.copyload, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ad:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.0.0.copyload, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ae:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.0.0.copyload, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.af:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.0.copyload, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ag:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.0.0.copyload, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ah:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(14) %.sroa.0.0.copyload, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ai:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.0.copyload, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.aj:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.copyload, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.ak:                                            ; preds = %._crit_edge
  %i.af = icmp sgt i64 %i.aa, 1
  br i1 %i.af, label %bb.al, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12, !prof !36

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.lcssa, ptr nonnull align 1 %.sroa.0.0.copyload, i64 %i.aa, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.am:                                            ; preds = %.lr.ph, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13 ] ; 2 uses
  %.022 = phi ptr [ %i.m, %.lr.ph ], [ %i.ap, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13 ] ; 18 uses
  %i.ag = load i8, ptr %i.r, align 8, !range !33, !noundef !34
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit: ; preds = %bb.am
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %.sroa.015.0.copyload = load ptr, ptr %i.aj, align 8 ; 17 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 4 uses
  switch i64 %.sroa.416.0.copyload, label %bb.be [
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %bb.ar
    i64 5, label %bb.as
    i64 6, label %bb.at
    i64 7, label %bb.au
    i64 8, label %bb.av
    i64 9, label %bb.aw
    i64 10, label %bb.ax
    i64 11, label %bb.ay
    i64 12, label %bb.az
    i64 13, label %bb.ba
    i64 14, label %bb.bb
    i64 15, label %bb.bc
    i64 16, label %bb.bd
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13
  ]

bb.ao:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %i.ak = load i8, ptr %.sroa.015.0.copyload, align 1
  store i8 %i.ak, ptr %.022, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.ap:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %i.al = load i16, ptr %.sroa.015.0.copyload, align 1
  store i16 %i.al, ptr %.022, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.aq:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.022, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.015.0.copyload, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.ar:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %i.am = load i32, ptr %.sroa.015.0.copyload, align 1
  store i32 %i.am, ptr %.022, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.as:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.022, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.015.0.copyload, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.at:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.022, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.015.0.copyload, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.au:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.022, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.015.0.copyload, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.av:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %i.an = load i64, ptr %.sroa.015.0.copyload, align 1
  store i64 %i.an, ptr %.022, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.aw:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.022, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.015.0.copyload, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.ax:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.022, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.015.0.copyload, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.ay:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.022, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.015.0.copyload, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.az:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.022, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.015.0.copyload, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.ba:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.022, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.015.0.copyload, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.bb:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.022, ptr noundef nonnull align 1 dereferenceable(14) %.sroa.015.0.copyload, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.bc:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.022, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.015.0.copyload, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.bd:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.022, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.015.0.copyload, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

bb.be:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %i.ao = icmp sgt i64 %.sroa.416.0.copyload, 1
  br i1 %i.ao, label %bb.bf, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13, !prof !36

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.022, ptr nonnull align 1 %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit13:  ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf
  %i.ap = getelementptr inbounds nuw i8, ptr %.022, i64 %.sroa.416.0.copyload ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.am, label %._crit_edge, !llvm.loop !374

bb.bg:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.d to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  switch i64 %i.ay, label %bb.bx [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
    i64 3, label %bb.bj
    i64 4, label %bb.bk
    i64 5, label %bb.bl
    i64 6, label %bb.bm
    i64 7, label %bb.bn
    i64 8, label %bb.bo
    i64 9, label %bb.bp
    i64 10, label %bb.bq
    i64 11, label %bb.br
    i64 12, label %bb.bs
    i64 13, label %bb.bt
    i64 14, label %bb.bu
    i64 15, label %bb.bv
    i64 16, label %bb.bw
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.az = load i8, ptr %i.d, align 8
  store i8 %i.az, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bi:                                            ; preds = %bb.bg
  %i.ba = load i16, ptr %i.d, align 8
  store i16 %i.ba, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bj:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 8 dereferenceable(3) %i.d, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bk:                                            ; preds = %bb.bg
  %i.bb = load i32, ptr %i.d, align 8
  store i32 %i.bb, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bl:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(5) %i.d, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bm:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(6) %i.d, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bn:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 8 dereferenceable(7) %i.d, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bo:                                            ; preds = %bb.bg
  %i.bc = load i64, ptr %i.d, align 8
  store i64 %i.bc, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bp:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(9) %i.d, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bq:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.br:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.d, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bs:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bt:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(13) %i.d, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bu:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(14) %i.d, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bv:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(15) %i.d, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bw:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

bb.bx:                                            ; preds = %bb.bg
  %i.bd = icmp sgt i64 %i.ay, 1
  br i1 %i.bd, label %bb.by, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12, !prof !36

bb.by:                                            ; preds = %bb.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit12:  ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9OutBufferIhE6CopyToItEEvPT_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %1, ptr noundef %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit, %bb.b
  %.0.lcssa = phi ptr [ %i.h, %bb.b ], [ %i.aa, %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit ]
  %.lcssa = phi i32 [ %i.k, %bb.b ], [ %i.ab, %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit ]
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = sext i32 %.lcssa to i64
  %i.p = getelementptr [16 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.0.lcssa, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.v)
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit ] ; 2 uses
  %.019 = phi ptr [ %i.h, %.lr.ph ], [ %i.aa, %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit ] ; 2 uses
  %i.w = load i8, ptr %i.m, align 8, !range !33, !noundef !34
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorIhEEEEE5valueEv.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.z, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.019, ptr noundef %.sroa.012.0.copyload, i64 noundef %.sroa.413.0.copyload)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.019, i64 %.sroa.413.0.copyload ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.c, label %._crit_edge, !llvm.loop !375

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.d to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %1, ptr noundef %i.d, i64 noundef %i.aj)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9OutBufferItE6CopyToItEEvPT_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 35 uses
  br i1 %i.c, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  switch i64 %i.f, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %i.d, align 8
  store i16 %i.g, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 8
  store i32 %i.h, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(6) %i.d, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8
  store i64 %i.i, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(14) %i.d, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %i.d, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(22) %i.d, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(26) %i.d, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.d, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(30) %i.d, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b
  %.idx.i.i.i = shl nuw nsw i64 %i.f, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %1, ptr nonnull align 8 %i.d, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i
  %i.j = load i64, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.0.lcssa = phi ptr [ %i.k, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ], [ %i.ak, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17 ] ; 17 uses
  %.lcssa = phi i32 [ %i.n, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ], [ %i.al, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17 ]
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = sext i32 %.lcssa to i64
  %i.s = getelementptr [16 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 1
  switch i64 %i.z, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i12 [
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
    i64 5, label %bb.w
    i64 6, label %bb.x
    i64 7, label %bb.y
    i64 8, label %bb.z
    i64 9, label %bb.aa
    i64 10, label %bb.ab
    i64 11, label %bb.ac
    i64 12, label %bb.ad
    i64 13, label %bb.ae
    i64 14, label %bb.af
    i64 15, label %bb.ag
    i64 16, label %bb.ah
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14
  ]

bb.s:                                             ; preds = %._crit_edge
  %i.aa = load i16, ptr %.sroa.0.0.copyload, align 2
  store i16 %i.aa, ptr %.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.t:                                             ; preds = %._crit_edge
  %i.ab = load i32, ptr %.sroa.0.0.copyload, align 2
  store i32 %i.ab, ptr %.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.u:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0.0.copyload, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.v:                                             ; preds = %._crit_edge
  %i.ac = load i64, ptr %.sroa.0.0.copyload, align 2
  store i64 %i.ac, ptr %.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.w:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.0.0.copyload, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(12) %.sroa.0.0.copyload, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.y:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.0.0.copyload, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.z:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.0.0.copyload, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.0.0.copyload, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ab:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(20) %.sroa.0.0.copyload, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ac:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.0.0.copyload, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ad:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(24) %.sroa.0.0.copyload, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ae:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.0.0.copyload, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.af:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.0.0.copyload, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ag:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0.0.copyload, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ah:                                            ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.0.lcssa, ptr noundef nonnull align 2 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i12: ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.0.lcssa, ptr nonnull align 2 %.sroa.0.0.copyload, i64 %i.y, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.ai:                                            ; preds = %.lr.ph, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17 ] ; 2 uses
  %.028 = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17 ] ; 18 uses
  %i.ad = load i8, ptr %i.p, align 8, !range !33, !noundef !34
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit: ; preds = %bb.ai
  %i.af = load ptr, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.ag, align 8 ; 17 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.422.0.copyload, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i15 [
    i64 1, label %bb.ak
    i64 2, label %bb.al
    i64 3, label %bb.am
    i64 4, label %bb.an
    i64 5, label %bb.ao
    i64 6, label %bb.ap
    i64 7, label %bb.aq
    i64 8, label %bb.ar
    i64 9, label %bb.as
    i64 10, label %bb.at
    i64 11, label %bb.au
    i64 12, label %bb.av
    i64 13, label %bb.aw
    i64 14, label %bb.ax
    i64 15, label %bb.ay
    i64 16, label %bb.az
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17
  ]

bb.ak:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  %i.ah = load i16, ptr %.sroa.021.0.copyload, align 2
  store i16 %i.ah, ptr %.028, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.al:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  %i.ai = load i32, ptr %.sroa.021.0.copyload, align 2
  store i32 %i.ai, ptr %.028, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.am:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.028, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.021.0.copyload, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.an:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  %i.aj = load i64, ptr %.sroa.021.0.copyload, align 2
  store i64 %i.aj, ptr %.028, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.ao:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.028, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.021.0.copyload, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.ap:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.028, ptr noundef nonnull align 2 dereferenceable(12) %.sroa.021.0.copyload, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.aq:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.028, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.021.0.copyload, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.ar:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.028, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.021.0.copyload, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.as:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.028, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.021.0.copyload, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.at:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.028, ptr noundef nonnull align 2 dereferenceable(20) %.sroa.021.0.copyload, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.au:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.028, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.021.0.copyload, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.av:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.028, ptr noundef nonnull align 2 dereferenceable(24) %.sroa.021.0.copyload, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.aw:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.028, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.021.0.copyload, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.ax:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.028, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.021.0.copyload, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.ay:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.028, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.021.0.copyload, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

bb.az:                                            ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.028, ptr noundef nonnull align 2 dereferenceable(32) %.sroa.021.0.copyload, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i15: ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit
  %.idx.i.i.i16 = shl nuw nsw i64 %.sroa.422.0.copyload, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.028, ptr nonnull align 2 %.sroa.021.0.copyload, i64 %.idx.i.i.i16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit17:  ; preds = %_ZNRSt8optionalIN2v88internal8ZoneListINS0_4base6VectorItEEEEE5valueEv.exit, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i15
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.028, i64 %.sroa.422.0.copyload ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.m, align 4             ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.ai, label %._crit_edge, !llvm.loop !376

bb.ba:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.d to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 1
  switch i64 %i.au, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i18 [
    i64 1, label %bb.bb
    i64 2, label %bb.bc
    i64 3, label %bb.bd
    i64 4, label %bb.be
    i64 5, label %bb.bf
    i64 6, label %bb.bg
    i64 7, label %bb.bh
    i64 8, label %bb.bi
    i64 9, label %bb.bj
    i64 10, label %bb.bk
    i64 11, label %bb.bl
    i64 12, label %bb.bm
    i64 13, label %bb.bn
    i64 14, label %bb.bo
    i64 15, label %bb.bp
    i64 16, label %bb.bq
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.av = load i16, ptr %i.d, align 8
  store i16 %i.av, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bc:                                            ; preds = %bb.ba
  %i.aw = load i32, ptr %i.d, align 8
  store i32 %i.aw, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bd:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(6) %i.d, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.be:                                            ; preds = %bb.ba
  %i.ax = load i64, ptr %i.d, align 8
  store i64 %i.ax, ptr %1, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bf:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bg:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bh:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(14) %i.d, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bi:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bj:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %i.d, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bk:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bl:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(22) %i.d, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bm:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bn:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(26) %i.d, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bo:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.d, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bp:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(30) %i.d, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

bb.bq:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i18: ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %1, ptr nonnull align 8 %i.d, i64 %i.at, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit14:  ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i18, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i12, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge
  ret void
}

declare void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944), ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #4

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #18

declare void @_ZN2v88internal24OnCriticalMemoryPressureEv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = distinct !{!3, !35}
!4 = distinct !{!4, !35}
!5 = distinct !{!5, !35}
!6 = distinct !{!6, !35}
!7 = distinct !{!7, !35}
!8 = distinct !{!8, !35}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = distinct !{!12, !35}
!13 = distinct !{!13, !35}
!14 = distinct !{!14, !35}
!15 = distinct !{!15, !35}
!16 = distinct !{!16, !35}
!17 = distinct !{!17, !35}
!18 = distinct !{!18, !35}
!19 = distinct !{!19, !35}
!20 = distinct !{!20, !35}
!21 = distinct !{!21, !35}
!22 = distinct !{!22, !35}
!23 = distinct !{!23, !35}
!24 = distinct !{!24, !35}
!25 = distinct !{!25, !35}
end_hunk_20
begin_hunk_21_@llvm.vector.reduce.add.v2i64
!114 = distinct !{!114, !113, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!115 = distinct !{!115, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!116 = distinct !{!116, !115, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!117 = distinct !{!117, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!118 = distinct !{!118, !117, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35}
!121 = !{!70}
!122 = !{!72}
!123 = !{!74}
!124 = !{!76, !74}
!125 = !{!80, !78, !74}
!126 = !{!82, !78, !74}
!127 = !{!78, !74}
!128 = !{!89}
!129 = !{!91}
!130 = !{!93}
!131 = !{!95, !93}
!132 = !{!99, !97, !93}
!133 = !{!101, !97, !93}
!134 = !{!97, !93}
!135 = !{!106}
!136 = !{!108}
!137 = !{!110}
!138 = !{!112, !110}
!139 = !{!116, !114, !110}
!140 = !{!118, !114, !110}
!141 = !{!114, !110}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !35}
!144 = distinct !{!144, !35}
!145 = distinct !{!145, !35}
!146 = distinct !{!146, !35}
!147 = distinct !{!147, !35, !42, !43}
!148 = distinct !{!148, !35, !42, !43}
!149 = distinct !{!149, !35, !42}
!150 = distinct !{!150, !"_ZN2v88internal18ContinuationRecord8ForJSAnyENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_25FastJsonStringifierResultE"}
!151 = distinct !{!151, !150, !"_ZN2v88internal18ContinuationRecord8ForJSAnyENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_25FastJsonStringifierResultE: argument 0"}
!152 = distinct !{!152, !35, !42, !43}
!153 = distinct !{!153, !35, !43, !42}
!154 = distinct !{!154, !35, !42, !43}
!155 = distinct !{!155, !35, !43, !42}
!156 = distinct !{!156, !35, !42, !43}
!157 = distinct !{!157, !35, !43, !42}
!158 = !{!151}
!159 = !{!"branch_weights", i32 268334, i32 2146678644, i32 536670, i32 0}
!160 = distinct !{!160, !35}
!161 = distinct !{!161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!162 = distinct !{!162, !161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!163 = distinct !{!163, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!164 = distinct !{!164, !163, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!165 = distinct !{!165, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!166 = distinct !{!166, !165, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!167 = distinct !{!167, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!168 = distinct !{!168, !167, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!169 = distinct !{!169, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!170 = distinct !{!170, !169, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!171 = distinct !{!171, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!172 = distinct !{!172, !171, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!173 = distinct !{!173, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!174 = distinct !{!174, !173, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!175 = distinct !{!175, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!176 = distinct !{!176, !175, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!177 = distinct !{!177, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!178 = distinct !{!178, !177, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!179 = distinct !{!179, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!180 = distinct !{!180, !179, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!181 = distinct !{!181, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!182 = distinct !{!182, !181, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!183 = distinct !{!183, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!184 = distinct !{!184, !183, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!185 = distinct !{!185, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!186 = distinct !{!186, !185, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!187 = distinct !{!187, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!188 = distinct !{!188, !187, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!189 = distinct !{!189, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!190 = distinct !{!190, !189, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!191 = distinct !{!191, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!192 = distinct !{!192, !191, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!193 = distinct !{!193, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!194 = distinct !{!194, !193, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!195 = distinct !{!195, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!196 = distinct !{!196, !195, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!197 = distinct !{!197, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!198 = distinct !{!198, !197, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!199 = distinct !{!199, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!200 = distinct !{!200, !199, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!201 = distinct !{!201, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!202 = distinct !{!202, !201, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!203 = distinct !{!203, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!204 = distinct !{!204, !203, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!205 = distinct !{!205, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!206 = distinct !{!206, !205, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!207 = distinct !{!207, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!208 = distinct !{!208, !207, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!209 = distinct !{!209, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!210 = distinct !{!210, !209, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!211 = distinct !{!211, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!212 = distinct !{!212, !211, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!213 = distinct !{!213, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!214 = distinct !{!214, !213, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!215 = distinct !{!215, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!216 = distinct !{!216, !215, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!217 = !{!162}
!218 = !{!164}
!219 = !{!166}
!220 = !{!168, !166}
!221 = !{!172, !170, !166}
!222 = !{!174, !170, !166}
!223 = !{!170, !166}
!224 = !{!176}
!225 = !{!178}
!226 = !{!180}
!227 = !{!182, !180}
!228 = !{!186, !184, !180}
!229 = !{!188, !184, !180}
!230 = !{!184, !180}
!231 = !{!190}
!232 = !{!192}
!233 = !{!194}
!234 = !{!196, !194}
!235 = !{!200, !198, !194}
!236 = !{!202, !198, !194}
!237 = !{!198, !194}
!238 = !{!204}
!239 = !{!206}
!240 = !{!208}
!241 = !{!210, !208}
!242 = !{!214, !212, !208}
!243 = !{!216, !212, !208}
!244 = !{!212, !208}
!245 = distinct !{!245, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!246 = distinct !{!246, !245, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!247 = distinct !{!247, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!248 = distinct !{!248, !247, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!249 = distinct !{!249, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!250 = distinct !{!250, !249, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!251 = distinct !{!251, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!252 = distinct !{!252, !251, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!253 = distinct !{!253, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!254 = distinct !{!254, !253, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!255 = distinct !{!255, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!256 = distinct !{!256, !255, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!257 = distinct !{!257, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!258 = distinct !{!258, !257, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!259 = distinct !{!259, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!260 = distinct !{!260, !259, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!261 = distinct !{!261, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!262 = distinct !{!262, !261, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!263 = distinct !{!263, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!264 = distinct !{!264, !263, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!265 = distinct !{!265, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!266 = distinct !{!266, !265, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!267 = distinct !{!267, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!268 = distinct !{!268, !267, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!269 = distinct !{!269, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!270 = distinct !{!270, !269, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!271 = distinct !{!271, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!272 = distinct !{!272, !271, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!273 = distinct !{!273, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!274 = distinct !{!274, !273, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!275 = distinct !{!275, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!276 = distinct !{!276, !275, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!277 = distinct !{!277, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!278 = distinct !{!278, !277, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!279 = distinct !{!279, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!280 = distinct !{!280, !279, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!281 = distinct !{!281, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!282 = distinct !{!282, !281, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!283 = distinct !{!283, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!284 = distinct !{!284, !283, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!285 = distinct !{!285, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!286 = distinct !{!286, !285, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!287 = !{!246}
!288 = !{!248}
!289 = !{!250}
!290 = !{!252, !250}
!291 = !{!256, !254, !250}
!292 = !{!258, !254, !250}
!293 = !{!254, !250}
!294 = !{!260}
!295 = !{!262}
!296 = !{!264}
!297 = !{!266, !264}
!298 = !{!270, !268, !264}
!299 = !{!272, !268, !264}
!300 = !{!268, !264}
!301 = !{!274}
!302 = !{!276}
!303 = !{!278}
!304 = !{!280, !278}
!305 = !{!284, !282, !278}
!306 = !{!286, !282, !278}
!307 = !{!282, !278}
!308 = distinct !{!308, !"LVerDomain"}
!309 = distinct !{!309, !308}
!310 = distinct !{!310, !308}
!311 = distinct !{!311, !35, !42, !43}
!312 = distinct !{!312, !35, !42, !43}
!313 = distinct !{!313, !35, !42}
!314 = !{!"branch_weights", i32 1, i32 1048575}
!315 = !{!309}
!316 = !{!310}
!317 = distinct !{!317, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!318 = distinct !{!318, !317, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!319 = distinct !{!319, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!320 = distinct !{!320, !319, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!321 = !{!318}
!322 = !{!320}
!323 = distinct !{!323, !35}
!324 = distinct !{!324, !35}
!325 = distinct !{!325, !35}
!326 = distinct !{!326, !35}
!327 = distinct !{!327, !35}
!328 = distinct !{!328, !35}
!329 = distinct !{!329, !35}
!330 = distinct !{!330, !35}
!331 = distinct !{!331, !35, !50}
!332 = distinct !{!332, !35, !50}
!333 = distinct !{!333, !35, !50}
!334 = distinct !{!334, !35, !50}
!335 = distinct !{!335, !35}
!336 = distinct !{!336, !35}
!337 = distinct !{!337, !35}
!338 = distinct !{!338, !35}
!339 = distinct !{!339, !35}
!340 = distinct !{!340, !35}
!341 = distinct !{!341, !35}
!342 = distinct !{!342, !35}
!343 = distinct !{!343, !35}
!344 = distinct !{!344, !35}
!345 = distinct !{!345, !38}
!346 = distinct !{!346, !38}
!347 = distinct !{!347, !35}
!348 = distinct !{!348, !35}
!349 = distinct !{!349, !35}
!350 = distinct !{!350, !35}
!351 = distinct !{!351, !35}
!352 = distinct !{!352, !35}
!353 = distinct !{!353, !35}
!354 = distinct !{!354, !35}
!355 = distinct !{!355, !35}
!356 = distinct !{!356, !35}
!357 = distinct !{!357, !35, !50}
!358 = distinct !{!358, !35, !50}
!359 = distinct !{!359, !35, !50}
!360 = distinct !{!360, !35, !50}
!361 = distinct !{!361, !35}
!362 = distinct !{!362, !35}
!363 = distinct !{!363, !35}
!364 = distinct !{!364, !35}
!365 = distinct !{!365, !35}
!366 = distinct !{!366, !35}
!367 = distinct !{!367, !35}
!368 = distinct !{!368, !35}
!369 = distinct !{!369, !35}
!370 = distinct !{!370, !35}
!371 = distinct !{!371, !35}
!372 = distinct !{!372, !35}
!373 = distinct !{!373, !35}
!374 = distinct !{!374, !35}
!375 = distinct !{!375, !35}
!376 = distinct !{!376, !35}
end_hunk_21
