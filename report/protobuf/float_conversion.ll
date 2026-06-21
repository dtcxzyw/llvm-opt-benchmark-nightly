inline.NumInlined: 622
inline.NumDeleted: 240
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed" = type <{ %"class.absl::lts_20250512::uint128", i32, [12 x i8] }>
%"class.absl::lts_20250512::uint128" = type { i64, i64 }
%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Buffer" = type { [85 x i8], ptr, ptr }
%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::FormatState" = type { i8, i64, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.anon.1 = type <{ %"class.absl::lts_20250512::FunctionRef", %"class.absl::lts_20250512::uint128", i32, [12 x i8] }>
%"class.absl::lts_20250512::FunctionRef" = type { %"union.absl::lts_20250512::functional_internal::VoidPtr", ptr }
%"union.absl::lts_20250512::functional_internal::VoidPtr" = type { ptr }
%class.anon = type { ptr }
%class.anon.5 = type <{ %"class.absl::lts_20250512::FunctionRef.3", %"class.absl::lts_20250512::uint128", i32, [12 x i8] }>
%"class.absl::lts_20250512::FunctionRef.3" = type { %"union.absl::lts_20250512::functional_internal::VoidPtr", ptr }
%class.anon.4 = type { ptr, ptr }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal" = type { i64, i64, %"struct.std::array", i64, %"class.absl::lts_20250512::Span" }
%"struct.std::array" = type { [9 x i8] }
%"class.absl::lts_20250512::Span" = type { ptr, i64 }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::FractionalDigitGenerator" = type { i8, i64, %"class.absl::lts_20250512::Span" }

$_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag = comdat any

@.str = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"*.*\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"0123456789ABCDEF0123456789abcdef\00", align 1
@switch.table._ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE = private unnamed_addr constant [19 x i8] c"csdiouxXfFeEgGaAnpv", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 7 uses
  %i.c = alloca [171 x i8], align 16              ; 7 uses
  %i.d = alloca [4 x i8], align 1                 ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed", align 16 ; 10 uses
  %4 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Buffer", align 8 ; 11 uses
  %5 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 9 uses
  %6 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %i.f = bitcast x86_fp80 %0 to i80
  %i.g = icmp slt i80 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fneg x86_fp80 %0
  br label %select.unfold.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7     ; 2 uses
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
  store i8 %.055.ph.i, ptr %i.d, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %select.unfold.i, %bb.e
  %.05488.i = phi x86_fp80 [ %.054.ph.i, %select.unfold.i ], [ %0, %bb.e ] ; 3 uses
  %.05586.i = phi i8 [ %.055.ph.i, %select.unfold.i ], [ 0, %bb.e ] ; 3 uses
  %.0.i.i = phi ptr [ %i.m, %select.unfold.i ], [ %i.d, %bb.e ] ; 2 uses
  %i.n = fcmp uno x86_fp80 %.05488.i, 0.000000e+00
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %1, align 4, !tbaa !13      ; 2 uses
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
  %i.u = load i8, ptr %1, align 4, !tbaa !13      ; 2 uses
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = trunc i8 %i.ae to i1
  %i.ag = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.aa, ptr nonnull %i.d, i32 noundef %i.ac, i32 noundef -1, i1 noundef zeroext %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br i1 %i.ag, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %narrow.i = select i1 %i.aj, i32 6, i32 %i.ai   ; 4 uses
  %spec.select.i = zext i32 %narrow.i to i64      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.ak = call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %.05488.i) ; 2 uses
  %i.al = extractvalue { x86_fp80, i32 } %i.ak, 1 ; 7 uses
  %i.am = extractvalue { x86_fp80, i32 } %i.ak, 0
  %i.an = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.am, i32 noundef 64) #18, !tbaa !3, !noalias !16
  %i.ao = add nsw i32 %i.al, -64                  ; 6 uses
  call void @_ZN4absl12lts_202505127uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16) %3, x86_fp80 noundef %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ao, ptr %i.ap, align 16, !tbaa !19, !alias.scope !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aq = load i8, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.ar = and i8 %i.aq, -2
  switch i8 %i.ar, label %bb.bg [
    i8 8, label %bb.k
    i8 10, label %bb.v
    i8 12, label %bb.ab
    i8 14, label %bb.aq
  ]

bb.k:                                             ; preds = %bb.j
  %.sroa.011.0.copyload.i = load i64, ptr %3, align 16, !tbaa !23 ; 7 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.212.0.copyload.i = load i64, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !23 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i8 %.05586.i, ptr %5, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %spec.select.i, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.au, align 8, !tbaa !31
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
  br i1 %i.az, label %bb.m, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i, !prof !32

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i: ; preds = %bb.l
  %i.ba = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.011.0.copyload.i, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %reass.sub40.i.i = sub nsw i32 %i.ao, %i.bb     ; 2 uses
  %i.bc = icmp sgt i32 %reass.sub40.i.i, 64
  br i1 %i.bc, label %bb.m, label %bb.p, !prof !32

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.n:                                             ; preds = %bb.k
  %i.bd = icmp slt i32 %i.al, -64
  br i1 %i.bd, label %bb.o, label %bb.t, !prof !32

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
  store i8 46, ptr %i.bg, align 2, !tbaa !12
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
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.bl to i8
  %i.bn = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.bo = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !12
  %.not.i50.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i50.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %bb.r, !llvm.loop !33

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
  %.013.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.bg, %.lr.ph.i.preheader.i.i.i ]
  %.0812.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0911.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.by = urem i64 %.0911.i.i.i.i, 10             ; 2 uses
  %i.bz = udiv i64 %.0911.i.i.i.i, 10
  %i.ca = urem i64 %.0812.i.i.i.i, 10
  %i.cb = mul nuw nsw i64 %i.by, 6
  %i.cc = add nuw nsw i64 %i.cb, %i.ca
  %i.cd = udiv i64 %.0812.i.i.i.i, 10
  %i.ce = mul nuw i64 %i.by, 1844674407370955161
  %i.cf = add nuw i64 %i.ce, %i.cd
  %.lhs.trunc.i3.i.i.i.i = trunc nuw nsw i64 %i.cc to i8 ; 2 uses
  %i.cg = udiv i8 %.lhs.trunc.i3.i.i.i.i, 10
  %.zext.i.i.i.i.i = zext nneg i8 %i.cg to i64
  %i.ch = add i64 %i.cf, %.zext.i.i.i.i.i         ; 2 uses
  %i.ci = urem i8 %.lhs.trunc.i3.i.i.i.i, 10
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr inbounds i8, ptr %.013.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !12
  %.not.i51.i.i.i = icmp ult i64 %.0911.i.i.i.i, 10
  br i1 %.not.i51.i.i.i, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !35

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i, %bb.s
  %.03.i.i.i.i.i.ph = phi i64 [ %i.bv, %bb.s ], [ %i.ch, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.ph = phi ptr [ %i.bg, %bb.s ], [ %i.ck, %.lr.ph.i.i.i.i ]
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.cm, %.preheader.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.co, %.preheader.i.i.i.i ], [ %.0.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ]
  %i.cl = urem i64 %.03.i.i.i.i.i, 10
  %i.cm = udiv i64 %.03.i.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.cl to i8
  %i.cn = or disjoint i8 %.lhs.trunc.i.i.i.i.i.i, 48
  %i.co = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !12
  %.not.i.i.i.i.i = icmp ult i64 %.03.i.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !33

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.cp, align 2, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 2 uses
  %i.cr = sub nsw i32 64, %i.al                   ; 2 uses
  %.not.i66.i = icmp eq i32 %i.ao, -128
  br i1 %.not.i66.i, label %.preheader.i62.i.i.i.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = zext i64 %.sroa.212.0.copyload.i to i128
  %i.ct = shl nuw i128 %i.cs, 64
  %i.cu = zext i64 %.sroa.011.0.copyload.i to i128
  %i.cv = or disjoint i128 %i.ct, %i.cu
  %i.cw = zext nneg i32 %i.cr to i128
  %i.cx = lshr i128 %i.cv, %i.cw                  ; 2 uses
  %i.cy = trunc i128 %i.cx to i64                 ; 2 uses
  %i.cz = lshr i128 %i.cx, 64                     ; 2 uses
  %.not10.i54.i.i.i = icmp eq i128 %i.cz, 0
  br i1 %.not10.i54.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.preheader.i.i.i

.lr.ph.i55.preheader.i.i.i:                       ; preds = %bb.u
  %i.da = trunc nuw nsw i128 %i.cz to i64
  br label %.lr.ph.i55.i.i.i

.lr.ph.i55.i.i.i:                                 ; preds = %.lr.ph.i55.i.i.i, %.lr.ph.i55.preheader.i.i.i
  %.013.i56.i.i.i = phi ptr [ %i.dn, %.lr.ph.i55.i.i.i ], [ %i.cp, %.lr.ph.i55.preheader.i.i.i ]
  %.0812.i57.i.i.i = phi i64 [ %i.dk, %.lr.ph.i55.i.i.i ], [ %i.cy, %.lr.ph.i55.preheader.i.i.i ] ; 2 uses
  %.0911.i58.i.i.i = phi i64 [ %i.dc, %.lr.ph.i55.i.i.i ], [ %i.da, %.lr.ph.i55.preheader.i.i.i ] ; 3 uses
  %i.db = urem i64 %.0911.i58.i.i.i, 10           ; 2 uses
  %i.dc = udiv i64 %.0911.i58.i.i.i, 10
  %i.dd = urem i64 %.0812.i57.i.i.i, 10
  %i.de = mul nuw nsw i64 %i.db, 6
  %i.df = add nuw nsw i64 %i.de, %i.dd
  %i.dg = udiv i64 %.0812.i57.i.i.i, 10
  %i.dh = mul nuw i64 %i.db, 1844674407370955161
  %i.di = add nuw i64 %i.dh, %i.dg
  %.lhs.trunc.i3.i59.i.i.i = trunc nuw nsw i64 %i.df to i8 ; 2 uses
  %i.dj = udiv i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %.zext.i.i60.i.i.i = zext nneg i8 %i.dj to i64
  %i.dk = add i64 %i.di, %.zext.i.i60.i.i.i       ; 2 uses
  %i.dl = urem i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %i.dm = or disjoint i8 %i.dl, 48
  %i.dn = getelementptr inbounds i8, ptr %.013.i56.i.i.i, i64 -1 ; 3 uses
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !12
  %.not.i61.i.i.i = icmp ult i64 %.0911.i58.i.i.i, 10
  br i1 %.not.i61.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.i.i.i, !llvm.loop !35

.preheader.i62.i.i.i.preheader:                   ; preds = %.lr.ph.i55.i.i.i, %bb.u, %bb.t
  %.03.i.i65.i.i.i.ph = phi i64 [ %i.cy, %bb.u ], [ 0, %bb.t ], [ %i.dk, %.lr.ph.i55.i.i.i ]
  %.0.i.i66.i.i.i.ph = phi ptr [ %i.cp, %bb.u ], [ %i.cp, %bb.t ], [ %i.dn, %.lr.ph.i55.i.i.i ]
  br label %.preheader.i62.i.i.i

.preheader.i62.i.i.i:                             ; preds = %.preheader.i62.i.i.i.preheader, %.preheader.i62.i.i.i
  %.03.i.i65.i.i.i = phi i64 [ %i.dp, %.preheader.i62.i.i.i ], [ %.03.i.i65.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 3 uses
  %.0.i.i66.i.i.i = phi ptr [ %i.dr, %.preheader.i62.i.i.i ], [ %.0.i.i66.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 2 uses
  %i.do = urem i64 %.03.i.i65.i.i.i, 10
  %i.dp = udiv i64 %.03.i.i65.i.i.i, 10
  %.lhs.trunc.i.i.i67.i.i.i = trunc nuw nsw i64 %i.do to i8
  %i.dq = or disjoint i8 %.lhs.trunc.i.i.i67.i.i.i, 48
  %i.dr = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -1 ; 3 uses
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !12
  %.not.i.i68.i.i.i = icmp ult i64 %.03.i.i65.i.i.i, 10
  br i1 %.not.i.i68.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i, label %.preheader.i62.i.i.i, !llvm.loop !33

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i: ; preds = %.preheader.i62.i.i.i
  %i.ds = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.ds, align 1, !tbaa !12
  %i.dt = call fastcc noundef ptr @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, ptr noundef %i.cq, i32 noundef %i.cr, i64 noundef %spec.select.i)
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !12
  %.not.i24.i.i = icmp eq i8 %i.du, 48
  %spec.select.i.i.i = select i1 %.not.i24.i.i, ptr %i.dr, ptr %i.ds
  %.val.i.i.i.pre = load i64, ptr %i.as, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.r, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i
  %.val.i.i.i = phi i64 [ %.val.i.i.i.pre, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.dv = phi ptr [ %i.cq, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bh, %bb.r ], [ %i.bh, %.preheader.i.i.i.i ]
  %.042.i.i.i = phi ptr [ %i.dt, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bh, %bb.r ], [ %i.bh, %.preheader.i.i.i.i ]
  %.041.i.i.i = phi ptr [ %spec.select.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bo, %bb.r ], [ %i.co, %.preheader.i.i.i.i ] ; 2 uses
  %i.dw = ptrtoint ptr %.042.i.i.i to i64         ; 2 uses
  %i.dx = ptrtoint ptr %.041.i.i.i to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %.not.i70.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i70.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  %.val47.i.i.i = load ptr, ptr %i.at, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !7
  %.fr88.i.i.i = freeze i8 %i.ea
  %i.eb = and i8 %.fr88.i.i.i, 8
  %.not89.i.i.i = icmp eq i8 %i.eb, 0
  %i.ec = add i64 %i.dy, -1
  br i1 %.not89.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i
  %i.ed = phi i64 [ %i.dy, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i ], [ %i.ec, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i ]
  %i.ee = ptrtoint ptr %i.dv to i64
  %.neg.i.i.i = sub i64 %i.ee, %i.dw
  %i.ef = add i64 %.neg.i.i.i, %.val.i.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 %i.ed, ptr nonnull %.041.i.i.i, i64 noundef 0, i64 noundef %i.ef, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bg

bb.v:                                             ; preds = %bb.j
  %i.eg = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EeEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(ptr noundef nonnull byval(%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed") align 16 %3, i64 noundef %spec.select.i, ptr noundef %4, ptr noundef %i.e)
  br i1 %i.eg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bg

bb.x:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !7
  %i.ek = and i8 %i.ej, 8
  %.not97.i = icmp eq i8 %i.ek, 0
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 10 uses
  %.val63.i = load ptr, ptr %i.el, align 8, !tbaa !36 ; 3 uses
  br i1 %.not97.i, label %bb.y, label %._crit_edge132.i

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds i8, ptr %.val63.i, i64 -1 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !12
  %i.eo = icmp eq i8 %i.en, 46
  %spec.select162.i = select i1 %i.eo, ptr %i.em, ptr %.val63.i
  br label %._crit_edge132.i

._crit_edge132.i:                                 ; preds = %bb.y, %bb.x
  %i.ep = phi ptr [ %spec.select162.i, %bb.y ], [ %.val63.i, %bb.x ] ; 2 uses
  %i.eq = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.er = load i8, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.es = icmp eq i8 %i.er, 7
  %i.et = and i8 %i.er, -7
  %i.eu = icmp eq i8 %i.et, 9
  %or.cond7.i.i = or i1 %i.es, %i.eu
  %i.ev = select i1 %or.cond7.i.i, i8 69, i8 101
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.ew, ptr %i.el, align 8, !tbaa !36
  store i8 %i.ev, ptr %i.ep, align 1, !tbaa !12
  %i.ex = icmp slt i32 %i.eq, 0
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !36 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.ez, ptr %i.el, align 8, !tbaa !36
  %spec.select163.i = select i1 %i.ex, i8 45, i8 43
  %spec.select164.i = call i32 @llvm.abs.i32(i32 %i.eq, i1 true) ; 5 uses
  store i8 %spec.select163.i, ptr %i.ey, align 1, !tbaa !12
  %i.fa = icmp samesign ugt i32 %spec.select164.i, 99
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !36 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.fc, ptr %i.el, align 8, !tbaa !36
  br i1 %i.fa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge132.i
  %i.fd = udiv i32 %spec.select164.i, 100
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = add i8 %i.fe, 48
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !12
  %i.fg = udiv i32 %spec.select164.i, 10
  %i.fh = urem i32 %i.fg, 10
  %i.fi = trunc nuw nsw i32 %i.fh to i8
  %i.fj = or disjoint i8 %i.fi, 48
  %i.fk = load ptr, ptr %i.el, align 8, !tbaa !36 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fl, ptr %i.el, align 8, !tbaa !36
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !12
  %i.fm = urem i32 %spec.select164.i, 10
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i

bb.aa:                                            ; preds = %._crit_edge132.i
  %.lhs.trunc.i.i = trunc nuw nsw i32 %spec.select164.i to i8 ; 2 uses
  %i.fo = udiv i8 %.lhs.trunc.i.i, 10
  %i.fp = or disjoint i8 %i.fo, 48
  store i8 %i.fp, ptr %i.fb, align 1, !tbaa !12
  %i.fq = urem i8 %.lhs.trunc.i.i, 10
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i: ; preds = %bb.aa, %bb.z
  %.sink23.i.i = phi i8 [ %i.fq, %bb.aa ], [ %i.fn, %bb.z ]
  %i.fr = or disjoint i8 %.sink23.i.i, 48
  %i.fs = load ptr, ptr %i.el, align 8, !tbaa !36 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store ptr %i.ft, ptr %i.el, align 8, !tbaa !36
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !12
  br label %bb.bf

bb.ab:                                            ; preds = %bb.j
  %i.fu = icmp eq i32 %narrow.i, 0
  %.sroa.speculated.i = select i1 %i.fu, i64 1, i64 %spec.select.i ; 2 uses
  %i.fv = add nsw i64 %.sroa.speculated.i, -1
  %i.fw = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EeEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(ptr noundef nonnull byval(%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed") align 16 %3, i64 noundef %i.fv, ptr noundef %4, ptr noundef %i.e)
  br i1 %i.fw, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bg

bb.ad:                                            ; preds = %bb.ab
  %i.fy = load i32, ptr %i.e, align 4, !tbaa !3   ; 8 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.gb = icmp samesign ugt i64 %.sroa.speculated.i, %i.ga
  br i1 %i.gb, label %bb.ah, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %.old6.i = icmp samesign ugt i32 %i.fy, -5
  br i1 %.old6.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !12
  %.not147.i = icmp eq i32 %i.fy, -1
  br i1 %.not147.i, label %._crit_edge.i, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.ag, %.lr.ph.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.ag ]
  %i.gg = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -1
  store ptr %i.gh, ptr %i.gc, align 8, !tbaa !39
  store i8 48, ptr %i.gg, align 1, !tbaa !12
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.gi = xor i32 %i.fy, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.gi, -1
  br i1 %prol.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.prol, !llvm.loop !40

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol, %bb.ag
  %i.gj = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -1
  store ptr %i.gk, ptr %i.gc, align 8, !tbaa !39
  store i8 46, ptr %i.gj, align 1, !tbaa !12
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !39
  store i8 48, ptr %i.gl, align 1, !tbaa !12
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !39 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ga
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gs = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.go, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.gr) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i, %bb.af, %bb.ae
  %i.gt = phi i32 [ %i.fy, %bb.ae ], [ %i.fy, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7
  %i.gw = and i8 %i.gv, 8
  %.not96.i = icmp eq i8 %i.gw, 0
  br i1 %.not96.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.aj
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %.promoted115.i = load ptr, ptr %i.gx, align 8, !tbaa !36
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.preheader.i
  %.val62116.i = phi ptr [ %.promoted115.i, %.preheader.i ], [ %i.gy, %bb.al ]
  %i.gy = getelementptr inbounds i8, ptr %.val62116.i, i64 -1 ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !12
  switch i8 %i.gz, label %.loopexit.i [
    i8 48, label %bb.al
    i8 46, label %bb.am
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %or.cond100.not.i.i = select i1 %i.ik, i1 %i.mh, i1 false
  br i1 %or.cond100.not.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !7
  %i.mk = and i8 %i.mj, 8
  %.not76.i.i = icmp eq i8 %i.mk, 0
  br i1 %.not76.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112FormatARoundINS0_7uint128EEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 46, ptr %i.mf, align 1, !tbaa !12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i70.i = phi ptr [ %i.ml, %bb.bd ], [ %i.mf, %bb.bc ] ; 2 uses
  %i.mm = zext i64 %.sroa.16.4.i.i to i128
  %i.mn = shl nuw i128 %i.mm, 64
  %i.mo = zext i64 %.sroa.053.4.i.i to i128
  %i.mp = or disjoint i128 %i.mn, %i.mo           ; 2 uses
  %.not7780.i.i = icmp eq i128 %i.mp, 0
  br i1 %.not7780.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatAINS0_7uint128EEEvNS2_18HexFloatTypeParamsET_ibRKNS2_11FormatStateE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be, %.lr.ph.i.i
  %i.mq = phi i128 [ %i.mv, %.lr.ph.i.i ], [ %i.mp, %bb.be ]
  %.183.i.i = phi ptr [ %i.mu, %.lr.ph.i.i ], [ %.0.i70.i, %bb.be ] ; 2 uses
  %.03482.i.i = phi i64 [ %i.my, %.lr.ph.i.i ], [ 0, %bb.be ]
  %.sroa.16.081.i.i = phi i64 [ %i.mx, %.lr.ph.i.i ], [ %.sroa.16.4.i.i, %bb.be ]
  %i.mr = lshr i64 %.sroa.16.081.i.i, 60
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !12
  %i.mu = getelementptr inbounds nuw i8, ptr %.183.i.i, i64 1 ; 2 uses
  store i8 %i.mt, ptr %.183.i.i, align 1, !tbaa !12
  %i.mv = shl i128 %i.mq, 4                       ; 3 uses
  %i.mw = lshr i128 %i.mv, 64
  %i.mx = trunc nuw i128 %i.mw to i64
  %i.my = add nuw nsw i64 %.03482.i.i, 1          ; 2 uses
  %.not77.i.i = icmp eq i128 %i.mv, 0
  br i1 %.not77.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatAINS0_7uint128EEEvNS2_18HexFloatTypeParamsET_ibRKNS2_11FormatStateE.exit.i, label %.lr.ph.i.i, !llvm.loop !45

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatAINS0_7uint128EEEvNS2_18HexFloatTypeParamsET_ibRKNS2_11FormatStateE.exit.i: ; preds = %.lr.ph.i.i, %bb.be
  %.034.lcssa.i.i = phi i64 [ 0, %bb.be ], [ %i.my, %.lr.ph.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.0.i70.i, %bb.be ], [ %i.mu, %.lr.ph.i.i ]
  %i.mz = sub i64 %spec.select.i, %.034.lcssa.i.i
  %.035.i.i = select i1 %i.ik, i64 0, i64 %i.mz
  %i.na = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.nb = ptrtoint ptr %i.a to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.nd = select i1 %i.if, i8 80, i8 112
  store i8 %i.nd, ptr %i.b, align 16, !tbaa !12
  %i.ne = icmp sgt i32 %.5.i.i, -1
  %i.nf = select i1 %i.ne, i8 43, i8 45
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !12
  %i.nh = call i32 @llvm.abs.i32(i32 %.5.i.i, i1 true)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nj = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.nh, ptr noundef nonnull %i.ni) ; 0 uses
  %i.nk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, i64 %i.nc, ptr nonnull %i.a, i64 noundef 2, i64 noundef %.035.i.i, i64 %i.nk, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit, %.loopexit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i
  %i.nl = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !39 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !36
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nm to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val64.i = load i8, ptr %i.ns, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val65.i = load i32, ptr %i.nt, align 4, !tbaa !14
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117WriteBufferToSinkEcSt17basic_string_viewIcSt11char_traitsIcEERKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.05586.i, i64 %i.nr, ptr %i.nm, i8 %.val64.i, i32 %.val65.i, ptr noundef %2)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatAINS0_7uint128EEEvNS2_18HexFloatTypeParamsET_ibRKNS2_11FormatStateE.exit.i, %bb.ac, %bb.w, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i, %bb.j
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i ], [ true, %bb.bf ], [ %i.eh, %bb.w ], [ %i.fx, %bb.ac ], [ true, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatAINS0_7uint128EEEvNS2_18HexFloatTypeParamsET_ibRKNS2_11FormatStateE.exit.i ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i, %bb.bg
  %.1.i = phi i1 [ %.0.i, %bb.bg ], [ true, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext float %0 to double
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7     ; 2 uses
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
  store i8 %.064.ph, ptr %i.e, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %.06395 = phi double [ %.063.ph, %select.unfold ], [ %0, %bb.e ] ; 3 uses
  %.06493 = phi i8 [ %.064.ph, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %.0.i = phi ptr [ %i.n, %select.unfold ], [ %i.e, %bb.e ] ; 2 uses
  %i.o = fcmp uno double %.06395, 0.000000e+00
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %1, align 4, !tbaa !13      ; 2 uses
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
  %i.v = load i8, ptr %1, align 4, !tbaa !13      ; 2 uses
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %i.ag = trunc i8 %i.af to i1
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.ab, ptr nonnull %i.e, i32 noundef %i.ad, i32 noundef -1, i1 noundef zeroext %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br i1 %i.ah, label %bb.be, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !15 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %narrow = select i1 %i.ak, i32 6, i32 %i.aj     ; 4 uses
  %spec.select = zext i32 %narrow to i64          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 0, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.al = call double @frexp(double noundef %.06395, ptr noundef nonnull %i.d) #18
  %i.am = call double @ldexp(double noundef %i.al, i32 noundef 53) #18, !tbaa !3
  %i.an = load i32, ptr %i.d, align 4, !tbaa !3   ; 10 uses
  %i.ao = add nsw i32 %i.an, -53                  ; 5 uses
  %i.ap = fptoui double %i.am to i64              ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aq = load i8, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.ar = and i8 %i.aq, -2
  switch i8 %i.ar, label %bb.bd [
    i8 8, label %bb.k
    i8 10, label %bb.ab
    i8 12, label %bb.ah
    i8 14, label %bb.au
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 %.06493, ptr %4, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.au, align 8, !tbaa !31
  %i.av = icmp sgt i32 %i.an, 52
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %reass.sub.i = add nuw i32 %i.an, 11
  %i.ay = sub nuw i32 %reass.sub.i, %i.ax         ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 128
  br i1 %i.az, label %bb.m, label %bb.p, !prof !32

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.n:                                             ; preds = %bb.k
  %i.ba = icmp slt i32 %i.an, -75
  br i1 %i.ba, label %bb.o, label %select.unfold.preheader.i.i, !prof !32

bb.o:                                             ; preds = %bb.n
  %i.bb = sub nsw i32 53, %i.an
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.bc, align 2, !tbaa !12
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
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.bh to i8
  %i.bj = or disjoint i8 %.lhs.trunc.i.i.i.i, 48
  %i.bk = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !12
  %.not.i.i.i = icmp ult i64 %.03.i.i.i, 10
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %bb.r, !llvm.loop !33

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
  %.013.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %i.bc, %.lr.ph.i.preheader.i.i ]
  %.0812.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %i.bo, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0911.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i ], [ %i.bq, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.br = urem i64 %.0911.i.i.i, 10               ; 2 uses
  %i.bs = udiv i64 %.0911.i.i.i, 10
  %i.bt = urem i64 %.0812.i.i.i, 10
  %i.bu = mul nuw nsw i64 %i.br, 6
  %i.bv = add nuw nsw i64 %i.bu, %i.bt
  %i.bw = udiv i64 %.0812.i.i.i, 10
  %i.bx = mul nuw i64 %i.br, 1844674407370955161
  %i.by = add nuw i64 %i.bx, %i.bw
  %.lhs.trunc.i3.i.i.i = trunc nuw nsw i64 %i.bv to i8 ; 2 uses
  %i.bz = udiv i8 %.lhs.trunc.i3.i.i.i, 10
  %.zext.i.i.i.i = zext nneg i8 %i.bz to i64
  %i.ca = add i64 %i.by, %.zext.i.i.i.i           ; 2 uses
  %i.cb = urem i8 %.lhs.trunc.i3.i.i.i, 10
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = getelementptr inbounds i8, ptr %.013.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %.not.i46.i.i = icmp ult i64 %.0911.i.i.i, 10
  br i1 %.not.i46.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !35

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.s
  %.03.i.i.i.i.ph = phi i64 [ %i.bo, %bb.s ], [ %i.ca, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.ph = phi ptr [ %i.bc, %bb.s ], [ %i.cd, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.03.i.i.i.i = phi i64 [ %i.cf, %.preheader.i.i.i ], [ %.03.i.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.ch, %.preheader.i.i.i ], [ %.0.i.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %i.ce = urem i64 %.03.i.i.i.i, 10
  %i.cf = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.ce to i8
  %i.cg = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.ch = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !12
  %.not.i.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !33

select.unfold.preheader.i.i:                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  store i8 46, ptr %i.ci, align 2, !tbaa !12
  %i.cj = sub nsw i32 53, %i.an                   ; 2 uses
  %i.ck = icmp sgt i32 %i.an, -11
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = lshr i64 %i.ap, %i.cl
  %spec.select192 = select i1 %i.ck, i64 %i.cm, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %select.unfold.i.i
  %.03.i47.i.i = phi i64 [ %i.co, %select.unfold.i.i ], [ %spec.select192, %select.unfold.preheader.i.i ] ; 3 uses
  %.0.i48.i.i = phi ptr [ %i.cq, %select.unfold.i.i ], [ %i.ci, %select.unfold.preheader.i.i ] ; 2 uses
  %i.cn = urem i64 %.03.i47.i.i, 10
  %i.co = udiv i64 %.03.i47.i.i, 10
  %.lhs.trunc.i.i49.i.i = trunc nuw nsw i64 %i.cn to i8
  %i.cp = or disjoint i8 %.lhs.trunc.i.i49.i.i, 48
  %i.cq = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -1 ; 3 uses
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !12
  %.not.i50.i.i = icmp ult i64 %.03.i47.i.i, 10
  br i1 %.not.i50.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i, label %select.unfold.i.i, !llvm.loop !33

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i: ; preds = %select.unfold.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.cs, align 1, !tbaa !12
  %i.ct = icmp sgt i32 %i.an, -12
  br i1 %i.ct, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.cu = add nsw i32 %i.an, 11
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %i.ap, %i.cv                    ; 2 uses
  %.not21.i.i.i = icmp eq i32 %narrow, 0
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %bb.u
  %.024.i.i.i = phi ptr [ %i.dc, %bb.u ], [ %i.cr, %bb.t ] ; 3 uses
  %.0923.i.i.i = phi i64 [ %i.dd, %bb.u ], [ %spec.select, %bb.t ]
  %.01622.i.i.i = phi i64 [ %i.cz, %bb.u ], [ %i.cw, %bb.t ] ; 2 uses
  %.not13.i.i.i = icmp eq i64 %.01622.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  %i.cx = zext i64 %.01622.i.i.i to i128
  %i.cy = mul nuw nsw i128 %i.cx, 10              ; 2 uses
  %i.cz = trunc i128 %i.cy to i64                 ; 2 uses
  %i.da = lshr i128 %i.cy, 64
  %.tr.i.i.i.i.i = trunc nuw nsw i128 %i.da to i8
  %i.db = or disjoint i8 %.tr.i.i.i.i.i, 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1 ; 2 uses
  store i8 %i.db, ptr %.024.i.i.i, align 1, !tbaa !12
  %i.dd = add nsw i64 %.0923.i.i.i, -1            ; 2 uses
  %.not.i53.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i53.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i, !llvm.loop !46

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %.016.lcssa.i.i.i = phi i64 [ %i.cw, %bb.t ], [ %i.cz, %bb.u ] ; 2 uses
  %.0.lcssa.i54.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.dc, %bb.u ] ; 5 uses
  %i.de = icmp sgt i64 %.016.lcssa.i.i.i, -1
  br i1 %i.de, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %.not12.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %bb.x, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %bb.v, %.preheader.i55.i.i.backedge
  %.0.pn.i.i.i = phi ptr [ %.0.i.i56.i.i, %.preheader.i55.i.i.backedge ], [ %.0.lcssa.i54.i.i, %bb.v ]
  %.0.i.i56.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i.i, i64 -1 ; 4 uses
  %i.df = load i8, ptr %.0.i.i56.i.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.df, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.w
    i8 46, label %.preheader.i55.i.i.backedge
  ]

bb.w:                                             ; preds = %.preheader.i55.i.i
  store i8 48, ptr %.0.i.i56.i.i, align 1, !tbaa !12
  br label %.preheader.i55.i.i.backedge

.preheader.i55.i.i.backedge:                      ; preds = %bb.w, %.preheader.i55.i.i
  br label %.preheader.i55.i.i, !llvm.loop !47

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds i8, ptr %.0.lcssa.i54.i.i, i64 -1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = icmp eq i8 %i.dh, 46
  %spec.select.idx.i.i.i.i = sext i1 %i.di to i64
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.dg, i64 %spec.select.idx.i.i.i.i ; 2 uses
  %i.dj = load i8, ptr %spec.select.i.i.i.i, align 1, !tbaa !12 ; 2 uses
  %i.dk = and i8 %i.dj, -127
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x, %bb.z
  %i.dm = phi i8 [ %.pr.i.i.i.i, %bb.z ], [ %i.dj, %bb.x ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dn, %bb.z ], [ %spec.select.i.i.i.i, %bb.x ] ; 3 uses
  switch i8 %i.dm, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.y
    i8 46, label %bb.z
  ]

bb.y:                                             ; preds = %.preheader.i.i.i.i
  store i8 48, ptr %.0.i.i.i.i.i, align 1, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.i.i.i.i
  %i.dn = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %i.dn, align 1, !tbaa !12
  br label %.preheader.i.i.i.i, !llvm.loop !47

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i: ; preds = %.preheader.i55.i.i, %.preheader.i.i.i.i
  %.lcssa.sink.i.i.i = phi i8 [ %i.dm, %.preheader.i.i.i.i ], [ %i.df, %.preheader.i55.i.i ]
  %.0.i.i.lcssa.sink.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.0.i.i56.i.i, %.preheader.i55.i.i ]
  %i.do = add i8 %.lcssa.sink.i.i.i, 1
  store i8 %i.do, ptr %.0.i.i.lcssa.sink.i.i.i, align 1, !tbaa !12
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.dp = call fastcc noundef ptr @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %i.ap, i64 0, ptr noundef %i.cr, i32 noundef %i.cj, i64 noundef %spec.select)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i: ; preds = %.lr.ph.i52.i.i, %bb.aa, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i, %bb.x, %._crit_edge.i.i.i
  %i.dq = phi ptr [ %i.dp, %bb.aa ], [ %.0.lcssa.i54.i.i, %._crit_edge.i.i.i ], [ %.0.lcssa.i54.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i ], [ %.0.lcssa.i54.i.i, %bb.x ], [ %.024.i.i.i, %.lr.ph.i52.i.i ]
  %i.dr = load i8, ptr %i.cs, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.dr, 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.cq, ptr %i.cs
  %.val.i.i.pre = load i64, ptr %i.as, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.r, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i
  %.val.i.i = phi i64 [ %.val.i.i.pre, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %spec.select, %bb.r ], [ %spec.select, %.preheader.i.i.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cr, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %.038.i.i = phi ptr [ %i.dq, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %.037.i.i = phi ptr [ %spec.select.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bk, %bb.r ], [ %i.ch, %.preheader.i.i.i ] ; 2 uses
  %i.dt = ptrtoint ptr %.038.i.i to i64           ; 2 uses
  %i.du = ptrtoint ptr %.037.i.i to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %.not.i57.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  %.val43.i.i = load ptr, ptr %i.at, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.val43.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !7
  %.fr66.i.i = freeze i8 %i.dx
  %i.dy = and i8 %.fr66.i.i, 8
  %.not67.i.i = icmp eq i8 %i.dy, 0
  %i.dz = add i64 %i.dv, -1
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i
  %i.ea = phi i64 [ %i.dv, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i ], [ %i.dz, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i ]
  %i.eb = ptrtoint ptr %i.ds to i64
  %.neg.i.i = sub i64 %i.eb, %i.dt
  %i.ec = add i64 %.neg.i.i, %.val.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 %i.ea, ptr %.037.i.i, i64 noundef 0, i64 noundef %i.ec, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit: ; preds = %bb.m, %bb.o, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bd

bb.ab:                                            ; preds = %bb.j
  %i.ed = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %i.ap, i32 %i.ao, i64 noundef %spec.select, ptr noundef %3, ptr noundef %i.f)
  br i1 %i.ed, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !7
  %i.eh = and i8 %i.eg, 8
  %.not106 = icmp eq i8 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.val72 = load ptr, ptr %i.ei, align 8, !tbaa !36 ; 3 uses
  br i1 %.not106, label %bb.ae, label %._crit_edge153

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds i8, ptr %.val72, i64 -1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.el = icmp eq i8 %i.ek, 46
  %spec.select193 = select i1 %i.el, ptr %i.ej, ptr %.val72
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %bb.ae, %bb.ad
  %i.em = phi ptr [ %spec.select193, %bb.ae ], [ %.val72, %bb.ad ] ; 2 uses
  %i.en = load i32, ptr %i.f, align 4, !tbaa !3   ; 2 uses
  %i.eo = load i8, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 7
  %i.eq = and i8 %i.eo, -7
  %i.er = icmp eq i8 %i.eq, 9
  %or.cond7.i = or i1 %i.ep, %i.er
  %i.es = select i1 %or.cond7.i, i8 69, i8 101
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !36
  store i8 %i.es, ptr %i.em, align 1, !tbaa !12
  %i.ev = icmp slt i32 %i.en, 0
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !36 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !36
  %spec.select194 = select i1 %i.ev, i8 45, i8 43
  %spec.select195 = call i32 @llvm.abs.i32(i32 %i.en, i1 true) ; 5 uses
  store i8 %spec.select194, ptr %i.ew, align 1, !tbaa !12
  %i.ey = icmp samesign ugt i32 %spec.select195, 99
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !36 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !36
  br i1 %i.ey, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge153
  %i.fb = udiv i32 %spec.select195, 100
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = add i8 %i.fc, 48
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !12
  %i.fe = udiv i32 %spec.select195, 10
  %i.ff = urem i32 %i.fe, 10
  %i.fg = trunc nuw nsw i32 %i.ff to i8
  %i.fh = or disjoint i8 %i.fg, 48
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !36 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store ptr %i.fj, ptr %i.et, align 8, !tbaa !36
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !12
  %i.fk = urem i32 %spec.select195, 10
  %i.fl = trunc nuw nsw i32 %i.fk to i8
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit

bb.ag:                                            ; preds = %._crit_edge153
  %.lhs.trunc.i = trunc nuw nsw i32 %spec.select195 to i8 ; 2 uses
  %i.fm = udiv i8 %.lhs.trunc.i, 10
  %i.fn = or disjoint i8 %i.fm, 48
  store i8 %i.fn, ptr %i.ez, align 1, !tbaa !12
  %i.fo = urem i8 %.lhs.trunc.i, 10
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit: ; preds = %bb.af, %bb.ag
  %.sink23.i = phi i8 [ %i.fo, %bb.ag ], [ %i.fl, %bb.af ]
  %i.fp = or disjoint i8 %.sink23.i, 48
  %i.fq = load ptr, ptr %i.et, align 8, !tbaa !36 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  store ptr %i.fr, ptr %i.et, align 8, !tbaa !36
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !12
  br label %bb.bc

bb.ah:                                            ; preds = %bb.j
  %i.fs = icmp eq i32 %narrow, 0
  %.sroa.speculated = select i1 %i.fs, i64 1, i64 %spec.select ; 2 uses
  %i.ft = add nsw i64 %.sroa.speculated, -1
  %i.fu = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %i.ap, i32 %i.ao, i64 noundef %i.ft, ptr noundef %3, ptr noundef %i.f)
  br i1 %i.fu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ah
  %i.fw = load i32, ptr %i.f, align 4, !tbaa !3   ; 8 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fy = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fz = icmp samesign ugt i64 %.sroa.speculated, %i.fy
  br i1 %i.fz, label %bb.an, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %.old6 = icmp samesign ugt i32 %i.fw, -5
  br i1 %.old6, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !12
  %.not171 = icmp eq i32 %i.fw, -1
  br i1 %.not171, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.am, %.lr.ph.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.am ]
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -1
  store ptr %i.gf, ptr %i.ga, align 8, !tbaa !39
  store i8 48, ptr %i.ge, align 1, !tbaa !12
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.gg = xor i32 %i.fw, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.gg, -1
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph.prol, %bb.am
  %i.gh = load ptr, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -1
  store ptr %i.gi, ptr %i.ga, align 8, !tbaa !39
  store i8 46, ptr %i.gh, align 1, !tbaa !12
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !39
  store i8 48, ptr %i.gj, align 1, !tbaa !12
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %.not = icmp eq i32 %i.fw, 0
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !39 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.fy
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gq = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.gp) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ao, %bb.an, %bb.al, %bb.ak
  %i.gr = phi i32 [ %i.fw, %bb.ak ], [ %i.fw, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %._crit_edge ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !7
  %i.gu = and i8 %i.gt, 8
  %.not105 = icmp eq i8 %i.gu, 0
  br i1 %.not105, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %.promoted130 = load ptr, ptr %i.gv, align 8, !tbaa !36
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader, %bb.ar
  %.val71131 = phi ptr [ %.promoted130, %.preheader ], [ %i.gw, %bb.ar ]
  %i.gw = getelementptr inbounds i8, ptr %.val71131, i64 -1 ; 4 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !12
  switch i8 %i.gx, label %.loopexit [
    i8 48, label %bb.ar
end_hunk_1
