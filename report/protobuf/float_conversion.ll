Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/float_conversion?download=true
inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %i.k = and i8 %i.j, 2
  %.not94.i = icmp eq i8 %i.k, 0
  br i1 %.not94.i, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %bb.c
  %i.l = and i8 %i.j, 4
  %.not95.i = icmp eq i8 %i.l, 0
  br i1 %.not95.i, label %bb.e, label %select.unfold.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  br label %bb.f

select.unfold.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %.055.ph.i = phi i8 [ 45, %bb.b ], [ 43, %bb.c ], [ 32, %bb.d ] ; 2 uses
  %.054.ph.i = phi x86_fp80 [ %i.h, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.055.ph.i, ptr %i.d, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %select.unfold.i, %bb.e
  %.05488.i = phi x86_fp80 [ %.054.ph.i, %select.unfold.i ], [ %0, %bb.e ] ; 3 uses
  %.05586.i = phi i8 [ %.055.ph.i, %select.unfold.i ], [ 0, %bb.e ] ; 3 uses
  %.0.i.i = phi ptr [ %i.m, %select.unfold.i ], [ %i.d, %bb.e ] ; 2 uses
  %i.n = fcmp uno x86_fp80 %.05488.i, 0.000000e+00
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %1, align 4, !tbaa !26      ; 2 uses
  %i.p = icmp eq i8 %i.o, 7
  %i.q = and i8 %i.o, -7
  %i.r = icmp eq i8 %i.q, 9
  %or.cond7.i.i.i = or i1 %i.p, %i.r
  %.str..str.1.i.i = select i1 %or.cond7.i.i.i, ptr @.str, ptr @.str.1
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.s = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %.05488.i)
  %i.t = fcmp oeq x86_fp80 %i.s, +inf
  br i1 %i.t, label %bb.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %1, align 4, !tbaa !26      ; 2 uses
  %i.v = icmp eq i8 %i.u, 7
  %i.w = and i8 %i.u, -7
  %i.x = icmp eq i8 %i.w, 9
  %or.cond7.i14.i.i = or i1 %i.v, %i.x
  %.str.2..str.3.i.i = select i1 %or.cond7.i14.i.i, ptr @.str.2, ptr @.str.3
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i: ; preds = %bb.i, %bb.g
  %.str.2..str.3.sink.i.i = phi ptr [ %.str.2..str.3.i.i, %bb.i ], [ %.str..str.1.i.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.str.2..str.3.sink.i.i, i64 3, i1 false)
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3
  %i.y = ptrtoint ptr %.1.i.i to i64
  %i.z = ptrtoint ptr %i.d to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = trunc i8 %i.ae to i1
  %i.ag = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.aa, ptr nonnull %i.d, i32 noundef %i.ac, i32 noundef -1, i1 noundef zeroext %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br i1 %i.ag, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %narrow.i = select i1 %i.aj, i32 6, i32 %i.ai   ; 4 uses
  %spec.select.i = zext i32 %narrow.i to i64      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ak = call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %.05488.i) ; 2 uses
  %i.al = extractvalue { x86_fp80, i32 } %i.ak, 1 ; 7 uses
  %i.am = extractvalue { x86_fp80, i32 } %i.ak, 0
  %i.an = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.am, i32 noundef 64) #18, !tbaa !19, !noalias !88
  %i.ao = add nsw i32 %i.al, -64                  ; 6 uses
  call void @_ZN4absl12lts_202505127uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16) %3, x86_fp80 noundef %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ao, ptr %i.ap, align 16, !tbaa !32, !alias.scope !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aq = load i8, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.ar = and i8 %i.aq, -2
  switch i8 %i.ar, label %bb.bf [
    i8 8, label %bb.k
    i8 10, label %bb.v
    i8 12, label %bb.ab
    i8 14, label %bb.aq
  ]

bb.k:                                             ; preds = %bb.j
  %.sroa.011.0.copyload.i = load i64, ptr %3, align 16, !tbaa !33 ; 7 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.212.0.copyload.i = load i64, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !33 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i8 %.05586.i, ptr %5, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %spec.select.i, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.au, align 8, !tbaa !41
  %i.av = icmp sgt i32 %i.al, 63
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %.sroa.212.0.copyload.i, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i: ; preds = %bb.l
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.212.0.copyload.i, i1 true)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %reass.sub.i.i = add nuw i32 %i.al, 64
  %i.ay = sub nuw i32 %reass.sub.i.i, %i.ax       ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 128
  br i1 %i.az, label %bb.m, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i, !prof !42

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i: ; preds = %bb.l
  %i.ba = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.011.0.copyload.i, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %reass.sub40.i.i = sub nsw i32 %i.ao, %i.bb     ; 2 uses
  %i.bc = icmp sgt i32 %reass.sub40.i.i, 64
  br i1 %i.bc, label %bb.m, label %bb.p, !prof !42

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.n:                                             ; preds = %bb.k
  %i.bd = icmp slt i32 %i.al, -64
  br i1 %i.bd, label %bb.o, label %bb.t, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.be = sub nsw i32 64, %i.al
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, i32 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i
  %i.bf = add nsw i32 %reass.sub40.i.i, 64
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i: ; preds = %bb.p, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  %.pre-phi.i.i = phi i32 [ %i.bf, %bb.p ], [ %i.ay, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.bg, align 2, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.bi = icmp slt i32 %.pre-phi.i.i, 65
  br i1 %i.bi, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.bj = zext nneg i32 %i.ao to i64
  %i.bk = shl i64 %.sroa.011.0.copyload.i, %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i.i = phi i64 [ %i.bk, %bb.q ], [ %i.bm, %bb.r ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bg, %bb.q ], [ %i.bo, %bb.r ]
  %i.bl = urem i64 %.03.i.i.i.i, 10
  %i.bm = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i.a = trunc nuw nsw i64 %i.bl to i8
  %i.bn = or disjoint i8 %.lhs.trunc.i.i.i.i.i.a, 48
  %i.bo = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !25
  %.not.i50.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i50.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %bb.r, !llvm.loop !0

bb.s:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.bp = zext i64 %.sroa.212.0.copyload.i to i128
  %i.bq = shl nuw i128 %i.bp, 64
  %i.br = zext i64 %.sroa.011.0.copyload.i to i128
  %i.bs = or disjoint i128 %i.bq, %i.br
  %i.bt = zext nneg i32 %i.ao to i128
  %i.bu = shl i128 %i.bs, %i.bt                   ; 2 uses
  %i.bv = trunc i128 %i.bu to i64                 ; 2 uses
  %i.bw = lshr i128 %i.bu, 64                     ; 2 uses
  %.not10.i.i.i.i = icmp eq i128 %i.bw, 0
  br i1 %.not10.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.s
  %i.bx = trunc nuw i128 %i.bw to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.bg, %.lr.ph.i.preheader.i.i.i ]
  %.0812.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0911.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.by = urem i64 %.0911.i.i.i.i, 10             ; 2 uses
  %i.bz = udiv i64 %.0911.i.i.i.i, 10
  %7 = urem i64 %.0812.i.i.i.i, 10
  %8 = mul nuw nsw i64 %i.by, 6
  %9 = add nuw nsw i64 %8, %7
  %i.ca = udiv i64 %.0812.i.i.i.i, 10
  %i.cb = mul nuw i64 %i.by, 1844674407370955161
  %i.cc = add nuw i64 %i.cb, %i.ca
  %.lhs.trunc.i3.i.i.i.i = trunc nuw nsw i64 %9 to i8 ; 2 uses
  %i.cd = udiv i8 %.lhs.trunc.i3.i.i.i.i, 10
  %.zext.i.i.i.i.i = zext nneg i8 %i.cd to i64
  %i.ce = add i64 %i.cc, %.zext.i.i.i.i.i         ; 2 uses
  %i.cf = urem i8 %.lhs.trunc.i3.i.i.i.i, 10
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = getelementptr inbounds i8, ptr %.013.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !25
  %.not.i51.i.i.i = icmp ult i64 %.0911.i.i.i.i, 10
  br i1 %.not.i51.i.i.i, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !1

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i, %bb.s
  %.03.i.i.i.i.i.ph = phi i64 [ %i.bv, %bb.s ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.ph = phi ptr [ %i.bg, %bb.s ], [ %i.ch, %.lr.ph.i.i.i.i ]
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.cj, %.preheader.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cl, %.preheader.i.i.i.i ], [ %.0.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ]
  %i.ci = urem i64 %.03.i.i.i.i.i, 10
  %i.cj = udiv i64 %.03.i.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.ci to i8
  %i.ck = or disjoint i8 %.lhs.trunc.i.i.i.i.i.i, 48
  %i.cl = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp ult i64 %.03.i.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !0

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.cm, align 2, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 2 uses
  %i.co = sub nsw i32 64, %i.al                   ; 2 uses
  %.not.i66.i = icmp eq i32 %i.ao, -128
  br i1 %.not.i66.i, label %.preheader.i62.i.i.i.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = zext i64 %.sroa.212.0.copyload.i to i128
  %i.cq = shl nuw i128 %i.cp, 64
  %i.cr = zext i64 %.sroa.011.0.copyload.i to i128
  %i.cs = or disjoint i128 %i.cq, %i.cr
  %i.ct = zext nneg i32 %i.co to i128
  %i.cu = lshr i128 %i.cs, %i.ct                  ; 2 uses
  %i.cv = trunc i128 %i.cu to i64                 ; 2 uses
  %i.cw = lshr i128 %i.cu, 64                     ; 2 uses
  %.not10.i54.i.i.i = icmp eq i128 %i.cw, 0
  br i1 %.not10.i54.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.preheader.i.i.i

.lr.ph.i55.preheader.i.i.i:                       ; preds = %bb.u
  %i.cx = trunc nuw nsw i128 %i.cw to i64
  br label %.lr.ph.i55.i.i.i

.lr.ph.i55.i.i.i:                                 ; preds = %.lr.ph.i55.i.i.i, %.lr.ph.i55.preheader.i.i.i
  %.013.i56.i.i.i = phi ptr [ %i.dh, %.lr.ph.i55.i.i.i ], [ %i.cm, %.lr.ph.i55.preheader.i.i.i ]
  %.0812.i57.i.i.i = phi i64 [ %i.de, %.lr.ph.i55.i.i.i ], [ %i.cv, %.lr.ph.i55.preheader.i.i.i ] ; 2 uses
  %.0911.i58.i.i.i = phi i64 [ %i.cz, %.lr.ph.i55.i.i.i ], [ %i.cx, %.lr.ph.i55.preheader.i.i.i ] ; 3 uses
  %i.cy = urem i64 %.0911.i58.i.i.i, 10           ; 2 uses
  %i.cz = udiv i64 %.0911.i58.i.i.i, 10
  %10 = urem i64 %.0812.i57.i.i.i, 10
  %11 = mul nuw nsw i64 %i.cy, 6
  %12 = add nuw nsw i64 %11, %10
  %i.da = udiv i64 %.0812.i57.i.i.i, 10
  %i.db = mul nuw i64 %i.cy, 1844674407370955161
  %i.dc = add nuw i64 %i.db, %i.da
  %.lhs.trunc.i3.i59.i.i.i = trunc nuw nsw i64 %12 to i8 ; 2 uses
  %i.dd = udiv i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %.zext.i.i60.i.i.i = zext nneg i8 %i.dd to i64
  %i.de = add i64 %i.dc, %.zext.i.i60.i.i.i       ; 2 uses
  %i.df = urem i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = getelementptr inbounds i8, ptr %.013.i56.i.i.i, i64 -1 ; 3 uses
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !25
  %.not.i61.i.i.i = icmp ult i64 %.0911.i58.i.i.i, 10
  br i1 %.not.i61.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.i.i.i, !llvm.loop !1

.preheader.i62.i.i.i.preheader:                   ; preds = %.lr.ph.i55.i.i.i, %bb.u, %bb.t
  %.03.i.i65.i.i.i.ph = phi i64 [ %i.cv, %bb.u ], [ 0, %bb.t ], [ %i.de, %.lr.ph.i55.i.i.i ]
  %.0.i.i66.i.i.i.ph = phi ptr [ %i.cm, %bb.u ], [ %i.cm, %bb.t ], [ %i.dh, %.lr.ph.i55.i.i.i ]
  br label %.preheader.i62.i.i.i

.preheader.i62.i.i.i:                             ; preds = %.preheader.i62.i.i.i.preheader, %.preheader.i62.i.i.i
  %.03.i.i65.i.i.i = phi i64 [ %i.dj, %.preheader.i62.i.i.i ], [ %.03.i.i65.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 3 uses
  %.0.i.i66.i.i.i = phi ptr [ %i.dl, %.preheader.i62.i.i.i ], [ %.0.i.i66.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 2 uses
  %i.di = urem i64 %.03.i.i65.i.i.i, 10
  %i.dj = udiv i64 %.03.i.i65.i.i.i, 10
  %.lhs.trunc.i.i.i67.i.i.i = trunc nuw nsw i64 %i.di to i8
  %i.dk = or disjoint i8 %.lhs.trunc.i.i.i67.i.i.i, 48
  %i.dl = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -1 ; 3 uses
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !25
  %.not.i.i68.i.i.i = icmp ult i64 %.03.i.i65.i.i.i, 10
  br i1 %.not.i.i68.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i, label %.preheader.i62.i.i.i, !llvm.loop !0

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i: ; preds = %.preheader.i62.i.i.i
  %i.dm = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.dm, align 1, !tbaa !25
  %i.dn = call fastcc noundef ptr @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, ptr noundef %i.cn, i32 noundef %i.co, i64 noundef %spec.select.i)
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !25
  %.not.i24.i.i = icmp eq i8 %i.do, 48
  %spec.select.i.i.i = select i1 %.not.i24.i.i, ptr %i.dl, ptr %i.dm
  %.val.i.i.i.pre = load i64, ptr %i.as, align 8, !tbaa !39
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.r, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i
  %.val.i.i.i = phi i64 [ %.val.i.i.i.pre, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.dp = phi ptr [ %i.cn, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bh, %bb.r ], [ %i.bh, %.preheader.i.i.i.i ]
  %.042.i.i.i = phi ptr [ %i.dn, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bh, %bb.r ], [ %i.bh, %.preheader.i.i.i.i ]
  %.041.i.i.i = phi ptr [ %spec.select.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bo, %bb.r ], [ %i.cl, %.preheader.i.i.i.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.042.i.i.i to i64         ; 2 uses
  %i.dr = ptrtoint ptr %.041.i.i.i to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %.not.i70.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i70.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  %.val47.i.i.i = load ptr, ptr %i.at, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !24
  %.fr88.i.i.i = freeze i8 %i.du
  %i.dv = and i8 %.fr88.i.i.i, 8
  %.not89.i.i.i = icmp eq i8 %i.dv, 0
  %i.dw = add i64 %i.ds, -1
  br i1 %.not89.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i
  %i.dx = phi i64 [ %i.ds, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i ], [ %i.dw, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i ]
  %i.dy = ptrtoint ptr %i.dp to i64
  %.neg.i.i.i = sub i64 %i.dy, %i.dq
  %i.dz = add i64 %.neg.i.i.i, %.val.i.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 %i.dx, ptr nonnull %.041.i.i.i, i64 noundef 0, i64 noundef %i.dz, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bf

bb.v:                                             ; preds = %bb.j
  %i.ea = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EeEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(ptr noundef nonnull byval(%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed") align 16 %3, i64 noundef %spec.select.i, ptr noundef %4, ptr noundef %i.e)
  br i1 %i.ea, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bf

bb.x:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !24
  %i.ee = and i8 %i.ed, 8
  %.not97.i = icmp eq i8 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 10 uses
  %.val63.i = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 3 uses
  br i1 %.not97.i, label %bb.y, label %._crit_edge132.i

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds i8, ptr %.val63.i, i64 -1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !25
  %i.ei = icmp eq i8 %i.eh, 46
  %spec.select162.i = select i1 %i.ei, ptr %i.eg, ptr %.val63.i
  br label %._crit_edge132.i

._crit_edge132.i:                                 ; preds = %bb.y, %bb.x
  %i.ej = phi ptr [ %spec.select162.i, %bb.y ], [ %.val63.i, %bb.x ] ; 2 uses
  %i.ek = load i32, ptr %i.e, align 4, !tbaa !19  ; 2 uses
  %i.el = load i8, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.em = icmp eq i8 %i.el, 7
  %i.en = and i8 %i.el, -7
  %i.eo = icmp eq i8 %i.en, 9
  %or.cond7.i.i = or i1 %i.em, %i.eo
  %i.ep = select i1 %or.cond7.i.i, i8 69, i8 101
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.eq, ptr %i.ef, align 8, !tbaa !46
  store i8 %i.ep, ptr %i.ej, align 1, !tbaa !25
  %i.er = icmp slt i32 %i.ek, 0
  %i.es = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.ef, align 8, !tbaa !46
  %spec.select163.i = select i1 %i.er, i8 45, i8 43
  %spec.select164.i = call i32 @llvm.abs.i32(i32 %i.ek, i1 true) ; 5 uses
  store i8 %spec.select163.i, ptr %i.es, align 1, !tbaa !25
  %i.eu = icmp samesign ugt i32 %spec.select164.i, 99
  %i.ev = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ew, ptr %i.ef, align 8, !tbaa !46
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge132.i
  %i.ex = udiv i32 %spec.select164.i, 100
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = add i8 %i.ey, 48
  store i8 %i.ez, ptr %i.ev, align 1, !tbaa !25
  %i.fa = udiv i32 %spec.select164.i, 10
  %i.fb = urem i32 %i.fa, 10
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = or disjoint i8 %i.fc, 48
  %i.fe = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.ef, align 8, !tbaa !46
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !25
  %i.fg = urem i32 %spec.select164.i, 10
  %i.fh = trunc nuw nsw i32 %i.fg to i8
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i

bb.aa:                                            ; preds = %._crit_edge132.i
  %.lhs.trunc.i.i = trunc nuw nsw i32 %spec.select164.i to i8 ; 2 uses
  %i.fi = udiv i8 %.lhs.trunc.i.i, 10
  %i.fj = or disjoint i8 %i.fi, 48
  store i8 %i.fj, ptr %i.ev, align 1, !tbaa !25
  %i.fk = urem i8 %.lhs.trunc.i.i, 10
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i: ; preds = %bb.aa, %bb.z
  %.sink23.i.i = phi i8 [ %i.fk, %bb.aa ], [ %i.fh, %bb.z ]
  %i.fl = or disjoint i8 %.sink23.i.i, 48
  %i.fm = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store ptr %i.fn, ptr %i.ef, align 8, !tbaa !46
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !25
  br label %bb.be

bb.ab:                                            ; preds = %bb.j
  %i.fo = icmp eq i32 %narrow.i, 0
  %.sroa.speculated.i = select i1 %i.fo, i64 1, i64 %spec.select.i ; 2 uses
  %i.fp = add nsw i64 %.sroa.speculated.i, -1
  %i.fq = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EeEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(ptr noundef nonnull byval(%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed") align 16 %3, i64 noundef %i.fp, ptr noundef %4, ptr noundef %i.e)
  br i1 %i.fq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bf

bb.ad:                                            ; preds = %bb.ab
  %i.fs = load i32, ptr %i.e, align 4, !tbaa !19  ; 8 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fv = icmp samesign ugt i64 %.sroa.speculated.i, %i.fu
  br i1 %i.fv, label %bb.ah, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %.old6.i = icmp samesign ugt i32 %i.fs, -5
  br i1 %.old6.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !47 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !25
  %.not147.i = icmp eq i32 %i.fs, -1
  br i1 %.not147.i, label %._crit_edge.i, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.ag, %.lr.ph.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.ag ]
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !47 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -1
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !47
  store i8 48, ptr %i.ga, align 1, !tbaa !25
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.gc = xor i32 %i.fs, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.gc, -1
  br i1 %prol.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.prol, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol, %bb.ag
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !47 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.b = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 7 uses
  %i.c = alloca [171 x i8], align 16              ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [4 x i8], align 1                 ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Buffer", align 8 ; 12 uses
  %4 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 9 uses
  %5 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %i.g = bitcast double %0 to i64
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fneg double %0
  br label %select.unfold

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
  %i.l = and i8 %i.k, 2
  %.not103 = icmp eq i8 %i.l, 0
  br i1 %.not103, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.m = and i8 %i.k, 4
  %.not104 = icmp eq i8 %i.m, 0
  br i1 %.not104, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  br label %bb.f

select.unfold:                                    ; preds = %bb.d, %bb.b, %bb.c
  %.064.ph = phi i8 [ 45, %bb.b ], [ 43, %bb.c ], [ 32, %bb.d ] ; 2 uses
  %.063.ph = phi double [ %i.i, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %.064.ph, ptr %i.e, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %.06395 = phi double [ %.063.ph, %select.unfold ], [ %0, %bb.e ] ; 3 uses
  %.06493 = phi i8 [ %.064.ph, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %.0.i = phi ptr [ %i.n, %select.unfold ], [ %i.e, %bb.e ] ; 2 uses
  %i.o = fcmp uno double %.06395, 0.000000e+00
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %1, align 4, !tbaa !26      ; 2 uses
  %i.q = icmp eq i8 %i.p, 7
  %i.r = and i8 %i.p, -7
  %i.s = icmp eq i8 %i.r, 9
  %or.cond7.i.i = or i1 %i.q, %i.s
  %.str..str.1.i = select i1 %or.cond7.i.i, ptr @.str, ptr @.str.1
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call double @llvm.fabs.f64(double %.06395)
  %i.u = fcmp oeq double %i.t, +inf
  br i1 %i.u, label %bb.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %1, align 4, !tbaa !26      ; 2 uses
  %i.w = icmp eq i8 %i.v, 7
  %i.x = and i8 %i.v, -7
  %i.y = icmp eq i8 %i.x, 9
  %or.cond7.i14.i = or i1 %i.w, %i.y
  %.str.2..str.3.i = select i1 %or.cond7.i14.i, ptr @.str.2, ptr @.str.3
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.g, %bb.i
  %.str.2..str.3.sink.i = phi ptr [ %.str.2..str.3.i, %bb.i ], [ %.str..str.1.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.str.2..str.3.sink.i, i64 3, i1 false)
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.z = ptrtoint ptr %.1.i to i64
  %i.aa = ptrtoint ptr %i.e to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %i.ag = trunc i8 %i.af to i1
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.ab, ptr nonnull %i.e, i32 noundef %i.ad, i32 noundef -1, i1 noundef zeroext %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br i1 %i.ah, label %bb.be, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %narrow = select i1 %i.ak, i32 6, i32 %i.aj     ; 5 uses
  %spec.select = zext i32 %narrow to i64          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 0, ptr %i.f, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.al = call double @frexp(double noundef %.06395, ptr noundef nonnull %i.d) #18
  %i.am = call double @ldexp(double noundef %i.al, i32 noundef 53) #18, !tbaa !19
  %i.an = load i32, ptr %i.d, align 4, !tbaa !19  ; 10 uses
  %i.ao = add nsw i32 %i.an, -53                  ; 5 uses
  %i.ap = fptoui double %i.am to i64              ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aq = load i8, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.ar = and i8 %i.aq, -2
  switch i8 %i.ar, label %bb.bd [
    i8 8, label %bb.k
    i8 10, label %bb.ab
    i8 12, label %bb.ah
    i8 14, label %bb.au
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 %.06493, ptr %4, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.au, align 8, !tbaa !41
  %i.av = icmp sgt i32 %i.an, 52
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %reass.sub.i = add nuw i32 %i.an, 11
  %i.ay = sub nuw i32 %reass.sub.i, %i.ax         ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 128
  br i1 %i.az, label %bb.m, label %bb.p, !prof !42

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.n:                                             ; preds = %bb.k
  %i.ba = icmp slt i32 %i.an, -75
  br i1 %i.ba, label %bb.o, label %select.unfold.preheader.i.i, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.bb = sub nsw i32 53, %i.an
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.bc, align 2, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.be = icmp slt i32 %i.ay, 65
  br i1 %i.be, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bf = zext nneg i32 %i.ao to i64
  %i.bg = shl i64 %i.ap, %i.bf
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i = phi i64 [ %i.bg, %bb.q ], [ %i.bi, %bb.r ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.bc, %bb.q ], [ %i.bk, %bb.r ]
  %i.bh = urem i64 %.03.i.i.i, 10
  %i.bi = udiv i64 %.03.i.i.i, 10
  %.lhs.trunc.i.i.i.i.a = trunc nuw nsw i64 %i.bh to i8
  %i.bj = or disjoint i8 %.lhs.trunc.i.i.i.i.a, 48
  %i.bk = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !25
  %.not.i.i.i = icmp ult i64 %.03.i.i.i, 10
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %bb.r, !llvm.loop !0

bb.s:                                             ; preds = %bb.p
  %i.bl = zext i64 %i.ap to i128
  %i.bm = zext nneg i32 %i.ao to i128
  %i.bn = shl i128 %i.bl, %i.bm                   ; 2 uses
  %i.bo = trunc i128 %i.bn to i64                 ; 2 uses
  %i.bp = lshr i128 %i.bn, 64                     ; 2 uses
  %.not10.i.i.i = icmp eq i128 %i.bp, 0
  br i1 %.not10.i.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.s
  %i.bq = trunc nuw i128 %i.bp to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.013.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %i.bc, %.lr.ph.i.preheader.i.i ]
  %.0812.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i ], [ %i.bo, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0911.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i ], [ %i.bq, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.br = urem i64 %.0911.i.i.i, 10               ; 2 uses
  %i.bs = udiv i64 %.0911.i.i.i, 10
  %6 = urem i64 %.0812.i.i.i, 10
  %7 = mul nuw nsw i64 %i.br, 6
  %8 = add nuw nsw i64 %7, %6
  %i.bt = udiv i64 %.0812.i.i.i, 10
  %i.bu = mul nuw i64 %i.br, 1844674407370955161
  %i.bv = add nuw i64 %i.bu, %i.bt
  %.lhs.trunc.i3.i.i.i = trunc nuw nsw i64 %8 to i8 ; 2 uses
  %i.bw = udiv i8 %.lhs.trunc.i3.i.i.i, 10
  %.zext.i.i.i.i = zext nneg i8 %i.bw to i64
  %i.bx = add i64 %i.bv, %.zext.i.i.i.i           ; 2 uses
  %i.by = urem i8 %.lhs.trunc.i3.i.i.i, 10
  %i.bz = or disjoint i8 %i.by, 48
  %i.ca = getelementptr inbounds i8, ptr %.013.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !25
  %.not.i46.i.i = icmp ult i64 %.0911.i.i.i, 10
  br i1 %.not.i46.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !1

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.s
  %.03.i.i.i.i.ph = phi i64 [ %i.bo, %bb.s ], [ %i.bx, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.ph = phi ptr [ %i.bc, %bb.s ], [ %i.ca, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.03.i.i.i.i = phi i64 [ %i.cc, %.preheader.i.i.i ], [ %.03.i.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.ce, %.preheader.i.i.i ], [ %.0.i.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %i.cb = urem i64 %.03.i.i.i.i, 10
  %i.cc = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.cb to i8
  %i.cd = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.ce = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !25
  %.not.i.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !0

select.unfold.preheader.i.i:                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  store i8 46, ptr %i.cf, align 2, !tbaa !25
  %i.cg = sub nsw i32 53, %i.an                   ; 2 uses
  %i.ch = icmp sgt i32 %i.an, -11
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = lshr i64 %i.ap, %i.ci
  %spec.select193 = select i1 %i.ch, i64 %i.cj, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %select.unfold.i.i
  %.03.i47.i.i = phi i64 [ %i.cl, %select.unfold.i.i ], [ %spec.select193, %select.unfold.preheader.i.i ] ; 3 uses
  %.0.i48.i.i = phi ptr [ %i.cn, %select.unfold.i.i ], [ %i.cf, %select.unfold.preheader.i.i ] ; 2 uses
  %i.ck = urem i64 %.03.i47.i.i, 10
  %i.cl = udiv i64 %.03.i47.i.i, 10
  %.lhs.trunc.i.i49.i.i = trunc nuw nsw i64 %i.ck to i8
  %i.cm = or disjoint i8 %.lhs.trunc.i.i49.i.i, 48
  %i.cn = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -1 ; 3 uses
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !25
  %.not.i50.i.i = icmp ult i64 %.03.i47.i.i, 10
  br i1 %.not.i50.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i, label %select.unfold.i.i, !llvm.loop !0

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i: ; preds = %select.unfold.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.cp, align 1, !tbaa !25
  %i.cq = icmp sgt i32 %i.an, -12
  br i1 %i.cq, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.cr = add nsw i32 %i.an, 11
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl i64 %i.ap, %i.cs                    ; 2 uses
  %.not21.i.i.i = icmp eq i32 %narrow, 0
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %bb.u
  %.024.i.i.i = phi ptr [ %i.cz, %bb.u ], [ %i.co, %bb.t ] ; 3 uses
  %.0923.i.i.i = phi i64 [ %i.da, %bb.u ], [ %spec.select, %bb.t ]
  %.01622.i.i.i = phi i64 [ %i.cw, %bb.u ], [ %i.ct, %bb.t ] ; 2 uses
  %.not13.i.i.i = icmp eq i64 %.01622.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  %i.cu = zext i64 %.01622.i.i.i to i128
  %i.cv = mul nuw nsw i128 %i.cu, 10              ; 2 uses
  %i.cw = trunc i128 %i.cv to i64                 ; 2 uses
  %i.cx = lshr i128 %i.cv, 64
  %.tr.i.i.i.i.i = trunc nuw nsw i128 %i.cx to i8
  %i.cy = or disjoint i8 %.tr.i.i.i.i.i, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1 ; 2 uses
  store i8 %i.cy, ptr %.024.i.i.i, align 1, !tbaa !25
  %i.da = add nsw i64 %.0923.i.i.i, -1            ; 2 uses
  %.not.i53.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i53.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i, !llvm.loop !89

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %.016.lcssa.i.i.i = phi i64 [ %i.ct, %bb.t ], [ %i.cw, %bb.u ] ; 2 uses
  %.0.lcssa.i54.i.i = phi ptr [ %i.co, %bb.t ], [ %i.cz, %bb.u ] ; 5 uses
  %i.db = icmp sgt i64 %.016.lcssa.i.i.i, -1
  br i1 %i.db, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %.not12.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %bb.x, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %bb.v, %.preheader.i55.i.i.backedge
  %.0.pn.i.i.i = phi ptr [ %.0.i.i56.i.i, %.preheader.i55.i.i.backedge ], [ %.0.lcssa.i54.i.i, %bb.v ]
  %.0.i.i56.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i.i, i64 -1 ; 4 uses
  %i.dc = load i8, ptr %.0.i.i56.i.i, align 1, !tbaa !25 ; 2 uses
  switch i8 %i.dc, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.w
    i8 46, label %.preheader.i55.i.i.backedge
  ]

bb.w:                                             ; preds = %.preheader.i55.i.i
  store i8 48, ptr %.0.i.i56.i.i, align 1, !tbaa !25
  br label %.preheader.i55.i.i.backedge

.preheader.i55.i.i.backedge:                      ; preds = %bb.w, %.preheader.i55.i.i
  br label %.preheader.i55.i.i, !llvm.loop !2

bb.x:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds i8, ptr %.0.lcssa.i54.i.i, i64 -1 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  %i.df = icmp eq i8 %i.de, 46
  %spec.select.idx.i.i.i.i = sext i1 %i.df to i64
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.dd, i64 %spec.select.idx.i.i.i.i ; 2 uses
  %i.dg = load i8, ptr %spec.select.i.i.i.i, align 1, !tbaa !25 ; 2 uses
  %i.dh = and i8 %i.dg, -127
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %i.di, label %.preheader.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x, %bb.z
  %i.dj = phi i8 [ %.pr.i.i.i.i, %bb.z ], [ %i.dg, %bb.x ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dk, %bb.z ], [ %spec.select.i.i.i.i, %bb.x ] ; 3 uses
  switch i8 %i.dj, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.y
    i8 46, label %bb.z
  ]

bb.y:                                             ; preds = %.preheader.i.i.i.i
  store i8 48, ptr %.0.i.i.i.i.i, align 1, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.i.i.i.i
  %i.dk = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %i.dk, align 1, !tbaa !25
  br label %.preheader.i.i.i.i, !llvm.loop !2

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i: ; preds = %.preheader.i55.i.i, %.preheader.i.i.i.i
  %.lcssa.sink.i.i.i = phi i8 [ %i.dj, %.preheader.i.i.i.i ], [ %i.dc, %.preheader.i55.i.i ]
  %.0.i.i.lcssa.sink.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.0.i.i56.i.i, %.preheader.i55.i.i ]
  %i.dl = add i8 %.lcssa.sink.i.i.i, 1
  store i8 %i.dl, ptr %.0.i.i.lcssa.sink.i.i.i, align 1, !tbaa !25
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.dm = call fastcc noundef ptr @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %i.ap, i64 0, ptr noundef %i.co, i32 noundef %i.cg, i64 noundef %spec.select)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i: ; preds = %.lr.ph.i52.i.i, %bb.aa, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i, %bb.x, %._crit_edge.i.i.i
  %i.dn = phi ptr [ %i.dm, %bb.aa ], [ %.0.lcssa.i54.i.i, %._crit_edge.i.i.i ], [ %.0.lcssa.i54.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i ], [ %.0.lcssa.i54.i.i, %bb.x ], [ %.024.i.i.i, %.lr.ph.i52.i.i ]
  %i.do = load i8, ptr %i.cp, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.do, 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.cn, ptr %i.cp
  %.val.i.i.pre = load i64, ptr %i.as, align 8, !tbaa !39
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.r, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i
  %.val.i.i = phi i64 [ %.val.i.i.pre, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %spec.select, %bb.r ], [ %spec.select, %.preheader.i.i.i ] ; 2 uses
  %i.dp = phi ptr [ %i.co, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %.038.i.i = phi ptr [ %spec.select.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bk, %bb.r ], [ %i.ce, %.preheader.i.i.i ] ; 2 uses
  %.037.i.i = phi ptr [ %i.dn, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %i.dq = ptrtoint ptr %.037.i.i to i64           ; 2 uses
  %i.dr = ptrtoint ptr %.038.i.i to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %.not.i57.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  %.val43.i.i = load ptr, ptr %i.at, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val43.i.i, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !24
  %.fr66.i.i = freeze i8 %i.du
  %i.dv = and i8 %.fr66.i.i, 8
  %.not67.i.i = icmp eq i8 %i.dv, 0
  %i.dw = add i64 %i.ds, -1
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i
  %i.dx = phi i64 [ %i.ds, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i ], [ %i.dw, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i ]
  %i.dy = ptrtoint ptr %i.dp to i64
  %.neg.i.i = sub i64 %i.dy, %i.dq
  %i.dz = add i64 %.neg.i.i, %.val.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 %i.dx, ptr %.038.i.i, i64 noundef 0, i64 noundef %i.dz, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit: ; preds = %bb.m, %bb.o, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bd

bb.ab:                                            ; preds = %bb.j
  %i.ea = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %i.ap, i32 %i.ao, i64 noundef %spec.select, ptr noundef %3, ptr noundef %i.f)
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1
end_hunk_1
