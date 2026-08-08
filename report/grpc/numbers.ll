inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd:bb.a
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10, !noalias !22
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10, !noalias !22
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10, !noalias !22
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10, !noalias !22
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39 ], [ %i.bc, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37 ], [ %i.bb, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !10
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.bk = add i64 %.sroa.speculated.i.i.i, -1     ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.8.0 = phi ptr [ %i.c, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %i.c, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %bb.j ], [ %i.bk, %bb.k ], [ %.sroa.speculated.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.0.0 ; 2 uses
  %i.bp = tail call { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef %.sroa.8.0, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3) ; 2 uses
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
  %i.bu = load double, ptr %2, align 8, !tbaa !20 ; 2 uses
  %i.bv = fcmp ogt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp olt double %i.bu, -1.000000e+00
  br i1 %i.bw, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi double [ +inf, %bb.n ], [ -inf, %bb.o ]
  store double %.sink, ptr %2, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.l, %bb.o, %bb.m, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.o ], [ true, %.sink.split ]
  ret i1 %.1
}

declare { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtobESt17basic_string_viewIcSt11char_traitsIcEEPb(i64 %0, ptr %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 62), i32 noundef 113, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 4, ptr nonnull @.str.4) #15
  br i1 %i.a, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.5) #15
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 3, ptr nonnull @.str.6) #15
  br i1 %i.c, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.7) #15
  br i1 %i.d, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.8) #15
  br i1 %i.e, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 5, ptr nonnull @.str.9) #15
  br i1 %i.f, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.10) #15
  br i1 %i.g, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 2, ptr nonnull @.str.11) #15
  br i1 %i.h, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.12) #15
  br i1 %i.i, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.13) #15
  br i1 %i.j, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i8 %.sink, ptr %2, align 1, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = mul nuw nsw i64 %i.a, 103
  %i.c = lshr i64 %i.b, 10
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %.neg = mul i32 %i.d, 246
  %i.e = add i32 %.neg, %0
  %i.f = shl i32 %i.e, 8
  %i.g = add i32 %i.f, %i.d
  %i.h = trunc i32 %i.g to i16
  %i.i = add i16 %i.h, 12336
  store i16 %i.i, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  %i.c = or disjoint i8 %i.b, 48
  store i8 %i.c, ptr %1, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 100000000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = udiv i32 %0, 10000
  %i.g = urem i32 %0, 10000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h               ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 10486
  %i.m = lshr i64 %i.l, 20
  %i.n = and i64 %i.m, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.n, -100
  %i.o = add nsw i64 %.neg.i, %i.k
  %i.p = shl nsw i64 %i.o, 16
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = mul i64 %i.q, 103
  %i.s = lshr i64 %i.r, 10
  %i.t = and i64 %i.s, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.t, 72057594037927926
  %i.u = add i64 %.neg16.i, %i.q
  %i.v = shl i64 %i.u, 8
  %i.w = add i64 %i.v, %i.t                       ; 3 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 true) ; 2 uses
  %i.z = and i64 %i.y, 56
  %i.aa = add i64 %i.w, 3472328296227680304
  %i.ab = lshr i64 %i.aa, %i.z
  store i64 %i.ab, ptr %1, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = lshr i64 %i.y, 3
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = udiv i32 %0, 100000000                  ; 3 uses
  %i.ah = urem i32 %0, 100000000                  ; 2 uses
  %i.ai = udiv i32 %i.ah, 10000
  %i.aj = urem i32 %i.ah, 10000
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, %i.ak            ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 10486
  %i.ap = lshr i64 %i.ao, 20
  %i.aq = and i64 %i.ap, 545460846719             ; 2 uses
  %.neg.i3 = mul nsw i64 %i.aq, -100
  %i.ar = add nsw i64 %.neg.i3, %i.an
  %i.as = shl nsw i64 %i.ar, 16
  %i.at = add nsw i64 %i.as, %i.aq                ; 2 uses
  %i.au = mul i64 %i.at, 103
  %i.av = lshr i64 %i.au, 10
  %i.aw = and i64 %i.av, 4222189076152335         ; 2 uses
  %.neg16.i4 = mul i64 %i.aw, 72057594037927926
  %i.ax = add i64 %.neg16.i4, %i.at
  %i.ay = shl i64 %i.ax, 8
  %i.az = or disjoint i64 %i.aw, 3472328296227680304
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = add nsw i32 %i.ag, -10
  %i.bc = ashr i32 %i.bb, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ag, 103
  %i.bd = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i5 = mul nsw i32 %i.bd, -10
  %i.be = add nsw i32 %.neg.i5, %i.ag
  %i.bf = or disjoint i32 %i.bd, 12336
  %i.bg = shl nsw i32 %i.be, 8
  %i.bh = add nsw i32 %i.bf, %i.bg
  %i.bi = and i32 %i.bc, 8
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc nuw nsw i32 %i.bj to i16
  store i16 %i.bk, ptr %1, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bm = sext i32 %i.bc to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store i64 %i.ba, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.af, %bb.d ], [ %i.bo, %bb.e ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
  %i.c = sub i32 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 6 uses
  %.0 = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 7 uses
  %i.d = icmp ult i32 %.0, 10
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i32 %.0 to i8
  %i.f = or disjoint i8 %i.e, 48
  store i8 %i.f, ptr %.07, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %.0, 100000000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = udiv i32 %.0, 10000
  %i.j = urem i32 %.0, 10000
  %i.k = zext nneg i32 %i.i to i64
  %i.l = zext nneg i32 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 32
  %i.n = or disjoint i64 %i.m, %i.k               ; 2 uses
  %i.o = mul nuw nsw i64 %i.n, 10486
  %i.p = lshr i64 %i.o, 20
  %i.q = and i64 %i.p, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.q, -100
  %i.r = add nsw i64 %.neg.i, %i.n
  %i.s = shl nsw i64 %i.r, 16
  %i.t = add nsw i64 %i.s, %i.q                   ; 2 uses
  %i.u = mul i64 %i.t, 103
  %i.v = lshr i64 %i.u, 10
  %i.w = and i64 %i.v, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.w, 72057594037927926
  %i.x = add i64 %.neg16.i, %i.t
  %i.y = shl i64 %i.x, 8
  %i.z = add i64 %i.y, %i.w                       ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.z, i1 true) ; 2 uses
  %i.ac = and i64 %i.ab, 56
  %i.ad = add i64 %i.z, 3472328296227680304
  %i.ae = lshr i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %.07, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.ag = lshr i64 %i.ab, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = udiv i32 %.0, 100000000                 ; 3 uses
  %i.ak = urem i32 %.0, 100000000                 ; 2 uses
  %i.al = udiv i32 %i.ak, 10000
  %i.am = urem i32 %i.ak, 10000
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = or disjoint i64 %i.ap, %i.an            ; 2 uses
  %i.ar = mul nuw nsw i64 %i.aq, 10486
  %i.as = lshr i64 %i.ar, 20
  %i.at = and i64 %i.as, 545460846719             ; 2 uses
  %.neg.i9 = mul nsw i64 %i.at, -100
  %i.au = add nsw i64 %.neg.i9, %i.aq
  %i.av = shl nsw i64 %i.au, 16
  %i.aw = add nsw i64 %i.av, %i.at                ; 2 uses
  %i.ax = mul i64 %i.aw, 103
  %i.ay = lshr i64 %i.ax, 10
  %i.az = and i64 %i.ay, 4222189076152335         ; 2 uses
  %.neg16.i10 = mul i64 %i.az, 72057594037927926
  %i.ba = add i64 %.neg16.i10, %i.aw
  %i.bb = shl i64 %i.ba, 8
  %i.bc = or disjoint i64 %i.az, 3472328296227680304
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = add nsw i32 %i.aj, -10
  %i.bf = ashr i32 %i.be, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.aj, 103
  %i.bg = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i11 = mul nsw i32 %i.bg, -10
  %i.bh = add nsw i32 %.neg.i11, %i.aj
  %i.bi = or disjoint i32 %i.bg, 12336
  %i.bj = shl nsw i32 %i.bh, 8
  %i.bk = add nsw i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bf, 8
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  store i16 %i.bn, ptr %.07, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.07, i64 2
  %i.bp = sext i32 %i.bf to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp ; 2 uses
  store i64 %i.bd, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.ai, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp ugt i64 %0, 4294967295
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw i64 %0 to i32                  ; 4 uses
  %i.b = icmp samesign ult i64 %0, 10
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %0 to i8
  %i.d = or disjoint i8 %i.c, 48
  store i8 %i.d, ptr %1, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %0, 100000000
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = udiv i32 %i.a, 10000
  %i.h = urem i32 %i.a, 10000
  %i.i = zext nneg i32 %i.g to i64
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.i               ; 2 uses
  %i.m = mul nuw nsw i64 %i.l, 10486
  %i.n = lshr i64 %i.m, 20
  %i.o = and i64 %i.n, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.o, -100
  %i.p = add nsw i64 %.neg.i, %i.l
  %i.q = shl nsw i64 %i.p, 16
  %i.r = add nsw i64 %i.q, %i.o                   ; 2 uses
  %i.s = mul i64 %i.r, 103
  %i.t = lshr i64 %i.s, 10
  %i.u = and i64 %i.t, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.u, 72057594037927926
  %i.v = add i64 %.neg16.i, %i.r
  %i.w = shl i64 %i.v, 8
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true) ; 2 uses
  %i.aa = and i64 %i.z, 56
  %i.ab = add i64 %i.x, 3472328296227680304
  %i.ac = lshr i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %1, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = lshr i64 %i.z, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = udiv i32 %i.a, 100000000                ; 3 uses
  %i.ai = urem i32 %i.a, 100000000                ; 2 uses
  %i.aj = udiv i32 %i.ai, 10000
  %i.ak = urem i32 %i.ai, 10000
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.an, %i.al            ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 10486
  %i.aq = lshr i64 %i.ap, 20
  %i.ar = and i64 %i.aq, 545460846719             ; 2 uses
  %.neg.i3 = mul nsw i64 %i.ar, -100
  %i.as = add nsw i64 %.neg.i3, %i.ao
  %i.at = shl nsw i64 %i.as, 16
  %i.au = add nsw i64 %i.at, %i.ar                ; 2 uses
  %i.av = mul i64 %i.au, 103
  %i.aw = lshr i64 %i.av, 10
  %i.ax = and i64 %i.aw, 4222189076152335         ; 2 uses
  %.neg16.i4 = mul i64 %i.ax, 72057594037927926
  %i.ay = add i64 %.neg16.i4, %i.au
  %i.az = shl i64 %i.ay, 8
  %i.ba = or disjoint i64 %i.ax, 3472328296227680304
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = add nsw i32 %i.ah, -10
  %i.bd = ashr i32 %i.bc, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ah, 103
  %i.be = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i5 = mul nsw i32 %i.be, -10
  %i.bf = add nsw i32 %.neg.i5, %i.ah
  %i.bg = or disjoint i32 %i.be, 12336
  %i.bh = shl nsw i32 %i.bf, 8
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bd, 8
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  store i16 %i.bl, ptr %1, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = sext i32 %i.bd to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn ; 2 uses
  store i64 %i.bb, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.g:                                             ; preds = %bb.a
  %i.bq = icmp ult i64 %0, 10000000000000000
  %i.br = udiv i64 %0, 100000000                  ; 2 uses
  %.023.in.i = urem i64 %0, 100000000
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = trunc nuw nsw i64 %i.br to i32          ; 2 uses
  %i.bt = udiv i32 %i.bs, 10000
  %i.bu = urem i32 %i.bs, 10000
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = shl nuw nsw i64 %i.bw, 32
  %i.by = or disjoint i64 %i.bx, %i.bv            ; 2 uses
  %i.bz = mul nuw nsw i64 %i.by, 10486
  %i.ca = lshr i64 %i.bz, 20
  %i.cb = and i64 %i.ca, 545460846719             ; 2 uses
  %.neg.i6 = mul nsw i64 %i.cb, -100
  %i.cc = add nsw i64 %.neg.i6, %i.by
  %i.cd = shl nsw i64 %i.cc, 16
  %i.ce = add nsw i64 %i.cd, %i.cb                ; 2 uses
  %i.cf = mul i64 %i.ce, 103
  %i.cg = lshr i64 %i.cf, 10
  %i.ch = and i64 %i.cg, 4222189076152335         ; 2 uses
  %.neg16.i7 = mul i64 %i.ch, 72057594037927926
  %i.ci = add i64 %.neg16.i7, %i.ce
  %i.cj = shl i64 %i.ci, 8
  %i.ck = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cl = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ck, i1 true) ; 2 uses
  %i.cn = and i64 %i.cm, 56
  %i.co = add i64 %i.ck, 3472328296227680304
  %i.cp = lshr i64 %i.co, %i.cn
  store i64 %i.cp, ptr %1, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = lshr i64 %i.cm, 3
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.cs
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cu = udiv i64 %0, 10000000000000000
  %i.cv = trunc nuw nsw i64 %i.cu to i32          ; 2 uses
  %i.cw = urem i64 %i.br, 100000000
  %i.cx = trunc nuw nsw i64 %i.cw to i32          ; 2 uses
  %i.cy = udiv i32 %i.cx, 10000
  %i.cz = urem i32 %i.cx, 10000
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = shl nuw nsw i64 %i.db, 32
  %i.dd = or disjoint i64 %i.dc, %i.da            ; 2 uses
  %i.de = mul nuw nsw i64 %i.dd, 10486
  %i.df = lshr i64 %i.de, 20
  %i.dg = and i64 %i.df, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.dg, -100
  %i.dh = add nsw i64 %.neg.i12, %i.dd
  %i.di = shl nsw i64 %i.dh, 16
  %i.dj = add nsw i64 %i.di, %i.dg                ; 2 uses
  %i.dk = mul i64 %i.dj, 103
  %i.dl = lshr i64 %i.dk, 10
  %i.dm = and i64 %i.dl, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.dm, 72057594037927926
  %i.dn = add i64 %.neg16.i13, %i.dj
  %i.do = shl i64 %i.dn, 8
  %i.dp = or disjoint i64 %i.dm, 3472328296227680304
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = mul nuw nsw i32 %i.cv, 10486
  %i.ds = lshr i32 %i.dr, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.ds, -100
  %i.dt = add nsw i32 %narrow.neg.i, %i.cv
  %i.du = shl nsw i32 %i.dt, 16
  %i.dv = or disjoint i32 %i.du, %i.ds            ; 2 uses
  %i.dw = mul i32 %i.dv, 103
  %i.dx = lshr i32 %i.dw, 10
  %i.dy = and i32 %i.dx, 983055                   ; 2 uses
  %.neg.i14 = mul i32 %i.dy, 16777206
  %i.dz = add i32 %.neg.i14, %i.dv
  %i.ea = shl i32 %i.dz, 8
  %i.eb = add i32 %i.ea, %i.dy                    ; 3 uses
  %i.ec = icmp ne i32 %i.eb, 0
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eb, i1 true) ; 2 uses
  %i.ee = and i32 %i.ed, 24
  %i.ef = add i32 %i.eb, 808464432
  %i.eg = lshr i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %1, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ei = lshr i32 %i.ed, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek ; 2 uses
  store i64 %i.dq, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.h, %bb.i
  %.022.i = phi ptr [ %i.em, %bb.i ], [ %i.ct, %bb.h ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.en = udiv i32 %.023.i, 10000
  %i.eo = urem i32 %.023.i, 10000
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = shl nuw nsw i64 %i.eq, 32
  %i.es = or disjoint i64 %i.er, %i.ep            ; 2 uses
  %i.et = mul nuw nsw i64 %i.es, 10486
  %i.eu = lshr i64 %i.et, 20
  %i.ev = and i64 %i.eu, 545460846719             ; 2 uses
  %.neg.i15 = mul nsw i64 %i.ev, -100
  %i.ew = add nsw i64 %.neg.i15, %i.es
  %i.ex = shl nsw i64 %i.ew, 16
  %i.ey = add nsw i64 %i.ex, %i.ev                ; 2 uses
  %i.ez = mul i64 %i.ey, 103
  %i.fa = lshr i64 %i.ez, 10
  %i.fb = and i64 %i.fa, 4222189076152335         ; 2 uses
  %.neg16.i16 = mul i64 %i.fb, 72057594037927926
  %i.fc = add i64 %.neg16.i16, %i.ey
  %i.fd = shl i64 %i.fc, 8
  %i.fe = or disjoint i64 %i.fb, 3472328296227680304
  %i.ff = add i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %.022.i, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fg, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.e, %bb.c ], [ %i.ag, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
  %i.c = sub i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 10 uses
  %.0 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 9 uses
  %.not.i = icmp ugt i64 %.0, 4294967295
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw i64 %.0 to i32                 ; 4 uses
  %i.e = icmp samesign ult i64 %.0, 10
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %.0 to i8
  %i.g = or disjoint i8 %i.f, 48
  store i8 %i.g, ptr %.07, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i64 %.0, 100000000
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = udiv i32 %i.d, 10000
  %i.k = urem i32 %i.d, 10000
  %i.l = zext nneg i32 %i.j to i64
  %i.m = zext nneg i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, %i.l               ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 10486
  %i.q = lshr i64 %i.p, 20
  %i.r = and i64 %i.q, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.r, -100
  %i.s = add nsw i64 %.neg.i, %i.o
  %i.t = shl nsw i64 %i.s, 16
  %i.u = add nsw i64 %i.t, %i.r                   ; 2 uses
  %i.v = mul i64 %i.u, 103
  %i.w = lshr i64 %i.v, 10
  %i.x = and i64 %i.w, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.x, 72057594037927926
  %i.y = add i64 %.neg16.i, %i.u
  %i.z = shl i64 %i.y, 8
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ad = and i64 %i.ac, 56
  %i.ae = add i64 %i.aa, 3472328296227680304
  %i.af = lshr i64 %i.ae, %i.ad
  store i64 %i.af, ptr %.07, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.ah = lshr i64 %i.ac, 3
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = udiv i32 %i.d, 100000000                ; 3 uses
  %i.al = urem i32 %i.d, 100000000                ; 2 uses
  %i.am = udiv i32 %i.al, 10000
  %i.an = urem i32 %i.al, 10000
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = or disjoint i64 %i.aq, %i.ao            ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 10486
  %i.at = lshr i64 %i.as, 20
  %i.au = and i64 %i.at, 545460846719             ; 2 uses
  %.neg.i9 = mul nsw i64 %i.au, -100
  %i.av = add nsw i64 %.neg.i9, %i.ar
  %i.aw = shl nsw i64 %i.av, 16
  %i.ax = add nsw i64 %i.aw, %i.au                ; 2 uses
  %i.ay = mul i64 %i.ax, 103
  %i.az = lshr i64 %i.ay, 10
  %i.ba = and i64 %i.az, 4222189076152335         ; 2 uses
  %.neg16.i10 = mul i64 %i.ba, 72057594037927926
  %i.bb = add i64 %.neg16.i10, %i.ax
  %i.bc = shl i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.ba, 3472328296227680304
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = add nsw i32 %i.ak, -10
  %i.bg = ashr i32 %i.bf, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ak, 103
  %i.bh = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i11 = mul nsw i32 %i.bh, -10
  %i.bi = add nsw i32 %.neg.i11, %i.ak
  %i.bj = or disjoint i32 %i.bh, 12336
  %i.bk = shl nsw i32 %i.bi, 8
  %i.bl = add nsw i32 %i.bj, %i.bk
  %i.bm = and i32 %i.bg, 8
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc nuw nsw i32 %i.bn to i16
  store i16 %i.bo, ptr %.07, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.07, i64 2
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq ; 2 uses
  store i64 %i.be, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.i:                                             ; preds = %bb.c
  %i.bt = icmp ult i64 %.0, 10000000000000000
  %i.bu = udiv i64 %.0, 100000000                 ; 2 uses
  %.023.in.i = urem i64 %.0, 100000000
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = trunc nuw nsw i64 %i.bu to i32          ; 2 uses
  %i.bw = udiv i32 %i.bv, 10000
  %i.bx = urem i32 %i.bv, 10000
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = shl nuw nsw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.ca, %i.by            ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 10486
  %i.cd = lshr i64 %i.cc, 20
  %i.ce = and i64 %i.cd, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.ce, -100
  %i.cf = add nsw i64 %.neg.i12, %i.cb
  %i.cg = shl nsw i64 %i.cf, 16
  %i.ch = add nsw i64 %i.cg, %i.ce                ; 2 uses
  %i.ci = mul i64 %i.ch, 103
  %i.cj = lshr i64 %i.ci, 10
  %i.ck = and i64 %i.cj, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.ck, 72057594037927926
  %i.cl = add i64 %.neg16.i13, %i.ch
  %i.cm = shl i64 %i.cl, 8
  %i.cn = add i64 %i.cm, %i.ck                    ; 3 uses
  %i.co = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cq = and i64 %i.cp, 56
  %i.cr = add i64 %i.cn, 3472328296227680304
  %i.cs = lshr i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %.07, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.cu = lshr i64 %i.cp, 3
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.cv
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cx = udiv i64 %.0, 10000000000000000
  %i.cy = trunc nuw nsw i64 %i.cx to i32          ; 2 uses
  %i.cz = urem i64 %i.bu, 100000000
  %i.da = trunc nuw nsw i64 %i.cz to i32          ; 2 uses
  %i.db = udiv i32 %i.da, 10000
  %i.dc = urem i32 %i.da, 10000
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = shl nuw nsw i64 %i.de, 32
  %i.dg = or disjoint i64 %i.df, %i.dd            ; 2 uses
  %i.dh = mul nuw nsw i64 %i.dg, 10486
  %i.di = lshr i64 %i.dh, 20
  %i.dj = and i64 %i.di, 545460846719             ; 2 uses
  %.neg.i18 = mul nsw i64 %i.dj, -100
  %i.dk = add nsw i64 %.neg.i18, %i.dg
  %i.dl = shl nsw i64 %i.dk, 16
  %i.dm = add nsw i64 %i.dl, %i.dj                ; 2 uses
  %i.dn = mul i64 %i.dm, 103
  %i.do = lshr i64 %i.dn, 10
  %i.dp = and i64 %i.do, 4222189076152335         ; 2 uses
  %.neg16.i19 = mul i64 %i.dp, 72057594037927926
  %i.dq = add i64 %.neg16.i19, %i.dm
  %i.dr = shl i64 %i.dq, 8
  %i.ds = or disjoint i64 %i.dp, 3472328296227680304
  %i.dt = add i64 %i.ds, %i.dr
  %i.du = mul nuw nsw i32 %i.cy, 10486
  %i.dv = lshr i32 %i.du, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.dv, -100
  %i.dw = add nsw i32 %narrow.neg.i, %i.cy
  %i.dx = shl nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %i.dv            ; 2 uses
  %i.dz = mul i32 %i.dy, 103
  %i.ea = lshr i32 %i.dz, 10
  %i.eb = and i32 %i.ea, 983055                   ; 2 uses
  %.neg.i20 = mul i32 %i.eb, 16777206
  %i.ec = add i32 %.neg.i20, %i.dy
  %i.ed = shl i32 %i.ec, 8
  %i.ee = add i32 %i.ed, %i.eb                    ; 3 uses
  %i.ef = icmp ne i32 %i.ee, 0
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ee, i1 true) ; 2 uses
  %i.eh = and i32 %i.eg, 24
  %i.ei = add i32 %i.ee, 808464432
  %i.ej = lshr i32 %i.ei, %i.eh
  store i32 %i.ej, ptr %.07, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.07, i64 4
  %i.el = lshr i32 %i.eg, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 2 uses
  store i64 %i.dt, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.j, %bb.k
  %.022.i = phi ptr [ %i.ep, %bb.k ], [ %i.cw, %bb.j ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.eq = udiv i32 %.023.i, 10000
  %i.er = urem i32 %.023.i, 10000
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = shl nuw nsw i64 %i.et, 32
  %i.ev = or disjoint i64 %i.eu, %i.es            ; 2 uses
  %i.ew = mul nuw nsw i64 %i.ev, 10486
  %i.ex = lshr i64 %i.ew, 20
  %i.ey = and i64 %i.ex, 545460846719             ; 2 uses
  %.neg.i21 = mul nsw i64 %i.ey, -100
  %i.ez = add nsw i64 %.neg.i21, %i.ev
  %i.fa = shl nsw i64 %i.ez, 16
  %i.fb = add nsw i64 %i.fa, %i.ey                ; 2 uses
  %i.fc = mul i64 %i.fb, 103
  %i.fd = lshr i64 %i.fc, 10
  %i.fe = and i64 %i.fd, 4222189076152335         ; 2 uses
  %.neg16.i22 = mul i64 %i.fe, 72057594037927926
  %i.ff = add i64 %.neg16.i22, %i.fb
  %i.fg = shl i64 %i.ff, 8
  %i.fh = or disjoint i64 %i.fe, 3472328296227680304
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %.022.i, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fj, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.h, %bb.e ], [ %i.aj, %bb.g ], [ %i.bs, %bb.h ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %0, ptr noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = fcmp uno double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = bitcast double %0 to i64
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !10
  store i8 0, ptr %i.g, align 1, !tbaa !10
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.k = fcmp olt double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
  %i.m = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1139 = phi ptr [ %i.l, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0135 = phi double [ %i.m, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.n = fcmp ogt double %.0135, f0x7FEFFFFFFFFFFFFF
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1139, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.0135, f0x412E847F00000000
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0135, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0135, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.t, double %.0135, double %i.u ; 3 uses
  %.0.i = select i1 %i.t, i32 5, i32 261          ; 2 uses
  %i.v = fcmp ult double %.085.i, 1.000000e+133   ; 2 uses
  %i.w = or disjoint i32 %.0.i, 128
  %i.x = fmul nnan double %.085.i, 1.000000e-128
  %.186.i = select i1 %i.v, double %.085.i, double %i.x ; 3 uses
  %.1.i = select i1 %i.v, i32 %.0.i, i32 %i.w     ; 2 uses
  %i.y = fcmp ult double %.186.i, 1.000000e+69    ; 2 uses
  %i.z = or disjoint i32 %.1.i, 64
  %i.aa = fmul nnan double %.186.i, f0x32A50FFD44F4A73D
  %.287.i = select i1 %i.y, double %.186.i, double %i.aa ; 3 uses
  %.2.i = select i1 %i.y, i32 %.1.i, i32 %i.z     ; 2 uses
  %i.ab = fcmp ult double %.287.i, f0x479E17B84357691B ; 2 uses
  %i.ac = or disjoint i32 %.2.i, 32
  %i.ad = fmul nnan double %.287.i, 1.000000e-32
  %.388.i = select i1 %i.ab, double %.287.i, double %i.ad ; 3 uses
  %.3.i = select i1 %i.ab, i32 %.2.i, i32 %i.ac   ; 2 uses
  %i.ae = fcmp ult double %.388.i, 1.000000e+21   ; 2 uses
  %i.af = add nuw nsw i32 %.3.i, 16
  %i.ag = fmul nnan double %.388.i, f0x3C9CD2B297D889BC
  %.489.i = select i1 %i.ae, double %.388.i, double %i.ag ; 3 uses
  %.4.i = select i1 %i.ae, i32 %.3.i, i32 %i.af   ; 2 uses
  %i.ah = fcmp ult double %.489.i, 1.000000e+13   ; 2 uses
  %i.ai = add nuw nsw i32 %.4.i, 8
  %i.aj = fmul nnan double %.489.i, 1.000000e-08
  %.590.i = select i1 %i.ah, double %.489.i, double %i.aj ; 3 uses
  %.5.i = select i1 %i.ah, i32 %.4.i, i32 %i.ai   ; 2 uses
  %i.ak = fcmp ult double %.590.i, 1.000000e+09   ; 2 uses
  %i.al = add nuw nsw i32 %.5.i, 4
  %i.am = fmul nnan double %.590.i, 1.000000e-04
  %.691.i = select i1 %i.ak, double %.590.i, double %i.am ; 3 uses
  %.6.i = select i1 %i.ak, i32 %.5.i, i32 %i.al   ; 2 uses
  %i.an = fcmp ult double %.691.i, 1.000000e+07   ; 2 uses
  %i.ao = add nuw nsw i32 %.6.i, 2
  %i.ap = fmul nnan double %.691.i, 1.000000e-02
  %.792.i = select i1 %i.an, double %.691.i, double %i.ap ; 3 uses
  %.7.i = select i1 %i.an, i32 %.6.i, i32 %i.ao   ; 2 uses
  %i.aq = fcmp ult double %.792.i, 1.000000e+06
  br i1 %i.aq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i32 %.7.i, 1
  %i.as = fmul nnan double %.792.i, 1.000000e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.at = fcmp olt double %.0135, 1.000000e-250   ; 2 uses
  %i.au = fmul nnan double %.0135, 1.000000e+256
  %.893.i = select i1 %i.at, double %i.au, double %.0135 ; 3 uses
  %.8.i = select i1 %i.at, i32 -251, i32 5        ; 2 uses
  %i.av = fcmp olt double %.893.i, 1.000000e-122  ; 2 uses
  %i.aw = add nsw i32 %.8.i, -128
  %i.ax = fmul nnan double %.893.i, 1.000000e+128
  %.994.i = select i1 %i.av, double %i.ax, double %.893.i ; 3 uses
  %.9.i = select i1 %i.av, i32 %i.aw, i32 %.8.i   ; 2 uses
  %i.ay = fcmp olt double %.994.i, 1.000000e-58   ; 2 uses
  %i.az = add nsw i32 %.9.i, -64
  %i.ba = fmul nnan double %.994.i, 1.000000e+64
  %.1095.i = select i1 %i.ay, double %i.ba, double %.994.i ; 3 uses
  %.10.i = select i1 %i.ay, i32 %i.az, i32 %.9.i  ; 2 uses
  %i.bb = fcmp olt double %.1095.i, 1.000000e-26  ; 2 uses
  %i.bc = add nsw i32 %.10.i, -32
  %i.bd = fmul nnan double %.1095.i, 1.000000e+32
  %.1196.i = select i1 %i.bb, double %i.bd, double %.1095.i ; 3 uses
  %.11.i = select i1 %i.bb, i32 %i.bc, i32 %.10.i ; 2 uses
  %i.be = fcmp olt double %.1196.i, 1.000000e-10  ; 2 uses
  %i.bf = add nsw i32 %.11.i, -16
  %i.bg = fmul nnan double %.1196.i, 1.000000e+16
  %.1297.i = select i1 %i.be, double %i.bg, double %.1196.i ; 3 uses
  %.12.i = select i1 %i.be, i32 %i.bf, i32 %.11.i ; 2 uses
  %i.bh = fcmp olt double %.1297.i, 1.000000e-02  ; 2 uses
  %i.bi = add nsw i32 %.12.i, -8
  %i.bj = fmul nnan double %.1297.i, 1.000000e+08
  %.1398.i = select i1 %i.bh, double %i.bj, double %.1297.i ; 3 uses
  %.13.i = select i1 %i.bh, i32 %i.bi, i32 %.12.i ; 2 uses
  %i.bk = fcmp olt double %.1398.i, 1.000000e+02  ; 2 uses
  %i.bl = add nsw i32 %.13.i, -4
  %i.bm = fmul nnan double %.1398.i, 1.000000e+04
  %.1499.i = select i1 %i.bk, double %i.bm, double %.1398.i ; 3 uses
  %.14.i = select i1 %i.bk, i32 %i.bl, i32 %.13.i ; 2 uses
  %i.bn = fcmp olt double %.1499.i, 1.000000e+04  ; 2 uses
  %i.bo = add nsw i32 %.14.i, -2
  %i.bp = fmul nnan double %.1499.i, 1.000000e+02
  %.15100.i = select i1 %i.bn, double %i.bp, double %.1499.i ; 3 uses
  %.15.i = select i1 %i.bn, i32 %i.bo, i32 %.14.i ; 2 uses
  %i.bq = fcmp olt double %.15100.i, 1.000000e+05
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.15.i, -1
  %i.bs = fmul nnan double %.15100.i, 1.000000e+01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.16101.i = phi double [ %i.as, %bb.m ], [ %.792.i, %bb.l ], [ %i.bs, %bb.o ], [ %.15100.i, %bb.n ]
  %.16.i = phi i32 [ %i.ar, %bb.m ], [ %.7.i, %bb.l ], [ %i.br, %bb.o ], [ %.15.i, %bb.n ] ; 4 uses
  %i.bt = fmul double %.16101.i, 6.553600e+04
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
  %i.bv = and i64 %i.bu, 65535
  %.off.i = add nsw i64 %i.bv, -32767
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bu, 16                      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.by = call double @frexp(double noundef %.0135, ptr noundef nonnull %i.a) #15
  %i.bz = fmul double %i.by, f0x43E0000000000000
  %i.ca = fptoui double %i.bz to i64
  %i.cb = shl i64 %i.ca, 1                        ; 2 uses
end_hunk_0
