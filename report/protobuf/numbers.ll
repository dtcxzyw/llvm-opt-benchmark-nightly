inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051210SimpleAtofESt17basic_string_viewIcSt11char_traitsIcEEPf:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RfNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd(i64 %0, ptr %1, ptr noundef initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.a
  %i.h = and i64 %i.b, 3
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.f, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !noalias !21
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !noalias !21
  %i.n = and i8 %i.m, 8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !noalias !21
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9, !noalias !21
  %i.t = and i8 %i.s, 8
  %.not9.i.i = icmp eq i8 %i.t, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9, !noalias !21
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9, !noalias !21
  %i.z = and i8 %i.y, 8
  %.not10.i.i = icmp eq i8 %i.z, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9, !noalias !21
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9, !noalias !21
  %i.af = and i8 %i.ae, 8
  %.not11.i.i = icmp eq i8 %i.af, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i64 %.015.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !17

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.a
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %scevgep.i.i, %bb.e ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.ai = sub i64 %.pre-phi.i.i.i.i.i, %i.e
  switch i64 %i.ai, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !noalias !21
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9, !noalias !21
  %i.ao = and i8 %i.an, 8
  %.not12.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !noalias !21
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !noalias !21
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !noalias !21
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9, !noalias !21
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

declare { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtobESt17basic_string_viewIcSt11char_traitsIcEEPb(i64 %0, ptr %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 113, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
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
  store i8 %.sink, ptr %2, align 1, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #4 {
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
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  %i.c = or disjoint i8 %i.b, 48
  store i8 %i.c, ptr %1, align 1, !tbaa !9
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
  store i8 0, ptr %.0.i, align 1, !tbaa !9
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !9
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
  store i8 %i.f, ptr %.07, align 1, !tbaa !9
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
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc:bb.a
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
  %i.eg = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ee, i1 true) ; 2 uses
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
  store i8 0, ptr %.0.i, align 1, !tbaa !9
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
  store i8 45, ptr %1, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !9
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.k = fcmp olt double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !9
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
  %i.cc = icmp sgt i32 %.16.i, 5
  %i.cd = shl nuw nsw i64 %i.bw, 1
  %i.ce = and i64 %i.cd, 4294967294
  %i.cf = or disjoint i64 %i.ce, 1                ; 3 uses
  br i1 %i.cc, label %bb.r, label %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cg = add nsw i32 %.16.i, -5
  %i.ch = tail call fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef %i.cf, i32 noundef %i.cg) ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  br label %bb.s

_ZN4absl12lts_20250512L7PowFiveEmi.exit.i:        ; preds = %bb.q
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.cl = shl i64 %i.cf, %i.ck
  %i.cm = sub nsw i32 5, %.16.i
  %i.cn = tail call fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef %i.cb, i32 noundef %i.cm) ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cn, 0
  %i.cp = extractvalue { i64, i64 } %i.cn, 1
  br label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i, %bb.r
  %.sroa.7.0.i = phi i64 [ 0, %bb.r ], [ %i.cp, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0116.0.i = phi i64 [ %i.cb, %bb.r ], [ %i.co, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 3 uses
  %.sroa.7122.0.i = phi i64 [ %i.cj, %bb.r ], [ 0, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0120.0.i = phi i64 [ %i.ci, %bb.r ], [ %i.cl, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 3 uses
  %i.cq = icmp ult i64 %.sroa.0120.0.i, %.sroa.0116.0.i
  br i1 %i.cq, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = icmp uge i64 %.sroa.0116.0.i, %.sroa.0120.0.i
  %i.cs = icmp ult i64 %.sroa.7122.0.i, %.sroa.7.0.i
  %or.cond.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i:     ; preds = %bb.t, %bb.s
  %i.ct = add i32 %i.bx, 1
  br label %bb.v

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i:  ; preds = %bb.t
  %i.cu = icmp eq i64 %.sroa.0116.0.i, %.sroa.0120.0.i
  %i.cv = icmp eq i64 %.sroa.7.0.i, %.sroa.7122.0.i
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i
  %i.cx = and i32 %i.bx, 1
  %i.cy = add i32 %i.cx, %i.bx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i
  %.0102.i = phi i32 [ %i.ct, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i ], [ %i.cy, %bb.u ], [ %i.bx, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN4absl12lts_20250512L10SplitToSixEd.exit

bb.w:                                             ; preds = %bb.p
  %i.cz = add i64 %i.bu, 32768
  %i.da = lshr i64 %i.cz, 16
  %i.db = trunc i64 %i.da to i32
  br label %_ZN4absl12lts_20250512L10SplitToSixEd.exit

_ZN4absl12lts_20250512L10SplitToSixEd.exit:       ; preds = %bb.v, %bb.w
  %.1103.i = phi i32 [ %.0102.i, %bb.v ], [ %i.db, %bb.w ] ; 2 uses
  %i.dc = icmp eq i32 %.1103.i, 1000000           ; 2 uses
  %spec.select.i = select i1 %i.dc, i32 100000, i32 %.1103.i ; 2 uses
  %i.dd = zext i1 %i.dc to i32
  %spec.select109.i = add nsw i32 %.16.i, %i.dd   ; 3 uses
  %i.de = udiv i32 %spec.select.i, 10000          ; 3 uses
  %.neg.i = mul i32 %i.de, -10000
  %i.df = add i32 %.neg.i, %spec.select.i         ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.de, 103
  %i.dg = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i.i = mul nuw nsw i32 %i.dg, 246
  %i.dh = add nuw nsw i32 %.neg.i.i, %i.de
  %i.di = shl nuw i32 %i.dh, 8
  %i.dj = udiv i32 %i.df, 100                     ; 3 uses
  %.neg108.i = mul i32 %i.dj, -100
  %i.dk = add i32 %.neg108.i, %i.df               ; 2 uses
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = mul nuw nsw i64 %i.dl, 103
  %i.dn = lshr i64 %i.dm, 10
  %i.do = trunc nuw nsw i64 %i.dn to i32          ; 2 uses
  %.neg.i110.i = mul nuw nsw i32 %i.do, 246
  %i.dp = add nuw nsw i32 %.neg.i110.i, %i.dj
  %i.dq = shl i32 %i.dp, 8
  %i.dr = zext i32 %i.dk to i64
  %i.ds = mul nuw nsw i64 %i.dr, 103
  %i.dt = lshr i64 %i.ds, 10
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 2 uses
  %.neg.i111.i = mul i32 %i.du, 246
  %i.dv = add i32 %.neg.i111.i, %i.dk
  %i.dw = shl i32 %i.dv, 8
  %i.dx = add nuw nsw i32 %i.du, 12336            ; 4 uses
  %i.dy = add i32 %i.dw, %i.dx                    ; 10 uses
  %i.dz = add nuw nsw i32 %i.do, 12336
  %i.ea = add i32 %i.dz, %i.dq                    ; 2 uses
  %i.eb = and i32 %i.ea, 65535
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.eb to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 48
  %i.ec = add nuw nsw i32 %i.dg, 12336            ; 2 uses
  %i.ed = add nuw i32 %i.di, %i.ec
  %i.ee = and i32 %i.ed, 65280
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.ee to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0125.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.sroa.4.0.extract.trunc = trunc i32 %i.ec to i8 ; 8 uses
  %.sroa.0.sroa.12.0.extract.shift = lshr exact i64 %.sroa.0125.0.insert.insert.i, 40 ; 3 uses
  %.sroa.0.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.0.extract.shift to i24 ; 6 uses
  store i8 48, ptr %.1139, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %.1139, i64 1 ; 7 uses
  store i8 46, ptr %i.ef, align 1, !tbaa !9
  switch i32 %spec.select109.i, label %bb.ar [
    i32 5, label %bb.x
    i32 4, label %bb.y
    i32 3, label %bb.ab
    i32 2, label %bb.af
    i32 1, label %bb.ah
    i32 0, label %bb.aj
    i32 -4, label %bb.al
    i32 -3, label %bb.am
    i32 -2, label %bb.an
    i32 -1, label %bb.ao
  ]

bb.x:                                             ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %.sroa.16.4..1139.sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  %.sroa.16.4.extract.trunc149 = trunc i32 %i.dy to i16
  store i16 %.sroa.16.4.extract.trunc149, ptr %.sroa.16.4..1139.sroa_idx, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.1139, i64 6 ; 2 uses
  store i8 0, ptr %i.eg, align 1, !tbaa !9
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %1 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  br label %bb.av

bb.y:                                             ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %.sroa.16.4..1139.sroa_idx150 = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  %.sroa.16.4.extract.trunc152 = trunc i32 %i.dx to i8
  store i8 %.sroa.16.4.extract.trunc152, ptr %.sroa.16.4..1139.sroa_idx150, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1139, i64 5 ; 2 uses
  %i.el = and i32 %i.dy, 65280
  %.not198 = icmp eq i32 %i.el, 12288
  br i1 %.not198, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.16.9.extract.shift168 = lshr i32 %i.dy, 8
  %.sroa.16.9.extract.trunc169 = trunc i32 %.sroa.16.9.extract.shift168 to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.1139, i64 6
  store i8 46, ptr %i.ek, align 1, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  store i8 %.sroa.16.9.extract.trunc169, ptr %i.em, align 1, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2 = phi ptr [ %i.en, %bb.z ], [ %i.ek, %bb.y ] ; 2 uses
  store i8 0, ptr %.2, align 1, !tbaa !9
  %i.eo = ptrtoint ptr %.2 to i64
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  br label %bb.av

bb.ab:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1139, i64 4 ; 2 uses
  %.sroa.4126.8.insert.ext.i = lshr i32 %i.dy, 8  ; 2 uses
  %.sroa.16.9.extract.trunc163 = trunc i32 %.sroa.4126.8.insert.ext.i to i8
  %.sroa.16.9.extract.shift162200 = or i32 %.sroa.4126.8.insert.ext.i, %i.dx
  %.mask = and i32 %.sroa.16.9.extract.shift162200, 255
  %.not = icmp eq i32 %.mask, 48
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.16.8.extract.trunc157 = trunc i32 %i.dx to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  store i8 46, ptr %i.er, align 1, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %.1139, i64 6 ; 2 uses
  store i8 %.sroa.16.8.extract.trunc157, ptr %i.es, align 1, !tbaa !9
  %i.eu = and i32 %i.dy, 65280
  %.not197 = icmp eq i32 %i.eu, 12288
  br i1 %.not197, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  store i8 %.sroa.16.9.extract.trunc163, ptr %i.et, align 1, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.3 = phi ptr [ %i.ev, %bb.ad ], [ %i.et, %bb.ac ], [ %i.er, %bb.ab ] ; 2 uses
  store i8 0, ptr %.3, align 1, !tbaa !9
  %i.ew = ptrtoint ptr %.3 to i64
  %i.ex = ptrtoint ptr %1 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  br label %bb.av

bb.af:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  %.sroa.0.sroa.12.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.12.0.extract.shift to i16
  store i16 %.sroa.0.sroa.12.sroa.0.0.extract.trunc, ptr %i.ef, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  store i8 46, ptr %i.ez, align 1, !tbaa !9
  %.sroa.0.sroa.12.sroa.0.2.extract.shift194 = lshr i64 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.sroa.12.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.sroa.0.2.extract.shift194 to i8
  store i8 %.sroa.0.sroa.12.sroa.0.2.extract.trunc, ptr %i.fa, align 1
  %.sroa.16.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  %.sroa.16.7.extract.trunc = trunc i32 %i.dy to i16
  store i16 %.sroa.16.7.extract.trunc, ptr %.sroa.16.7..sroa_idx, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi ptr [ %i.fb, %bb.af ], [ %i.fc, %bb.ag ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.4, i64 -1 ; 3 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  switch i8 %i.fd, label %.loopexit201.loopexit [
    i8 48, label %bb.ag
    i8 46, label %.loopexit201
  ]

.loopexit201.loopexit:                            ; preds = %bb.ag
  br label %.loopexit201

.loopexit201:                                     ; preds = %bb.ag, %.loopexit201.loopexit
  %.5 = phi ptr [ %.4, %.loopexit201.loopexit ], [ %i.fc, %bb.ag ] ; 2 uses
  store i8 0, ptr %.5, align 1, !tbaa !9
  %i.fe = ptrtoint ptr %.5 to i64
  %i.ff = ptrtoint ptr %1 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  br label %bb.av

bb.ah:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  %.sroa.0.sroa.12.sroa.0.0.extract.trunc186 = trunc i64 %.sroa.0.sroa.12.0.extract.shift to i8
  store i8 %.sroa.0.sroa.12.sroa.0.0.extract.trunc186, ptr %i.ef, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.1139, i64 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  store i8 46, ptr %i.fh, align 1, !tbaa !9
  %.sroa.0.sroa.12.sroa.0.1.extract.trunc = trunc i32 %i.ea to i16
  store i16 %.sroa.0.sroa.12.sroa.0.1.extract.trunc, ptr %i.fi, align 1
  %.sroa.16.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  %.sroa.16.6.extract.trunc = trunc i32 %i.dy to i16
  store i16 %.sroa.16.6.extract.trunc, ptr %.sroa.16.6..sroa_idx, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.6 = phi ptr [ %i.fj, %bb.ah ], [ %i.fk, %bb.ai ] ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.6, i64 -1 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9
  switch i8 %i.fl, label %.loopexit202.loopexit [
    i8 48, label %bb.ai
    i8 46, label %.loopexit202
  ]

.loopexit202.loopexit:                            ; preds = %bb.ai
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.ai, %.loopexit202.loopexit
  %.7 = phi ptr [ %.6, %.loopexit202.loopexit ], [ %i.fk, %bb.ai ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !9
  %i.fm = ptrtoint ptr %.7 to i64
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  br label %bb.av

bb.aj:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.1139, i64 2
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.fp, align 1
  %.sroa.16.5..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  %.sroa.16.5.extract.trunc155 = trunc i32 %i.dy to i16
  store i16 %.sroa.16.5.extract.trunc155, ptr %.sroa.16.5..sroa_idx153, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.8 = phi ptr [ %i.fq, %bb.aj ], [ %i.fr, %bb.ak ] ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.8, i64 -1 ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  switch i8 %i.fs, label %.loopexit203.loopexit [
    i8 48, label %bb.ak
    i8 46, label %.loopexit203
  ]

.loopexit203.loopexit:                            ; preds = %bb.ak
  br label %.loopexit203

.loopexit203:                                     ; preds = %bb.ak, %.loopexit203.loopexit
  %.9 = phi ptr [ %.8, %.loopexit203.loopexit ], [ %i.fr, %bb.ak ] ; 2 uses
  store i8 0, ptr %.9, align 1, !tbaa !9
  %i.ft = ptrtoint ptr %.9 to i64
  %i.fu = ptrtoint ptr %1 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  br label %bb.av

bb.al:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.1139, i64 2
  store i8 48, ptr %i.fw, align 1, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  %.10 = phi ptr [ %i.ef, %bb.al ], [ %.1139, %_ZN4absl12lts_20250512L10SplitToSixEd.exit ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 48, ptr %i.fx, align 1, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  %.11 = phi ptr [ %i.fy, %bb.am ], [ %.1139, %_ZN4absl12lts_20250512L10SplitToSixEd.exit ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.11, i64 2
  store i8 48, ptr %i.fz, align 1, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  %.12 = phi ptr [ %i.ga, %bb.an ], [ %.1139, %_ZN4absl12lts_20250512L10SplitToSixEd.exit ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.12, i64 2
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %i.gb, align 1
  %.sroa.0.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.12, i64 3
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %.sroa.0.sroa.12.4..sroa_idx, align 1
  %.sroa.16.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.12, i64 6
  %.sroa.16.4.extract.trunc = trunc i32 %i.dy to i16
  store i16 %.sroa.16.4.extract.trunc, ptr %.sroa.16.4..sroa_idx, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.13 = phi ptr [ %i.gc, %bb.ao ], [ %i.gd, %bb.ap ] ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %.13, i64 -1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !9
  %i.gf = icmp eq i8 %i.ge, 48
  br i1 %i.gf, label %bb.ap, label %bb.aq, !llvm.loop !31

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %.13, align 1, !tbaa !9
  %i.gg = ptrtoint ptr %.13 to i64
  %i.gh = ptrtoint ptr %1 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  br label %bb.av

bb.ar:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %.1139, i64 2
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.gj, align 1
  %.sroa.16.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  %.sroa.16.5.extract.trunc = trunc i32 %i.dy to i16
  store i16 %.sroa.16.5.extract.trunc, ptr %.sroa.16.5..sroa_idx, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.14 = phi ptr [ %i.gk, %bb.ar ], [ %i.gl, %bb.as ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.14, i64 -1 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !9
  switch i8 %i.gm, label %.loopexit.loopexit [
    i8 48, label %bb.as
    i8 46, label %.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.as
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %.loopexit.loopexit
  %.15 = phi ptr [ %.14, %.loopexit.loopexit ], [ %i.gl, %bb.as ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 101, ptr %.15, align 1, !tbaa !9
  %i.go = icmp sgt i32 %spec.select109.i, 0
  %spec.select = select i1 %i.go, i8 43, i8 45
  %spec.select232 = tail call i32 @llvm.abs.i32(i32 %spec.select109.i, i1 true) ; 4 uses
  store i8 %spec.select, ptr %i.gn, align 1, !tbaa !9
  %.16 = getelementptr inbounds nuw i8, ptr %.15, i64 2 ; 2 uses
  %i.gp = icmp samesign ugt i32 %spec.select232, 99
  br i1 %i.gp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  %.lhs.trunc = trunc i32 %spec.select232 to i16
  %i.gq = udiv i16 %.lhs.trunc, 100               ; 2 uses
  %.zext = zext nneg i16 %i.gq to i32
  %.neg = mul nsw i32 %.zext, -100
  %i.gr = add nsw i32 %.neg, %spec.select232
  %i.gs = trunc i16 %i.gq to i8
  %i.gt = add nuw nsw i8 %i.gs, 48
  %i.gu = getelementptr inbounds nuw i8, ptr %.15, i64 3
  store i8 %i.gt, ptr %.16, align 1, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit
  %.17 = phi ptr [ %i.gu, %bb.at ], [ %.16, %.loopexit ] ; 2 uses
  %.1137 = phi i32 [ %i.gr, %bb.at ], [ %spec.select232, %.loopexit ] ; 2 uses
  %i.gv = zext i32 %.1137 to i64
  %i.gw = mul nuw nsw i64 %i.gv, 103
  %i.gx = lshr i64 %i.gw, 10
  %i.gy = trunc nuw nsw i64 %i.gx to i32          ; 2 uses
  %.neg.i199 = mul i32 %i.gy, 246
  %i.gz = add i32 %.neg.i199, %.1137
  %i.ha = shl i32 %i.gz, 8
  %i.hb = add i32 %i.ha, %i.gy
  %i.hc = trunc i32 %i.hb to i16
  %i.hd = add i16 %i.hc, 12336
  store i16 %i.hd, ptr %.17, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.17, i64 2 ; 2 uses
  store i8 0, ptr %i.he, align 1, !tbaa !9
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %1 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  br label %bb.av

bb.av:                                            ; preds = %bb.x, %bb.aa, %bb.ae, %.loopexit201, %.loopexit202, %.loopexit203, %bb.aq, %bb.au, %bb.j, %bb.f, %bb.b
  %.1 = phi i64 [ 3, %bb.b ], [ %i.j, %bb.f ], [ %i.r, %bb.j ], [ %i.hh, %bb.au ], [ %i.ej, %bb.x ], [ %i.eq, %bb.aa ], [ %i.ey, %bb.ae ], [ %i.fg, %.loopexit201 ], [ %i.fo, %.loopexit202 ], [ %i.fv, %.loopexit203 ], [ %i.gi, %bb.aq ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal16safe_strto8_baseESt17basic_string_viewIcSt11char_traitsIcEEPai(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 1)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !9
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i28 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i28, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i28
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i28 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i28
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i28 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i28
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i28 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i6.i
  %.02640.i.i = phi i8 [ 0, %.lr.ph.i6.i ], [ %i.bh, %bb.w ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i6.i ], [ %i.bi, %bb.w ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %.not.i7.i = icmp sgt i32 %.0.i.i, %i.bb
  br i1 %.not.i7.i, label %bb.u, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp sgt i8 %.02640.i.i, %i.av
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = mul i8 %.02640.i.i, %i.aw               ; 2 uses
  %i.be = sext i8 %i.bd to i32
  %i.bf = sub nsw i32 127, %i.bb
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = add i8 %i.ba, %i.bd                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bi, %i.as
  br i1 %.not42.i.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !34

bb.x:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVminOverBaseE, i64 %i.ar
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.x
  %i.bl = trunc nuw nsw i32 %.0.i.i to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i9.i
  %.02742.i.i = phi i8 [ 0, %.lr.ph.i9.i ], [ %i.bw, %bb.ab ] ; 3 uses
  %.03041.i.i = phi ptr [ %.2.i.i, %.lr.ph.i9.i ], [ %i.bx, %bb.ab ] ; 2 uses
  %i.bm = load i8, ptr %.03041.i.i, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9   ; 2 uses
  %i.bq = sext i8 %i.bp to i32                    ; 2 uses
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bq
  br i1 %.not.i10.i, label %bb.z, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.br = icmp slt i8 %.02742.i.i, %i.bk
  br i1 %i.br, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = mul i8 %.02742.i.i, %i.bl               ; 2 uses
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bq, -128
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  br i1 %i.bv, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = sub i8 %i.bs, %i.bp                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03041.i.i, i64 1 ; 2 uses
  %.not44.i.i = icmp ult ptr %i.bx, %i.as
  br i1 %.not44.i.i, label %bb.y, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !35

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s
  %.02742.lcssa.sink.i.sink.i = phi i8 [ 0, %bb.x ], [ 0, %bb.s ], [ %i.bw, %bb.ab ], [ -128, %bb.aa ], [ %.02742.i.i, %bb.y ], [ -128, %bb.z ], [ %.02640.i.i, %bb.t ], [ 127, %bb.u ], [ %i.bh, %bb.w ], [ 127, %bb.v ]
  %.0.ph.i = phi i1 [ true, %bb.x ], [ true, %bb.s ], [ true, %bb.ab ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.w ], [ false, %bb.v ]
  store i8 %.02742.lcssa.sink.i.sink.i, ptr %2, align 1, !tbaa !9
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto16_baseESt17basic_string_viewIcSt11char_traitsIcEEPsi(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 2)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i16 0, ptr %2, align 2, !tbaa !36
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i28 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i28, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i28
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i28 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i28
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i28 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i28
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i28 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !36
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s
  %i.aw = trunc nuw nsw i32 %.0.i.i to i16
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i6.i
  %.02640.i.i = phi i16 [ 0, %.lr.ph.i6.i ], [ %i.bi, %bb.w ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i6.i ], [ %i.bj, %bb.w ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %.not.i7.i = icmp sgt i32 %.0.i.i, %i.bb
  br i1 %.not.i7.i, label %bb.u, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp sgt i16 %.02640.i.i, %i.av
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = mul i16 %.02640.i.i, %i.aw              ; 2 uses
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 32767, %i.bb
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = sext i8 %i.ba to i16
  %i.bi = add i16 %i.bd, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bj, %i.as
  br i1 %.not42.i.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !38

bb.x:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVminOverBaseE, i64 %i.ar
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !36
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.x
  %i.bm = trunc nuw nsw i32 %.0.i.i to i16
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i9.i
  %.02742.i.i = phi i16 [ 0, %.lr.ph.i9.i ], [ %i.by, %bb.ab ] ; 3 uses
  %.03041.i.i = phi ptr [ %.2.i.i, %.lr.ph.i9.i ], [ %i.bz, %bb.ab ] ; 2 uses
  %i.bn = load i8, ptr %.03041.i.i, align 1, !tbaa !9
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9   ; 2 uses
  %i.br = sext i8 %i.bq to i32                    ; 2 uses
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.br
  br i1 %.not.i10.i, label %bb.z, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp slt i16 %.02742.i.i, %i.bl
  br i1 %i.bs, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = mul i16 %.02742.i.i, %i.bm              ; 2 uses
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.br, -32768
  %i.bw = icmp sgt i32 %i.bv, %i.bu
  br i1 %i.bw, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = sext i8 %i.bq to i16
  %i.by = sub i16 %i.bt, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03041.i.i, i64 1 ; 2 uses
  %.not44.i.i = icmp ult ptr %i.bz, %i.as
  br i1 %.not44.i.i, label %bb.y, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !39

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s
  %.02742.lcssa.sink.i.sink.i = phi i16 [ 0, %bb.x ], [ 0, %bb.s ], [ %i.by, %bb.ab ], [ -32768, %bb.aa ], [ %.02742.i.i, %bb.y ], [ -32768, %bb.z ], [ %.02640.i.i, %bb.t ], [ 32767, %bb.u ], [ %i.bi, %bb.w ], [ 32767, %bb.v ]
  %.0.ph.i = phi i1 [ true, %bb.x ], [ true, %bb.s ], [ true, %bb.ab ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.w ], [ false, %bb.v ]
  store i16 %.02742.lcssa.sink.i.sink.i, ptr %2, align 2, !tbaa !36
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i30 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i30, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i30
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i30 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i30
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i30 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i30
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i30 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIiE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s, %bb.v
  %.02640.i.i = phi i32 [ %i.bf, %bb.v ], [ 0, %bb.s ] ; 3 uses
  %.02839.i.i = phi ptr [ %i.bg, %bb.v ], [ %.2.i.i, %bb.s ] ; 2 uses
  %i.aw = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i32                    ; 3 uses
  %.not.i7.i = icmp sgt i32 %.0.i.i, %i.ba
  br i1 %.not.i7.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.t:                                             ; preds = %.lr.ph.i6.i
  %i.bb = icmp sgt i32 %.02640.i.i, %i.av
  br i1 %i.bb, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = mul nsw i32 %.02640.i.i, %.0.i.i        ; 2 uses
  %i.bd = sub nsw i32 2147483647, %i.ba
  %i.be = icmp sgt i32 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i32 %i.bc, %i.ba                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bg, %i.as
  br i1 %.not42.i.i, label %.lr.ph.i6.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !40

bb.w:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIiE13kVminOverBaseE, i64 %i.ar
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.w, %bb.z
  %.02742.i.i = phi i32 [ %i.bs, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %.03041.i.i = phi ptr [ %i.bt, %bb.z ], [ %.2.i.i, %bb.w ] ; 2 uses
  %i.bj = load i8, ptr %.03041.i.i, align 1, !tbaa !9
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = sext i8 %i.bm to i32                    ; 3 uses
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bn
  br i1 %.not.i10.i, label %bb.x, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.x:                                             ; preds = %.lr.ph.i9.i
  %i.bo = icmp slt i32 %.02742.i.i, %i.bi
  br i1 %i.bo, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = mul nsw i32 %.02742.i.i, %.0.i.i        ; 2 uses
  %i.bq = or disjoint i32 %i.bn, -2147483648
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = sub nsw i32 %i.bp, %i.bn                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03041.i.i, i64 1 ; 2 uses
  %.not44.i.i = icmp ult ptr %i.bt, %i.as
  br i1 %.not44.i.i, label %.lr.ph.i9.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !41

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i6.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i9.i, %bb.w, %bb.s
  %.02742.lcssa.sink.i.sink.i = phi i32 [ 0, %bb.w ], [ 0, %bb.s ], [ %i.bs, %bb.z ], [ -2147483648, %bb.y ], [ %.02742.i.i, %.lr.ph.i9.i ], [ -2147483648, %bb.x ], [ %.02640.i.i, %.lr.ph.i6.i ], [ 2147483647, %bb.t ], [ %i.bf, %bb.v ], [ 2147483647, %bb.u ]
  %.0.ph.i = phi i1 [ true, %bb.w ], [ true, %bb.s ], [ true, %bb.z ], [ false, %bb.y ], [ false, %.lr.ph.i9.i ], [ false, %bb.x ], [ false, %.lr.ph.i6.i ], [ false, %bb.t ], [ true, %bb.v ], [ false, %bb.u ]
  store i32 %.02742.lcssa.sink.i.sink.i, ptr %2, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto64_baseESt17basic_string_viewIcSt11char_traitsIcEEPli(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !42
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i30 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i30, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i30
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i30 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i30
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i30 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i30
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i30 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 2 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIlE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i64, ptr %i.au, align 8, !tbaa !42
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s, %bb.v
  %.02640.i.i = phi i64 [ %i.bf, %bb.v ], [ 0, %bb.s ] ; 3 uses
  %.02839.i.i = phi ptr [ %i.bg, %bb.v ], [ %.2.i.i, %bb.s ] ; 2 uses
  %i.aw = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i64                    ; 3 uses
  %.not.i7.i = icmp slt i64 %i.ba, %i.ar
  br i1 %.not.i7.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.t:                                             ; preds = %.lr.ph.i6.i
  %i.bb = icmp sgt i64 %.02640.i.i, %i.av
  br i1 %i.bb, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = mul nsw i64 %.02640.i.i, %i.ar          ; 2 uses
  %i.bd = sub nsw i64 9223372036854775807, %i.ba
  %i.be = icmp sgt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i64 %i.bc, %i.ba                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bg, %i.as
  br i1 %.not42.i.i, label %.lr.ph.i6.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !44

bb.w:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIlE13kVminOverBaseE, i64 %i.ar
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !42
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.w, %bb.z
  %.02741.i.i = phi i64 [ %i.bt, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %.03040.i.i = phi ptr [ %i.bu, %bb.z ], [ %.2.i.i, %bb.w ] ; 2 uses
  %i.bj = load i8, ptr %.03040.i.i, align 1, !tbaa !9
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 2 uses
  %i.bn = sext i8 %i.bm to i32
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bn
  br i1 %.not.i10.i, label %bb.x, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.x:                                             ; preds = %.lr.ph.i9.i
  %i.bo = icmp slt i64 %.02741.i.i, %i.bi
  br i1 %i.bo, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = mul nsw i64 %.02741.i.i, %i.ar          ; 2 uses
  %i.bq = sext i8 %i.bm to i64                    ; 2 uses
  %i.br = or disjoint i64 %i.bq, -9223372036854775808
  %i.bs = icmp slt i64 %i.bp, %i.br
  br i1 %i.bs, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = sub nsw i64 %i.bp, %i.bq                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.03040.i.i, i64 1 ; 2 uses
  %.not43.i.i = icmp ult ptr %i.bu, %i.as
  br i1 %.not43.i.i, label %.lr.ph.i9.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !45

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i6.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i9.i, %bb.w, %bb.s
  %.02741.lcssa.sink.i.sink.i = phi i64 [ 0, %bb.w ], [ 0, %bb.s ], [ %i.bt, %bb.z ], [ -9223372036854775808, %bb.y ], [ %.02741.i.i, %.lr.ph.i9.i ], [ -9223372036854775808, %bb.x ], [ %.02640.i.i, %.lr.ph.i6.i ], [ 9223372036854775807, %bb.t ], [ %i.bf, %bb.v ], [ 9223372036854775807, %bb.u ]
  %.0.ph.i = phi i1 [ true, %bb.w ], [ true, %bb.s ], [ true, %bb.z ], [ false, %bb.y ], [ false, %.lr.ph.i9.i ], [ false, %bb.x ], [ false, %.lr.ph.i6.i ], [ false, %bb.t ], [ true, %bb.v ], [ false, %bb.u ]
  store i64 %.02741.lcssa.sink.i.sink.i, ptr %2, align 8, !tbaa !42
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIlEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strto128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_6int128Ei(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 16)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i128 0, ptr %2, align 16, !tbaa !46
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i30 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i30, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i30
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i30 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i30
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i30 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i30
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i30 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.as = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = zext nneg i32 %.0.i.i to i128           ; 2 uses
  %i.au = zext nneg i32 %.0.i.i to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_6int128EE13kVmaxOverBaseE, i64 %i.au
  %.sroa.015.0.copyload.i.i = load i128, ptr %i.av, align 16, !tbaa !46
  br i1 %i.as, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s, %bb.v
  %.02646.i.i = phi ptr [ %i.bg, %bb.v ], [ %.2.i.i, %bb.s ] ; 2 uses
  %.sroa.033.045.i.i = phi i128 [ %i.bf, %bb.v ], [ 0, %bb.s ] ; 3 uses
  %i.aw = load i8, ptr %.02646.i.i, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i128                   ; 3 uses
  %.not.i7.i = icmp slt i128 %i.ba, %i.at
  br i1 %.not.i7.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.t:                                             ; preds = %.lr.ph.i6.i
  %i.bb = icmp sgt i128 %.sroa.033.045.i.i, %.sroa.015.0.copyload.i.i
  br i1 %i.bb, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = mul nsw i128 %.sroa.033.045.i.i, %i.at  ; 2 uses
  %i.bd = sub nsw i128 170141183460469231731687303715884105727, %i.ba
  %i.be = icmp sgt i128 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i128 %i.bc, %i.ba               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02646.i.i, i64 1 ; 2 uses
  %.not48.i.i = icmp ult ptr %i.bg, %i.ar
  br i1 %.not48.i.i, label %.lr.ph.i6.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !48

bb.w:                                             ; preds = %bb.r
  %i.bh = zext nneg i32 %.0.i.i to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_6int128EE13kVminOverBaseE, i64 %i.bh
  %.sroa.039.0.copyload.i.i = load i128, ptr %i.bi, align 16, !tbaa !46
  %i.bj = zext nneg i32 %.0.i.i to i128
  br i1 %i.as, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.w, %bb.z
  %.02854.i.i = phi ptr [ %i.bv, %bb.z ], [ %.2.i.i, %bb.w ] ; 2 uses
  %.sroa.041.053.i.i = phi i128 [ %i.bu, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %i.bk = load i8, ptr %.02854.i.i, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9   ; 2 uses
  %i.bo = sext i8 %i.bn to i32
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bo
  br i1 %.not.i10.i, label %bb.x, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.x:                                             ; preds = %.lr.ph.i9.i
  %i.bp = icmp slt i128 %.sroa.041.053.i.i, %.sroa.039.0.copyload.i.i
  br i1 %i.bp, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = mul nsw i128 %.sroa.041.053.i.i, %i.bj  ; 2 uses
  %i.br = sext i8 %i.bn to i128                   ; 2 uses
  %i.bs = or disjoint i128 %i.br, -170141183460469231731687303715884105728
  %i.bt = icmp slt i128 %i.bq, %i.bs
  br i1 %i.bt, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = sub nsw i128 %i.bq, %i.br               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02854.i.i, i64 1 ; 2 uses
  %.not56.i.i = icmp ult ptr %i.bv, %i.ar
  br i1 %.not56.i.i, label %.lr.ph.i9.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !49

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i6.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i9.i, %bb.w, %bb.s
  %.sroa.041.053.lcssa.sink.i.sink.i = phi i128 [ 0, %bb.w ], [ 0, %bb.s ], [ %i.bu, %bb.z ], [ -170141183460469231731687303715884105728, %bb.y ], [ %.sroa.041.053.i.i, %.lr.ph.i9.i ], [ -170141183460469231731687303715884105728, %bb.x ], [ %.sroa.033.045.i.i, %.lr.ph.i6.i ], [ 170141183460469231731687303715884105727, %bb.t ], [ %i.bf, %bb.v ], [ 170141183460469231731687303715884105727, %bb.u ]
  %.0.ph.i = phi i1 [ true, %bb.w ], [ true, %bb.s ], [ true, %bb.z ], [ false, %bb.y ], [ false, %.lr.ph.i9.i ], [ false, %bb.x ], [ false, %.lr.ph.i6.i ], [ false, %bb.t ], [ true, %bb.v ], [ false, %bb.u ]
  store i128 %.sroa.041.053.lcssa.sink.i.sink.i, ptr %2, align 16, !tbaa !46
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strtou8_baseESt17basic_string_viewIcSt11char_traitsIcEEPhi(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 1)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !9
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i14 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i14, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i14
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i14 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i14
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i14 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i14
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i14 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIhE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i4.i
  %.02640.i.i = phi i8 [ 0, %.lr.ph.i4.i ], [ %i.bh, %bb.v ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i4.i ], [ %i.bi, %bb.v ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %.not.i5.i = icmp samesign ugt i32 %.0.i.i, %i.bb
  br i1 %.not.i5.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp ugt i8 %.02640.i.i, %i.at
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = mul i8 %.02640.i.i, %i.aw               ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.bb, 255
  %i.bg = icmp samesign ult i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = add i8 %i.ba, %i.bd                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bi, %i.au
  br i1 %.not42.i.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !50

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.02640.lcssa.sink.i.i = phi i8 [ 0, %bb.r ], [ -1, %bb.u ], [ %.02640.i.i, %bb.s ], [ -1, %bb.t ], [ %i.bh, %bb.v ]
  %i.bj = phi i1 [ true, %bb.r ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.v ]
  store i8 %.02640.lcssa.sink.i.i, ptr %2, align 1, !tbaa !9
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bj, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou16_baseESt17basic_string_viewIcSt11char_traitsIcEEPti(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 2)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i16 0, ptr %2, align 2, !tbaa !36
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i14 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i14, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i14
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i14 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i14
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i14 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i14
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i14 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesItE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r
  %i.aw = trunc nuw nsw i32 %.0.i.i to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i4.i
  %.02640.i.i = phi i16 [ 0, %.lr.ph.i4.i ], [ %i.bj, %bb.v ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i4.i ], [ %i.bk, %bb.v ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = and i32 %i.bb, 65535                    ; 2 uses
  %.not.i5.i = icmp samesign ult i32 %i.bc, %.0.i.i
  br i1 %.not.i5.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp ugt i16 %.02640.i.i, %i.at
  br i1 %i.bd, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = mul i16 %.02640.i.i, %i.aw              ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = xor i32 %i.bc, 65535
  %i.bh = icmp samesign ult i32 %i.bg, %i.bf
  br i1 %i.bh, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = sext i8 %i.ba to i16
  %i.bj = add i16 %i.be, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bk, %i.au
  br i1 %.not42.i.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !51

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.02640.lcssa.sink.i.i = phi i16 [ 0, %bb.r ], [ -1, %bb.u ], [ %.02640.i.i, %bb.s ], [ -1, %bb.t ], [ %i.bj, %bb.v ]
  %i.bl = phi i1 [ true, %bb.r ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.v ]
  store i16 %.02640.lcssa.sink.i.i, ptr %2, align 2, !tbaa !36
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bl, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i15 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i15, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i15
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i15 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i15
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i15 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i15
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i15 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIjE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r, %bb.u
  %.02640.i.i = phi i32 [ %i.bf, %bb.u ], [ 0, %bb.r ] ; 3 uses
  %.02839.i.i = phi ptr [ %i.bg, %bb.u ], [ %.2.i.i, %bb.r ] ; 2 uses
  %i.aw = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i32                    ; 3 uses
  %.not.i5.i = icmp ugt i32 %.0.i.i, %i.ba
  br i1 %.not.i5.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.s:                                             ; preds = %.lr.ph.i4.i
  %i.bb = icmp ugt i32 %.02640.i.i, %i.at
  br i1 %i.bb, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = mul i32 %.02640.i.i, %.0.i.i            ; 2 uses
  %i.bd = xor i32 %i.ba, -1
  %i.be = icmp ugt i32 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bg, %i.au
  br i1 %.not42.i.i, label %.lr.ph.i4.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !52

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph.i4.i, %bb.r
  %.02640.lcssa.sink.i.i = phi i32 [ 0, %bb.r ], [ -1, %bb.t ], [ %.02640.i.i, %.lr.ph.i4.i ], [ -1, %bb.s ], [ %i.bf, %bb.u ]
  %i.bh = phi i1 [ true, %bb.r ], [ false, %bb.t ], [ false, %.lr.ph.i4.i ], [ false, %bb.s ], [ true, %bb.u ]
  store i32 %.02640.lcssa.sink.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bh, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou64_baseESt17basic_string_viewIcSt11char_traitsIcEEPmi(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !42
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i16 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i16, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i16
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i16 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i16
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i16 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i16
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i16 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ]
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesImE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r, %bb.u
  %.02640.i.i = phi i64 [ %i.bf, %bb.u ], [ 0, %bb.r ] ; 3 uses
  %.02839.i.i = phi ptr [ %i.bg, %bb.u ], [ %.2.i.i, %bb.r ] ; 2 uses
  %i.aw = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i64                    ; 3 uses
  %.not.i5.i = icmp ult i64 %i.ba, %i.ar
  br i1 %.not.i5.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.s:                                             ; preds = %.lr.ph.i4.i
  %i.bb = icmp ugt i64 %.02640.i.i, %i.at
  br i1 %i.bb, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = mul i64 %.02640.i.i, %i.ar              ; 2 uses
  %i.bd = xor i64 %i.ba, -1
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = add i64 %i.bc, %i.ba                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bg, %i.au
  br i1 %.not42.i.i, label %.lr.ph.i4.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !53

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph.i4.i, %bb.r
  %.02640.lcssa.sink.i.i = phi i64 [ 0, %bb.r ], [ -1, %bb.t ], [ %.02640.i.i, %.lr.ph.i4.i ], [ -1, %bb.s ], [ %i.bf, %bb.u ]
  %i.bh = phi i1 [ true, %bb.r ], [ false, %bb.t ], [ false, %.lr.ph.i4.i ], [ false, %bb.s ], [ true, %bb.u ]
  store i64 %.02640.lcssa.sink.i.i, ptr %2, align 8, !tbaa !42
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalImEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bh, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intImEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal19safe_strtou128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7uint128Ei(i64 %0, ptr %1, ptr noundef writeonly captures(none) initializes((0, 16)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.a = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i40 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i40, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i40
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i40 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i40
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i40 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i40
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i40 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 2 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.as = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.as, label %._crit_edge.i8.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r
  %i.at = zext nneg i32 %.0.i.i to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_7uint128EE13kVmaxOverBaseE, i64 %i.at ; 2 uses
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !tbaa !42
  %.sroa.024.0.copyload.i.i = load i64, ptr %i.au, align 16, !tbaa !42
  %i.av = zext nneg i32 %.0.i.i to i128           ; 2 uses
  %i.aw = zext i64 %.sroa.4.0.copyload.i.i to i128
  %i.ax = shl nuw i128 %i.aw, 64
  %i.ay = zext i64 %.sroa.024.0.copyload.i.i to i128
  %i.az = or disjoint i128 %i.ax, %i.ay
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %.lr.ph.i4.i
  %.03875.i.i = phi ptr [ %.2.i.i, %.lr.ph.i4.i ], [ %i.ca, %bb.y ] ; 2 uses
  %.sroa.051.074.i.i = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.by, %bb.y ] ; 2 uses
  %.sroa.11.073.i.i = phi i64 [ 0, %.lr.ph.i4.i ], [ %.narrow.i.i.i.i, %bb.y ] ; 2 uses
  %i.ba = load i8, ptr %.03875.i.i, align 1, !tbaa !9
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9   ; 2 uses
  %i.be = sext i8 %i.bd to i64                    ; 2 uses
  %i.bf = ashr i8 %i.bd, 7
  %i.bg = sext i8 %i.bf to i64                    ; 3 uses
  %i.bh = zext i64 %i.bg to i128
  %i.bi = shl nuw i128 %i.bh, 64
  %i.bj = zext i64 %i.be to i128                  ; 2 uses
  %i.bk = or disjoint i128 %i.bi, %i.bj
  %.not.i6.i = icmp ult i128 %i.bk, %i.av
  br i1 %.not.i6.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.sroa.051.074.i.i, ptr %2, align 16, !tbaa !42
  store i64 %.sroa.11.073.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !42
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = zext i64 %.sroa.11.073.i.i to i128
  %i.bm = shl nuw i128 %i.bl, 64
  %i.bn = zext i64 %.sroa.051.074.i.i to i128
  %i.bo = or disjoint i128 %i.bm, %i.bn           ; 2 uses
  %i.bp = icmp ult i128 %i.az, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 -1, i64 16, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

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
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.y:                                             ; preds = %bb.w
  %i.bx = add i128 %i.bq, %i.bj                   ; 2 uses
  %i.by = trunc i128 %i.bx to i64                 ; 2 uses
  %i.bz = lshr i128 %i.bx, 64
  %.tr.i.i.i.i = trunc nuw i128 %i.bz to i64
  %.narrow.i.i.i.i = add i64 %.tr.i.i.i.i, %i.bg  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03875.i.i, i64 1 ; 2 uses
  %.not78.i.i = icmp ult ptr %i.ca, %i.ar
  br i1 %.not78.i.i, label %bb.s, label %._crit_edge.i8.i, !llvm.loop !54

._crit_edge.i8.i:                                 ; preds = %bb.y, %bb.r
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %.narrow.i.i.i.i, %bb.y ]
  %.sroa.051.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.by, %bb.y ]
  store i64 %.sroa.051.0.lcssa.i.i, ptr %2, align 16, !tbaa !42
  store i64 %.sroa.11.0.lcssa.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !42
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %bb.t, %bb.v, %bb.x, %._crit_edge.i8.i
  %.0.i = phi i1 [ true, %._crit_edge.i8.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #7 comdat {
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
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !55

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
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !9
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.bc, i64 noundef %0) #16
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef range(i64 0, -1) %0, i32 noundef range(i32 0, 512) %1) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit
  %.028 = phi i32 [ %i.af, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %.sroa.3.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.018.026 = phi i64 [ %.sroa.0.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ %0, %bb.a ] ; 2 uses
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
  br i1 %i.w, label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 3 uses
  %i.y = sub nuw nsw i64 64, %i.x                 ; 2 uses
  %i.z = lshr i64 %i.k, %i.y
  %i.aa = shl i64 %i.r, %i.x
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.r, %i.y
  %i.ad = shl i64 %i.v, %i.x
  %i.ae = or disjoint i64 %i.ac, %i.ad
  br label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit

_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit:  ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.b ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.af = add nsw i32 %.028, -13                  ; 2 uses
  %i.ag = icmp sgt i32 %.028, 25
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit, %bb.a
  %.sroa.018.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.0.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.af, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ]
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_20250512L7PowFiveEmi.powers_of_five, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
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
  br i1 %i.bg, label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true) ; 3 uses
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 2 uses
  %i.bj = lshr i64 %i.au, %i.bi
  %i.bk = shl i64 %i.bb, %i.bh
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bb, %i.bi
  %i.bn = shl i64 %i.bf, %i.bh
  %i.bo = or disjoint i64 %i.bm, %i.bn
  br label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14

_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14: ; preds = %._crit_edge, %bb.c
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
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !13, !15}
!11 = distinct !{!11, !12, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!12 = distinct !{!12, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!13 = distinct !{!13, !14, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!14 = distinct !{!14, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!15 = distinct !{!15, !16, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!16 = distinct !{!16, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!22, !24, !26}
!22 = distinct !{!22, !23, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!23 = distinct !{!23, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!24 = distinct !{!24, !25, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!25 = distinct !{!25, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!26 = distinct !{!26, !27, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!27 = distinct !{!27, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30, !30, i64 0}
!30 = !{!"bool", !5, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !5, i64 0}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!47, !47, i64 0}
!47 = !{!"__int128", !5, i64 0}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
end_hunk_1
