inline.NumInlined: 6503
inline.NumDeleted: 1932
begin_hunk_0_@_ZN8facebook5velox13DecodedVectorD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1075
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1332 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1334
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat {
bb.a:
  %.not.i = icmp slt i32 %3, %4
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %3, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %4, -64                          ; 4 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %4, 6
  %i.g = and i32 %4, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i.i, -1
  %i.j = sub nsw i32 %i.c, %3                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i                       ; 2 uses
  %i.q = sext i32 %i.f to i64                     ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !116
  %i.t = xor i64 %i.p, -1
  %i.u = and i64 %i.s, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.w = load i64, ptr %i.v, align 8, !tbaa !116
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.y = load i64, ptr %i.x, align 8, !tbaa !116
  %i.z = xor i64 %i.y, -1
  %i.aa = and i64 %i.w, %i.z
  %i.ab = and i64 %i.aa, %i.p
  %i.ac = or disjoint i64 %i.ab, %i.u
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !116
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %3, %i.c
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sdiv i32 %3, 64
  %i.ae = sub nsw i32 %i.c, %3                    ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i.i35.i, -1
  %i.ah = sub nsw i32 64, %i.ae
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = sext i32 %i.ad to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !116
  %i.an = xor i64 %i.aj, -1
  %i.ao = and i64 %i.am, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !116
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.aq, %i.at
  %i.av = and i64 %i.au, %i.aj
  %i.aw = or disjoint i64 %i.av, %i.ao
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3337.i = icmp sgt i32 %i.ax, %i.d
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %4, %i.d
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ay = phi i32 [ %i.bi, %.lr.ph.i ], [ %i.ax, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.c, %bb.f ]
  %i.az = sdiv i32 %.038.i, 64
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !116
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !116
  %i.bf = xor i64 %i.be, -1
  %i.bg = and i64 %i.bc, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !116
  %i.bi = add nsw i32 %i.ay, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.bi, %i.d
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1373

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !116
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !116
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !116
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !116
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.421) align 8 %2, ptr noundef byval(%class.anon.422) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1300, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1303
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1374
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1375, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !402
  %4 = sext i32 %i.d to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1376, !nonnull !70, !align !301
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !993
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %bb.d ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.al, %4                  ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %5
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %5
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !116
  %i.as = add nsw i64 %.011.i, -1
  %i.at = and i64 %i.as, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1377

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !1300, !range !69, !noundef !70
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1303
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !116
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1374
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1375, !nonnull !70, !align !301
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !402
  %6 = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1376, !nonnull !70, !align !301
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !308
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !993
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %bb.g ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bx, %6                  ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.br, i64 %7
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !116
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %7
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !116
  %i.ce = add i64 %.011.i38, -1
  %i.cf = and i64 %i.ce, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1377

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.ch = load i8, ptr %3, align 8, !tbaa !1304, !range !69, !noundef !70
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1306
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.cn, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cu = phi i32 [ %i.cg, %.lr.ph ], [ %i.ec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cv = sdiv i32 %.051, 64                      ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !116
  %i.cz = xor i64 %i.cy, %i.cm                    ; 2 uses
  switch i64 %i.cz, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.da = shl nsw i32 %i.cv, 6
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !402
  %8 = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !308
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !993
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = shl nsw i32 %i.cv, 6                    ; 2 uses
  %i.df = add i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !402
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !308
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !993
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dr, %bb.j ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !116
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.020.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !116
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dg
  br i1 %i.ds, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1378

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.eb, %bb.k ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.dt, %8                  ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %9
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !116
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %9
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !116
  %i.ea = add i64 %.01519.i, -1
  %i.eb = and i64 %i.ea, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1379

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ec = add nsw i32 %i.cu, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ec, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1380

bb.l:                                             ; preds = %._crit_edge
  %i.ed = ashr i32 %1, 6
  %i.ee = and i32 %1, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %notmask.i42 = shl nsw i64 -1, %i.ef
  %i.eg = xor i64 %notmask.i42, -1
  %i.eh = load i8, ptr %2, align 8, !tbaa !1300, !range !69, !noundef !70
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1303
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !116
  %i.en = xor i8 %i.eh, 1
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = and i64 %i.eq, %i.eg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.er, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1374
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !1375, !nonnull !70, !align !301
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !402
  %10 = sext i32 %i.d to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1376, !nonnull !70, !align !301
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !308
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !993
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.er, %.preheader.i44 ], [ %i.fk, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.fc, %10                ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %11
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !116
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %11
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !116
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1377

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.423) align 8 %2, ptr noundef byval(%class.anon.424) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1314
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1381
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !308
  %4 = sext i32 %i.d to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !993
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.ai, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %5
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %5
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !116
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1383

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1314
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !116
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !1381
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !308
  %6 = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !993
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bo, %6                  ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %7
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %7
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1383

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1315, !range !69, !noundef !70
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1317
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !116
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !308
  %8 = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !993
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 2 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 6 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !308 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !993 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax, %i.cs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.cz, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.cw, %n.mod.vf72       ; 3 uses
  %i.da = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cs                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x i64>, ptr %i.dc, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.de, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.df, align 8, !tbaa !116
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %wide.load, ptr %i.dg, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dh, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.di, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.dj, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add i64 %index74, %i.cs                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %wide.load75 = load <4 x i64>, ptr %i.dm, align 8, !tbaa !116
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  store <4 x i64> %wide.load75, ptr %i.dn, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1385

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cs, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.020.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !116
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.020.i
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !116
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cr
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1386

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.dz, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.du, %8                  ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %9
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !116
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.co, i64 %9
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !116
  %i.dy = add i64 %.01519.i, -1
  %i.dz = and i64 %i.dy, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dz, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1387

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.ea = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1388

bb.k:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i42 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i42, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1314
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !116
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ep, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1381
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !308
  %10 = sext i32 %i.d to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !993
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ep, %.preheader.i44 ], [ %i.fc, %bb.l ] ; 3 uses
  %i.ex = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.ex, %10                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %11
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !116
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %11
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !116
  %i.fb = add nsw i64 %.011.i45, -1
  %i.fc = and i64 %i.fb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fc, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1383

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.427) align 8 %2, ptr noundef byval(%class.anon.428) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1341, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1343
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1336, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1338, !nonnull !70, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1339, !nonnull !70, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !402
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !308
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !32
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1389

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !1341, !range !69, !noundef !70
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1343
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !116
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1336, !nonnull !70, !align !301
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1338, !nonnull !70, !align !301
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1339, !nonnull !70, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !402
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !308
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !308
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !116
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !32
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1389

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !32
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1389

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1344, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1346
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1336, !nonnull !70, !align !301
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !402
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1338, !nonnull !70, !align !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !308
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1339, !nonnull !70, !align !301
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !308
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !116
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !32
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1391

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !1336, !nonnull !70, !align !301
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !402
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !1338, !nonnull !70, !align !301
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !308
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !1339, !nonnull !70, !align !301
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !308
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !116
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !32
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1392

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.429) align 8 %2, ptr noundef byval(%class.anon.430) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1324
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1393
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !993
  %4 = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %4
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ah
  store i64 %.pre.i, ptr %i.ai, align 8, !tbaa !116
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1395

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1324
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !116
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1393
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !993
  %5 = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %5
  %.pre.i38 = load i64, ptr %i.bh, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bk
  store i64 %.pre.i38, ptr %i.bl, align 8, !tbaa !116
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !1395

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !1325, !range !69, !noundef !70
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1327
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.054 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.054, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !116
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !993
  %6 = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %6
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !116
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.cj = add i32 %i.ci, 64
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %.0.off = add i32 %.054, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cl = sext i32 %i.ci to i64                   ; 9 uses
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !993 ; 3 uses
  %.pre.i42 = load i64, ptr %i.by, align 8, !tbaa !116 ; 2 uses
  %i.cn = or disjoint i64 %i.cl, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ck) ; 2 uses
  %i.co = sub i64 %umax70, %i.cl                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cp = or disjoint i64 %i.cl, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.ck)
  %i.cq = xor i64 %i.cl, -1
  %i.cr = add i64 %umax, %i.cq                    ; 2 uses
  %i.cs = sext i32 %i.ci to i35                   ; 2 uses
  %i.ct = shl nsw i35 %i.cs, 3
  %i.cu = trunc i64 %i.cr to i35
  %i.cv = add i35 %i.cs, %i.cu
  %i.cw = shl i35 %i.cv, 3
  %i.cx = icmp slt i35 %i.cw, %i.ct
  %i.cy = icmp ugt i64 %i.cr, 4294967295
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check71 = icmp ult i64 %i.co, 16
  %n.mod.vf72 = and i64 %umax70, 1                ; 3 uses
  %n.vec73 = sub i64 %i.co, %n.mod.vf72           ; 3 uses
  %i.da = add i64 %n.vec73, %i.cl                 ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x i64> poison, i64 %.pre.i42, i64 0
  %broadcast.splat75 = shufflevector <4 x i64> %broadcast.splatinsert74, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check71, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cl
  %i.dc = shl i64 %i.db, 32
  %i.dd = ashr exact i64 %i.dc, 29
  %i.de = getelementptr inbounds i8, ptr %i.cm, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  store <4 x i64> %broadcast.splat75, ptr %i.de, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.df, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.dg, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat75, ptr %i.dh, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec73
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index76, %i.cl
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 29
  %i.dm = getelementptr inbounds i8, ptr %i.cm, i64 %i.dl
  store <4 x i64> %broadcast.splat75, ptr %i.dm, align 8, !tbaa !116
  %index.next77 = add nuw i64 %index76, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1397

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n78, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cl, %vector.scevcheck ], [ %i.cl, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dq, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.cm, i64 %i.do
  store i64 %.pre.i42, ptr %i.dp, align 8, !tbaa !116
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ck
  br i1 %i.dr, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1398

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dt = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.ds
  store i64 %.pre24.i, ptr %i.dt, align 8, !tbaa !116
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dv, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1399

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1400

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i44 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i44, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1324
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !116
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.el, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1393
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !993
  %7 = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %7
  %.pre.i47 = load i64, ptr %i.ep, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.el, %.preheader.i46 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %i.et = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.es
  store i64 %.pre.i47, ptr %i.et, align 8, !tbaa !116
  %i.eu = add nsw i64 %.011.i48, -1
  %i.ev = and i64 %i.eu, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1395

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.432, align 8            ; 7 uses
  %7 = alloca %class.anon.431, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1401

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1402, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1405
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1406
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1407, !nonnull !70, !align !301 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1347 ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1356, !range !69
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !1357 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !993 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %3 = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ag, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %4 = or disjoint i64 %i.ab, %3                  ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %4
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !116
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %4
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !116
  %i.af = add i64 %.011.us.us, -1
  %i.ag = and i64 %i.af, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ag, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1408

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.ah = load i8, ptr %i.t, align 1, !tbaa !1362, !range !69, !noundef !70
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !1363
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  %.pre29 = load i64, ptr %i.al, align 8, !tbaa !116
  %5 = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %5
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %i.an = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.am
  store i64 %.pre29, ptr %i.an, align 8, !tbaa !116
  %i.ao = add i64 %.011.us.us20, -1
  %i.ap = and i64 %i.ao, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ap, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1408

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !1367
  %6 = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %7 = or disjoint i64 %i.ar, %6                  ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %7
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !116
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %7
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !116
  %i.ay = add i64 %.011.us, -1
  %i.az = and i64 %i.ay, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.az, 0
  br i1 %.not10.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !1408

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.w, label %.preheader.split.split.us.split.us, label %.preheader.split.split

.preheader.split.split.us.split.us:               ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us
  %.011.us12.us = phi i64 [ %i.br, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us12.us, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %i.m, %i.bb             ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !116
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not.i.i.i.us.us = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us: ; preds = %.preheader.split.split.us.split.us
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !1357
  %i.bl = sext i32 %i.bc to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !116
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !993
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bl
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us, %.preheader.split.split.us.split.us
  %i.bq = add i64 %.011.us12.us, -1
  %i.br = and i64 %i.bq, %.011.us12.us            ; 2 uses
  %.not10.us17.us = icmp eq i64 %i.br, 0
  br i1 %.not10.us17.us, label %.loopexit, label %.preheader.split.split.us.split.us, !llvm.loop !1408

.preheader.split.split:                           ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.011 = phi i64 [ %i.dj, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = or disjoint i32 %i.m, %i.bt             ; 4 uses
  %i.bv = load i8, ptr %i.s, align 1, !range !69
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.split
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !116
  %i.cb = and i64 %i.bx, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

bb.c:                                             ; preds = %.preheader.split.split
  %i.ce = load i8, ptr %i.t, align 1, !tbaa !1362, !range !69, !noundef !70
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !1367
  %i.ch = sext i32 %i.bu to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !116
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  %.not.i7.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35: ; preds = %bb.d
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !1357
  br label %bb.e

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.c
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !116
  %i.ct = and i64 %i.cs, 1
  %.not.i6.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !1357
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %bb.b
  %.pre = load i8, ptr %i.t, align 1, !tbaa !1362, !range !69
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !1357 ; 2 uses
  %i.cw = trunc nuw i8 %.pre to i1
  br i1 %i.cw, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cx = phi ptr [ %i.cr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35 ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !1367
  %i.cz = sext i32 %i.bu to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread, %bb.e
  %i.db = phi ptr [ %i.cx, %bb.e ], [ %i.cu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i.in = phi ptr [ %i.da, %bb.e ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i = load i32, ptr %.0.i.i.i.in, align 4, !tbaa !3
  %i.dc = sext i32 %.0.i.i.i to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !116
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !993
  %i.dg = sext i32 %i.bu to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit: ; preds = %bb.b, %bb.d, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.di = add i64 %.011, -1
  %i.dj = and i64 %i.di, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dj, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split.split, !llvm.loop !1408

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1409, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1411
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 6 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6                        ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1406
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1407, !nonnull !70, !align !301 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1347 ; 5 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 2, !tbaa !1356, !range !69
  %.pre.i19.fr = freeze i8 %.pre.i19
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 59 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.v = trunc i8 %.pre.i19.fr to i1              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  br i1 %.not.i.i17, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !1357 ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !993  ; 3 uses
  br i1 %i.v, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader: ; preds = %.lr.ph.split.us
  %2 = sext i32 %i.l to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us
  %.01531.us.us = phi i64 [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us ], [ %i.j, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader ] ; 3 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us, i1 true)
  %3 = or disjoint i64 %i.aa, %2                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %3
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !116
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %3
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !116
  %i.ae = add i64 %.01531.us.us, -1
  %i.af = and i64 %i.ae, %.01531.us.us            ; 2 uses
  %.not.us.us = icmp eq i64 %i.af, 0
  br i1 %.not.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, !llvm.loop !1412

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ag = load i8, ptr %i.s, align 1, !tbaa !1362, !range !69, !noundef !70
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !1363
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj
  %.pre57 = load i64, ptr %i.ak, align 8, !tbaa !116
  %4 = sext i32 %i.l to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.z, i64 %4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, %.lr.ph.split.us.split.split.us
  %.01531.us.us40 = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us ], [ %i.ao, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39 ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us40, i1 true)
  %i.am = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.al
  store i64 %.pre57, ptr %i.am, align 8, !tbaa !116
  %i.an = add i64 %.01531.us.us40, -1
  %i.ao = and i64 %i.an, %.01531.us.us40          ; 2 uses
  %.not.us.us43 = icmp eq i64 %i.ao, 0
  br i1 %.not.us.us43, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, !llvm.loop !1412

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !1367
  %5 = sext i32 %i.l to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, %.lr.ph.split.us.split.split
  %.01531.us = phi i64 [ %i.j, %.lr.ph.split.us.split.split ], [ %i.ay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us ] ; 3 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us, i1 true)
  %6 = or disjoint i64 %i.aq, %5                  ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %6
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !116
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %6
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !116
  %i.ax = add i64 %.01531.us, -1
  %i.ay = and i64 %i.ax, %.01531.us               ; 2 uses
  %.not.us = icmp eq i64 %i.ay, 0
  br i1 %.not.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, !llvm.loop !1412

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.v, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us
  %.01531.us32.us = phi i64 [ %i.bq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us32.us, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %i.l, %i.ba             ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !116
  %i.bg = and i64 %i.bc, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i.i27.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i27.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !1357
  %i.bk = sext i32 %i.bb to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !116
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !993
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us, %.lr.ph.split.split.us.split.us
  %i.bp = add i64 %.01531.us32.us, -1
  %i.bq = and i64 %i.bp, %.01531.us32.us          ; 2 uses
  %.not.us37.us = icmp eq i64 %i.bq, 0
  br i1 %.not.us37.us, label %.loopexit, label %.lr.ph.split.split.us.split.us, !llvm.loop !1412

bb.b:                                             ; preds = %bb.a
  %i.br = shl i32 %1, 6                           ; 3 uses
  %i.bs = add i32 %i.br, 64
  %i.bt = sext i32 %i.bs to i64
  %.not49 = icmp eq i32 %i.br, -64
  br i1 %.not49, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.b
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1406
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !1407, !nonnull !70, !align !301 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1347 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1356, !range !69
  %i.cb = trunc nuw i8 %.pre.i to i1              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit
  %.044 = phi i64 [ %i.bu, %.lr.ph48 ], [ %i.dx, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit ] ; 7 uses
  %i.ci = trunc i64 %.044 to i32
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load i8, ptr %i.cc, align 1, !range !69
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = lshr i64 %.044, 6
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !116
  %i.cp = and i64 %.044, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.co, %i.cq
  %.not.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.cs = load i8, ptr %i.cd, align 1, !tbaa !1362, !range !69, !noundef !70 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !1367
  %sext.i = shl i64 %.044, 32
  %i.cv = ashr exact i64 %sext.i, 30
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !116
  %i.dc = and i64 %i.cy, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.db
  %.not.i7.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.f
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !116
  %i.dg = and i64 %i.df, 1
  %.not.i6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.g
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !1357
  br label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.e, %bb.c
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !1357 ; 2 uses
  br i1 %i.cb, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.pre = load i8, ptr %i.cd, align 1, !tbaa !1362, !range !69
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.dj = phi i8 [ %i.cs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.dk = phi ptr [ %i.dh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load i32, ptr %i.cg, align 8, !tbaa !1363
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ce, align 8, !tbaa !1367
  %sext4.i = shl i64 %.044, 32
  %i.do = ashr exact i64 %sext4.i, 30
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.dr = phi ptr [ %i.dk, %bb.j ], [ %i.dk, %bb.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.0.i.i.i = phi i32 [ %i.dq, %bb.j ], [ %i.dm, %bb.i ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %i.ds = sext i32 %.0.i.i.i to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !116
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !993
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.044
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !116
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit: ; preds = %bb.e, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.dx = add nuw i64 %.044, 1                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bt
  br i1 %i.dy, label %bb.c, label %.loopexit, !llvm.loop !1413

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.01531 = phi i64 [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = or disjoint i32 %i.l, %i.ea             ; 4 uses
  %i.ec = load i8, ptr %i.r, align 1, !range !69
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !116
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i.i27 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i27, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.el = load i8, ptr %i.s, align 1, !tbaa !1362, !range !69, !noundef !70
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !1367
  %i.eo = sext i32 %i.eb to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !116
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  %.not.i7.i.i21 = icmp eq i64 %i.ex, 0
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1446, !range !69, !noundef !70
  %i.s = load ptr, ptr %2, align 8, !tbaa !1444
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !1446, !range !69, !noundef !70
  %i.al = load ptr, ptr %2, align 8, !tbaa !1444
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !116
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !69
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !116 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !1446, !range !69, !noundef !70
  %i.bw = load ptr, ptr %2, align 8, !tbaa !1444
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !116
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !402, !nonnull !70, !align !303
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.463) align 8 %2, ptr noundef byval(%class.anon.464) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1071
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1463
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !993
  %4 = sext i32 %i.d to i64
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !308
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.ai, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %5
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %5
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !116
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1465

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1071
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !116
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1463
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !993
  %6 = sext i32 %i.bh to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !308
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bo, %6                  ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %7
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %7
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1072, !range !69, !noundef !70
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1074
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !nonnull !70, !align !301 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !116
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !993
  %8 = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !308
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 4 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 9 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !993 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !308 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax67, %i.cs                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.cr)
  %i.da = xor i64 %i.cs, -1
  %i.db = add i64 %umax, %i.da                    ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.cp, %i.dc
  %i.de = icmp slt i32 %i.dd, %i.cp
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  %i.dh = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.dh, 128
  %or.cond = select i1 %i.dg, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.cw, %n.mod.vf72           ; 3 uses
  %i.di = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index, %i.cs
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 32                ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %wide.load = load <4 x i64>, ptr %i.dm, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.do, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.dp, align 8, !tbaa !116
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dl ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store <4 x i64> %wide.load, ptr %i.dq, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dr, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.ds, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.dt, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec73
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dv = add i64 %index74, %i.cs
  %i.dw = shl i64 %i.dv, 32
  %i.dx = ashr exact i64 %i.dw, 32                ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dx
  %wide.load75 = load <4 x i64>, ptr %i.dy, align 8, !tbaa !116
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dx
  store <4 x i64> %wide.load75, ptr %i.dz, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.di, %middle.block ], [ %i.cs, %iter.check ], [ %i.cs, %vector.scevcheck ], [ %i.di, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ef, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eb = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !116
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !116
  %i.ef = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.cr
  br i1 %i.eg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1468

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.em, %bb.j ] ; 3 uses
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.eh, %8                  ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %9
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !116
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.co, i64 %9
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !116
  %i.el = add i64 %.01519.i, -1
  %i.em = and i64 %i.el, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.em, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1469

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.en = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1470

bb.k:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i42 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i42, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1071
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !116
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fc, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1463
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !993
  %10 = sext i32 %i.d to i64
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !308
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fc, %.preheader.i44 ], [ %i.fp, %bb.l ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.fk, %10                ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %11
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !116
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %11
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !116
  %i.fo = add nsw i64 %.011.i45, -1
  %i.fp = and i64 %i.fo, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fp, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional.256", align 1 ; 4 uses
  %2 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !232
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.r, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %bb.b, %bb.a, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !401
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32, !noalias !1471
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !221, !noalias !1471
  %i.o = add nsw i64 %i.k, 7
  %i.p = lshr i64 %i.o, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %2, i64 noundef %i.p, ptr noundef %i.m, ptr noundef nonnull align 1 dereferenceable(2) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !1471
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !150
  %.not10 = icmp eq ptr %i.q, null
  br i1 %.not10, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.r = load i32, ptr %i.i, align 8, !tbaa !401
  %i.s = invoke noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.r)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !232
  %i.w = and i8 %i.v, 2
  %.not.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i5, label %bb.f, label %bb.e, !prof !121

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234
  %sext = shl i64 %i.s, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !150   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !150 ; 7 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !150
  %.not.i2.i = icmp eq ptr %i.ag, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc.i.i unwind label %bb.k, !inline_history !223

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !224
  %.not.i.i.i = icmp eq ptr %i.ao, null
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !45
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %..i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.k, !inline_history !223

bb.k:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !150 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !232
  %i.ax = and i8 %i.aw, 2
  %.not.i6 = icmp eq i8 %i.ax, 0
  br i1 %.not.i6, label %bb.m, label %bb.l, !prof !121

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIbEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc7 unwind label %bb.p

.noexc7:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !233
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !234
  %i.bb = load ptr, ptr %2, align 8, !tbaa !150   ; 7 uses
  %.not.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.n
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %.noexc.i unwind label %bb.o, !inline_history !223

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !224
  %.not.i.i9 = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %..i.i
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.o, !inline_history !223

bb.o:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.m, %bb.n, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %i.ac, %bb.g ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E2_EEvSC_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 59 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = sext i32 %i.ag to i64
  %wide.trip.count = sext i32 %i.ae to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %indvars.iv = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ] ; 10 uses
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !1347 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.aq, null
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1356, !range !69
  %.pre8 = trunc nuw i8 %.pre.i to i1             ; 3 uses
  br i1 %.not.i.i4, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, label %bb.j

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %.pre-phi1014 = trunc i64 %indvars.iv to i32
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !234 ; 2 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !1357 ; 2 uses
  br i1 %.pre8, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.aj, align 1, !range !69
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond.i.i = select i1 %.pre8, i1 true, i1 %i.au
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = lshr i64 %indvars.iv, 6
  %i.aw = and i64 %i.av, 67108863
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !116
  %i.az = and i64 %indvars.iv, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ay, %i.ba
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.ak, align 1, !tbaa !1362, !range !69, !noundef !70 ; 2 uses
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !1367
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !116
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bk
  %.not.i7.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.l
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !116
  %i.bp = and i64 %i.bo, 1
  %.not.i6.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.m
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !234
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !1357
  br label %bb.n

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.k
  %.pre-phi10 = trunc i64 %indvars.iv to i32
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !234 ; 2 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !1357 ; 2 uses
  br i1 %.pre8, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.bu = phi ptr [ %i.as, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.bt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %i.bv = phi ptr [ %i.ar, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !1362, !range !69
  br label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.bw = phi i8 [ %i.bc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.bx = phi ptr [ %i.br, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.bv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.bz = trunc nuw i8 %i.bw to i1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.ao, align 8, !tbaa !1363
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !1367
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.ce = phi ptr [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.as, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cf = phi ptr [ %i.by, %bb.p ], [ %i.by, %bb.o ], [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.ar, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.cd, %bb.p ], [ %i.ca, %bb.o ], [ %.pre-phi10, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %.pre-phi1014, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cg = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !116
  %i.ck = and i64 %i.cg, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i = icmp eq i64 %i.cm, 0
  %i.cn = lshr i64 %indvars.iv, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.cq = trunc i64 %indvars.iv to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = shl nuw i8 1, %i.cr
  %i.ct = or i8 %i.cp, %i.cs
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.i

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.cu = and i64 %indvars.iv, 7
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !32
  %i.cx = and i8 %i.cw, %i.cp
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.i:  ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i8 [ %i.cx, %bb.r ], [ %i.ct, %bb.q ]
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !32
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit: ; preds = %bb.k, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1551

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cy = load ptr, ptr %0, align 8, !tbaa !1061
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !798
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !176
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %i.cy, i32 noundef %i.da, i32 noundef %i.dc, i1 noundef zeroext true, ptr %1, ptr %2)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, %bb.h, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.472) align 8 %2, ptr noundef byval(%class.anon.473) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1523, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1525
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1518, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1520, !nonnull !70, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1521, !nonnull !70, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bg, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 3 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !402
  %5 = or disjoint i64 %i.ah, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !308
  %i.an = sext i32 %i.ak to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %.not.i.i = icmp eq i64 %i.at, 0
  %i.au = lshr i64 %5, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = trunc nuw nsw i64 %i.ah to i8
  %i.ay = and i8 %i.ax, 7
  %i.az = shl nuw i8 1, %i.ay
  %i.ba = or i8 %i.aw, %i.az
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bb = and i64 %i.ah, 7
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %i.be = and i8 %i.bd, %i.aw
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i = phi i8 [ %i.be, %bb.f ], [ %i.ba, %bb.e ]
  store i8 %.sink.i.i.i, ptr %i.av, align 1, !tbaa !32
  %i.bf = add nsw i64 %.011.i, -1
  %i.bg = and i64 %i.bf, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bg, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1552

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sdiv i32 %0, 64                         ; 2 uses
  %i.bi = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bj
  %i.bk = xor i64 %notmask.i.i35, -1
  %i.bl = sub nsw i32 64, %i.bi
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %i.bk, %i.bm
  %i.bo = load i8, ptr %2, align 8, !tbaa !1523, !range !69, !noundef !70
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1525
  %i.br = sext i32 %i.bh to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !116
  %i.bu = xor i8 %i.bo, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = xor i64 %i.bt, %i.bw
  %i.by = and i64 %i.bx, %i.bn                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = shl nsw i32 %i.bh, 6
  %6 = sext i32 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !1518, !nonnull !70, !align !301
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !1520, !nonnull !70, !align !301
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !1521, !nonnull !70, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.by, %.preheader.i37 ], [ %i.df, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.cg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 3 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !402
  %7 = or disjoint i64 %i.cg, %6                  ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %7
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !308
  %i.cm = sext i32 %i.cj to i64                   ; 2 uses
  %i.cn = lshr i64 %i.cm, 6
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !116
  %i.cq = and i64 %i.cm, 63
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cp, %i.cr
  %.not.i.i39 = icmp eq i64 %i.cs, 0
  %i.ct = lshr i64 %7, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = trunc nuw nsw i64 %i.cg to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = shl nuw i8 1, %i.cx
  %i.cz = or i8 %i.cv, %i.cy
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.da = and i64 %i.cg, 7
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !32
  %i.dd = and i8 %i.dc, %i.cv
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i41 = phi i8 [ %i.dd, %bb.k ], [ %i.cz, %bb.j ]
  store i8 %.sink.i.i.i41, ptr %i.cu, align 1, !tbaa !32
  %i.de = add i64 %.011.i38, -1
  %i.df = and i64 %i.de, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.df, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1552

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.dg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.dg, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dh = phi i32 [ %i.dj, %.lr.ph ], [ %i.dg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dh, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.di = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.di)
  %i.dj = add nsw i32 %i.dh, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1553

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i44 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i44, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !1523, !range !69, !noundef !70
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1525
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !116
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.dy, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = sext i32 %i.d to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !1518, !nonnull !70, !align !301
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !1520, !nonnull !70, !align !301
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !1521, !nonnull !70, !align !301
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.dy, %.preheader.i46 ], [ %i.fe, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.ef = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 3 uses
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !402
  %9 = or disjoint i64 %i.ef, %8                  ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %9
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !308
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !308
  %i.el = sext i32 %i.ei to i64                   ; 2 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !116
  %i.ep = and i64 %i.el, 63
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = and i64 %i.eo, %i.eq
  %.not.i.i48 = icmp eq i64 %i.er, 0
  %i.es = lshr i64 %9, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.es ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ev = trunc nuw nsw i64 %i.ef to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = shl nuw i8 1, %i.ew
  %i.ey = or i8 %i.eu, %i.ex
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.ez = and i64 %i.ef, 7
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = and i8 %i.fb, %i.eu
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i50 = phi i8 [ %i.fc, %bb.o ], [ %i.ey, %bb.n ]
  store i8 %.sink.i.i.i50, ptr %i.et, align 1, !tbaa !32
  %i.fd = add nsw i64 %.011.i47, -1
  %i.fe = and i64 %i.fd, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fe, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1552

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1526, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1528
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %2 = sext i32 %i.l to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.av, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1518, !nonnull !70, !align !301
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !402
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1520, !nonnull !70, !align !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !308
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1521, !nonnull !70, !align !301
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !308
  %i.ad = sext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !116
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = trunc i64 %.022 to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = shl nuw i8 1, %i.ao
  %i.aq = or i8 %i.am, %i.ap
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = and i64 %.022, 7
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = and i8 %i.at, %i.am
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i8 [ %i.au, %bb.e ], [ %i.aq, %bb.d ]
  store i8 %.sink.i.i, ptr %i.al, align 1, !tbaa !32
  %i.av = add nuw i64 %.022, 1                    ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.q
  br i1 %i.aw, label %bb.c, label %.loopexit, !llvm.loop !1554

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.bz, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit ] ; 3 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 3 uses
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !1518, !nonnull !70, !align !301
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !402
  %3 = or disjoint i64 %i.ax, %2                  ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %3
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !1520, !nonnull !70, !align !301
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !308
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !1521, !nonnull !70, !align !301
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !308
  %i.bg = sext i32 %i.bb to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !116
  %i.bk = and i64 %i.bg, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i17 = icmp eq i64 %i.bm, 0
  %i.bn = lshr i64 %3, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = trunc nuw nsw i64 %i.ax to i8
  %i.br = and i8 %i.bq, 7
  %i.bs = shl nuw i8 1, %i.br
  %i.bt = or i8 %i.bp, %i.bs
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bu = and i64 %i.ax, 7
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !32
  %i.bx = and i8 %i.bw, %i.bp
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i18 = phi i8 [ %i.bx, %bb.h ], [ %i.bt, %bb.g ]
  store i8 %.sink.i.i18, ptr %i.bo, align 1, !tbaa !32
  %i.by = add i64 %.01521, -1
  %i.bz = and i64 %i.by, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1555

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.474) align 8 %2, ptr noundef byval(%class.anon.475) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1533, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1536
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %5 = lshr exact i64 %4, 3
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !1556, !nonnull !70, !align !301
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1557, !nonnull !70, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ax, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 4 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !308
  %6 = or disjoint i64 %i.af, %4
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !308
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %5
  %i.ai = load i64, ptr %7, align 8, !tbaa !116
  %i.aj = shl nuw nsw i64 1, %i.af
  %i.ak = and i64 %i.ai, %i.aj
  %.not.i.i = icmp eq i64 %i.ak, 0
  %i.al = lshr i64 %6, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = trunc nuw nsw i64 %i.af to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.as = and i64 %i.af, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.f ], [ %i.ar, %bb.e ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !32
  %i.aw = add nsw i64 %.011.i, -1
  %i.ax = and i64 %i.aw, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ax, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1558

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = sdiv i32 %0, 64                         ; 2 uses
  %i.az = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ba
  %i.bb = xor i64 %notmask.i.i35, -1
  %i.bc = sub nsw i32 64, %i.az
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %i.bb, %i.bd
  %i.bf = load i8, ptr %2, align 8, !tbaa !1533, !range !69, !noundef !70
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1536
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !116
  %i.bl = xor i8 %i.bf, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = xor i64 %i.bk, %i.bn
  %i.bp = and i64 %i.bo, %i.be                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bp, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = shl nsw i32 %i.ay, 6
  %8 = sext i32 %i.br to i64                      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = lshr exact i64 %8, 3
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !1556, !nonnull !70, !align !301
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !1557, !nonnull !70, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bp, %.preheader.i37 ], [ %i.cn, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 4 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !308
  %10 = or disjoint i64 %i.bv, %8
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !308
  %11 = getelementptr inbounds nuw i8, ptr %i.bx, i64 %9
  %i.by = load i64, ptr %11, align 8, !tbaa !116
  %i.bz = shl nuw i64 1, %i.bv
  %i.ca = and i64 %i.by, %i.bz
  %.not.i.i39 = icmp eq i64 %i.ca, 0
  %i.cb = lshr i64 %10, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = trunc nuw nsw i64 %i.bv to i8
  %i.cf = and i8 %i.ce, 7
  %i.cg = shl nuw i8 1, %i.cf
  %i.ch = or i8 %i.cd, %i.cg
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ci = and i64 %i.bv, 7
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !32
  %i.cl = and i8 %i.ck, %i.cd
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i41 = phi i8 [ %i.cl, %bb.k ], [ %i.ch, %bb.j ]
  store i8 %.sink.i.i.i41, ptr %i.cc, align 1, !tbaa !32
  %i.cm = add i64 %.011.i38, -1
  %i.cn = and i64 %i.cm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1558

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.co = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.co, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %i.cp = load i8, ptr %3, align 8, !tbaa !1537, !range !69, !noundef !70
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1539
  %i.cs = xor i8 %i.cp, 1
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = load ptr, ptr %i.cv, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !nonnull !70, !align !301 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.t

bb.l:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cz = phi i32 [ %i.co, %.lr.ph ], [ %i.ey, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.cz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.da = sdiv i32 %.060, 64                      ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !116
  %i.de = xor i64 %i.dd, %i.cu                    ; 2 uses
  switch i64 %i.de, label %.lr.ph.i [
    i64 -1, label %bb.m
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.l
  %i.df = shl nsw i32 %i.da, 6
  %12 = sext i32 %i.df to i64                     ; 2 uses
  %13 = lshr exact i64 %12, 3
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dg = shl nsw i32 %i.da, 6                    ; 2 uses
  %i.dh = add i32 %i.dg, 64
  %i.di = sext i32 %i.dh to i64
  %.0.off = add i32 %.060, 127
  %.not24.i = icmp ult i32 %.0.off, 64
  br i1 %.not24.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.m
  %i.dj = sext i32 %i.dg to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i, %.lr.ph23.i
  %.022.i = phi i64 [ %i.dj, %.lr.ph23.i ], [ %i.ed, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i ] ; 6 uses
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !308
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !308
  %i.dm = lshr i64 %.022.i, 6
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !116
  %i.dp = and i64 %.022.i, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.do, %i.dq
  %.not.i.i44 = icmp eq i64 %i.dr, 0
  %i.ds = lshr i64 %.022.i, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = trunc i64 %.022.i to i8
  %i.dw = and i8 %i.dv, 7
  %i.dx = shl nuw i8 1, %i.dw
  %i.dy = or i8 %i.du, %i.dx
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dz = and i64 %.022.i, 7
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !32
  %i.ec = and i8 %i.eb, %i.du
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i: ; preds = %bb.p, %bb.o
  %.sink.i.i.i45 = phi i8 [ %i.ec, %bb.p ], [ %i.dy, %bb.o ]
  store i8 %.sink.i.i.i45, ptr %i.dt, align 1, !tbaa !32
  %i.ed = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.di
  br i1 %i.ee, label %bb.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1559

bb.q:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46, %.lr.ph.i
  %.01521.i = phi i64 [ %i.de, %.lr.ph.i ], [ %i.ex, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46 ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i, i1 true) ; 4 uses
  %i.eg = load ptr, ptr %i.cx, align 8, !tbaa !308
  %14 = or disjoint i64 %i.ef, %12
  %i.eh = load ptr, ptr %i.cy, align 8, !tbaa !308
  %15 = getelementptr inbounds nuw i8, ptr %i.eh, i64 %13
  %i.ei = load i64, ptr %15, align 8, !tbaa !116
  %i.ej = shl nuw i64 1, %i.ef
  %i.ek = and i64 %i.ei, %i.ej
  %.not.i17.i = icmp eq i64 %i.ek, 0
  %i.el = lshr i64 %14, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i17.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = trunc nuw nsw i64 %i.ef to i8
  %i.ep = and i8 %i.eo, 7
  %i.eq = shl nuw i8 1, %i.ep
  %i.er = or i8 %i.en, %i.eq
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46

bb.s:                                             ; preds = %bb.q
  %i.es = and i64 %i.ef, 7
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32
  %i.ev = and i8 %i.eu, %i.en
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46: ; preds = %bb.s, %bb.r
  %.sink.i.i18.i = phi i8 [ %i.ev, %bb.s ], [ %i.er, %bb.r ]
  store i8 %.sink.i.i18.i, ptr %i.em, align 1, !tbaa !32
  %i.ew = add i64 %.01521.i, -1
  %i.ex = and i64 %i.ew, %.01521.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.ex, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.q, !llvm.loop !1560

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clImEEDaSB_.exit.i, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i46, %bb.l, %bb.m
  %i.ey = add nsw i32 %i.cz, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ey, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.l, !llvm.loop !1561

bb.t:                                             ; preds = %._crit_edge
  %i.ez = ashr i32 %1, 6
  %i.fa = and i32 %1, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %notmask.i48 = shl nsw i64 -1, %i.fb
  %i.fc = xor i64 %notmask.i48, -1
  %i.fd = load i8, ptr %2, align 8, !tbaa !1533, !range !69, !noundef !70
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1536
  %i.fg = sext i32 %i.ez to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !116
  %i.fj = xor i8 %i.fd, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = xor i64 %i.fi, %i.fl
  %i.fn = and i64 %i.fm, %i.fc                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.fn, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %16 = sext i32 %i.d to i64                      ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %17 = lshr exact i64 %16, 3
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !1556, !nonnull !70, !align !301
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !1557, !nonnull !70, !align !301
  br label %bb.u

bb.u:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53, %.preheader.i50
  %.011.i51 = phi i64 [ %i.fn, %.preheader.i50 ], [ %i.gk, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53 ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51, i1 true) ; 4 uses
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !308
  %18 = or disjoint i64 %i.fs, %16
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !308
  %19 = getelementptr inbounds nuw i8, ptr %i.fu, i64 %17
  %i.fv = load i64, ptr %19, align 8, !tbaa !116
  %i.fw = shl nuw nsw i64 1, %i.fs
  %i.fx = and i64 %i.fv, %i.fw
  %.not.i.i52 = icmp eq i64 %i.fx, 0
  %i.fy = lshr i64 %18, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fy ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gb = trunc nuw nsw i64 %i.fs to i8
  %i.gc = and i8 %i.gb, 7
  %i.gd = shl nuw i8 1, %i.gc
  %i.ge = or i8 %i.ga, %i.gd
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53

bb.w:                                             ; preds = %bb.u
  %i.gf = and i64 %i.fs, 7
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !32
  %i.gi = and i8 %i.gh, %i.ga
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53: ; preds = %bb.w, %bb.v
  %.sink.i.i.i54 = phi i8 [ %i.gi, %bb.w ], [ %i.ge, %bb.v ]
  store i8 %.sink.i.i.i54, ptr %i.fz, align 1, !tbaa !32
  %i.gj = add nsw i64 %.011.i51, -1
  %i.gk = and i64 %i.gj, %.011.i51                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.gk, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.u, !llvm.loop !1558

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i53, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E0_clIiEEDaSB_.exit.i, %bb.t, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.476) align 8 %2, ptr noundef byval(%class.anon.477) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1545, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1547
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1540, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1542, !nonnull !70, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1543, !nonnull !70, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !402
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !308
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !32
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1562

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !1545, !range !69, !noundef !70
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1547
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !116
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1540, !nonnull !70, !align !301
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1542, !nonnull !70, !align !301
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1543, !nonnull !70, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !402
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !308
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !308
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !116
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !32
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1562

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIbE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
end_hunk_3
