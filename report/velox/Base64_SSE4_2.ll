inline.NumInlined: 34
inline.NumDeleted: 26
begin_hunk_0_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 45 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.0.i.lcssa29 = ptrtoint ptr %.0.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
end_hunk_0
begin_hunk_1_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.aol = mul i64 %index70, 3                    ; 5 uses
  %next.gep71 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %3 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %4 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol ; 2 uses
  %5 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aom = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol ; 2 uses
  %i.aon = shl i64 %index70, 2
  %next.gep79 = getelementptr i8, ptr %.011.i.lcssa, i64 %i.aon
  %6 = getelementptr i8, ptr %4, i64 16
  %7 = getelementptr i8, ptr %3, i64 14
  %8 = getelementptr i8, ptr %4, i64 17
  %i.aoo = getelementptr i8, ptr %5, i64 20
  %9 = getelementptr i8, ptr %i.aom, i64 23
  %10 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !18, !alias.scope !28 ; 2 uses
  %11 = load i8, ptr %7, align 1, !tbaa !18, !alias.scope !28
  %12 = load <8 x i8>, ptr %6, align 1, !tbaa !18, !alias.scope !28 ; 2 uses
  %13 = load i8, ptr %9, align 1, !tbaa !18, !alias.scope !28
  %14 = load i8, ptr %i.aoo, align 1, !tbaa !18, !alias.scope !28
  %15 = load i8, ptr %8, align 1, !tbaa !18, !alias.scope !28
  %16 = shufflevector <8 x i8> %12, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %17 = shufflevector <16 x i8> %10, <16 x i8> %16, <28 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 2, i32 5, i32 8, i32 11>
  %18 = lshr <28 x i8> %17, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %19 = shl <28 x i8> %18, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0>
  %20 = shufflevector <16 x i8> %10, <16 x i8> %16, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 2, i32 5, i32 8, i32 11, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <28 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <28 x i8> %20, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27>
  %22 = shufflevector <8 x i8> %12, <8 x i8> poison, <28 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <28 x i8> %21, <28 x i8> %22, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 29, i32 32, i32 35, i32 24, i32 25, i32 26, i32 27>
  %24 = lshr <28 x i8> %23, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 0, i8 0, i8 0, i8 0>
  %25 = and <28 x i8> %19, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 63, i8 63, i8 63, i8 63>
  %26 = or <28 x i8> %25, %24                     ; 28 uses
  %27 = and i8 %11, 63
  %i.aop = and i8 %15, 63
  %28 = and i8 %14, 63
  %i.aoq = and i8 %13, 63
  %i.aor = extractelement <28 x i8> %26, i64 0
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aos
  %i.aou = extractelement <28 x i8> %26, i64 1
  %i.aov = zext nneg i8 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aov
  %i.aox = extractelement <28 x i8> %26, i64 2
  %i.aoy = zext nneg i8 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aoy
  %i.apa = extractelement <28 x i8> %26, i64 3
  %i.apb = zext nneg i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apb
  %i.apd = extractelement <28 x i8> %26, i64 4
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ape
  %i.apg = extractelement <28 x i8> %26, i64 5
  %i.aph = zext nneg i8 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aph
  %i.apj = extractelement <28 x i8> %26, i64 6
  %i.apk = zext nneg i8 %i.apj to i64
  %i.apl = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apk
  %i.apm = extractelement <28 x i8> %26, i64 7
  %i.apn = zext nneg i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.apn
  %i.app = load i8, ptr %i.aot, align 1, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 5
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 6
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 7
  %i.aqf = extractelement <28 x i8> %26, i64 8
  %i.aqg = zext nneg i8 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqg
  %i.aqi = extractelement <28 x i8> %26, i64 9
  %i.aqj = zext nneg i8 %i.aqi to i64
  %i.aqk = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqj
  %i.aql = extractelement <28 x i8> %26, i64 10
  %i.aqm = zext nneg i8 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqm
  %i.aqo = extractelement <28 x i8> %26, i64 11
  %i.aqp = zext nneg i8 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqp
  %i.aqr = extractelement <28 x i8> %26, i64 12
  %i.aqs = zext nneg i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqs
  %i.aqu = extractelement <28 x i8> %26, i64 13
  %i.aqv = zext nneg i8 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqv
  %i.aqx = extractelement <28 x i8> %26, i64 14
  %i.aqy = zext nneg i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aqy
  %i.ara = extractelement <28 x i8> %26, i64 15
  %i.arb = zext nneg i8 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.arb
  %i.ard = load i8, ptr %i.aqh, align 1, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.arq = insertelement <8 x i8> %i.arp, i8 %i.ari, i64 5
  %i.arr = insertelement <8 x i8> %i.arq, i8 %i.arj, i64 6
  %i.ars = insertelement <8 x i8> %i.arr, i8 %i.ark, i64 7
  %i.art = extractelement <28 x i8> %26, i64 16
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aru
  %i.arw = extractelement <28 x i8> %26, i64 17
  %i.arx = zext nneg i8 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.arx
  %i.arz = extractelement <28 x i8> %26, i64 18
  %i.asa = zext nneg i8 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asa
  %i.asc = extractelement <28 x i8> %26, i64 19
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asd
  %i.asf = extractelement <28 x i8> %26, i64 20
  %i.asg = zext nneg i8 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asg
  %i.asi = extractelement <28 x i8> %26, i64 21
  %i.asj = zext nneg i8 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asj
  %i.asl = extractelement <28 x i8> %26, i64 22
  %i.asm = zext nneg i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asm
  %i.aso = extractelement <28 x i8> %26, i64 23
  %i.asp = zext nneg i8 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.asp
  %i.asr = load i8, ptr %i.arv, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.ate = insertelement <8 x i8> %i.atd, i8 %i.asw, i64 5
  %i.atf = insertelement <8 x i8> %i.ate, i8 %i.asx, i64 6
  %i.atg = insertelement <8 x i8> %i.atf, i8 %i.asy, i64 7
  %i.ath = zext nneg i8 %27 to i64
  %i.ati = zext nneg i8 %i.aop to i64
  %i.atj = zext nneg i8 %28 to i64
  %i.atk = zext nneg i8 %i.aoq to i64
  %29 = extractelement <28 x i8> %26, i64 24
  %i.atl = zext nneg i8 %29 to i64
  %30 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atl
  %31 = extractelement <28 x i8> %26, i64 25
  %i.atm = zext nneg i8 %31 to i64
  %32 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atm
  %33 = extractelement <28 x i8> %26, i64 26
  %i.atn = zext nneg i8 %33 to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atn
  %34 = extractelement <28 x i8> %26, i64 27
  %35 = zext nneg i8 %34 to i64
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %35
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ath
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ati
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atj
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.atk
  %i.atu = load i8, ptr %30, align 1, !tbaa !18
  %i.atv = load i8, ptr %32, align 1, !tbaa !18
  %i.atw = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atx = load i8, ptr %i.atp, align 1, !tbaa !18
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !18
  %i.atz = load i8, ptr %i.atr, align 1, !tbaa !18
end_hunk_4
begin_hunk_5_@_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc:bb.a
  %i.auk = shufflevector <8 x i8> %i.aqe, <8 x i8> %i.ars, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aul = shufflevector <8 x i8> %i.atg, <8 x i8> %i.auj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec80 = shufflevector <16 x i8> %i.auk, <16 x i8> %i.aul, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec80, ptr %next.gep79, align 1, !tbaa !18, !alias.scope !31, !noalias !28
  %index.next81 = add nuw i64 %index70, 8         ; 2 uses
  %i.aum = icmp eq i64 %index.next81, %n.vec67
  br i1 %i.aum, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aun = getelementptr i8, ptr %i.aom, i64 24
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = sub i64 %i.a, %i.auo
  %cmp.n82 = icmp eq i64 %i.ad, %n.vec67
end_hunk_5
begin_hunk_6_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.lr.ph ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %.lr.ph ] ; 45 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.0.i.lcssa29 = ptrtoint ptr %.0.i.lcssa to i64 ; 4 uses
  %i.y = icmp samesign ugt i64 %.lcssa5, 2
end_hunk_6
begin_hunk_7_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.aol = mul i64 %index70, 3                    ; 5 uses
  %next.gep71 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %3 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %4 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol ; 2 uses
  %5 = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol
  %i.aom = getelementptr i8, ptr %.0.i.lcssa, i64 %i.aol ; 2 uses
  %i.aon = shl i64 %index70, 2
  %next.gep79 = getelementptr i8, ptr %.011.i.lcssa, i64 %i.aon
  %6 = getelementptr i8, ptr %4, i64 16
  %7 = getelementptr i8, ptr %3, i64 14
  %8 = getelementptr i8, ptr %4, i64 17
  %i.aoo = getelementptr i8, ptr %5, i64 20
  %9 = getelementptr i8, ptr %i.aom, i64 23
  %10 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !18, !alias.scope !40 ; 2 uses
  %11 = load i8, ptr %7, align 1, !tbaa !18, !alias.scope !40
  %12 = load <8 x i8>, ptr %6, align 1, !tbaa !18, !alias.scope !40 ; 2 uses
  %13 = load i8, ptr %9, align 1, !tbaa !18, !alias.scope !40
  %14 = load i8, ptr %i.aoo, align 1, !tbaa !18, !alias.scope !40
  %15 = load i8, ptr %8, align 1, !tbaa !18, !alias.scope !40
  %16 = shufflevector <8 x i8> %12, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %17 = shufflevector <16 x i8> %10, <16 x i8> %16, <28 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 2, i32 5, i32 8, i32 11>
  %18 = lshr <28 x i8> %17, <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %19 = shl <28 x i8> %18, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0>
  %20 = shufflevector <16 x i8> %10, <16 x i8> %16, <28 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 2, i32 5, i32 8, i32 11, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <28 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <28 x i8> %20, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27>
  %22 = shufflevector <8 x i8> %12, <8 x i8> poison, <28 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <28 x i8> %21, <28 x i8> %22, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 29, i32 32, i32 35, i32 24, i32 25, i32 26, i32 27>
  %24 = lshr <28 x i8> %23, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 6, i8 0, i8 0, i8 0, i8 0>
  %25 = and <28 x i8> %19, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 60, i8 63, i8 63, i8 63, i8 63>
  %26 = or <28 x i8> %25, %24                     ; 28 uses
  %27 = and i8 %11, 63
  %i.aop = and i8 %15, 63
  %28 = and i8 %14, 63
  %i.aoq = and i8 %13, 63
  %i.aor = extractelement <28 x i8> %26, i64 0
  %i.aos = zext nneg i8 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aos
  %i.aou = extractelement <28 x i8> %26, i64 1
  %i.aov = zext nneg i8 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aov
  %i.aox = extractelement <28 x i8> %26, i64 2
  %i.aoy = zext nneg i8 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aoy
  %i.apa = extractelement <28 x i8> %26, i64 3
  %i.apb = zext nneg i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apb
  %i.apd = extractelement <28 x i8> %26, i64 4
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ape
  %i.apg = extractelement <28 x i8> %26, i64 5
  %i.aph = zext nneg i8 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aph
  %i.apj = extractelement <28 x i8> %26, i64 6
  %i.apk = zext nneg i8 %i.apj to i64
  %i.apl = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apk
  %i.apm = extractelement <28 x i8> %26, i64 7
  %i.apn = zext nneg i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.apn
  %i.app = load i8, ptr %i.aot, align 1, !tbaa !18
end_hunk_7
begin_hunk_8_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.aqc = insertelement <8 x i8> %i.aqb, i8 %i.apu, i64 5
  %i.aqd = insertelement <8 x i8> %i.aqc, i8 %i.apv, i64 6
  %i.aqe = insertelement <8 x i8> %i.aqd, i8 %i.apw, i64 7
  %i.aqf = extractelement <28 x i8> %26, i64 8
  %i.aqg = zext nneg i8 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqg
  %i.aqi = extractelement <28 x i8> %26, i64 9
  %i.aqj = zext nneg i8 %i.aqi to i64
  %i.aqk = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqj
  %i.aql = extractelement <28 x i8> %26, i64 10
  %i.aqm = zext nneg i8 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqm
  %i.aqo = extractelement <28 x i8> %26, i64 11
  %i.aqp = zext nneg i8 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqp
  %i.aqr = extractelement <28 x i8> %26, i64 12
  %i.aqs = zext nneg i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqs
  %i.aqu = extractelement <28 x i8> %26, i64 13
  %i.aqv = zext nneg i8 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqv
  %i.aqx = extractelement <28 x i8> %26, i64 14
  %i.aqy = zext nneg i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aqy
  %i.ara = extractelement <28 x i8> %26, i64 15
  %i.arb = zext nneg i8 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.arb
  %i.ard = load i8, ptr %i.aqh, align 1, !tbaa !18
end_hunk_8
begin_hunk_9_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.arq = insertelement <8 x i8> %i.arp, i8 %i.ari, i64 5
  %i.arr = insertelement <8 x i8> %i.arq, i8 %i.arj, i64 6
  %i.ars = insertelement <8 x i8> %i.arr, i8 %i.ark, i64 7
  %i.art = extractelement <28 x i8> %26, i64 16
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aru
  %i.arw = extractelement <28 x i8> %26, i64 17
  %i.arx = zext nneg i8 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.arx
  %i.arz = extractelement <28 x i8> %26, i64 18
  %i.asa = zext nneg i8 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asa
  %i.asc = extractelement <28 x i8> %26, i64 19
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asd
  %i.asf = extractelement <28 x i8> %26, i64 20
  %i.asg = zext nneg i8 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asg
  %i.asi = extractelement <28 x i8> %26, i64 21
  %i.asj = zext nneg i8 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asj
  %i.asl = extractelement <28 x i8> %26, i64 22
  %i.asm = zext nneg i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asm
  %i.aso = extractelement <28 x i8> %26, i64 23
  %i.asp = zext nneg i8 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.asp
  %i.asr = load i8, ptr %i.arv, align 1, !tbaa !18
end_hunk_9
begin_hunk_10_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.ate = insertelement <8 x i8> %i.atd, i8 %i.asw, i64 5
  %i.atf = insertelement <8 x i8> %i.ate, i8 %i.asx, i64 6
  %i.atg = insertelement <8 x i8> %i.atf, i8 %i.asy, i64 7
  %i.ath = zext nneg i8 %27 to i64
  %i.ati = zext nneg i8 %i.aop to i64
  %i.atj = zext nneg i8 %28 to i64
  %i.atk = zext nneg i8 %i.aoq to i64
  %29 = extractelement <28 x i8> %26, i64 24
  %i.atl = zext nneg i8 %29 to i64
  %30 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atl
  %31 = extractelement <28 x i8> %26, i64 25
  %i.atm = zext nneg i8 %31 to i64
  %32 = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atm
  %33 = extractelement <28 x i8> %26, i64 26
  %i.atn = zext nneg i8 %33 to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atn
  %34 = extractelement <28 x i8> %26, i64 27
  %35 = zext nneg i8 %34 to i64
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %35
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ath
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ati
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atj
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.atk
  %i.atu = load i8, ptr %30, align 1, !tbaa !18
  %i.atv = load i8, ptr %32, align 1, !tbaa !18
  %i.atw = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atx = load i8, ptr %i.atp, align 1, !tbaa !18
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !18
  %i.atz = load i8, ptr %i.atr, align 1, !tbaa !18
end_hunk_10
begin_hunk_11_@_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc:bb.a
  %i.auk = shufflevector <8 x i8> %i.aqe, <8 x i8> %i.ars, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aul = shufflevector <8 x i8> %i.atg, <8 x i8> %i.auj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec80 = shufflevector <16 x i8> %i.auk, <16 x i8> %i.aul, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec80, ptr %next.gep79, align 1, !tbaa !18, !alias.scope !43, !noalias !40
  %index.next81 = add nuw i64 %index70, 8         ; 2 uses
  %i.aum = icmp eq i64 %index.next81, %n.vec67
  br i1 %i.aum, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aun = getelementptr i8, ptr %i.aom, i64 24
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = sub i64 %i.a, %i.auo
  %cmp.n82 = icmp eq i64 %i.ad, %n.vec67
end_hunk_11
