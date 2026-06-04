inline.NumInlined: 377
inline.NumDeleted: 169
begin_hunk_0_@_ZN4absl12lts_2024011610SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd:bb.a

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.a
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %scevgep.i.i, %bb.e ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.ai = sub i64 %.pre-phi.i.i.i.i.i, %i.e
  switch i64 %i.ai, label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !noalias !21
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9, !noalias !21
  %i.ao = and i8 %i.an, 8
  %.not12.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !noalias !21
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !noalias !21
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !noalias !21
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9, !noalias !21
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39 ], [ %i.bc, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37 ], [ %i.bb, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !9
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.bk = add i64 %.sroa.speculated.i.i.i, -1     ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.8.0 = phi ptr [ %i.c, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %i.c, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %_ZN4absl12lts_2024011620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %bb.j ], [ %i.bk, %bb.k ], [ %.sroa.speculated.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.0.0 ; 2 uses
  %i.bp = tail call { ptr, i32 } @_ZN4absl12lts_2024011610from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef %.sroa.8.0, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3) ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 1      ; 2 uses
  %i.br = icmp ne i32 %i.bq, 22
  %i.bs = extractvalue { ptr, i32 } %i.bp, 0
  %.not = icmp eq ptr %i.bs, %i.bo
  %or.cond = select i1 %i.br, i1 %.not, i1 false
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp eq i32 %i.bq, 34
  br i1 %i.bt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = load double, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.bv = fcmp ogt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp olt double %i.bu, -1.000000e+00
  br i1 %i.bw, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi double [ +inf, %bb.n ], [ -inf, %bb.o ]
  store double %.sink, ptr %2, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.l, %bb.o, %bb.m, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.o ], [ true, %.sink.split ]
  ret i1 %.1
}

declare { ptr, i32 } @_ZN4absl12lts_2024011610from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011610SimpleAtobESt17basic_string_viewIcSt11char_traitsIcEEPb(i64 %0, ptr %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 62), i32 noundef 115, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 4, ptr nonnull @.str.4) #14
  br i1 %i.a, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.5) #14
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 3, ptr nonnull @.str.6) #14
  br i1 %i.c, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.7) #14
  br i1 %i.d, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.8) #14
  br i1 %i.e, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 5, ptr nonnull @.str.9) #14
  br i1 %i.f, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.10) #14
  br i1 %i.g, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 2, ptr nonnull @.str.11) #14
  br i1 %i.h, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.12) #14
  br i1 %i.i, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = tail call noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.13) #14
  br i1 %i.j, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i8 %.sink, ptr %2, align 1, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2024011616numbers_internal12PutTwoDigitsEjPc(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = mul nuw nsw i64 %i.a, 103
  %i.c = lshr i64 %i.b, 10
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %.neg.i.i = mul i32 %i.d, 246
  %i.e = add i32 %.neg.i.i, %0
  %i.f = shl i32 %i.e, 8
  %i.g = add i32 %i.f, %i.d
  %i.h = trunc i32 %i.g to i16
  %i.i = add i16 %i.h, 12336
  store i16 %i.i, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 100
  br i1 %i.a, label %._crit_edge.i, label %.lr.ph.i, !prof !31

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.k, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.j, %bb.e ]
  %i.b = icmp samesign ugt i32 %.013.lcssa.i, 9
  %i.c = zext i1 %i.b to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.j, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i32 [ %i.k, %bb.e ], [ %0, %bb.a ] ; 6 uses
  %i.d = icmp ult i32 %.01319.i, 10000
  br i1 %i.d, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp samesign ugt i32 %.01319.i, 999
  %i.f = select i1 %i.e, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = icmp ult i32 %.01319.i, 1000000
  br i1 %i.g, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i32 %.01319.i, 99999
  %i.i = select i1 %i.h, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add i32 %.020.i, 6                       ; 2 uses
  %i.k = udiv i32 %.01319.i, 1000000              ; 2 uses
  %i.l = icmp ult i32 %.01319.i, 100000000
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i, !prof !33, !llvm.loop !34

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.c, %._crit_edge.i ], [ %i.f, %bb.b ], [ %i.i, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.m = zext i32 %.1.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.o = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %0, ptr noundef nonnull %i.n) ; 0 uses
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEjPcj(i32 noundef %0, ptr noundef captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr noundef captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %.lobit = lshr i32 %0, 31
  %i.a = zext nneg i32 %.lobit to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %0, i1 false) ; 4 uses
  %i.d = icmp ult i32 %i.c, 100
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i, !prof !31

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %i.n, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.m, %bb.e ]
  %i.e = icmp samesign ugt i32 %.013.lcssa.i, 9
  %i.f = zext i1 %i.e to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.m, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i32 [ %i.n, %bb.e ], [ %i.c, %bb.a ] ; 6 uses
  %i.g = icmp ult i32 %.01319.i, 10000
  br i1 %i.g, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = icmp samesign ugt i32 %.01319.i, 999
  %i.i = select i1 %i.h, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp ult i32 %.01319.i, 1000000
  br i1 %i.j, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i32 %.01319.i, 99999
  %i.l = select i1 %i.k, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %.020.i, 6                       ; 2 uses
  %i.n = udiv i32 %.01319.i, 1000000              ; 2 uses
  %i.o = icmp ult i32 %.01319.i, 100000000
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i, !prof !33, !llvm.loop !34

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.f, %._crit_edge.i ], [ %i.i, %bb.b ], [ %i.l, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.p = zext i32 %.1.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !9
  %i.r = icmp slt i32 %0, 0
  br i1 %i.r, label %bb.f, label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -1
  store i8 45, ptr %i.s, align 1, !tbaa !9
  br label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit

_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj.exit: ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsIjEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit, %bb.f
  %i.t = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %i.c, ptr noundef nonnull %i.q) ; 0 uses
  ret ptr %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEiPcj(i32 noundef %0, ptr noundef captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = xor i64 %i.b, -1
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 45, ptr %i.d, align 1, !tbaa !9
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIiPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit: ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.f = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %i.e, ptr noundef %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %0, 100
  br i1 %i.a, label %._crit_edge.i, label %.lr.ph.i, !prof !31

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i64 [ %0, %bb.a ], [ %i.k, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.j, %bb.e ]
  %i.b = icmp samesign ugt i64 %.013.lcssa.i, 9
  %i.c = zext i1 %i.b to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.j, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i64 [ %i.k, %bb.e ], [ %0, %bb.a ] ; 6 uses
  %i.d = icmp ult i64 %.01319.i, 10000
  br i1 %i.d, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp samesign ugt i64 %.01319.i, 999
  %i.f = select i1 %i.e, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = icmp ult i64 %.01319.i, 1000000
  br i1 %i.g, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.01319.i, 99999
  %i.i = select i1 %i.h, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add i32 %.020.i, 6                       ; 2 uses
  %i.k = udiv i64 %.01319.i, 1000000              ; 2 uses
  %i.l = icmp ult i64 %.01319.i, 100000000
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i, !prof !33, !llvm.loop !35

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.c, %._crit_edge.i ], [ %i.f, %bb.b ], [ %i.i, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.m = zext i32 %.1.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.o = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr noundef nonnull %i.n) ; 0 uses
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardEmPcj(i64 noundef %0, ptr noundef captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr noundef captures(ret: address, provenance) %1) local_unnamed_addr #5 {
bb.a:
  %.lobit = lshr i64 %0, 63
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.lobit ; 2 uses
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %0, i1 false) ; 4 uses
  %i.c = icmp ult i64 %i.b, 100
  br i1 %i.c, label %._crit_edge.i, label %.lr.ph.i, !prof !31

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %.013.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.m, %bb.e ]
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.l, %bb.e ]
  %i.d = icmp samesign ugt i64 %.013.lcssa.i, 9
  %i.e = zext i1 %i.d to i32
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.020.i = phi i32 [ %i.l, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.01319.i = phi i64 [ %i.m, %bb.e ], [ %i.b, %bb.a ] ; 6 uses
  %i.f = icmp ult i64 %.01319.i, 10000
  br i1 %i.f, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = icmp samesign ugt i64 %.01319.i, 999
  %i.h = select i1 %i.g, i32 3, i32 2
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = icmp ult i64 %.01319.i, 1000000
  br i1 %i.i, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.01319.i, 99999
  %i.k = select i1 %i.j, i32 5, i32 4
  br label %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add i32 %.020.i, 6                       ; 2 uses
  %i.m = udiv i64 %.01319.i, 1000000              ; 2 uses
  %i.n = icmp ult i64 %.01319.i, 100000000
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i, !prof !33, !llvm.loop !35

_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit: ; preds = %._crit_edge.i, %bb.b, %bb.d
  %.016.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %.020.i, %bb.b ], [ %.020.i, %bb.d ]
  %.pn.i = phi i32 [ %i.e, %._crit_edge.i ], [ %i.h, %bb.b ], [ %i.k, %bb.d ]
  %.1.i = add i32 %.pn.i, %.016.i
  %i.o = zext i32 %.1.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o ; 3 uses
  store i8 0, ptr %i.p, align 1, !tbaa !9
  %i.q = icmp slt i64 %0, 0
  br i1 %i.q, label %bb.f, label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 -1
  store i8 45, ptr %i.r, align 1, !tbaa !9
  br label %_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit

_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj.exit: ; preds = %_ZN4absl12lts_2024011616numbers_internal12Base10DigitsImEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEjE4typeES4_j.exit, %bb.f
  %i.s = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %i.b, ptr noundef nonnull %i.p) ; 0 uses
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2024011616numbers_internal23FastIntToBufferBackwardElPcj(i64 noundef %0, ptr noundef captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = xor i64 %i.b, -1
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 45, ptr %i.d, align 1, !tbaa !9
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIlPcEENSt9enable_ifIXsr3std9is_signedIT_EE5valueET0_E4typeES5_S6_j.exit: ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i64 @llvm.abs.i64(i64 %0, i1 false)
  %i.f = tail call fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %i.e, ptr noundef %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardIjPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i32 noundef %0, ptr noundef writeonly captures(ret: address, provenance) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 1000
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 10000000
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = urem i32 %0, 100000000                   ; 2 uses
  %i.e = udiv i32 %0, 100000000
  %i.f = udiv i32 %i.d, 10000
  %i.g = urem i32 %i.d, 10000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h               ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 10486
  %i.m = lshr i64 %i.l, 20
  %i.n = and i64 %i.m, 545460846719               ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.n, -100
  %i.o = add nsw i64 %.neg.i.i.i.i.i, %i.k
  %i.p = shl nsw i64 %i.o, 16
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = mul i64 %i.q, 103
  %i.s = lshr i64 %i.r, 10
  %i.t = and i64 %i.s, 4222189076152335           ; 2 uses
  %.neg22.i.i.i.i.i = mul i64 %i.t, 72057594037927926
  %i.u = add i64 %.neg22.i.i.i.i.i, %i.q
  %i.v = shl i64 %i.u, 8
  %i.w = or disjoint i64 %i.t, 3472328296227680304
  %i.x = add i64 %i.w, %i.v
  %i.y = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = urem i32 %0, 10000                       ; 2 uses
  %i.aa = udiv i32 %0, 10000
  %i.ab = mul nuw nsw i32 %i.z, 10486
  %i.ac = lshr i32 %i.ab, 20                      ; 2 uses
  %narrow.neg.i.i.i.i.i = mul nsw i32 %i.ac, -100
  %i.ad = add nsw i32 %narrow.neg.i.i.i.i.i, %i.z
  %i.ae = shl nsw i32 %i.ad, 16
  %i.af = or disjoint i32 %i.ae, %i.ac            ; 2 uses
  %i.ag = mul i32 %i.af, 103
  %i.ah = lshr i32 %i.ag, 10
  %i.ai = and i32 %i.ah, 983055                   ; 2 uses
  %narrow.neg15.i.i.i.i.i = mul i32 %i.ai, 16777206
  %i.aj = add i32 %narrow.neg15.i.i.i.i.i, %i.af
  %i.ak = shl i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ai, 808464432
  %i.am = add i32 %i.al, %i.ak
  %i.an = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  store i32 %i.am, ptr %i.an, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.112.i = phi i32 [ %i.aa, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.an, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ao = icmp samesign ugt i32 %.112.i, 9
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.b
  %.213.i = phi i32 [ %0, %bb.b ], [ %.112.i, %bb.f ]
  %.2.i = phi ptr [ %1, %bb.b ], [ %.1.i, %bb.f ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.213.i to i16 ; 2 uses
  %i.ap = urem i16 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i16 %i.ap to i32           ; 2 uses
  %i.aq = udiv i16 %.lhs.trunc.i, 100
  %.zext17.i = zext nneg i16 %i.aq to i32
  %narrow.i.i.i = mul nuw nsw i32 %.zext.i, 103
  %i.ar = lshr i32 %narrow.i.i.i, 10              ; 2 uses
  %.neg.i.i.i = mul nuw nsw i32 %i.ar, 246
  %i.as = add nuw nsw i32 %.neg.i.i.i, %.zext.i
  %i.at = trunc i32 %i.as to i8
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds i8, ptr %.2.i, i64 -1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !9
  %i.aw = trunc nuw nsw i32 %i.ar to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds i8, ptr %.2.i, i64 -2 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.314.i = phi i32 [ %.zext17.i, %bb.g ], [ %.112.i, %bb.f ] ; 2 uses
  %.3.i = phi ptr [ %i.ay, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %.not.i = icmp eq i32 %.314.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.415.i = phi i32 [ %0, %bb.a ], [ %.314.i, %bb.h ]
  %.4.i = phi ptr [ %1, %bb.a ], [ %.3.i, %bb.h ]
  %i.az = trunc nuw nsw i32 %.415.i to i8
  %i.ba = add nuw nsw i8 %i.az, 48
  %i.bb = getelementptr inbounds i8, ptr %.4.i, i64 -1 ; 2 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit

_ZN4absl12lts_2024011612_GLOBAL__N_125FastUIntToStringConverterIjPcE23FastIntToBufferBackwardEjS3_.exit: ; preds = %bb.h, %bb.i
  %.5.i = phi ptr [ %i.bb, %bb.i ], [ %.3.i, %bb.h ]
  ret ptr %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125DoFastIntToBufferBackwardImPcEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueET0_E4typeES5_S6_j(i64 noundef %0, ptr noundef writeonly captures(ret: address, provenance) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, 10
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 1000
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %0, 10000000
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %0, 999999999999999
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = urem i64 %0, 100000000
  %i.f = udiv i64 %0, 100000000
  %i.g = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.h = udiv i32 %i.g, 10000
  %i.i = urem i32 %i.g, 10000
  %i.j = zext nneg i32 %i.h to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j               ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 10486
  %i.o = lshr i64 %i.n, 20
  %i.p = and i64 %i.o, 545460846719               ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.p, -100
  %i.q = add nsw i64 %.neg.i.i.i.i.i, %i.m
  %i.r = shl nsw i64 %i.q, 16
  %i.s = add nsw i64 %i.r, %i.p                   ; 2 uses
  %i.t = mul i64 %i.s, 103
  %i.u = lshr i64 %i.t, 10
  %i.v = and i64 %i.u, 4222189076152335           ; 2 uses
  %.neg22.i.i.i.i.i = mul i64 %i.v, 72057594037927926
  %i.w = add i64 %.neg22.i.i.i.i.i, %i.s
  %i.x = shl i64 %i.w, 8
  %i.y = or disjoint i64 %i.v, 3472328296227680304
  %i.z = add i64 %i.y, %i.x
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015.i = phi i64 [ %i.f, %bb.e ], [ %0, %bb.d ] ; 3 uses
  %.0.i = phi ptr [ %i.aa, %bb.e ], [ %1, %bb.d ]
  %i.ab = urem i64 %.015.i, 100000000
  %i.ac = udiv i64 %.015.i, 100000000             ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ab to i32          ; 2 uses
  %i.ae = udiv i32 %i.ad, 10000
  %i.af = urem i32 %i.ad, 10000
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = or disjoint i64 %i.ai, %i.ag            ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 10486
  %i.al = lshr i64 %i.ak, 20
  %i.am = and i64 %i.al, 545460846719             ; 2 uses
  %.neg.i.i.i.i1.i = mul nsw i64 %i.am, -100
  %i.an = add nsw i64 %.neg.i.i.i.i1.i, %i.aj
  %i.ao = shl nsw i64 %i.an, 16
  %i.ap = add nsw i64 %i.ao, %i.am                ; 2 uses
  %i.aq = mul i64 %i.ap, 103
  %i.ar = lshr i64 %i.aq, 10
  %i.as = and i64 %i.ar, 4222189076152335         ; 2 uses
  %.neg22.i.i.i.i2.i = mul i64 %i.as, 72057594037927926
  %i.at = add i64 %.neg22.i.i.i.i2.i, %i.ap
  %i.au = shl i64 %i.at, 8
end_hunk_0
