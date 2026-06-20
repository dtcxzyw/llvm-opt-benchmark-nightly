inline.NumInlined: 6582
inline.NumDeleted: 2126
begin_hunk_0_@_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii:bb.a
  %.not34.i = icmp eq i32 %4, %i.d
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ay = phi i32 [ %i.bi, %.lr.ph.i ], [ %i.ax, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.c, %bb.f ]
  %i.az = sdiv i32 %.038.i, 64
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !117
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !117
  %i.bf = xor i64 %i.be, -1
  %i.bg = and i64 %i.bc, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !117
  %i.bi = add nsw i32 %i.ay, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.bi, %i.d
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1374

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !117
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !117
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !117
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !117
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.405", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !531
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !36
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !533
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !36
  %i.e = load ptr, ptr %1, align 8, !tbaa !535    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !537  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !36
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !535
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !537
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !535
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !537
  %i.t = load i8, ptr %0, align 1, !tbaa !346
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !531
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !538
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !531    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !538
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.409) align 8 %2, ptr noundef byval(%class.anon.410) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1314, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1317
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1375
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1376, !nonnull !73, !align !437
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !290
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1377, !nonnull !73, !align !437
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !557
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !886
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %bb.d ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.al to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %6
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !117
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %6
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !117
  %i.as = add nsw i64 %.011.i, -1
  %i.at = and i64 %i.as, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1378

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
  %i.bb = load i8, ptr %2, align 8, !tbaa !1314, !range !72, !noundef !73
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1317
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !117
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
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1375
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1376, !nonnull !73, !align !437
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !290
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1377, !nonnull !73, !align !437
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !557
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !886
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %bb.g ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bx to i32
  %8 = or disjoint i32 %i.bn, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.br, i64 %9
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !117
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %9
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !117
  %i.ce = add i64 %.011.i38, -1
  %i.cf = and i64 %i.ce, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1378

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.ch = load i8, ptr %3, align 8, !tbaa !1318, !range !72, !noundef !73
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1320
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.cn, align 8, !nonnull !73, !align !437 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !73, !align !437 ; 2 uses
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
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !117
  %i.cz = xor i64 %i.cy, %i.cm                    ; 2 uses
  switch i64 %i.cz, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.da = shl nsw i32 %i.cv, 6
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !290
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !557
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !886
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
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !290
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !557
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !886
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dr, %bb.j ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !117
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.020.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !117
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dg
  br i1 %i.ds, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1379

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.eb, %bb.k ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.dt to i32
  %11 = or disjoint i32 %i.da, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !117
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %12
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !117
  %i.ea = add i64 %.01519.i, -1
  %i.eb = and i64 %i.ea, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1380

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ec = add nsw i32 %i.cu, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ec, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1381

bb.l:                                             ; preds = %._crit_edge
  %i.ed = ashr i32 %1, 6
  %i.ee = and i32 %1, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %notmask.i42 = shl nsw i64 -1, %i.ef
  %i.eg = xor i64 %notmask.i42, -1
  %i.eh = load i8, ptr %2, align 8, !tbaa !1314, !range !72, !noundef !73
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1317
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !117
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
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1375
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !1376, !nonnull !73, !align !437
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !290
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1377, !nonnull !73, !align !437
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !557
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !886
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.er, %.preheader.i44 ], [ %i.fk, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.fc to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %15
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !117
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %15
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !117
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1378

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.411) align 8 %2, ptr noundef byval(%class.anon.412) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1325, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1328
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1382
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1383, !nonnull !73, !align !437
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !557
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !886
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ai to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %6
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !117
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1384

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
  %i.av = load i8, ptr %2, align 8, !tbaa !1325, !range !72, !noundef !73
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1328
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !117
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
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !1382
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1383, !nonnull !73, !align !437
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !557
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !886
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bo to i32
  %8 = or disjoint i32 %i.bh, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %9
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !117
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %9
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !117
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1384

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1329, !range !72, !noundef !73
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1331
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !73, !align !437 ; 2 uses
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
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !117
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !557
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !886
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
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !557 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !886 ; 4 uses
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
  %wide.load = load <4 x i64>, ptr %i.dc, align 8, !tbaa !117
  %wide.load69 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !117
  %wide.load70 = load <4 x i64>, ptr %i.de, align 8, !tbaa !117
  %wide.load71 = load <4 x i64>, ptr %i.df, align 8, !tbaa !117
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %wide.load, ptr %i.dg, align 8, !tbaa !117
  store <4 x i64> %wide.load69, ptr %i.dh, align 8, !tbaa !117
  store <4 x i64> %wide.load70, ptr %i.di, align 8, !tbaa !117
  store <4 x i64> %wide.load71, ptr %i.dj, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add i64 %index74, %i.cs                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %wide.load75 = load <4 x i64>, ptr %i.dm, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  store <4 x i64> %wide.load75, ptr %i.dn, align 8, !tbaa !117
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1386

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cs, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.020.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !117
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.020.i
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !117
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cr
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1387

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.dz, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.du to i32
  %11 = or disjoint i32 %i.cm, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %12
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !117
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.co, i64 %12
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !117
  %i.dy = add i64 %.01519.i, -1
  %i.dz = and i64 %i.dy, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dz, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1388

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.ea = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1389

bb.k:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i42 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i42, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !1325, !range !72, !noundef !73
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1328
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !117
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ep, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1382
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1383, !nonnull !73, !align !437
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !557
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !886
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ep, %.preheader.i44 ], [ %i.fc, %bb.l ] ; 3 uses
  %i.ex = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.ex to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %15
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !117
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %15
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !117
  %i.fb = add nsw i64 %.011.i45, -1
  %i.fc = and i64 %i.fb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fc, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1384

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.415) align 8 %2, ptr noundef byval(%class.anon.416) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1350, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1352
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
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
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1345, !nonnull !73, !align !437
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1347, !nonnull !73, !align !437
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1348, !nonnull !73, !align !437
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !290
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !557
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !557
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !117
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36  ; 2 uses
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
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !36
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1390

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
  %i.bs = load i8, ptr %2, align 8, !tbaa !1350, !range !72, !noundef !73
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1352
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !117
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
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1345, !nonnull !73, !align !437
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1347, !nonnull !73, !align !437
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1348, !nonnull !73, !align !437
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !290
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !557
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !557
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !117
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36  ; 2 uses
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
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !36
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1390

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
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !36
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1390

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1353, !range !72, !noundef !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1355
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
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
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1345, !nonnull !73, !align !437
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1347, !nonnull !73, !align !437
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !557
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1348, !nonnull !73, !align !437
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !557
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !117
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !36  ; 2 uses
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
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !36
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1392

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !1345, !nonnull !73, !align !437
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !290
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !1347, !nonnull !73, !align !437
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !557
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !1348, !nonnull !73, !align !437
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !557
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !117
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !36  ; 2 uses
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
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !36
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !36
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1393

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.417) align 8 %2, ptr noundef byval(%class.anon.418) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1335, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1338
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1394
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1395, !nonnull !73, !align !437
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !886
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ah to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %6
  store i64 %.pre.i, ptr %i.ai, align 8, !tbaa !117
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1396

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
  %i.as = load i8, ptr %2, align 8, !tbaa !1335, !range !72, !noundef !73
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1338
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !117
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
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1394
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1395, !nonnull !73, !align !437
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !886
  %.pre.i38 = load i64, ptr %i.bh, align 8, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %7 = trunc nuw nsw i64 %i.bk to i32
  %8 = or disjoint i32 %i.be, %7
  %9 = sext i32 %8 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %9
  store i64 %.pre.i38, ptr %i.bl, align 8, !tbaa !117
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !1396

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !1339, !range !72, !noundef !73
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1341
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !73, !align !437 ; 2 uses
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
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !117
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !886
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !117
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
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !886 ; 3 uses
  %.pre.i42 = load i64, ptr %i.by, align 8, !tbaa !117 ; 2 uses
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
  store <4 x i64> %broadcast.splat75, ptr %i.de, align 8, !tbaa !117
  store <4 x i64> %broadcast.splat75, ptr %i.df, align 8, !tbaa !117
  store <4 x i64> %broadcast.splat75, ptr %i.dg, align 8, !tbaa !117
  store <4 x i64> %broadcast.splat75, ptr %i.dh, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec73
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index76, %i.cl
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 29
  %i.dm = getelementptr inbounds i8, ptr %i.cm, i64 %i.dl
  store <4 x i64> %broadcast.splat75, ptr %i.dm, align 8, !tbaa !117
  %index.next77 = add nuw i64 %index76, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1398

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
  store i64 %.pre.i42, ptr %i.dp, align 8, !tbaa !117
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ck
  br i1 %i.dr, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1399

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.ds to i32
  %11 = or disjoint i32 %i.cg, %10
  %12 = sext i32 %11 to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %12
  store i64 %.pre24.i, ptr %i.dt, align 8, !tbaa !117
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dv, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1400

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1401

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i44 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i44, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !1335, !range !72, !noundef !73
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1338
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !117
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.el, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1394
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1395, !nonnull !73, !align !437
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !886
  %.pre.i47 = load i64, ptr %i.ep, align 8, !tbaa !117
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.el, %.preheader.i46 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %13 = trunc nuw nsw i64 %i.es to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.er, i64 %15
  store i64 %.pre.i47, ptr %i.et, align 8, !tbaa !117
  %i.eu = add nsw i64 %.011.i48, -1
  %i.ev = and i64 %i.eu, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1396

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.420, align 8            ; 7 uses
  %7 = alloca %class.anon.419, align 8            ; 9 uses
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
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1402

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
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1403, !range !72, !noundef !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1406
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1407
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1408, !nonnull !73, !align !437 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1356 ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1357, !range !72
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
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !1358 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !886 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %.preheader.split.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ag, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %.preheader.split.us ] ; 3 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %3 = trunc nuw nsw i64 %i.ab to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64                         ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %5
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %5
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !117
  %i.af = add i64 %.011.us.us, -1
  %i.ag = and i64 %i.af, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ag, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1409

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.ah = load i8, ptr %i.t, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !1364
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  %.pre29 = load i64, ptr %i.al, align 8, !tbaa !117
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %6 = trunc nuw nsw i64 %i.am to i32
  %7 = or disjoint i32 %i.m, %6
  %8 = sext i32 %7 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %8
  store i64 %.pre29, ptr %i.an, align 8, !tbaa !117
  %i.ao = add i64 %.011.us.us20, -1
  %i.ap = and i64 %i.ao, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ap, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1409

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !1368
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %9 = trunc nuw nsw i64 %i.ar to i32
  %10 = or disjoint i32 %i.m, %9
  %11 = sext i32 %10 to i64                       ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %11
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !117
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %11
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !117
  %i.ay = add i64 %.011.us, -1
  %i.az = and i64 %i.ay, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.az, 0
  br i1 %.not10.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !1409

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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !117
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not.i.i.i.us.us = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us: ; preds = %.preheader.split.split.us.split.us
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !1358
  %i.bl = sext i32 %i.bc to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !117
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !886
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bl
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !117
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us, %.preheader.split.split.us.split.us
  %i.bq = add i64 %.011.us12.us, -1
  %i.br = and i64 %i.bq, %.011.us12.us            ; 2 uses
  %.not10.us17.us = icmp eq i64 %i.br, 0
  br i1 %.not10.us17.us, label %.loopexit, label %.preheader.split.split.us.split.us, !llvm.loop !1409

.preheader.split.split:                           ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.011 = phi i64 [ %i.dj, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = or disjoint i32 %i.m, %i.bt             ; 4 uses
  %i.bv = load i8, ptr %i.s, align 1, !range !72
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.split
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !117
  %i.cb = and i64 %i.bx, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

bb.c:                                             ; preds = %.preheader.split.split
  %i.ce = load i8, ptr %i.t, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !1368
  %i.ch = sext i32 %i.bu to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !117
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  %.not.i7.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35: ; preds = %bb.d
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !1358
  br label %bb.e

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.c
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !117
  %i.ct = and i64 %i.cs, 1
  %.not.i6.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !1358
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %bb.b
  %.pre = load i8, ptr %i.t, align 1, !tbaa !1363, !range !72
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !1358 ; 2 uses
  %i.cw = trunc nuw i8 %.pre to i1
  br i1 %i.cw, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cx = phi ptr [ %i.cr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35 ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !1368
  %i.cz = sext i32 %i.bu to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread, %bb.e
  %i.db = phi ptr [ %i.cx, %bb.e ], [ %i.cu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i.in = phi ptr [ %i.da, %bb.e ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i = load i32, ptr %.0.i.i.i.in, align 4, !tbaa !3
  %i.dc = sext i32 %.0.i.i.i to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !117
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !886
  %i.dg = sext i32 %i.bu to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !117
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit: ; preds = %bb.b, %bb.d, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.di = add i64 %.011, -1
  %i.dj = and i64 %i.di, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dj, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split.split, !llvm.loop !1409

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1410, !range !72, !noundef !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1412
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !117
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1407
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1408, !nonnull !73, !align !437 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1356 ; 5 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 2, !tbaa !1357, !range !72
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
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !1358 ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !886  ; 3 uses
  br i1 %i.v, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us: ; preds = %.lr.ph.split.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us
  %.01531.us.us = phi i64 [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us ], [ %i.j, %.lr.ph.split.us ] ; 3 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us, i1 true)
  %2 = trunc nuw nsw i64 %i.aa to i32
  %3 = or disjoint i32 %i.l, %2
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %4
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !117
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %4
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !117
  %i.ae = add i64 %.01531.us.us, -1
  %i.af = and i64 %i.ae, %.01531.us.us            ; 2 uses
  %.not.us.us = icmp eq i64 %i.af, 0
  br i1 %.not.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, !llvm.loop !1413

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ag = load i8, ptr %i.s, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !1364
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj
  %.pre57 = load i64, ptr %i.ak, align 8, !tbaa !117
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, %.lr.ph.split.us.split.split.us
  %.01531.us.us40 = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us ], [ %i.ao, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39 ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us40, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = or disjoint i32 %i.l, %5
  %7 = sext i32 %6 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.z, i64 %7
  store i64 %.pre57, ptr %i.am, align 8, !tbaa !117
  %i.an = add i64 %.01531.us.us40, -1
  %i.ao = and i64 %i.an, %.01531.us.us40          ; 2 uses
  %.not.us.us43 = icmp eq i64 %i.ao, 0
  br i1 %.not.us.us43, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, !llvm.loop !1413

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !1368
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, %.lr.ph.split.us.split.split
  %.01531.us = phi i64 [ %i.j, %.lr.ph.split.us.split.split ], [ %i.ay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us ] ; 3 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us, i1 true)
  %8 = trunc nuw nsw i64 %i.aq to i32
  %9 = or disjoint i32 %i.l, %8
  %10 = sext i32 %9 to i64                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %10
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !117
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %10
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !117
  %i.ax = add i64 %.01531.us, -1
  %i.ay = and i64 %i.ax, %.01531.us               ; 2 uses
  %.not.us = icmp eq i64 %i.ay, 0
  br i1 %.not.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, !llvm.loop !1413

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
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !117
  %i.bg = and i64 %i.bc, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i.i27.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i27.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !1358
  %i.bk = sext i32 %i.bb to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !117
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !886
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !117
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us, %.lr.ph.split.split.us.split.us
  %i.bp = add i64 %.01531.us32.us, -1
  %i.bq = and i64 %i.bp, %.01531.us32.us          ; 2 uses
  %.not.us37.us = icmp eq i64 %i.bq, 0
  br i1 %.not.us37.us, label %.loopexit, label %.lr.ph.split.split.us.split.us, !llvm.loop !1413

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
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1407
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !1408, !nonnull !73, !align !437 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1356 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1357, !range !72
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
  %i.cj = load i8, ptr %i.cc, align 1, !range !72
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = lshr i64 %.044, 6
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !117
  %i.cp = and i64 %.044, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.co, %i.cq
  %.not.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.cs = load i8, ptr %i.cd, align 1, !tbaa !1363, !range !72, !noundef !73 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !1368
  %sext.i = shl i64 %.044, 32
  %i.cv = ashr exact i64 %sext.i, 30
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !117
  %i.dc = and i64 %i.cy, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.db
  %.not.i7.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.f
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !117
  %i.dg = and i64 %i.df, 1
  %.not.i6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.g
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !1358
  br label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.e, %bb.c
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !1358 ; 2 uses
  br i1 %i.cb, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.pre = load i8, ptr %i.cd, align 1, !tbaa !1363, !range !72
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.dj = phi i8 [ %i.cs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.dk = phi ptr [ %i.dh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load i32, ptr %i.cg, align 8, !tbaa !1364
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ce, align 8, !tbaa !1368
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
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !117
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !886
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.044
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !117
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit: ; preds = %bb.e, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.dx = add nuw i64 %.044, 1                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bt
  br i1 %i.dy, label %bb.c, label %.loopexit, !llvm.loop !1414

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.01531 = phi i64 [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = or disjoint i32 %i.l, %i.ea             ; 4 uses
  %i.ec = load i8, ptr %i.r, align 1, !range !72
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !117
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i.i27 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i27, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.el = load i8, ptr %i.s, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !1368
  %i.eo = sext i32 %i.eb to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !117
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
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1447, !range !72, !noundef !73
  %i.s = load ptr, ptr %2, align 8, !tbaa !1445
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
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
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !1447, !range !72, !noundef !73
  %i.al = load ptr, ptr %2, align 8, !tbaa !1445
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !117
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
  %i.az = load i8, ptr %i.ay, align 8, !range !72
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
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !117 ; 2 uses
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
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !1447, !range !72, !noundef !73
  %i.bw = load ptr, ptr %2, align 8, !tbaa !1445
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !117
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
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !290, !nonnull !73, !align !527
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.450) align 8 %2, ptr noundef byval(%class.anon.451) align 8 %3) local_unnamed_addr #11 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !969, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !973
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !886
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !1464, !nonnull !73, !align !437
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !557
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ai to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %6
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %6
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !117
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
  %i.av = load i8, ptr %2, align 8, !tbaa !969, !range !72, !noundef !73
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !973
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !117
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
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !886
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1464, !nonnull !73, !align !437
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !557
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bo to i32
  %8 = or disjoint i32 %i.bh, %7
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %9
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !117
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %9
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !117
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !975, !range !72, !noundef !73
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !977
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !nonnull !73, !align !437 ; 2 uses
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
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !117
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !886
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !557
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
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !886 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !557 ; 4 uses
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
  %wide.load = load <4 x i64>, ptr %i.dm, align 8, !tbaa !117
  %wide.load69 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !117
  %wide.load70 = load <4 x i64>, ptr %i.do, align 8, !tbaa !117
  %wide.load71 = load <4 x i64>, ptr %i.dp, align 8, !tbaa !117
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dl ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store <4 x i64> %wide.load, ptr %i.dq, align 8, !tbaa !117
  store <4 x i64> %wide.load69, ptr %i.dr, align 8, !tbaa !117
  store <4 x i64> %wide.load70, ptr %i.ds, align 8, !tbaa !117
  store <4 x i64> %wide.load71, ptr %i.dt, align 8, !tbaa !117
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
  %wide.load75 = load <4 x i64>, ptr %i.dy, align 8, !tbaa !117
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dx
  store <4 x i64> %wide.load75, ptr %i.dz, align 8, !tbaa !117
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
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !117
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !117
  %i.ef = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.cr
  br i1 %i.eg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1468

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.em, %bb.j ] ; 3 uses
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.eh to i32
  %11 = or disjoint i32 %i.cm, %10
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %12
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !117
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.co, i64 %12
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !117
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
  %i.es = load i8, ptr %2, align 8, !tbaa !969, !range !72, !noundef !73
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !973
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !117
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
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !886
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !1464, !nonnull !73, !align !437
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !557
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fc, %.preheader.i44 ], [ %i.fp, %bb.l ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.fk to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %15
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !117
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %15
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !117
  %i.fo = add nsw i64 %.011.i45, -1
  %i.fp = and i64 %i.fo, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fp, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !994
  %i.c = load i64, ptr %0, align 8, !tbaa !117
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !117
  %i.f = load ptr, ptr %1, align 8, !tbaa !994    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8
  %i.r = select i1 %i.o, i64 15, i64 %i.q
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.a, align 16, !tbaa !36
  store i8 %i.t, ptr %i.s, align 1, !tbaa !36
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.l, ptr %i.h, align 8, !tbaa !59
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !36
  store i8 %i.o, ptr %i.k, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !63
  store i64 %.0, ptr %i.b, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !117
  %i.b = icmp ult i64 %0, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %0, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !1471
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !1471

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !117
  %i.f = icmp ult i64 %0, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !117
  %i.h = icmp ult i64 %0, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !117
  %i.j = icmp ult i64 %0, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !117
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !37

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !117
  %i.n = icmp ult i64 %0, %i.m
  br i1 %i.n, label %.loopexit, label %bb.g, !prof !37
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE23resizeIsAsciiIfNotEmptyIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !1511, !alias.scope !1515
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.k, align 8, !tbaa !1516, !alias.scope !1515
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !1517, !alias.scope !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29, !noalias !1515
  %i.m = load atomic i32, ptr %i.j monotonic, align 8, !noalias !1515 ; 4 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !3, !noalias !1515
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr %i.j, i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !1515 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.e, align 4, !noalias !1515
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.k, align 8, !tbaa !1516, !alias.scope !1515
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29, !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1515
  %i.u = load ptr, ptr %5, align 8, !tbaa !1511   ; 9 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !379
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !376
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !378
  %.not = icmp slt i32 %i.ac, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %.not, %bb.g ]
  %i.ad = load i16, ptr %i.k, align 8, !tbaa !1516
  switch i16 %i.ad, label %bb.n [
    i16 0, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.i
    i16 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load atomic i32, ptr %i.u acquire, align 4
  %i.af = and i32 %i.ae, 768
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  br i1 %i.ah, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ai = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.aj = add i32 %i.ai, -2048                    ; 2 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %i.ak = icmp ugt i32 %i.aj, 2047
  %i.al = and i32 %i.ai, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  %or.cond.i.i.i = or i1 %i.ak, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.l, !prof !1518

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.l, align 2, !tbaa !1517
  %i.an = zext i16 %i.am to i64
  %i.ao = ptrtoint ptr %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.aq = cmpxchg ptr %i.ap, i64 %i.ao, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.as = atomicrmw sub ptr %i.u, i32 2048 seq_cst, align 4 ; 2 uses
  %i.at = add i32 %i.as, -2048                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = icmp ugt i32 %i.at, 2047
  %i.av = and i32 %i.as, 16
  %.not.i.i.i25 = icmp eq i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %.not.i.i.i25
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.o, !prof !1518

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.p

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #35
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %.0, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  store ptr %i.j, ptr %6, align 8, !tbaa !423, !alias.scope !1525
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !427, !alias.scope !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29, !noalias !1525
  %i.az = load atomic i32, ptr %i.j acquire, align 8, !noalias !1525 ; 4 uses
  store i32 %i.az, ptr %i.d, align 4, !tbaa !3, !noalias !1525
  %i.ba = and i32 %i.az, -1312
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.critedge.i.i.i.i.i.i.i, !prof !122

bb.r:                                             ; preds = %bb.q
  %i.bc = or disjoint i32 %i.az, 128
  %i.bd = cmpxchg ptr %i.j, i32 %i.az, i32 %i.bc seq_cst seq_cst, align 4, !noalias !1525 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, !prof !428

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16: ; preds = %bb.r
  %i.bf = extractvalue { i32, i1 } %i.bd, 0
  store i32 %i.bf, ptr %i.d, align 4, !noalias !1525
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i16, %bb.q
  %i.bg = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !1525 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29, !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1525
  store i8 1, ptr %i.ay, align 8, !tbaa !427, !alias.scope !1525
  %i.bh = load ptr, ptr %6, align 8, !tbaa !423   ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.bh, null
  %.neg.i.i18 = select i1 %.not.i.i17, i64 0, i64 -40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.neg.i.i18 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !379
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !376
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !378
  %.not11 = icmp slt i32 %i.bp, %1
  br i1 %.not11, label %bb.v, label %.thread

bb.u:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.bq

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bi, i32 noundef %1, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.br = load atomic i8, ptr %i.f seq_cst, align 8, !range !72, !noundef !73
  %7 = trunc nuw i8 %i.br to i1
  %8 = and i1 %2, %7
  %9 = zext i1 %8 to i8
  store atomic i8 %9, ptr %i.f seq_cst, align 8
  %i.bs = load ptr, ptr %6, align 8, !tbaa !423   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.bs, null
  %.neg.i.i24 = select i1 %.not.i.i23, i64 0, i64 -40
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.neg.i.i24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !379
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !376
  %i.by = icmp sge i32 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i8
  store atomic i8 %i.bz, ptr %i.g seq_cst, align 1
  %.pre = load i8, ptr %i.ay, align 8, !tbaa !427, !range !72
  %i.ca = trunc nuw i8 %.pre to i1
  br i1 %i.ca, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.t, %bb.s, %bb.w
  %i.cb = phi ptr [ %i.bs, %bb.w ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.cc = atomicrmw and ptr %i.cb, i32 -401 seq_cst, align 4 ; 2 uses
  %i.cd = and i32 %i.cc, -401
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !3
  %i.ce = and i32 %i.cc, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.x, !prof !122

bb.x:                                             ; preds = %.thread
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.y

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #35
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.a, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE25keepAtMostOneStringBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.163", align 8   ; 8 uses
  %2 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !430  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !302
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !271  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !429
  %i.p = icmp ult i64 %i.o, 1048513
  br i1 %i.p, label %bb.d, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !271  ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !271
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = atomicrmw add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  store ptr %i.w, ptr %1, align 8, !tbaa !267
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !279
  %i.z = load ptr, ptr %2, align 8, !tbaa !271    ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !271
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !270
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !267   ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !271 ; 7 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !272

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !273
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !7
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.i, !inline_history !272

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #35
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !278

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !267
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !279
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #34
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.az = load ptr, ptr %2, align 8, !tbaa !271   ; 7 uses
  %.not.i10 = icmp eq ptr %i.az, null
  br i1 %.not.i10, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = atomicrmw sub ptr %i.ba, i32 1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ez)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fq, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #29
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #29
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #29
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.76", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !61
  store ptr null, ptr %i.b, align 8, !tbaa !29
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !282
  %i.d = load ptr, ptr %4, align 8, !tbaa !271
  store ptr %i.d, ptr %13, align 8, !tbaa !271
  store ptr null, ptr %4, align 8, !tbaa !271
  invoke void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %3, ptr noundef nonnull %13, i32 noundef %5, i64 %7, i64 %8, i64 %10, i64 %11)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %13, align 8, !tbaa !271   ; 7 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc.i unwind label %bb.d, !inline_history !272

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !7
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !272

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i.i16, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !179
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !179
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 16, ptr %i.aj, align 8, !tbaa !431
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !1651
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.al, align 1, !tbaa !1651
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 0, ptr %i.an, align 1, !tbaa !377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.am, i8 0, i64 36, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.ao, align 8, !tbaa !1652
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  ret void

bb.l:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #29
  resume { ptr, i32 } %i.aq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.511) align 8 %2, ptr noundef byval(%class.anon.512) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !381, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !385
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1653
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1654, !nonnull !73, !align !437
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %4 = trunc nuw nsw i64 %i.ag to i32
  %5 = or disjoint i32 %i.d, %4
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !304
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %6
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !297
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !358
  %i.al = add nsw i64 %.011.i, -1
  %i.am = and i64 %i.al, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1655

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sdiv i32 %0, 64                         ; 2 uses
  %i.ao = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i35, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = load i8, ptr %2, align 8, !tbaa !381, !range !72, !noundef !73
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !385
  %i.ax = sext i32 %i.an to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !117
  %i.ba = xor i8 %i.au, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.at                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shl nsw i32 %i.an, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1653
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !1654, !nonnull !73, !align !437
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.be, %.preheader.i37 ], [ %i.br, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = trunc nuw nsw i64 %i.bl to i32
  %8 = or disjoint i32 %i.bg, %7
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !304
  %9 = sext i32 %8 to i64                         ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %9
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !297
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !358
  %i.bq = add i64 %.011.i38, -1
  %i.br = and i64 %i.bq, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.br, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1655

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bs = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bs, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bt = load i8, ptr %3, align 8, !tbaa !387, !range !72, !noundef !73
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !389
  %i.bw = xor i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216 ; 2 uses
  %i.cd = load ptr, ptr %i.bz, align 8, !nonnull !73, !align !437 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ce = phi i32 [ %i.bs, %.lr.ph ], [ %i.dd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cf = sdiv i32 %.051, 64                      ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !117
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  switch i64 %i.cj, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = shl nsw i32 %i.cf, 6
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cl = shl nsw i32 %i.cf, 6                    ; 2 uses
  %i.cm = add i32 %i.cl, 64
  %i.cn = sext i32 %i.cm to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.co = sext i32 %i.cl to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.co, %.lr.ph21.i ], [ %i.cu, %bb.j ] ; 2 uses
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !304
  %sext.i = shl i64 %.020.i, 32
  %i.cq = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !297
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !358
  %i.cu = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cn
  br i1 %i.cv, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1656

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.dc, %bb.k ] ; 3 uses
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %10 = trunc nuw nsw i64 %i.cw to i32
  %11 = or disjoint i32 %i.ck, %10
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !304
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %12
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !297
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !358
  %i.db = add i64 %.01519.i, -1
  %i.dc = and i64 %i.db, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dc, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1657

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dd = add nsw i32 %i.ce, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1658

bb.l:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i42 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i42, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !381, !range !72, !noundef !73
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !385
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !117
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ds, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1653
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 216
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !1654, !nonnull !73, !align !437
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ds, %.preheader.i44 ], [ %i.ee, %bb.m ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %13 = trunc nuw nsw i64 %i.dy to i32
  %14 = or disjoint i32 %i.d, %13
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !304
  %15 = sext i32 %14 to i64                       ; 2 uses
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %15
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !297
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !358
  %i.ed = add nsw i64 %.011.i45, -1
  %i.ee = and i64 %i.ed, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ee, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1655

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb0ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 18 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !1659, !nonnull !73, !align !437
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !1660
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1663
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.f, align 8, !tbaa !1664
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !1665
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1666, !nonnull !73, !align !437
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1358
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !1357, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1364
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1368
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ac = sext i32 %.0.i.i to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.ae, align 8
  %i.af = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 9 uses
  %.not16 = icmp eq i64 %i.ag, 0
  br i1 %.not16, label %_ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 noundef %i.ag, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !429
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !302
  %i.aq = and i8 %i.ap, 2
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.f, !prof !122

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.f
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !303
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1667 ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %._ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit_crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !1668
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.av, i1 false)
  br label %._ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit_crit_edge

._ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit_crit_edge: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.g
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !1669
  store ptr %i.at, ptr %i.c, align 8, !tbaa !1668
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !1663
  br label %_ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit

_ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit: ; preds = %._ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit_crit_edge, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ax = phi ptr [ %i.at, %._ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit_crit_edge ], [ null, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ag, ptr %i.ay, align 8, !tbaa !1667
  %i.az = icmp ult i32 %i.af, 13
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = select i1 %i.az, ptr %i.ba, ptr %.sroa.2.0.copyload.i ; 6 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZN8facebook5velox9functions10stringCoreL10upperAsciiEPcPKcm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN8facebook5velox9functions10stringImpl5upperILb1ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT1_RKT2_.exit
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = ptrtoaddr ptr %i.ax to i64
  %min.iters.check = icmp samesign ult i64 %i.ag, 16
  %i.be = sub i64 %i.bd, %i.bc
  %diff.check = icmp ult i64 %i.be, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp samesign ult i64 %i.ag, 128
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.0.0.copyload.i, 112
  %n.vec = and i64 %.sroa.0.0.copyload.i, 4294967168 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %wide.load = load <32 x i8>, ptr %i.bf, align 1, !tbaa !36 ; 3 uses
  %wide.load24 = load <32 x i8>, ptr %i.bg, align 1, !tbaa !36 ; 3 uses
  %wide.load25 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !36 ; 3 uses
  %wide.load26 = load <32 x i8>, ptr %i.bi, align 1, !tbaa !36 ; 3 uses
  %i.bj = add <32 x i8> %wide.load, splat (i8 -97)
  %i.bk = add <32 x i8> %wide.load24, splat (i8 -97)
  %i.bl = add <32 x i8> %wide.load25, splat (i8 -97)
  %i.bm = add <32 x i8> %wide.load26, splat (i8 -97)
  %i.bn = icmp ult <32 x i8> %i.bj, splat (i8 26)
  %i.bo = icmp ult <32 x i8> %i.bk, splat (i8 26)
  %i.bp = icmp ult <32 x i8> %i.bl, splat (i8 26)
  %i.bq = icmp ult <32 x i8> %i.bm, splat (i8 26)
  %i.br = add nsw <32 x i8> %wide.load, splat (i8 -32)
  %i.bs = add nsw <32 x i8> %wide.load24, splat (i8 -32)
  %i.bt = add nsw <32 x i8> %wide.load25, splat (i8 -32)
  %i.bu = add nsw <32 x i8> %wide.load26, splat (i8 -32)
  %i.bv = select <32 x i1> %i.bn, <32 x i8> %i.br, <32 x i8> %wide.load
  %i.bw = select <32 x i1> %i.bo, <32 x i8> %i.bs, <32 x i8> %wide.load24
  %i.bx = select <32 x i1> %i.bp, <32 x i8> %i.bt, <32 x i8> %wide.load25
  %i.by = select <32 x i1> %i.bq, <32 x i8> %i.bu, <32 x i8> %wide.load26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  store <32 x i8> %i.bv, ptr %i.bz, align 1, !tbaa !36
  store <32 x i8> %i.bw, ptr %i.ca, align 1, !tbaa !36
  store <32 x i8> %i.bx, ptr %i.cb, align 1, !tbaa !36
  store <32 x i8> %i.by, ptr %i.cc, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox9functions10stringCoreL10upperAsciiEPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1671

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_4
