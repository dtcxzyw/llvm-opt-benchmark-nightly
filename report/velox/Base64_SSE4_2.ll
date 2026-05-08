inline.NumInlined: 34
inline.NumDeleted: 26
begin_hunk_0_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 42 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.0.i.lcssa29 = ptrtoint ptr %.0.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
end_hunk_0
begin_hunk_1_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.aol = mul i64 %index70, 3                    ; 2 uses
  %i.aom = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aon = shl i64 %index70, 2
  %i.aoo = getelementptr i8, ptr %.011.i.lcssa, i64 %i.aon
  %3 = load <24 x i8>, ptr %i.aom, align 1, !tbaa !18, !alias.scope !28 ; 10 uses
  %4 = shufflevector <24 x i8> %3, <24 x i8> <i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison>, <24 x i32> <i32 24, i32 0, i32 1, i32 27, i32 3, i32 4, i32 30, i32 6, i32 7, i32 33, i32 9, i32 10, i32 36, i32 12, i32 13, i32 39, i32 15, i32 16, i32 42, i32 18, i32 19, i32 45, i32 21, i32 22>
  %5 = shl <24 x i8> %4, <i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2>
  %6 = lshr <24 x i8> %3, <i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6>
  %7 = and <24 x i8> %5, <i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60>
  %8 = or <24 x i8> %6, %7                        ; 24 uses
  %9 = extractelement <24 x i8> %3, i64 2
  %10 = and i8 %9, 63
  %11 = extractelement <24 x i8> %3, i64 5
  %12 = and i8 %11, 63
  %13 = extractelement <24 x i8> %3, i64 8
  %14 = and i8 %13, 63
  %15 = extractelement <24 x i8> %3, i64 11
  %16 = and i8 %15, 63
  %17 = extractelement <24 x i8> %3, i64 14
  %18 = and i8 %17, 63
  %19 = extractelement <24 x i8> %3, i64 17
  %20 = and i8 %19, 63
  %21 = extractelement <24 x i8> %3, i64 20
  %i.aop = and i8 %21, 63
  %22 = extractelement <24 x i8> %3, i64 23
  %i.aoq = and i8 %22, 63
  %i.aor = extractelement <24 x i8> %8, i64 0
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aos
  %i.aou = extractelement <24 x i8> %8, i64 3
  %i.aov = zext nneg i8 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aov
  %i.aox = extractelement <24 x i8> %8, i64 6
  %i.aoy = zext nneg i8 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aoy
  %i.apa = extractelement <24 x i8> %8, i64 9
  %i.apb = zext nneg i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apb
  %i.apd = extractelement <24 x i8> %8, i64 12
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ape
  %i.apg = extractelement <24 x i8> %8, i64 15
  %i.aph = zext nneg i8 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aph
  %i.apj = extractelement <24 x i8> %8, i64 18
  %i.apk = zext nneg i8 %i.apj to i64
  %i.apl = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apk
  %i.apm = extractelement <24 x i8> %8, i64 21
  %i.apn = zext nneg i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apn
  %i.app = load i8, ptr %i.aot, align 1, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 5
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 6
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 7
  %i.aqf = extractelement <24 x i8> %8, i64 1
  %i.aqg = zext nneg i8 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqg
  %i.aqi = extractelement <24 x i8> %8, i64 4
  %i.aqj = zext nneg i8 %i.aqi to i64
  %i.aqk = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqj
  %i.aql = extractelement <24 x i8> %8, i64 7
  %i.aqm = zext nneg i8 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqm
  %i.aqo = extractelement <24 x i8> %8, i64 10
  %i.aqp = zext nneg i8 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqp
  %i.aqr = extractelement <24 x i8> %8, i64 13
  %i.aqs = zext nneg i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqs
  %i.aqu = extractelement <24 x i8> %8, i64 16
  %i.aqv = zext nneg i8 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqv
  %i.aqx = extractelement <24 x i8> %8, i64 19
  %i.aqy = zext nneg i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqy
  %i.ara = extractelement <24 x i8> %8, i64 22
  %i.arb = zext nneg i8 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.arb
  %i.ard = load i8, ptr %i.aqh, align 1, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.arq = insertelement <8 x i8> %i.arp, i8 %i.ari, i64 5
  %i.arr = insertelement <8 x i8> %i.arq, i8 %i.arj, i64 6
  %i.ars = insertelement <8 x i8> %i.arr, i8 %i.ark, i64 7
  %i.art = extractelement <24 x i8> %8, i64 2
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aru
  %i.arw = extractelement <24 x i8> %8, i64 5
  %i.arx = zext nneg i8 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.arx
  %i.arz = extractelement <24 x i8> %8, i64 8
  %i.asa = zext nneg i8 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asa
  %i.asc = extractelement <24 x i8> %8, i64 11
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asd
  %i.asf = extractelement <24 x i8> %8, i64 14
  %i.asg = zext nneg i8 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asg
  %i.asi = extractelement <24 x i8> %8, i64 17
  %i.asj = zext nneg i8 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asj
  %i.asl = extractelement <24 x i8> %8, i64 20
  %i.asm = zext nneg i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asm
  %i.aso = extractelement <24 x i8> %8, i64 23
  %i.asp = zext nneg i8 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asp
  %i.asr = load i8, ptr %i.arv, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.ate = insertelement <8 x i8> %i.atd, i8 %i.asw, i64 5
  %i.atf = insertelement <8 x i8> %i.ate, i8 %i.asx, i64 6
  %i.atg = insertelement <8 x i8> %i.atf, i8 %i.asy, i64 7
  %i.ath = zext nneg i8 %10 to i64
  %i.ati = zext nneg i8 %12 to i64
  %i.atj = zext nneg i8 %14 to i64
  %i.atk = zext nneg i8 %16 to i64
  %i.atl = zext nneg i8 %18 to i64
  %i.atm = zext nneg i8 %20 to i64
  %23 = zext nneg i8 %i.aop to i64
  %i.atn = zext nneg i8 %i.aoq to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ath
  %24 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ati
  %25 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atj
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atk
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atl
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atm
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %23
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atn
  %i.atu = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atv = load i8, ptr %24, align 1, !tbaa !18
  %i.atw = load i8, ptr %25, align 1, !tbaa !18
  %i.atx = load i8, ptr %i.atp, align 1, !tbaa !18
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !18
  %i.atz = load i8, ptr %i.atr, align 1, !tbaa !18
end_hunk_4
begin_hunk_5_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.auk = shufflevector <8 x i8> %i.aqe, <8 x i8> %i.ars, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aul = shufflevector <8 x i8> %i.atg, <8 x i8> %i.auj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec80 = shufflevector <16 x i8> %i.auk, <16 x i8> %i.aul, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec80, ptr %i.aoo, align 1, !tbaa !18, !alias.scope !31, !noalias !28
  %index.next81 = add nuw i64 %index70, 8         ; 2 uses
  %i.aum = icmp eq i64 %index.next81, %n.vec67
  br i1 %i.aum, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %26 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aun = getelementptr i8, ptr %26, i64 24
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = sub i64 %i.a, %i.auo
  %cmp.n82 = icmp eq i64 %i.ad, %n.vec67
end_hunk_5
begin_hunk_6_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 42 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.0.i.lcssa29 = ptrtoint ptr %.0.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
end_hunk_6
begin_hunk_7_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.aol = mul i64 %index70, 3                    ; 2 uses
  %i.aom = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aon = shl i64 %index70, 2
  %i.aoo = getelementptr i8, ptr %.011.i.lcssa, i64 %i.aon
  %3 = load <24 x i8>, ptr %i.aom, align 1, !tbaa !18, !alias.scope !40 ; 10 uses
  %4 = shufflevector <24 x i8> %3, <24 x i8> <i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison, i8 -1, i8 poison, i8 poison>, <24 x i32> <i32 24, i32 0, i32 1, i32 27, i32 3, i32 4, i32 30, i32 6, i32 7, i32 33, i32 9, i32 10, i32 36, i32 12, i32 13, i32 39, i32 15, i32 16, i32 42, i32 18, i32 19, i32 45, i32 21, i32 22>
  %5 = shl <24 x i8> %4, <i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2, i8 0, i8 4, i8 2>
  %6 = lshr <24 x i8> %3, <i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6, i8 2, i8 4, i8 6>
  %7 = and <24 x i8> %5, <i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60, i8 0, i8 48, i8 60>
  %8 = or <24 x i8> %6, %7                        ; 24 uses
  %9 = extractelement <24 x i8> %3, i64 2
  %10 = and i8 %9, 63
  %11 = extractelement <24 x i8> %3, i64 5
  %12 = and i8 %11, 63
  %13 = extractelement <24 x i8> %3, i64 8
  %14 = and i8 %13, 63
  %15 = extractelement <24 x i8> %3, i64 11
  %16 = and i8 %15, 63
  %17 = extractelement <24 x i8> %3, i64 14
  %18 = and i8 %17, 63
  %19 = extractelement <24 x i8> %3, i64 17
  %20 = and i8 %19, 63
  %21 = extractelement <24 x i8> %3, i64 20
  %i.aop = and i8 %21, 63
  %22 = extractelement <24 x i8> %3, i64 23
  %i.aoq = and i8 %22, 63
  %i.aor = extractelement <24 x i8> %8, i64 0
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aos
  %i.aou = extractelement <24 x i8> %8, i64 3
  %i.aov = zext nneg i8 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aov
  %i.aox = extractelement <24 x i8> %8, i64 6
  %i.aoy = zext nneg i8 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aoy
  %i.apa = extractelement <24 x i8> %8, i64 9
  %i.apb = zext nneg i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apb
  %i.apd = extractelement <24 x i8> %8, i64 12
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ape
  %i.apg = extractelement <24 x i8> %8, i64 15
  %i.aph = zext nneg i8 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aph
  %i.apj = extractelement <24 x i8> %8, i64 18
  %i.apk = zext nneg i8 %i.apj to i64
  %i.apl = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apk
  %i.apm = extractelement <24 x i8> %8, i64 21
  %i.apn = zext nneg i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apn
  %i.app = load i8, ptr %i.aot, align 1, !tbaa !18
end_hunk_7
begin_hunk_8_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 5
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 6
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 7
  %i.aqf = extractelement <24 x i8> %8, i64 1
  %i.aqg = zext nneg i8 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqg
  %i.aqi = extractelement <24 x i8> %8, i64 4
  %i.aqj = zext nneg i8 %i.aqi to i64
  %i.aqk = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqj
  %i.aql = extractelement <24 x i8> %8, i64 7
  %i.aqm = zext nneg i8 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqm
  %i.aqo = extractelement <24 x i8> %8, i64 10
  %i.aqp = zext nneg i8 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqp
  %i.aqr = extractelement <24 x i8> %8, i64 13
  %i.aqs = zext nneg i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqs
  %i.aqu = extractelement <24 x i8> %8, i64 16
  %i.aqv = zext nneg i8 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqv
  %i.aqx = extractelement <24 x i8> %8, i64 19
  %i.aqy = zext nneg i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqy
  %i.ara = extractelement <24 x i8> %8, i64 22
  %i.arb = zext nneg i8 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.arb
  %i.ard = load i8, ptr %i.aqh, align 1, !tbaa !18
end_hunk_8
begin_hunk_9_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.arq = insertelement <8 x i8> %i.arp, i8 %i.ari, i64 5
  %i.arr = insertelement <8 x i8> %i.arq, i8 %i.arj, i64 6
  %i.ars = insertelement <8 x i8> %i.arr, i8 %i.ark, i64 7
  %i.art = extractelement <24 x i8> %8, i64 2
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aru
  %i.arw = extractelement <24 x i8> %8, i64 5
  %i.arx = zext nneg i8 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.arx
  %i.arz = extractelement <24 x i8> %8, i64 8
  %i.asa = zext nneg i8 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asa
  %i.asc = extractelement <24 x i8> %8, i64 11
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asd
  %i.asf = extractelement <24 x i8> %8, i64 14
  %i.asg = zext nneg i8 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asg
  %i.asi = extractelement <24 x i8> %8, i64 17
  %i.asj = zext nneg i8 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asj
  %i.asl = extractelement <24 x i8> %8, i64 20
  %i.asm = zext nneg i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asm
  %i.aso = extractelement <24 x i8> %8, i64 23
  %i.asp = zext nneg i8 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asp
  %i.asr = load i8, ptr %i.arv, align 1, !tbaa !18
end_hunk_9
begin_hunk_10_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.ate = insertelement <8 x i8> %i.atd, i8 %i.asw, i64 5
  %i.atf = insertelement <8 x i8> %i.ate, i8 %i.asx, i64 6
  %i.atg = insertelement <8 x i8> %i.atf, i8 %i.asy, i64 7
  %i.ath = zext nneg i8 %10 to i64
  %i.ati = zext nneg i8 %12 to i64
  %i.atj = zext nneg i8 %14 to i64
  %i.atk = zext nneg i8 %16 to i64
  %i.atl = zext nneg i8 %18 to i64
  %i.atm = zext nneg i8 %20 to i64
  %23 = zext nneg i8 %i.aop to i64
  %i.atn = zext nneg i8 %i.aoq to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ath
  %24 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ati
  %25 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atj
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atk
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atl
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atm
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %23
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atn
  %i.atu = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atv = load i8, ptr %24, align 1, !tbaa !18
  %i.atw = load i8, ptr %25, align 1, !tbaa !18
  %i.atx = load i8, ptr %i.atp, align 1, !tbaa !18
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !18
  %i.atz = load i8, ptr %i.atr, align 1, !tbaa !18
end_hunk_10
begin_hunk_11_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.auk = shufflevector <8 x i8> %i.aqe, <8 x i8> %i.ars, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aul = shufflevector <8 x i8> %i.atg, <8 x i8> %i.auj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec80 = shufflevector <16 x i8> %i.auk, <16 x i8> %i.aul, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec80, ptr %i.aoo, align 1, !tbaa !18, !alias.scope !43, !noalias !40
  %index.next81 = add nuw i64 %index70, 8         ; 2 uses
  %i.aum = icmp eq i64 %index.next81, %n.vec67
  br i1 %i.aum, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %26 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aun = getelementptr i8, ptr %26, i64 24
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = sub i64 %i.a, %i.auo
  %cmp.n82 = icmp eq i64 %i.ad, %n.vec67
end_hunk_11
