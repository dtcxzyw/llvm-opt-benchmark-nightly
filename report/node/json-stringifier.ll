inline.NumInlined: 8192
inline.NumDeleted: 1259
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN2v88internal15JsonStringifier15SerializeStringILb1EEEbNS0_6HandleINS0_6StringEEE:bb.a
bb.bk:                                            ; preds = %bb.bj
  %i.hj = load ptr, ptr %i.hd, align 8, !noalias !286
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !286
  %i.hm = tail call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hd) #21, !noalias !286, !inline_history !80
  br i1 %i.hm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #21, !noalias !286
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !286
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit51

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.hp = load ptr, ptr %i.hd, align 8, !noalias !286
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !286
  %i.hs = tail call noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #21, !noalias !286, !inline_history !80
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit51

bb.bn:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22, !noalias !289
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit51: ; preds = %bb.bl, %bb.bh, %bb.bm, %bb.bi, %bb.be, %bb.bd
  %.sroa.0304.sroa.0.0.ph = phi ptr [ %i.ho, %bb.bl ], [ %i.gw, %bb.bh ], [ %i.hs, %bb.bm ], [ %i.ha, %bb.bi ], [ %i.gi, %bb.be ], [ %i.gh, %bb.bd ]
  %.sroa.0304.sroa.8.0.ph = phi i32 [ 2, %bb.bl ], [ 1, %bb.bh ], [ 2, %bb.bm ], [ 1, %bb.bi ], [ 2, %bb.be ], [ 1, %bb.bd ]
  store ptr %.sroa.0304.sroa.0.0.ph, ptr %3, align 8
  %.sroa.0304.sroa.7.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.gb, ptr %.sroa.0304.sroa.7.0..sroa_idx358, align 8
  %.sroa.0304.sroa.8.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0304.sroa.8.0.ph, ptr %.sroa.0304.sroa.8.0..sroa_idx364, align 4
  %.sroa.0304.sroa.9.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %8, ptr %.sroa.0304.sroa.9.0..sroa_idx370, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20

bb.bo:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit36
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20: ; preds = %bb.bo, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit51
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8, !range !7, !noundef !8
  %i.hv = trunc nuw i8 %i.hu to i1
  store i8 0, ptr %i.ht, align 8
  br i1 %i.hv, label %bb.bp, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53

bb.bp:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20
  %i.hw = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i52, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i20, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !269
  %i.hx = load ptr, ptr %3, align 8               ; 18 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hz = load i32, ptr %i.hy, align 8            ; 3 uses
  %i.ia = zext i32 %i.hz to i64                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ib = icmp ugt i32 %i.hz, 16384
  br i1 %i.ib, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader, label %bb.br, !prof !53

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader: ; preds = %bb.br, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.hx, i64 noundef 0, i64 noundef %i.ia)
  br label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb1EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.br:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit53
  %i.ic = shl nuw nsw i64 %i.ia, 3
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ig = load i64, ptr %i.if, align 8            ; 3 uses
  %i.ih = sub i64 %i.ie, %i.ig
  %i.ii = icmp ugt i64 %i.ih, %i.ic
  br i1 %i.ii, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.preheader, !prof !11

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ig ; 20 uses
  switch i32 %i.hz, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i32 0, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit
    i32 1, label %bb.bs
    i32 2, label %bb.bt
    i32 3, label %bb.bu
    i32 4, label %bb.bv
    i32 5, label %bb.bw
    i32 6, label %bb.bx
    i32 7, label %bb.by
    i32 8, label %bb.bz
    i32 9, label %bb.ca
    i32 10, label %bb.cb
    i32 11, label %bb.cc
    i32 12, label %bb.cd
    i32 13, label %bb.ce
    i32 14, label %bb.cf
    i32 15, label %bb.cg
    i32 16, label %bb.ch
  ]

bb.bs:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.im = load i16, ptr %i.hx, align 2
  store i16 %i.im, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bt:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.in = load i32, ptr %i.hx, align 2
  store i32 %i.in, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bu:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.il, ptr noundef nonnull align 2 dereferenceable(6) %i.hx, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bv:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.io = load i64, ptr %i.hx, align 2
  store i64 %i.io, ptr %i.il, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bw:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.il, ptr noundef nonnull align 2 dereferenceable(10) %i.hx, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bx:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.il, ptr noundef nonnull align 2 dereferenceable(12) %i.hx, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.by:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.il, ptr noundef nonnull align 2 dereferenceable(14) %i.hx, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bz:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.il, ptr noundef nonnull align 2 dereferenceable(16) %i.hx, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ca:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.il, ptr noundef nonnull align 2 dereferenceable(18) %i.hx, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cb:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.il, ptr noundef nonnull align 2 dereferenceable(20) %i.hx, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cc:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.il, ptr noundef nonnull align 2 dereferenceable(22) %i.hx, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cd:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.il, ptr noundef nonnull align 2 dereferenceable(24) %i.hx, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ce:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.il, ptr noundef nonnull align 2 dereferenceable(26) %i.hx, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cf:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.il, ptr noundef nonnull align 2 dereferenceable(28) %i.hx, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.cg:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.il, ptr noundef nonnull align 2 dereferenceable(30) %i.hx, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ch:                                            ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.il, ptr noundef nonnull align 2 dereferenceable(32) %i.hx, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb1EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.ia, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.il, ptr nonnull align 2 %i.hx, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i
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
  %3 = ptrtoaddr ptr %0 to i64                    ; 6 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
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
  %5 = add i64 %4, 16
  %6 = add i64 %3, 32
  %rt.bound0169 = icmp ugt i64 %5, %3
  %rt.bound1170 = icmp ugt i64 %6, %4
  %rt.conflict171 = and i1 %rt.bound0169, %rt.bound1170
  br i1 %rt.conflict171, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %7 = add i64 %4, 15
  %8 = add i64 %3, 30
  %rt.bound0165 = icmp ugt i64 %7, %3
  %rt.bound1166 = icmp ugt i64 %8, %4
  %rt.conflict167 = and i1 %rt.bound0165, %rt.bound1166
  br i1 %rt.conflict167, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %9 = add i64 %4, 14
  %10 = add i64 %3, 28
  %rt.bound0 = icmp ugt i64 %9, %3
  %rt.bound1 = icmp ugt i64 %10, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !290
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !290
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !293, !noalias !290
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !293, !noalias !290
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !290
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !293, !noalias !290
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !297

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %11 = load <8 x i8>, ptr %1, align 1
  %12 = zext <8 x i8> %11 to <8 x i16>
  store <8 x i16> %12, ptr %0, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load <4 x i8>, ptr %13, align 1
  %16 = zext <4 x i8> %15 to <4 x i16>
  store <4 x i16> %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %0, align 2
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 2
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %33 = load i8, ptr %31, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %32, align 2
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %36, align 2
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 2
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 2
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %49 = load i8, ptr %47, align 1
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 2
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %53 = load i8, ptr %51, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %52, align 2
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %57 = load i8, ptr %55, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %56, align 2
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %60, align 2
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %65 = load i8, ptr %63, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %79 = load <8 x i8>, ptr %1, align 1
  %80 = zext <8 x i8> %79 to <8 x i16>
  store <8 x i16> %80, ptr %0, align 2
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %83 = load <4 x i8>, ptr %81, align 1
  %84 = zext <4 x i8> %83 to <4 x i16>
  store <4 x i16> %84, ptr %82, align 2
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %87 = load i8, ptr %85, align 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %86, align 2
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %91 = load i8, ptr %89, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %90, align 2
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %95 = load i8, ptr %93, align 1
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %94, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %97 = load i8, ptr %1, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %0, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %125 = load i8, ptr %123, align 1
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %124, align 2
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %129 = load i8, ptr %127, align 1
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %128, align 2
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %133 = load i8, ptr %131, align 1
  %134 = zext i8 %133 to i16
  store i16 %134, ptr %132, align 2
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %137 = load i8, ptr %135, align 1
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %136, align 2
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %141 = load i8, ptr %139, align 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %140, align 2
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %145 = load i8, ptr %143, align 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %144, align 2
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %149 = load i8, ptr %147, align 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %148, align 2
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %153 = load i8, ptr %151, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %152, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %155 = load <8 x i8>, ptr %1, align 1
  %156 = zext <8 x i8> %155 to <8 x i16>
  store <8 x i16> %156, ptr %0, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load <8 x i8>, ptr %157, align 1
  %160 = zext <8 x i8> %159 to <8 x i16>
  store <8 x i16> %160, ptr %158, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %161 = load i8, ptr %1, align 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %0, align 2
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %165 = load i8, ptr %163, align 1
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %164, align 2
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %169 = load i8, ptr %167, align 1
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %168, align 2
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %173 = load i8, ptr %171, align 1
  %174 = zext i8 %173 to i16
  store i16 %174, ptr %172, align 2
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %177 = load i8, ptr %175, align 1
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %176, align 2
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %181 = load i8, ptr %179, align 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %180, align 2
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %185 = load i8, ptr %183, align 1
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %184, align 2
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %189 = load i8, ptr %187, align 1
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %188, align 2
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %193 = load i8, ptr %191, align 1
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %192, align 2
  %195 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %197 = load i8, ptr %195, align 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %196, align 2
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %201 = load i8, ptr %199, align 1
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %200, align 2
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %205 = load i8, ptr %203, align 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %204, align 2
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %209 = load i8, ptr %207, align 1
  %210 = zext i8 %209 to i16
  store i16 %210, ptr %208, align 2
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %213 = load i8, ptr %211, align 1
  %214 = zext i8 %213 to i16
  store i16 %214, ptr %212, align 2
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %217 = load i8, ptr %215, align 1
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %216, align 2
  %219 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %221 = load i8, ptr %219, align 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %220, align 2
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
  br i1 %i.j, label %bb.b, label %.critedge, !prof !6

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
  br i1 %i.aa, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !6

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
  br i1 %.not, label %bb.e, label %bb.d, !prof !6

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
  br i1 %i.at, label %bb.g, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !6

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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !298
  call void @_ZN2v88internal6String12WriteToFlat2IhEEvPT_NS0_6TaggedINS0_10ConsStringEEEjjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(ptr noundef nonnull %i.ay, i64 %i.au, i32 noundef 0, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #21
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !7, !noundef !8
  %i.bb = trunc nuw i8 %i.ba to i1
  store i8 0, ptr %i.az, align 8
  br i1 %i.bb, label %bb.h, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.h:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
end_hunk_1
