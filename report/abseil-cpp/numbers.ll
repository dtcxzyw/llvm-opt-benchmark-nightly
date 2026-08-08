inline.NumInlined: 554
inline.NumDeleted: 144
begin_hunk_0_@_ZN4absl12lts_2026052610SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd:bb.a
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11, !noalias !23
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11, !noalias !23
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11, !noalias !23
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11, !noalias !23
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39 ], [ %i.bc, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37 ], [ %i.bb, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bg, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !11
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = add i64 %.sroa.speculated.i.i.i, -1     ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.8.0 = phi ptr [ %i.bl, %bb.k ], [ %i.c, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.bj, %bb.k ], [ %.sroa.speculated.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.0.0 ; 2 uses
  %i.bp = tail call { ptr, i32 } @_ZN4absl12lts_2026052610from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef nonnull %.sroa.8.0, ptr noundef nonnull %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3) ; 2 uses
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
  %i.bu = load double, ptr %2, align 8, !tbaa !21 ; 2 uses
  %i.bv = fcmp ogt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp olt double %i.bu, -1.000000e+00
  br i1 %i.bw, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi double [ +inf, %bb.n ], [ -inf, %bb.o ]
  store double %.sink, ptr %2, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.l, %bb.o, %bb.m, %bb.j, %bb.k, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.1 = phi i1 [ false, %bb.j ], [ false, %_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.o ], [ true, %.sink.split ]
  ret i1 %.1
}

declare { ptr, i32 } @_ZN4absl12lts_2026052610from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052610SimpleAtobESt17basic_string_viewIcSt11char_traitsIcEEPb(i64 %0, ptr %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 51), i32 noundef 122, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 4, ptr nonnull @.str.4) #21
  br i1 %i.a, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.5) #21
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 3, ptr nonnull @.str.6) #21
  br i1 %i.c, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.7) #21
  br i1 %i.d, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.8) #21
  br i1 %i.e, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 5, ptr nonnull @.str.9) #21
  br i1 %i.f, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.10) #21
  br i1 %i.g, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 2, ptr nonnull @.str.11) #21
  br i1 %i.h, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.12) #21
  br i1 %i.i, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = tail call noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.13) #21
  br i1 %i.j, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i8 %.sink, ptr %2, align 1, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2026052616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #4 {
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
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  %i.c = or disjoint i8 %i.b, 48
  store i8 %i.c, ptr %1, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.af, %bb.d ], [ %i.bo, %bb.e ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !11
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
  store i8 %i.f, ptr %.07, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.ai, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
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
  store i8 %i.d, ptr %1, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.h, %bb.i
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fg, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.e, %bb.c ], [ %i.ag, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !11
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
  store i8 %i.g, ptr %.07, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.j, %bb.k
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fj, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.h, %bb.e ], [ %i.aj, %bb.g ], [ %i.bs, %bb.h ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64 %0, i64 %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.not.i45.i = icmp ugt i64 %0, 4294967295
  br i1 %.not.i45.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw i64 %0 to i32                  ; 4 uses
  %i.c = icmp samesign ult i64 %0, 10
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw nsw i64 %0 to i8
  %i.e = or disjoint i8 %i.d, 48
  store i8 %i.e, ptr %2, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i64 %0, 100000000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = udiv i32 %i.b, 10000
  %i.i = urem i32 %i.b, 10000
  %i.j = zext nneg i32 %i.h to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j               ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 10486
  %i.o = lshr i64 %i.n, 20
  %i.p = and i64 %i.o, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.p, -100
  %i.q = add nsw i64 %.neg.i, %i.m
  %i.r = shl nsw i64 %i.q, 16
  %i.s = add nsw i64 %i.r, %i.p                   ; 2 uses
  %i.t = mul i64 %i.s, 103
  %i.u = lshr i64 %i.t, 10
  %i.v = and i64 %i.u, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.v, 72057594037927926
  %i.w = add i64 %.neg16.i, %i.s
  %i.x = shl i64 %i.w, 8
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true) ; 2 uses
  %i.ab = and i64 %i.aa, 56
  %i.ac = add i64 %i.y, 3472328296227680304
  %i.ad = lshr i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %2, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = lshr i64 %i.aa, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = udiv i32 %i.b, 100000000                ; 3 uses
  %i.aj = urem i32 %i.b, 100000000                ; 2 uses
  %i.ak = udiv i32 %i.aj, 10000
  %i.al = urem i32 %i.aj, 10000
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = shl nuw nsw i64 %i.an, 32
  %i.ap = or disjoint i64 %i.ao, %i.am            ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 10486
  %i.ar = lshr i64 %i.aq, 20
  %i.as = and i64 %i.ar, 545460846719             ; 2 uses
  %.neg.i5 = mul nsw i64 %i.as, -100
  %i.at = add nsw i64 %.neg.i5, %i.ap
  %i.au = shl nsw i64 %i.at, 16
  %i.av = add nsw i64 %i.au, %i.as                ; 2 uses
  %i.aw = mul i64 %i.av, 103
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = and i64 %i.ax, 4222189076152335         ; 2 uses
  %.neg16.i6 = mul i64 %i.ay, 72057594037927926
  %i.az = add i64 %.neg16.i6, %i.av
  %i.ba = shl i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ay, 3472328296227680304
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = add nsw i32 %i.ai, -10
  %i.be = ashr i32 %i.bd, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ai, 103
  %i.bf = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i7 = mul nsw i32 %i.bf, -10
  %i.bg = add nsw i32 %.neg.i7, %i.ai
  %i.bh = or disjoint i32 %i.bf, 12336
  %i.bi = shl nsw i32 %i.bg, 8
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = and i32 %i.be, 8
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc nuw nsw i32 %i.bl to i16
  store i16 %i.bm, ptr %2, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bo = sext i32 %i.be to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo ; 2 uses
  store i64 %i.bc, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.h:                                             ; preds = %bb.b
  %i.br = icmp ult i64 %0, 10000000000000000
  %i.bs = udiv i64 %0, 100000000                  ; 2 uses
  %.023.in.i50.i = urem i64 %0, 100000000
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 2 uses
  %i.bu = udiv i32 %i.bt, 10000
  %i.bv = urem i32 %i.bt, 10000
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = shl nuw nsw i64 %i.bx, 32
  %i.bz = or disjoint i64 %i.by, %i.bw            ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 10486
  %i.cb = lshr i64 %i.ca, 20
  %i.cc = and i64 %i.cb, 545460846719             ; 2 uses
  %.neg.i8 = mul nsw i64 %i.cc, -100
  %i.cd = add nsw i64 %.neg.i8, %i.bz
  %i.ce = shl nsw i64 %i.cd, 16
  %i.cf = add nsw i64 %i.ce, %i.cc                ; 2 uses
  %i.cg = mul i64 %i.cf, 103
  %i.ch = lshr i64 %i.cg, 10
  %i.ci = and i64 %i.ch, 4222189076152335         ; 2 uses
  %.neg16.i9 = mul i64 %i.ci, 72057594037927926
  %i.cj = add i64 %.neg16.i9, %i.cf
  %i.ck = shl i64 %i.cj, 8
  %i.cl = add i64 %i.ck, %i.ci                    ; 3 uses
  %i.cm = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cl, i1 true) ; 2 uses
  %i.co = and i64 %i.cn, 56
  %i.cp = add i64 %i.cl, 3472328296227680304
  %i.cq = lshr i64 %i.cp, %i.co
  store i64 %i.cq, ptr %2, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = lshr i64 %i.cn, 3
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 %i.ct
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

bb.j:                                             ; preds = %bb.h
  %i.cv = udiv i64 %0, 10000000000000000
  %i.cw = trunc nuw nsw i64 %i.cv to i32          ; 2 uses
  %i.cx = urem i64 %i.bs, 100000000
  %i.cy = trunc nuw nsw i64 %i.cx to i32          ; 2 uses
  %i.cz = udiv i32 %i.cy, 10000
  %i.da = urem i32 %i.cy, 10000
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = shl nuw nsw i64 %i.dc, 32
  %i.de = or disjoint i64 %i.dd, %i.db            ; 2 uses
  %i.df = mul nuw nsw i64 %i.de, 10486
  %i.dg = lshr i64 %i.df, 20
  %i.dh = and i64 %i.dg, 545460846719             ; 2 uses
  %.neg.i14 = mul nsw i64 %i.dh, -100
  %i.di = add nsw i64 %.neg.i14, %i.de
  %i.dj = shl nsw i64 %i.di, 16
  %i.dk = add nsw i64 %i.dj, %i.dh                ; 2 uses
  %i.dl = mul i64 %i.dk, 103
  %i.dm = lshr i64 %i.dl, 10
  %i.dn = and i64 %i.dm, 4222189076152335         ; 2 uses
  %.neg16.i15 = mul i64 %i.dn, 72057594037927926
  %i.do = add i64 %.neg16.i15, %i.dk
  %i.dp = shl i64 %i.do, 8
  %i.dq = or disjoint i64 %i.dn, 3472328296227680304
  %i.dr = add i64 %i.dq, %i.dp
  %i.ds = mul nuw nsw i32 %i.cw, 10486
  %i.dt = lshr i32 %i.ds, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.dt, -100
  %i.du = add nsw i32 %narrow.neg.i, %i.cw
  %i.dv = shl nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dt            ; 2 uses
  %i.dx = mul i32 %i.dw, 103
  %i.dy = lshr i32 %i.dx, 10
  %i.dz = and i32 %i.dy, 983055                   ; 2 uses
  %.neg.i16 = mul i32 %i.dz, 16777206
  %i.ea = add i32 %.neg.i16, %i.dw
  %i.eb = shl i32 %i.ea, 8
  %i.ec = add i32 %i.eb, %i.dz                    ; 3 uses
  %i.ed = icmp ne i32 %i.ec, 0
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ec, i1 true) ; 2 uses
  %i.ef = and i32 %i.ee, 24
  %i.eg = add i32 %i.ec, 808464432
  %i.eh = lshr i32 %i.eg, %i.ef
  store i32 %i.eh, ptr %2, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ej = lshr i32 %i.ee, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el ; 2 uses
  store i64 %i.dr, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i: ; preds = %bb.i, %bb.j
  %.022.i49.i = phi ptr [ %i.en, %bb.j ], [ %i.cu, %bb.i ] ; 2 uses
  %.023.i51.i = trunc nuw nsw i64 %.023.in.i50.i to i32 ; 2 uses
  %i.eo = udiv i32 %.023.i51.i, 10000
  %i.ep = urem i32 %.023.i51.i, 10000
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = shl nuw nsw i64 %i.er, 32
  %i.et = or disjoint i64 %i.es, %i.eq            ; 2 uses
  %i.eu = mul nuw nsw i64 %i.et, 10486
  %i.ev = lshr i64 %i.eu, 20
  %i.ew = and i64 %i.ev, 545460846719             ; 2 uses
  %.neg.i17 = mul nsw i64 %i.ew, -100
  %i.ex = add nsw i64 %.neg.i17, %i.et
  %i.ey = shl nsw i64 %i.ex, 16
  %i.ez = add nsw i64 %i.ey, %i.ew                ; 2 uses
  %i.fa = mul i64 %i.ez, 103
  %i.fb = lshr i64 %i.fa, 10
  %i.fc = and i64 %i.fb, 4222189076152335         ; 2 uses
  %.neg16.i18 = mul i64 %i.fc, 72057594037927926
  %i.fd = add i64 %.neg16.i18, %i.ez
  %i.fe = shl i64 %i.fd, 8
  %i.ff = or disjoint i64 %i.fc, 3472328296227680304
  %i.fg = add i64 %i.ff, %i.fe
  store i64 %i.fg, ptr %.022.i49.i, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.022.i49.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.k:                                             ; preds = %bb.a
  %i.fi = zext i64 %1 to i128
  %i.fj = shl nuw i128 %i.fi, 64
  %i.fk = zext i64 %0 to i128
  %i.fl = or disjoint i128 %i.fj, %i.fk           ; 3 uses
  %.frozen = freeze i128 %i.fl                    ; 2 uses
  %i.fm = udiv i128 %.frozen, 10000000000000000   ; 2 uses
  %i.fn = mul i128 %i.fm, 10000000000000000
  %.decomposed = sub i128 %.frozen, %i.fn
  %i.fo = trunc nuw nsw i128 %.decomposed to i64  ; 4 uses
  %i.fp = urem i128 %i.fm, 10000000000000000      ; 3 uses
  %i.fq = trunc nuw nsw i128 %i.fp to i64         ; 5 uses
  %i.fr = icmp ult i128 %i.fl, 100000000000000000000000000000000
  br i1 %i.fr, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not.i35.i = icmp samesign ugt i64 %i.fq, 4294967295
  br i1 %.not.i35.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fs = trunc nuw i128 %i.fp to i32             ; 6 uses
  %i.ft = icmp ult i32 %i.fs, 10
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fu = trunc nuw i128 %i.fp to i8
  %i.fv = or disjoint i8 %i.fu, 48
  store i8 %i.fv, ptr %2, align 1, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.o:                                             ; preds = %bb.m
  %i.fx = icmp ult i32 %i.fs, 100000000
  br i1 %i.fx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fy = udiv i32 %i.fs, 10000
  %i.fz = urem i32 %i.fs, 10000
  %i.ga = zext nneg i32 %i.fy to i64
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = shl nuw nsw i64 %i.gb, 32
  %i.gd = or disjoint i64 %i.gc, %i.ga            ; 2 uses
  %i.ge = mul nuw nsw i64 %i.gd, 10486
  %i.gf = lshr i64 %i.ge, 20
  %i.gg = and i64 %i.gf, 545460846719             ; 2 uses
  %.neg.i25 = mul nsw i64 %i.gg, -100
  %i.gh = add nsw i64 %.neg.i25, %i.gd
  %i.gi = shl nsw i64 %i.gh, 16
  %i.gj = add nsw i64 %i.gi, %i.gg                ; 2 uses
  %i.gk = mul i64 %i.gj, 103
  %i.gl = lshr i64 %i.gk, 10
  %i.gm = and i64 %i.gl, 4222189076152335         ; 2 uses
  %.neg16.i26 = mul i64 %i.gm, 72057594037927926
  %i.gn = add i64 %.neg16.i26, %i.gj
  %i.go = shl i64 %i.gn, 8
  %i.gp = add i64 %i.go, %i.gm                    ; 3 uses
  %i.gq = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true) ; 2 uses
  %i.gs = and i64 %i.gr, 56
  %i.gt = add i64 %i.gp, 3472328296227680304
  %i.gu = lshr i64 %i.gt, %i.gs
  store i64 %i.gu, ptr %2, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gw = lshr i64 %i.gr, 3
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 %i.gx
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.q:                                             ; preds = %bb.o
  %i.gz = udiv i32 %i.fs, 100000000               ; 3 uses
  %i.ha = urem i32 %i.fs, 100000000               ; 2 uses
  %i.hb = udiv i32 %i.ha, 10000
  %i.hc = urem i32 %i.ha, 10000
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = zext nneg i32 %i.hc to i64
  %i.hf = shl nuw nsw i64 %i.he, 32
  %i.hg = or disjoint i64 %i.hf, %i.hd            ; 2 uses
  %i.hh = mul nuw nsw i64 %i.hg, 10486
  %i.hi = lshr i64 %i.hh, 20
  %i.hj = and i64 %i.hi, 545460846719             ; 2 uses
  %.neg.i27 = mul nsw i64 %i.hj, -100
  %i.hk = add nsw i64 %.neg.i27, %i.hg
  %i.hl = shl nsw i64 %i.hk, 16
  %i.hm = add nsw i64 %i.hl, %i.hj                ; 2 uses
  %i.hn = mul i64 %i.hm, 103
  %i.ho = lshr i64 %i.hn, 10
  %i.hp = and i64 %i.ho, 4222189076152335         ; 2 uses
  %.neg16.i28 = mul i64 %i.hp, 72057594037927926
  %i.hq = add i64 %.neg16.i28, %i.hm
  %i.hr = shl i64 %i.hq, 8
  %i.hs = or disjoint i64 %i.hp, 3472328296227680304
  %i.ht = add i64 %i.hs, %i.hr
  %i.hu = add nsw i32 %i.gz, -10
  %i.hv = ashr i32 %i.hu, 8                       ; 2 uses
  %narrow.i29 = mul nuw nsw i32 %i.gz, 103
  %i.hw = lshr i32 %narrow.i29, 10                ; 2 uses
  %.neg.i30 = mul nsw i32 %i.hw, -10
  %i.hx = add nsw i32 %.neg.i30, %i.gz
  %i.hy = or disjoint i32 %i.hw, 12336
  %i.hz = shl nsw i32 %i.hx, 8
  %i.ia = add nsw i32 %i.hy, %i.hz
  %i.ib = and i32 %i.hv, 8
  %i.ic = lshr i32 %i.ia, %i.ib
  %i.id = trunc nuw nsw i32 %i.ic to i16
  store i16 %i.id, ptr %2, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.if = sext i32 %i.hv to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if ; 2 uses
  store i64 %i.ht, ptr %i.ig, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i: ; preds = %bb.l
  %i.ii = udiv i64 %i.fq, 100000000
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  %i.ik = tail call fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %i.ij) ; 3 uses
  %i.il = icmp ne i64 %i.ik, 0
  tail call void @llvm.assume(i1 %i.il)
  %i.im = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ik, i1 true) ; 2 uses
  %i.in = and i64 %i.im, 56
  %i.io = add i64 %i.ik, 3472328296227680304
  %i.ip = lshr i64 %i.io, %i.in
  store i64 %i.ip, ptr %2, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ir = lshr i64 %i.im, 3
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %i.is ; 2 uses
  %.023.in.i40.i = urem i64 %i.fq, 100000000
  %.023.i41.i = trunc nuw nsw i64 %.023.in.i40.i to i32 ; 2 uses
  %i.iu = udiv i32 %.023.i41.i, 10000
  %i.iv = urem i32 %.023.i41.i, 10000
  %i.iw = zext nneg i32 %i.iu to i64
  %i.ix = zext nneg i32 %i.iv to i64
  %i.iy = shl nuw nsw i64 %i.ix, 32
  %i.iz = or disjoint i64 %i.iy, %i.iw            ; 2 uses
  %i.ja = mul nuw nsw i64 %i.iz, 10486
  %i.jb = lshr i64 %i.ja, 20
  %i.jc = and i64 %i.jb, 545460846719             ; 2 uses
  %.neg.i37 = mul nsw i64 %i.jc, -100
  %i.jd = add nsw i64 %.neg.i37, %i.iz
  %i.je = shl nsw i64 %i.jd, 16
  %i.jf = add nsw i64 %i.je, %i.jc                ; 2 uses
  %i.jg = mul i64 %i.jf, 103
  %i.jh = lshr i64 %i.jg, 10
  %i.ji = and i64 %i.jh, 4222189076152335         ; 2 uses
  %.neg16.i38 = mul i64 %i.ji, 72057594037927926
  %i.jj = add i64 %.neg16.i38, %i.jf
  %i.jk = shl i64 %i.jj, 8
  %i.jl = or disjoint i64 %i.ji, 3472328296227680304
  %i.jm = add i64 %i.jl, %i.jk
  store i64 %i.jm, ptr %i.it, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i: ; preds = %bb.n, %bb.p, %bb.q, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i
  %.0.i38.i = phi ptr [ %i.jn, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i ], [ %i.fw, %bb.n ], [ %i.gy, %bb.p ], [ %i.ih, %bb.q ] ; 2 uses
  %i.jo = udiv i64 %i.fo, 100000000
  %i.jp = urem i64 %i.fo, 100000000
  %i.jq = trunc nuw nsw i64 %i.jo to i32
  %i.jr = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.js = trunc nuw nsw i64 %i.jp to i32
  %i.jt = insertelement <2 x i32> %i.jr, i32 %i.js, i64 1
  %.frozen81 = freeze <2 x i32> %i.jt             ; 2 uses
  %i.ju = udiv <2 x i32> %.frozen81, splat (i32 10000) ; 2 uses
  %i.jv = mul <2 x i32> %i.ju, splat (i32 10000)
  %.decomposed82 = sub <2 x i32> %.frozen81, %i.jv
  %i.jw = zext nneg <2 x i32> %i.ju to <2 x i64>
  %i.jx = zext nneg <2 x i32> %.decomposed82 to <2 x i64>
  %i.jy = shl nuw nsw <2 x i64> %i.jx, splat (i64 32)
  %i.jz = or disjoint <2 x i64> %i.jy, %i.jw      ; 2 uses
  %i.ka = mul nuw nsw <2 x i64> %i.jz, splat (i64 10486)
  %i.kb = lshr <2 x i64> %i.ka, splat (i64 20)
  %i.kc = and <2 x i64> %i.kb, splat (i64 545460846719) ; 2 uses
  %i.kd = mul nsw <2 x i64> %i.kc, splat (i64 -100)
  %i.ke = add nsw <2 x i64> %i.kd, %i.jz
  %i.kf = shl nsw <2 x i64> %i.ke, splat (i64 16)
  %i.kg = add nsw <2 x i64> %i.kf, %i.kc          ; 2 uses
  %i.kh = mul <2 x i64> %i.kg, splat (i64 103)
  %i.ki = lshr <2 x i64> %i.kh, splat (i64 10)
  %i.kj = and <2 x i64> %i.ki, splat (i64 4222189076152335) ; 2 uses
  %i.kk = mul <2 x i64> %i.kj, splat (i64 72057594037927926)
  %i.kl = add <2 x i64> %i.kk, %i.kg
  %i.km = shl <2 x i64> %i.kl, splat (i64 8)
  %i.kn = or disjoint <2 x i64> %i.kj, splat (i64 3472328296227680304)
  %i.ko = add <2 x i64> %i.kn, %i.km
  store <2 x i64> %i.ko, ptr %.0.i38.i, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i38.i, i64 16
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.r:                                             ; preds = %bb.k
  %i.kq = udiv i128 %i.fl, 100000000000000000000000000000000 ; 2 uses
  %i.kr = trunc nuw nsw i128 %i.kq to i32         ; 3 uses
  %i.ks = icmp samesign ult i32 %i.kr, 10
  br i1 %i.ks, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kt = trunc nuw i128 %i.kq to i8
  %i.ku = or disjoint i8 %i.kt, 48
  store i8 %i.ku, ptr %2, align 1, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

bb.t:                                             ; preds = %bb.r
  %i.kw = udiv i32 %i.kr, 10000
  %i.kx = urem i32 %i.kr, 10000
  %i.ky = zext nneg i32 %i.kw to i64
  %i.kz = zext nneg i32 %i.kx to i64
  %i.la = shl nuw nsw i64 %i.kz, 32
  %i.lb = or disjoint i64 %i.la, %i.ky            ; 2 uses
  %i.lc = mul nuw nsw i64 %i.lb, 10486
  %i.ld = lshr i64 %i.lc, 20
  %i.le = and i64 %i.ld, 545460846719             ; 2 uses
  %.neg.i39 = mul nsw i64 %i.le, -100
  %i.lf = add nsw i64 %.neg.i39, %i.lb
  %i.lg = shl nsw i64 %i.lf, 16
  %i.lh = add nsw i64 %i.lg, %i.le                ; 2 uses
  %i.li = mul i64 %i.lh, 103
  %i.lj = lshr i64 %i.li, 10
  %i.lk = and i64 %i.lj, 4222189076152335         ; 2 uses
  %.neg16.i40 = mul i64 %i.lk, 72057594037927926
  %i.ll = add i64 %.neg16.i40, %i.lh
  %i.lm = shl i64 %i.ll, 8
  %i.ln = add i64 %i.lm, %i.lk                    ; 3 uses
  %i.lo = icmp ne i64 %i.ln, 0
  tail call void @llvm.assume(i1 %i.lo)
  %i.lp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 true) ; 2 uses
  %i.lq = and i64 %i.lp, 56
  %i.lr = add i64 %i.ln, 3472328296227680304
  %i.ls = lshr i64 %i.lr, %i.lq
  store i64 %i.ls, ptr %2, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lu = lshr i64 %i.lp, 3
  %i.lv = sub nsw i64 0, %i.lu
  %i.lw = getelementptr inbounds i8, ptr %i.lt, i64 %i.lv
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i: ; preds = %bb.s, %bb.t
  %.0.i.i = phi ptr [ %i.lw, %bb.t ], [ %i.kv, %bb.s ] ; 3 uses
  %i.lx = udiv i64 %i.fq, 100000000
  %i.ly = urem i64 %i.fq, 100000000
  %i.lz = trunc nuw nsw i64 %i.lx to i32
  %i.ma = insertelement <2 x i32> poison, i32 %i.lz, i64 0
  %i.mb = trunc nuw nsw i64 %i.ly to i32
  %i.mc = insertelement <2 x i32> %i.ma, i32 %i.mb, i64 1
  %.frozen83 = freeze <2 x i32> %i.mc             ; 2 uses
  %i.md = udiv <2 x i32> %.frozen83, splat (i32 10000) ; 2 uses
  %i.me = mul <2 x i32> %i.md, splat (i32 10000)
  %.decomposed84 = sub <2 x i32> %.frozen83, %i.me
  %i.mf = zext nneg <2 x i32> %i.md to <2 x i64>
  %i.mg = zext nneg <2 x i32> %.decomposed84 to <2 x i64>
  %i.mh = shl nuw nsw <2 x i64> %i.mg, splat (i64 32)
  %i.mi = or disjoint <2 x i64> %i.mh, %i.mf      ; 2 uses
  %i.mj = mul nuw nsw <2 x i64> %i.mi, splat (i64 10486)
  %i.mk = lshr <2 x i64> %i.mj, splat (i64 20)
  %i.ml = and <2 x i64> %i.mk, splat (i64 545460846719) ; 2 uses
  %i.mm = mul nsw <2 x i64> %i.ml, splat (i64 -100)
  %i.mn = add nsw <2 x i64> %i.mm, %i.mi
  %i.mo = shl nsw <2 x i64> %i.mn, splat (i64 16)
  %i.mp = add nsw <2 x i64> %i.mo, %i.ml          ; 2 uses
  %i.mq = mul <2 x i64> %i.mp, splat (i64 103)
  %i.mr = lshr <2 x i64> %i.mq, splat (i64 10)
  %i.ms = and <2 x i64> %i.mr, splat (i64 4222189076152335) ; 2 uses
  %i.mt = mul <2 x i64> %i.ms, splat (i64 72057594037927926)
  %i.mu = add <2 x i64> %i.mt, %i.mp
  %i.mv = shl <2 x i64> %i.mu, splat (i64 8)
  %i.mw = or disjoint <2 x i64> %i.ms, splat (i64 3472328296227680304)
  %i.mx = add <2 x i64> %i.mw, %i.mv
  store <2 x i64> %i.mx, ptr %.0.i.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.mz = udiv i64 %i.fo, 100000000
  %i.na = urem i64 %i.fo, 100000000
  %i.nb = trunc nuw nsw i64 %i.mz to i32
  %i.nc = insertelement <2 x i32> poison, i32 %i.nb, i64 0
  %i.nd = trunc nuw nsw i64 %i.na to i32
  %i.ne = insertelement <2 x i32> %i.nc, i32 %i.nd, i64 1
  %.frozen85 = freeze <2 x i32> %i.ne             ; 2 uses
  %i.nf = udiv <2 x i32> %.frozen85, splat (i32 10000) ; 2 uses
  %i.ng = mul <2 x i32> %i.nf, splat (i32 10000)
  %.decomposed86 = sub <2 x i32> %.frozen85, %i.ng
  %i.nh = zext nneg <2 x i32> %i.nf to <2 x i64>
  %i.ni = zext nneg <2 x i32> %.decomposed86 to <2 x i64>
  %i.nj = shl nuw nsw <2 x i64> %i.ni, splat (i64 32)
  %i.nk = or disjoint <2 x i64> %i.nj, %i.nh      ; 2 uses
  %i.nl = mul nuw nsw <2 x i64> %i.nk, splat (i64 10486)
  %i.nm = lshr <2 x i64> %i.nl, splat (i64 20)
  %i.nn = and <2 x i64> %i.nm, splat (i64 545460846719) ; 2 uses
  %i.no = mul nsw <2 x i64> %i.nn, splat (i64 -100)
  %i.np = add nsw <2 x i64> %i.no, %i.nk
  %i.nq = shl nsw <2 x i64> %i.np, splat (i64 16)
  %i.nr = add nsw <2 x i64> %i.nq, %i.nn          ; 2 uses
  %i.ns = mul <2 x i64> %i.nr, splat (i64 103)
  %i.nt = lshr <2 x i64> %i.ns, splat (i64 10)
  %i.nu = and <2 x i64> %i.nt, splat (i64 4222189076152335) ; 2 uses
  %i.nv = mul <2 x i64> %i.nu, splat (i64 72057594037927926)
  %i.nw = add <2 x i64> %i.nv, %i.nr
  %i.nx = shl <2 x i64> %i.nw, splat (i64 8)
  %i.ny = or disjoint <2 x i64> %i.nu, splat (i64 3472328296227680304)
  %i.nz = add <2 x i64> %i.ny, %i.nx
  store <2 x i64> %i.nz, ptr %i.my, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i, %bb.g, %bb.f, %bb.d
  %.0.i = phi ptr [ %i.bq, %bb.g ], [ %i.fh, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i ], [ %i.f, %bb.d ], [ %i.ah, %bb.f ], [ %i.kp, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i ], [ %i.oa, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_6int128EPc(i128 %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i128 %0 to i64
  %i.b = lshr i128 %0, 64
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = icmp slt i128 %0, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !11
  %.neg3.i = sub i128 0, %0                       ; 2 uses
  %i.f = trunc i128 %.neg3.i to i64
  %i.g = lshr i128 %.neg3.i, 64
  %i.h = trunc nuw i128 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0 = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.070.0 = phi i64 [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 10 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]    ; 22 uses
  %i.i = icmp eq i64 %.sroa.6.0, 0
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %.not.i45.i = icmp ugt i64 %.sroa.070.0, 4294967295
  br i1 %.not.i45.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw i64 %.sroa.070.0 to i32        ; 4 uses
  %i.k = icmp samesign ult i64 %.sroa.070.0, 10
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %.sroa.070.0 to i8
  %i.m = or disjoint i8 %i.l, 48
  store i8 %i.m, ptr %.0, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i64 %.sroa.070.0, 100000000
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = udiv i32 %i.j, 10000
  %i.q = urem i32 %i.j, 10000
  %i.r = zext nneg i32 %i.p to i64
  %i.s = zext nneg i32 %i.q to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.r               ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 10486
  %i.w = lshr i64 %i.v, 20
  %i.x = and i64 %i.w, 545460846719               ; 2 uses
  %.neg.i11 = mul nsw i64 %i.x, -100
  %i.y = add nsw i64 %.neg.i11, %i.u
  %i.z = shl nsw i64 %i.y, 16
  %i.aa = add nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ab = mul i64 %i.aa, 103
  %i.ac = lshr i64 %i.ab, 10
  %i.ad = and i64 %i.ac, 4222189076152335         ; 2 uses
  %.neg16.i = mul i64 %i.ad, 72057594037927926
  %i.ae = add i64 %.neg16.i, %i.aa
  %i.af = shl i64 %i.ae, 8
  %i.ag = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ah = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.aj = and i64 %i.ai, 56
  %i.ak = add i64 %i.ag, 3472328296227680304
  %i.al = lshr i64 %i.ak, %i.aj
  store i64 %i.al, ptr %.0, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.an = lshr i64 %i.ai, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = udiv i32 %i.j, 100000000                ; 3 uses
  %i.ar = urem i32 %i.j, 100000000                ; 2 uses
  %i.as = udiv i32 %i.ar, 10000
  %i.at = urem i32 %i.ar, 10000
  %i.au = zext nneg i32 %i.as to i64
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = or disjoint i64 %i.aw, %i.au            ; 2 uses
  %i.ay = mul nuw nsw i64 %i.ax, 10486
  %i.az = lshr i64 %i.ay, 20
  %i.ba = and i64 %i.az, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.ba, -100
  %i.bb = add nsw i64 %.neg.i12, %i.ax
  %i.bc = shl nsw i64 %i.bb, 16
  %i.bd = add nsw i64 %i.bc, %i.ba                ; 2 uses
  %i.be = mul i64 %i.bd, 103
  %i.bf = lshr i64 %i.be, 10
  %i.bg = and i64 %i.bf, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.bg, 72057594037927926
  %i.bh = add i64 %.neg16.i13, %i.bd
  %i.bi = shl i64 %i.bh, 8
  %i.bj = or disjoint i64 %i.bg, 3472328296227680304
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add nsw i32 %i.aq, -10
  %i.bm = ashr i32 %i.bl, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.aq, 103
  %i.bn = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i14 = mul nsw i32 %i.bn, -10
  %i.bo = add nsw i32 %.neg.i14, %i.aq
  %i.bp = or disjoint i32 %i.bn, 12336
  %i.bq = shl nsw i32 %i.bo, 8
  %i.br = add nsw i32 %i.bp, %i.bq
  %i.bs = and i32 %i.bm, 8
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc nuw nsw i32 %i.bt to i16
  store i16 %i.bu, ptr %.0, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.bw = sext i32 %i.bm to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.j:                                             ; preds = %bb.d
  %i.bz = icmp ult i64 %.sroa.070.0, 10000000000000000
  %i.ca = udiv i64 %.sroa.070.0, 100000000        ; 2 uses
  %.023.in.i50.i = urem i64 %.sroa.070.0, 100000000
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = trunc nuw nsw i64 %i.ca to i32          ; 2 uses
  %i.cc = udiv i32 %i.cb, 10000
  %i.cd = urem i32 %i.cb, 10000
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  %i.ch = or disjoint i64 %i.cg, %i.ce            ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 10486
  %i.cj = lshr i64 %i.ci, 20
  %i.ck = and i64 %i.cj, 545460846719             ; 2 uses
  %.neg.i15 = mul nsw i64 %i.ck, -100
  %i.cl = add nsw i64 %.neg.i15, %i.ch
  %i.cm = shl nsw i64 %i.cl, 16
  %i.cn = add nsw i64 %i.cm, %i.ck                ; 2 uses
  %i.co = mul i64 %i.cn, 103
  %i.cp = lshr i64 %i.co, 10
  %i.cq = and i64 %i.cp, 4222189076152335         ; 2 uses
  %.neg16.i16 = mul i64 %i.cq, 72057594037927926
  %i.cr = add i64 %.neg16.i16, %i.cn
  %i.cs = shl i64 %i.cr, 8
  %i.ct = add i64 %i.cs, %i.cq                    ; 3 uses
  %i.cu = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ct, i1 true) ; 2 uses
  %i.cw = and i64 %i.cv, 56
  %i.cx = add i64 %i.ct, 3472328296227680304
  %i.cy = lshr i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %.0, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.da = lshr i64 %i.cv, 3
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

bb.l:                                             ; preds = %bb.j
  %i.dd = udiv i64 %.sroa.070.0, 10000000000000000
  %i.de = trunc nuw nsw i64 %i.dd to i32          ; 2 uses
  %i.df = urem i64 %i.ca, 100000000
  %i.dg = trunc nuw nsw i64 %i.df to i32          ; 2 uses
  %i.dh = udiv i32 %i.dg, 10000
  %i.di = urem i32 %i.dg, 10000
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = shl nuw nsw i64 %i.dk, 32
  %i.dm = or disjoint i64 %i.dl, %i.dj            ; 2 uses
  %i.dn = mul nuw nsw i64 %i.dm, 10486
  %i.do = lshr i64 %i.dn, 20
  %i.dp = and i64 %i.do, 545460846719             ; 2 uses
  %.neg.i21 = mul nsw i64 %i.dp, -100
  %i.dq = add nsw i64 %.neg.i21, %i.dm
  %i.dr = shl nsw i64 %i.dq, 16
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 2 uses
  %i.dt = mul i64 %i.ds, 103
  %i.du = lshr i64 %i.dt, 10
  %i.dv = and i64 %i.du, 4222189076152335         ; 2 uses
  %.neg16.i22 = mul i64 %i.dv, 72057594037927926
  %i.dw = add i64 %.neg16.i22, %i.ds
  %i.dx = shl i64 %i.dw, 8
  %i.dy = or disjoint i64 %i.dv, 3472328296227680304
  %i.dz = add i64 %i.dy, %i.dx
  %i.ea = mul nuw nsw i32 %i.de, 10486
  %i.eb = lshr i32 %i.ea, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.eb, -100
  %i.ec = add nsw i32 %narrow.neg.i, %i.de
  %i.ed = shl nsw i32 %i.ec, 16
  %i.ee = or disjoint i32 %i.ed, %i.eb            ; 2 uses
  %i.ef = mul i32 %i.ee, 103
  %i.eg = lshr i32 %i.ef, 10
  %i.eh = and i32 %i.eg, 983055                   ; 2 uses
  %.neg.i23 = mul i32 %i.eh, 16777206
  %i.ei = add i32 %.neg.i23, %i.ee
  %i.ej = shl i32 %i.ei, 8
  %i.ek = add i32 %i.ej, %i.eh                    ; 3 uses
  %i.el = icmp ne i32 %i.ek, 0
  tail call void @llvm.assume(i1 %i.el)
  %i.em = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ek, i1 true) ; 2 uses
  %i.en = and i32 %i.em, 24
  %i.eo = add i32 %i.ek, 808464432
  %i.ep = lshr i32 %i.eo, %i.en
  store i32 %i.ep, ptr %.0, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.er = lshr i32 %i.em, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et ; 2 uses
  store i64 %i.dz, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i: ; preds = %bb.k, %bb.l
  %.022.i49.i = phi ptr [ %i.ev, %bb.l ], [ %i.dc, %bb.k ] ; 2 uses
  %.023.i51.i = trunc nuw nsw i64 %.023.in.i50.i to i32 ; 2 uses
  %i.ew = udiv i32 %.023.i51.i, 10000
  %i.ex = urem i32 %.023.i51.i, 10000
  %i.ey = zext nneg i32 %i.ew to i64
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = shl nuw nsw i64 %i.ez, 32
  %i.fb = or disjoint i64 %i.fa, %i.ey            ; 2 uses
  %i.fc = mul nuw nsw i64 %i.fb, 10486
  %i.fd = lshr i64 %i.fc, 20
  %i.fe = and i64 %i.fd, 545460846719             ; 2 uses
  %.neg.i24 = mul nsw i64 %i.fe, -100
  %i.ff = add nsw i64 %.neg.i24, %i.fb
  %i.fg = shl nsw i64 %i.ff, 16
  %i.fh = add nsw i64 %i.fg, %i.fe                ; 2 uses
  %i.fi = mul i64 %i.fh, 103
  %i.fj = lshr i64 %i.fi, 10
  %i.fk = and i64 %i.fj, 4222189076152335         ; 2 uses
  %.neg16.i25 = mul i64 %i.fk, 72057594037927926
  %i.fl = add i64 %.neg16.i25, %i.fh
  %i.fm = shl i64 %i.fl, 8
  %i.fn = or disjoint i64 %i.fk, 3472328296227680304
  %i.fo = add i64 %i.fn, %i.fm
  store i64 %i.fo, ptr %.022.i49.i, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.022.i49.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.m:                                             ; preds = %bb.c
  %i.fq = zext i64 %.sroa.6.0 to i128
  %i.fr = shl nuw i128 %i.fq, 64
  %i.fs = zext i64 %.sroa.070.0 to i128
  %i.ft = or disjoint i128 %i.fr, %i.fs           ; 3 uses
  %.frozen = freeze i128 %i.ft                    ; 2 uses
  %i.fu = udiv i128 %.frozen, 10000000000000000   ; 2 uses
  %i.fv = mul i128 %i.fu, 10000000000000000
  %.decomposed = sub i128 %.frozen, %i.fv
  %i.fw = trunc nuw nsw i128 %.decomposed to i64  ; 4 uses
  %i.fx = urem i128 %i.fu, 10000000000000000      ; 3 uses
  %i.fy = trunc nuw nsw i128 %i.fx to i64         ; 5 uses
  %i.fz = icmp ult i128 %i.ft, 100000000000000000000000000000000
  br i1 %i.fz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %.not.i35.i = icmp samesign ugt i64 %i.fy, 4294967295
  br i1 %.not.i35.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = trunc nuw i128 %i.fx to i32             ; 6 uses
  %i.gb = icmp ult i32 %i.ga, 10
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gc = trunc nuw i128 %i.fx to i8
  %i.gd = or disjoint i8 %i.gc, 48
  store i8 %i.gd, ptr %.0, align 1, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.q:                                             ; preds = %bb.o
  %i.gf = icmp ult i32 %i.ga, 100000000
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gg = udiv i32 %i.ga, 10000
  %i.gh = urem i32 %i.ga, 10000
  %i.gi = zext nneg i32 %i.gg to i64
  %i.gj = zext nneg i32 %i.gh to i64
  %i.gk = shl nuw nsw i64 %i.gj, 32
  %i.gl = or disjoint i64 %i.gk, %i.gi            ; 2 uses
  %i.gm = mul nuw nsw i64 %i.gl, 10486
  %i.gn = lshr i64 %i.gm, 20
  %i.go = and i64 %i.gn, 545460846719             ; 2 uses
  %.neg.i34 = mul nsw i64 %i.go, -100
  %i.gp = add nsw i64 %.neg.i34, %i.gl
  %i.gq = shl nsw i64 %i.gp, 16
  %i.gr = add nsw i64 %i.gq, %i.go                ; 2 uses
  %i.gs = mul i64 %i.gr, 103
  %i.gt = lshr i64 %i.gs, 10
  %i.gu = and i64 %i.gt, 4222189076152335         ; 2 uses
  %.neg16.i35 = mul i64 %i.gu, 72057594037927926
  %i.gv = add i64 %.neg16.i35, %i.gr
  %i.gw = shl i64 %i.gv, 8
  %i.gx = add i64 %i.gw, %i.gu                    ; 3 uses
  %i.gy = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gx, i1 true) ; 2 uses
  %i.ha = and i64 %i.gz, 56
  %i.hb = add i64 %i.gx, 3472328296227680304
  %i.hc = lshr i64 %i.hb, %i.ha
  store i64 %i.hc, ptr %.0, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.he = lshr i64 %i.gz, 3
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.s:                                             ; preds = %bb.q
  %i.hh = udiv i32 %i.ga, 100000000               ; 3 uses
  %i.hi = urem i32 %i.ga, 100000000               ; 2 uses
  %i.hj = udiv i32 %i.hi, 10000
  %i.hk = urem i32 %i.hi, 10000
  %i.hl = zext nneg i32 %i.hj to i64
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = shl nuw nsw i64 %i.hm, 32
  %i.ho = or disjoint i64 %i.hn, %i.hl            ; 2 uses
  %i.hp = mul nuw nsw i64 %i.ho, 10486
  %i.hq = lshr i64 %i.hp, 20
  %i.hr = and i64 %i.hq, 545460846719             ; 2 uses
  %.neg.i36 = mul nsw i64 %i.hr, -100
  %i.hs = add nsw i64 %.neg.i36, %i.ho
  %i.ht = shl nsw i64 %i.hs, 16
  %i.hu = add nsw i64 %i.ht, %i.hr                ; 2 uses
  %i.hv = mul i64 %i.hu, 103
  %i.hw = lshr i64 %i.hv, 10
  %i.hx = and i64 %i.hw, 4222189076152335         ; 2 uses
  %.neg16.i37 = mul i64 %i.hx, 72057594037927926
  %i.hy = add i64 %.neg16.i37, %i.hu
  %i.hz = shl i64 %i.hy, 8
  %i.ia = or disjoint i64 %i.hx, 3472328296227680304
  %i.ib = add i64 %i.ia, %i.hz
  %i.ic = add nsw i32 %i.hh, -10
  %i.id = ashr i32 %i.ic, 8                       ; 2 uses
  %narrow.i38 = mul nuw nsw i32 %i.hh, 103
  %i.ie = lshr i32 %narrow.i38, 10                ; 2 uses
  %.neg.i39 = mul nsw i32 %i.ie, -10
  %i.if = add nsw i32 %.neg.i39, %i.hh
  %i.ig = or disjoint i32 %i.ie, 12336
  %i.ih = shl nsw i32 %i.if, 8
  %i.ii = add nsw i32 %i.ig, %i.ih
  %i.ij = and i32 %i.id, 8
  %i.ik = lshr i32 %i.ii, %i.ij
  %i.il = trunc nuw nsw i32 %i.ik to i16
  store i16 %i.il, ptr %.0, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.in = sext i32 %i.id to i64
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 %i.in ; 2 uses
  store i64 %i.ib, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i: ; preds = %bb.n
  %i.iq = udiv i64 %i.fy, 100000000
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = tail call fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %i.ir) ; 3 uses
  %i.it = icmp ne i64 %i.is, 0
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.is, i1 true) ; 2 uses
  %i.iv = and i64 %i.iu, 56
  %i.iw = add i64 %i.is, 3472328296227680304
  %i.ix = lshr i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %.0, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.iz = lshr i64 %i.iu, 3
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.iy, i64 %i.ja ; 2 uses
  %.023.in.i40.i = urem i64 %i.fy, 100000000
  %.023.i41.i = trunc nuw nsw i64 %.023.in.i40.i to i32 ; 2 uses
  %i.jc = udiv i32 %.023.i41.i, 10000
  %i.jd = urem i32 %.023.i41.i, 10000
  %i.je = zext nneg i32 %i.jc to i64
  %i.jf = zext nneg i32 %i.jd to i64
  %i.jg = shl nuw nsw i64 %i.jf, 32
  %i.jh = or disjoint i64 %i.jg, %i.je            ; 2 uses
  %i.ji = mul nuw nsw i64 %i.jh, 10486
  %i.jj = lshr i64 %i.ji, 20
  %i.jk = and i64 %i.jj, 545460846719             ; 2 uses
  %.neg.i46 = mul nsw i64 %i.jk, -100
  %i.jl = add nsw i64 %.neg.i46, %i.jh
  %i.jm = shl nsw i64 %i.jl, 16
  %i.jn = add nsw i64 %i.jm, %i.jk                ; 2 uses
  %i.jo = mul i64 %i.jn, 103
  %i.jp = lshr i64 %i.jo, 10
  %i.jq = and i64 %i.jp, 4222189076152335         ; 2 uses
  %.neg16.i47 = mul i64 %i.jq, 72057594037927926
  %i.jr = add i64 %.neg16.i47, %i.jn
  %i.js = shl i64 %i.jr, 8
  %i.jt = or disjoint i64 %i.jq, 3472328296227680304
  %i.ju = add i64 %i.jt, %i.js
  store i64 %i.ju, ptr %i.jb, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i: ; preds = %bb.p, %bb.r, %bb.s, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i
  %.0.i38.i = phi ptr [ %i.jv, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i ], [ %i.ge, %bb.p ], [ %i.hg, %bb.r ], [ %i.ip, %bb.s ] ; 2 uses
  %i.jw = udiv i64 %i.fw, 100000000
  %i.jx = urem i64 %i.fw, 100000000
  %i.jy = trunc nuw nsw i64 %i.jw to i32
  %i.jz = insertelement <2 x i32> poison, i32 %i.jy, i64 0
  %i.ka = trunc nuw nsw i64 %i.jx to i32
  %i.kb = insertelement <2 x i32> %i.jz, i32 %i.ka, i64 1
  %.frozen94 = freeze <2 x i32> %i.kb             ; 2 uses
  %i.kc = udiv <2 x i32> %.frozen94, splat (i32 10000) ; 2 uses
  %i.kd = mul <2 x i32> %i.kc, splat (i32 10000)
  %.decomposed95 = sub <2 x i32> %.frozen94, %i.kd
  %i.ke = zext nneg <2 x i32> %i.kc to <2 x i64>
  %i.kf = zext nneg <2 x i32> %.decomposed95 to <2 x i64>
  %i.kg = shl nuw nsw <2 x i64> %i.kf, splat (i64 32)
  %i.kh = or disjoint <2 x i64> %i.kg, %i.ke      ; 2 uses
  %i.ki = mul nuw nsw <2 x i64> %i.kh, splat (i64 10486)
  %i.kj = lshr <2 x i64> %i.ki, splat (i64 20)
  %i.kk = and <2 x i64> %i.kj, splat (i64 545460846719) ; 2 uses
  %i.kl = mul nsw <2 x i64> %i.kk, splat (i64 -100)
  %i.km = add nsw <2 x i64> %i.kl, %i.kh
  %i.kn = shl nsw <2 x i64> %i.km, splat (i64 16)
  %i.ko = add nsw <2 x i64> %i.kn, %i.kk          ; 2 uses
  %i.kp = mul <2 x i64> %i.ko, splat (i64 103)
  %i.kq = lshr <2 x i64> %i.kp, splat (i64 10)
  %i.kr = and <2 x i64> %i.kq, splat (i64 4222189076152335) ; 2 uses
  %i.ks = mul <2 x i64> %i.kr, splat (i64 72057594037927926)
  %i.kt = add <2 x i64> %i.ks, %i.ko
  %i.ku = shl <2 x i64> %i.kt, splat (i64 8)
  %i.kv = or disjoint <2 x i64> %i.kr, splat (i64 3472328296227680304)
  %i.kw = add <2 x i64> %i.kv, %i.ku
  store <2 x i64> %i.kw, ptr %.0.i38.i, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i38.i, i64 16
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.t:                                             ; preds = %bb.m
  %i.ky = udiv i128 %i.ft, 100000000000000000000000000000000 ; 2 uses
  %i.kz = trunc nuw nsw i128 %i.ky to i32         ; 3 uses
  %i.la = icmp samesign ult i32 %i.kz, 10
  br i1 %i.la, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lb = trunc nuw i128 %i.ky to i8
  %i.lc = or disjoint i8 %i.lb, 48
  store i8 %i.lc, ptr %.0, align 1, !tbaa !11
  %i.ld = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

bb.v:                                             ; preds = %bb.t
  %i.le = udiv i32 %i.kz, 10000
  %i.lf = urem i32 %i.kz, 10000
  %i.lg = zext nneg i32 %i.le to i64
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = shl nuw nsw i64 %i.lh, 32
  %i.lj = or disjoint i64 %i.li, %i.lg            ; 2 uses
  %i.lk = mul nuw nsw i64 %i.lj, 10486
  %i.ll = lshr i64 %i.lk, 20
  %i.lm = and i64 %i.ll, 545460846719             ; 2 uses
  %.neg.i48 = mul nsw i64 %i.lm, -100
  %i.ln = add nsw i64 %.neg.i48, %i.lj
  %i.lo = shl nsw i64 %i.ln, 16
  %i.lp = add nsw i64 %i.lo, %i.lm                ; 2 uses
  %i.lq = mul i64 %i.lp, 103
  %i.lr = lshr i64 %i.lq, 10
  %i.ls = and i64 %i.lr, 4222189076152335         ; 2 uses
  %.neg16.i49 = mul i64 %i.ls, 72057594037927926
  %i.lt = add i64 %.neg16.i49, %i.lp
  %i.lu = shl i64 %i.lt, 8
  %i.lv = add i64 %i.lu, %i.ls                    ; 3 uses
  %i.lw = icmp ne i64 %i.lv, 0
  tail call void @llvm.assume(i1 %i.lw)
  %i.lx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lv, i1 true) ; 2 uses
  %i.ly = and i64 %i.lx, 56
  %i.lz = add i64 %i.lv, 3472328296227680304
  %i.ma = lshr i64 %i.lz, %i.ly
  store i64 %i.ma, ptr %.0, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.mc = lshr i64 %i.lx, 3
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 %i.md
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i: ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.me, %bb.v ], [ %i.ld, %bb.u ] ; 3 uses
  %i.mf = udiv i64 %i.fy, 100000000
  %i.mg = urem i64 %i.fy, 100000000
  %i.mh = trunc nuw nsw i64 %i.mf to i32
  %i.mi = insertelement <2 x i32> poison, i32 %i.mh, i64 0
  %i.mj = trunc nuw nsw i64 %i.mg to i32
  %i.mk = insertelement <2 x i32> %i.mi, i32 %i.mj, i64 1
  %.frozen96 = freeze <2 x i32> %i.mk             ; 2 uses
  %i.ml = udiv <2 x i32> %.frozen96, splat (i32 10000) ; 2 uses
  %i.mm = mul <2 x i32> %i.ml, splat (i32 10000)
  %.decomposed97 = sub <2 x i32> %.frozen96, %i.mm
  %i.mn = zext nneg <2 x i32> %i.ml to <2 x i64>
  %i.mo = zext nneg <2 x i32> %.decomposed97 to <2 x i64>
  %i.mp = shl nuw nsw <2 x i64> %i.mo, splat (i64 32)
  %i.mq = or disjoint <2 x i64> %i.mp, %i.mn      ; 2 uses
  %i.mr = mul nuw nsw <2 x i64> %i.mq, splat (i64 10486)
  %i.ms = lshr <2 x i64> %i.mr, splat (i64 20)
  %i.mt = and <2 x i64> %i.ms, splat (i64 545460846719) ; 2 uses
  %i.mu = mul nsw <2 x i64> %i.mt, splat (i64 -100)
  %i.mv = add nsw <2 x i64> %i.mu, %i.mq
  %i.mw = shl nsw <2 x i64> %i.mv, splat (i64 16)
  %i.mx = add nsw <2 x i64> %i.mw, %i.mt          ; 2 uses
  %i.my = mul <2 x i64> %i.mx, splat (i64 103)
  %i.mz = lshr <2 x i64> %i.my, splat (i64 10)
  %i.na = and <2 x i64> %i.mz, splat (i64 4222189076152335) ; 2 uses
  %i.nb = mul <2 x i64> %i.na, splat (i64 72057594037927926)
  %i.nc = add <2 x i64> %i.nb, %i.mx
  %i.nd = shl <2 x i64> %i.nc, splat (i64 8)
  %i.ne = or disjoint <2 x i64> %i.na, splat (i64 3472328296227680304)
  %i.nf = add <2 x i64> %i.ne, %i.nd
  store <2 x i64> %i.nf, ptr %.0.i.i, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.nh = udiv i64 %i.fw, 100000000
  %i.ni = urem i64 %i.fw, 100000000
  %i.nj = trunc nuw nsw i64 %i.nh to i32
  %i.nk = insertelement <2 x i32> poison, i32 %i.nj, i64 0
  %i.nl = trunc nuw nsw i64 %i.ni to i32
  %i.nm = insertelement <2 x i32> %i.nk, i32 %i.nl, i64 1
  %.frozen98 = freeze <2 x i32> %i.nm             ; 2 uses
  %i.nn = udiv <2 x i32> %.frozen98, splat (i32 10000) ; 2 uses
  %i.no = mul <2 x i32> %i.nn, splat (i32 10000)
  %.decomposed99 = sub <2 x i32> %.frozen98, %i.no
  %i.np = zext nneg <2 x i32> %i.nn to <2 x i64>
  %i.nq = zext nneg <2 x i32> %.decomposed99 to <2 x i64>
  %i.nr = shl nuw nsw <2 x i64> %i.nq, splat (i64 32)
  %i.ns = or disjoint <2 x i64> %i.nr, %i.np      ; 2 uses
  %i.nt = mul nuw nsw <2 x i64> %i.ns, splat (i64 10486)
  %i.nu = lshr <2 x i64> %i.nt, splat (i64 20)
  %i.nv = and <2 x i64> %i.nu, splat (i64 545460846719) ; 2 uses
  %i.nw = mul nsw <2 x i64> %i.nv, splat (i64 -100)
  %i.nx = add nsw <2 x i64> %i.nw, %i.ns
  %i.ny = shl nsw <2 x i64> %i.nx, splat (i64 16)
  %i.nz = add nsw <2 x i64> %i.ny, %i.nv          ; 2 uses
  %i.oa = mul <2 x i64> %i.nz, splat (i64 103)
  %i.ob = lshr <2 x i64> %i.oa, splat (i64 10)
  %i.oc = and <2 x i64> %i.ob, splat (i64 4222189076152335) ; 2 uses
  %i.od = mul <2 x i64> %i.oc, splat (i64 72057594037927926)
  %i.oe = add <2 x i64> %i.od, %i.nz
  %i.of = shl <2 x i64> %i.oe, splat (i64 8)
  %i.og = or disjoint <2 x i64> %i.oc, splat (i64 3472328296227680304)
  %i.oh = add <2 x i64> %i.og, %i.of
  store <2 x i64> %i.oh, ptr %i.ng, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i, %bb.i, %bb.h, %bb.f
  %.0.i = phi ptr [ %i.by, %bb.i ], [ %i.fp, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i ], [ %i.n, %bb.f ], [ %i.ap, %bb.h ], [ %i.kx, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i ], [ %i.oi, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052616numbers_internal23RoundTripDoubleToBufferEdPc(double noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef double @llvm.fabs.f64(double %0)
  %i.c = fcmp ugt double %i.b, f0x7FEFFFFFFFFFFFF5
  br i1 %i.c, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 32, ptr noundef nonnull @.str.15, i32 noundef 15, double noundef %0) #21 ; 0 uses
  %i.e = tail call double @strtod(ptr noundef nonnull captures(none) %1, ptr noundef null) #21
  %i.f = fcmp une double %i.e, %0
  br i1 %i.f, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 32, ptr noundef nonnull @.str.15, i32 noundef 17, double noundef %0) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge, %bb.b
  ret ptr %1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052616numbers_internal22RoundTripFloatToBufferEfPc(float noundef %0, ptr nofree noundef returned captures(address, ret: address, provenance) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp uno float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %0, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = bitcast float %0 to i32
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false) #21
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  store i16 48, ptr %1, align 1
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  %i.e = fcmp olt float %0, 0.000000e+00
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !11
  %i.g = fneg float %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.082 = phi ptr [ %i.f, %bb.h ], [ %1, %bb.g ]  ; 11 uses
  %.078 = phi float [ %i.g, %bb.h ], [ %0, %bb.g ] ; 10 uses
  %i.h = fcmp ogt float %.078, f0x7F7FFFFF
  br i1 %i.h, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.082, align 1
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.i = tail call float @nextafterf(float noundef %.078, float noundef 0.000000e+00) #21
  %i.j = fpext float %i.i to double
  %i.k = fpext float %.078 to double              ; 6 uses
  %i.l = fadd double %i.k, %i.j
  %i.m = fmul double %i.l, 5.000000e-01           ; 5 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = fadd double %i.n, %i.k                   ; 4 uses
  %i.p = fcmp olt float %.078, 1.000000e+00
  br i1 %i.p, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.q = fcmp ult float %.078, f0x38D1B717
  br i1 %i.q, label %.lr.ph.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %.082, i64 1
  store i8 48, ptr %.082, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %.082, i64 2 ; 2 uses
  store i8 46, ptr %i.r, align 1, !tbaa !11
  %i.t = fcmp olt float %.078, 1.000000e-01
  br i1 %i.t, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %.082, i64 3 ; 2 uses
  store i8 48, ptr %i.s, align 1, !tbaa !11
  %i.v = fcmp olt float %.078, f0x3C23D70A
  br i1 %i.v, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %.082, i64 4 ; 2 uses
  store i8 48, ptr %i.u, align 1, !tbaa !11
  %i.x = fcmp olt float %.078, 1.000000e-03
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %.082, i64 5
  store i8 48, ptr %i.w, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.m
  %.183 = phi ptr [ %i.y, %bb.p ], [ %i.w, %bb.o ], [ %i.u, %bb.n ], [ %i.s, %bb.m ]
  %.079 = phi double [ 1.000000e+14, %bb.p ], [ 1.000000e+13, %bb.o ], [ 1.000000e+12, %bb.n ], [ 1.000000e+11, %bb.m ] ; 2 uses
  %i.z = fmul double %i.m, %.079
  %i.aa = fmul double %i.o, %.079
  %i.ab = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.z, double noundef %i.aa, ptr noundef nonnull %.183) ; 0 uses
  br label %bb.v

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.04.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, %bb.l ] ; 2 uses
  %.0113.i.i = phi i64 [ %.112.i.i, %.lr.ph.i.i ], [ 42, %bb.l ] ; 2 uses
  %i.ac = lshr i64 %.0113.i.i, 1                  ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.04.i.i, i64 %i.ac ; 2 uses
  %.val.i.i = load double, ptr %i.ad, align 8, !tbaa !33
  %i.ae = fcmp olt double %.val.i.i, %i.k         ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.0113.i.i, %i.ag
  %.112.i.i = select i1 %i.ae, i64 %i.ah, i64 %i.ac ; 2 uses
  %.1.i.i = select i1 %i.ae, ptr %i.af, ptr %.04.i.i ; 3 uses
  %i.ai = icmp sgt i64 %.112.i.i, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit, !llvm.loop !35

_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit: ; preds = %.lr.ph.i.i
  %i.aj = icmp eq ptr %.1.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, i64 1008)
  %spec.select = select i1 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, i64 984), ptr %.1.i.i
  br label %bb.u

bb.r:                                             ; preds = %bb.k
  %i.ak = fcmp olt float %.078, 1.000000e+08
  br i1 %i.ak, label %bb.s, label %.lr.ph.i.i96

bb.s:                                             ; preds = %bb.r
  %i.al = fptosi float %.078 to i32               ; 2 uses
  %i.am = tail call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.al, ptr noundef %.082) ; 2 uses
  %i.an = sitofp i32 %i.al to double              ; 4 uses
  %i.ao = fcmp olt double %i.m, %i.an
  %i.ap = fcmp ogt double %i.o, %i.an
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 46, ptr %i.am, align 1, !tbaa !11
  %i.ar = fsub double %i.m, %i.an
  %i.as = fmul double %i.ar, 1.000000e+11
  %i.at = fsub double %i.o, %i.an
  %i.au = fmul double %i.at, 1.000000e+11
  %i.av = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.as, double noundef %i.au, ptr noundef nonnull %i.aq) ; 0 uses
  br label %bb.v

.lr.ph.i.i96:                                     ; preds = %bb.r, %.lr.ph.i.i96
  %.04.i.i97 = phi ptr [ %.1.i.i103, %.lr.ph.i.i96 ], [ @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, %bb.r ] ; 2 uses
  %.0113.i.i98 = phi i64 [ %.112.i.i102, %.lr.ph.i.i96 ], [ 32, %bb.r ] ; 2 uses
  %i.aw = lshr i64 %.0113.i.i98, 1                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616numbers_internal19safe_strtou128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7uint128Ei:bb.a
bb.w:                                             ; preds = %bb.u
  %i.bq = mul i128 %i.bo, %i.av                   ; 2 uses
  %i.br = xor i64 %i.be, -1
  %.narrow.i.i.i = xor i64 %i.bg, -1
  %i.bs = zext i64 %.narrow.i.i.i to i128
  %i.bt = shl nuw i128 %i.bs, 64
  %i.bu = zext i64 %i.br to i128
  %i.bv = or disjoint i128 %i.bt, %i.bu
  %i.bw = icmp ult i128 %i.bv, %i.bq
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 -1, i64 16, i1 false)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.y:                                             ; preds = %bb.w
  %i.bx = add i128 %i.bq, %i.bj                   ; 2 uses
  %i.by = trunc i128 %i.bx to i64                 ; 2 uses
  %i.bz = lshr i128 %i.bx, 64
  %.tr.i.i.i.i = trunc nuw i128 %i.bz to i64
  %.narrow.i.i.i.i = add i64 %.tr.i.i.i.i, %i.bg  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03875.i.i, i64 1 ; 2 uses
  %.not78.i.i = icmp ult ptr %i.ca, %i.ar
  br i1 %.not78.i.i, label %bb.s, label %._crit_edge.i8.i, !llvm.loop !61

._crit_edge.i8.i:                                 ; preds = %bb.y, %bb.r
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %.narrow.i.i.i.i, %bb.y ]
  %.sroa.051.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.by, %bb.y ]
  store i64 %.sroa.051.0.lcssa.i.i, ptr %2, align 16, !tbaa !49
  store i64 %.sroa.11.0.lcssa.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !49
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2026052612_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2026052612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %bb.t, %bb.v, %bb.x, %._crit_edge.i8.i
  %.0.i = phi i1 [ true, %._crit_edge.i8.i ], [ false, %_ZN4absl12lts_2026052612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { i64, ptr } @_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ashr i64 %0, 2                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.f = and i64 %0, -4
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.047.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !62

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !11
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !11
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = and i8 %i.aw, 8
  %.not10 = icmp eq i8 %i.ax, 0
  br i1 %.not10, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit:      ; preds = %.lr.ph.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28 ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %.lr.ph.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i64 noundef %i.bc, i64 noundef %0) #22
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 100000000
  tail call void @llvm.assume(i1 %i.a)
  %i.b = udiv i32 %0, 10000
  %i.c = urem i32 %0, 10000
  %i.d = zext nneg i32 %i.b to i64
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, %i.d               ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 10486
  %i.i = lshr i64 %i.h, 20
  %i.j = and i64 %i.i, 545460846719               ; 2 uses
  %.neg = mul nsw i64 %i.j, -100
  %i.k = add nsw i64 %.neg, %i.g
  %i.l = shl nsw i64 %i.k, 16
  %i.m = add nsw i64 %i.l, %i.j                   ; 2 uses
  %i.n = mul i64 %i.m, 103
  %i.o = lshr i64 %i.n, 10
  %i.p = and i64 %i.o, 4222189076152335           ; 2 uses
  %.neg16 = mul i64 %i.p, 72057594037927926
  %i.q = add i64 %.neg16, %i.m
  %i.r = shl i64 %i.q, 8
  %i.s = add i64 %i.r, %i.p
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_20260526L7PowFiveEmi(i64 noundef range(i64 0, -1) %0, i32 noundef range(i32 0, 512) %1) unnamed_addr #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit
  %.028 = phi i32 [ %i.af, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %.sroa.3.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.018.026 = phi i64 [ %.sroa.0.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ %0, %bb.a ] ; 2 uses
  %i.b = and i64 %.sroa.9.027, 4294967295
  %i.c = lshr i64 %.sroa.9.027, 32                ; 2 uses
  %i.d = and i64 %.sroa.018.026, 4294967295
  %i.e = lshr i64 %.sroa.018.026, 32              ; 2 uses
  %i.f = mul nuw nsw i64 %i.b, 1220703125         ; 2 uses
  %i.g = mul nuw nsw i64 %i.c, 1220703125
  %i.h = mul nuw nsw i64 %i.d, 1220703125         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 1220703125
  %i.j = mul i64 %i.c, 5242880000000000000
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = mul i64 %i.e, 5242880000000000000
  %i.m = add i64 %i.l, %i.h
  %i.n = lshr i64 %i.g, 32
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.k, %i.f
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %i.o, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.i, 32
  %i.t = icmp ult i64 %i.r, %i.h
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw nsw i64 %i.s, %i.u               ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 3 uses
  %i.y = sub nuw nsw i64 64, %i.x                 ; 2 uses
  %i.z = lshr i64 %i.k, %i.y
  %i.aa = shl i64 %i.r, %i.x
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.r, %i.y
  %i.ad = shl i64 %i.v, %i.x
  %i.ae = or disjoint i64 %i.ac, %i.ad
  br label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit

_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit:  ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.b ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.af = add nsw i32 %.028, -13                  ; 2 uses
  %i.ag = icmp sgt i32 %.028, 25
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit, %bb.a
  %.sroa.018.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.0.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.af, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ]
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_20260526L7PowFiveEmi.powers_of_five, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.ak = and i64 %.sroa.9.0.lcssa, 4294967295
  %i.al = lshr i64 %.sroa.9.0.lcssa, 32
  %i.am = and i64 %.sroa.018.0.lcssa, 4294967295
  %i.an = lshr i64 %.sroa.018.0.lcssa, 32
  %i.ao = zext i32 %i.aj to i64                   ; 4 uses
  %i.ap = mul nuw i64 %i.ak, %i.ao                ; 2 uses
  %i.aq = mul nuw i64 %i.al, %i.ao                ; 2 uses
  %i.ar = mul nuw i64 %i.am, %i.ao                ; 2 uses
  %i.as = mul nuw i64 %i.an, %i.ao                ; 2 uses
  %i.at = shl i64 %i.aq, 32
  %i.au = add i64 %i.at, %i.ap                    ; 3 uses
  %i.av = shl i64 %i.as, 32
  %i.aw = add i64 %i.av, %i.ar
  %i.ax = lshr i64 %i.aq, 32
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.au, %i.ap
  %i.ba = zext i1 %i.az to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 4 uses
  %i.bc = lshr i64 %i.as, 32
  %i.bd = icmp ult i64 %i.bb, %i.ar
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.bc, %i.be            ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bh = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true) ; 3 uses
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 2 uses
  %i.bj = lshr i64 %i.au, %i.bi
  %i.bk = shl i64 %i.bb, %i.bh
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bb, %i.bi
  %i.bn = shl i64 %i.bf, %i.bh
  %i.bo = or disjoint i64 %i.bm, %i.bn
  br label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14

_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14: ; preds = %._crit_edge, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.bo, %bb.c ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.sroa.3.0.i11 = phi i64 [ %i.bl, %bb.c ], [ %i.au, %._crit_edge ]
  %i.bp = freeze i64 %.sroa.3.0.i11               ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i10, i1 false) ; 2 uses
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i10, i64 %i.bp, i64 %i.bq)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.bs, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.br, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !15, !17}
!13 = distinct !{!13, !14, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!14 = distinct !{!14, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!15 = distinct !{!15, !16, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!16 = distinct !{!16, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!17 = distinct !{!17, !18, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!18 = distinct !{!18, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!19 = distinct !{!19, !20}
end_hunk_1
