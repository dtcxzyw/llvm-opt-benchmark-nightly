inline.NumInlined: 3493
inline.NumDeleted: 1066
begin_hunk_0_@_ZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a

_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS6_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSL_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %3) #18
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(34) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS6_EEDaSL_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.l = load i64, ptr %4, align 8, !tbaa !82
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSL_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %5) #18
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(2) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSL_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSL_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS6_EEDaSL_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSL_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcRKlRA34_S2_S6_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.a, align 8, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #18
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !1700
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !281

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !282
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #19, !inline_history !1701
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1702, !range !75, !noundef !40
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1705 ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1706 ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #18 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1707 ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #18 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1707 ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !1707
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !1705
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %1 = sext i16 %.sroa.0.0.extract.trunc to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1708
  %i.ad = add nsw i64 %i.ac, %1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1708
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1709
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1708 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 32767) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i16         ; 2 uses
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !1708
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(43) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.e = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #18
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.e)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSL_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.h = load i64, ptr %3, align 8, !tbaa !82
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSL_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSL_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !439, !nonnull !40, !align !41
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %4) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(43) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSL_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSL_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSL_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRKNS_10Date64TypeERA2_KcRlRA43_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clISA_EEDaSL_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn12
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !278    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !279  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !1710
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !281

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !282
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i2), !inline_history !1711
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !281

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !278
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !282
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #19, !inline_history !1712
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time32TypeEvE11VisitStatusIZNS0_12_GLOBAL__N_117ValidateArrayImpl5VisitERKS2_EUliE_ZNS6_5VisitES8_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val.0.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.8.val.0.val, i64 %1
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.e, ptr %i.a, align 4, !tbaa !3, !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !1713
  store i32 86400, ptr %i.b, align 4, !tbaa !3, !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !1713
  store i32 86400000, ptr %i.c, align 4, !tbaa !3, !noalias !1713
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1716, !noalias !1713 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %or.cond.i = icmp ugt i32 %i.e, 86399
  %or.cond4.i = and i1 %or.cond.i, %i.h
  br i1 %or.cond4.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !1720
  call void @_ZN5arrow8internal12JoinToStringIJRKNS_10Time32TypeERA2_KcRiRA40_S5_RA5_S5_RKiRA4_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(76) %.0.val.0.val, ptr noundef nonnull align 1 dereferenceable(2) @.str.60, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.62, ptr noundef nonnull align 1 dereferenceable(5) @.str.63, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(4) @.str.64), !noalias !1720
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1720 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow6Status7InvalidIJRKNS_10Time32TypeERA2_KcRiRA40_S5_RA5_S5_RKiRA4_S5_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !92, !noalias !1720
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
end_hunk_0
