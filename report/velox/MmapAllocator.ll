Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MmapAllocator?download=true
inline.NumInlined: 3478
inline.NumDeleted: 1648
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.100) #39
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1043

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !346 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1043

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1043

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1046, !nonnull !323, !align !496 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !346
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1047, !nonnull !323, !align !1048
  store i32 2, ptr %i.bl, align 4, !tbaa !507
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1049, !nonnull !323, !align !496
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !509
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v116detail16native_formatterIycLNS1_4typeE4EE6formatINS0_7contextEEEDTcldtfp0_3outEERKyRT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 !guid !1050 {
bb.a:
  %3 = alloca %"class.fmt::v11::loc_value", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v11::loc_value", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !500    ; 3 uses
  %i.b = and i32 %i.a, 960
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !1052 ; 3 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !505    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.d, align 8, !tbaa !393
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = and i32 %i.a, 16384
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %3, align 16, !tbaa !346
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 4, ptr %i.f, align 16, !tbaa !1055
  %i.g = tail call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %3, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %.sroa.0.0.copyload.i15)
  br i1 %i.g, label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.c
  %.pre25 = load i32, ptr %0, align 8, !tbaa !500
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge24, %bb.b
  %i.h = phi i32 [ %.pre25, %._crit_edge24 ], [ %i.a, %bb.b ]
  %i.i = lshr i32 %i.h, 10
  %i.j = and i32 %i.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIyEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !347
  %i.n = tail call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i, i64 %i.c, i32 %i.m, ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14

_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14: ; preds = %bb.c, %bb.d
  %.sroa.010.0.i13 = phi ptr [ %i.n, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.o = load i32, ptr %5, align 4, !tbaa !500    ; 4 uses
  %i.p = lshr i32 %i.o, 6
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.t, ptr %i.s, align 4, !tbaa !347
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit: ; preds = %bb.e, %bb.f
  %i.u = lshr i32 %i.o, 8
  %i.v = and i32 %i.u, 3                          ; 2 uses
  %.not.i16 = icmp eq i32 %i.v, 0
  br i1 %.not.i16, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.y, ptr %i.x, align 4, !tbaa !347
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17: ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, %bb.g
  %.sroa.0.0.copyload.i18 = load ptr, ptr %2, align 8, !tbaa !1052 ; 3 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !505    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i19 = load ptr, ptr %i.aa, align 8, !tbaa !393
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ab = and i32 %i.o, 16384
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17
  store i64 %i.z, ptr %4, align 16, !tbaa !346
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 4, ptr %i.ac, align 16, !tbaa !1055
  %i.ad = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i18, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr %.sroa.0.0.copyload.i19)
  br i1 %i.ad, label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %5, align 4, !tbaa !500
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17
  %i.ae = phi i32 [ %.pre, %._crit_edge ], [ %i.o, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit17 ]
  %i.af = lshr i32 %i.ae, 10
  %i.ag = and i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIyEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !347
  %i.ak = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i18, i64 %i.z, i32 %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %5)
  br label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.h, %bb.i
  %.sroa.010.0.i = phi ptr [ %i.ak, %bb.i ], [ %.sroa.0.0.copyload.i18, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14
  %.sroa.012.0 = phi ptr [ %.sroa.010.0.i, %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit ], [ %.sroa.010.0.i13, %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit14 ]
  ret ptr %.sroa.012.0
}

declare noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v11::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #25 comdat !guid !1062 {
bb.a:
  %4 = alloca %class.anon.130, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %5 = alloca %class.anon.129, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.ptr34 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.b = load i32, ptr %3, align 4, !tbaa !500    ; 8 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %6, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i.a = phi i64 [ %i.k, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %6 = add i32 %.020.i, -2                        ; 3 uses
  %7 = zext i32 %6 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %7
  %i.g = urem i64 %.01819.i.a, 100
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.f, align 2
  %i.k = udiv i64 %.01819.i.a, 100                ; 2 uses
  %i.l = icmp ugt i64 %.01819.i.a, 9999
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1056

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %6, %.lr.ph.i ] ; 2 uses
  %i.m = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = add i32 %.0.lcssa.i, -2
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  store i16 %i.s, ptr %i.p, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.t = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = add i32 %.0.lcssa.i, -1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !346
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.y = and i32 %i.b, 4096
  %.not27 = icmp eq i32 %i.y, 0                   ; 2 uses
  %.str.106..str.107.i = select i1 %.not27, ptr @.str.107, ptr @.str.106
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ac, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.z = and i64 %.012.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.106..str.107.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !346
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr32 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ab, ptr %.ptr32, align 1, !tbaa !346
  %i.ac = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ac, 0
  br i1 %.not.i7, label %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !1057

_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ad = and i32 %i.b, 8192
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ae = select i1 %.not27, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = select i1 %.not.i8, i32 %i.ae, i32 %i.af
  %i.ah = or i32 %i.ag, %2
  %i.ai = add i32 %i.ah, 33554432
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.am, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.aj = trunc i64 %.012.us.i to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = or disjoint i8 %i.ak, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr31 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.al, ptr %.ptr31, align 1, !tbaa !346
  %i.am = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.am, 0
  br i1 %.not.us.i, label %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !1057

_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.an = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !502
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp sge i64 %gepdiff, %i.aq
  %i.as = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.at = select i1 %.not.i10, i32 48, i32 12288
  %i.au = or i32 %i.at, %2
  %i.av = add i32 %i.au, 16777216
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.az, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.aw = trunc i64 %.012.us.i12 to i8
  %i.ax = and i8 %i.aw, 1
  %i.ay = or disjoint i8 %i.ax, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ay, ptr %.ptr, align 1, !tbaa !346
  %i.az = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.az, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !1057

_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.ba = and i32 %i.b, 8192
  %.not29 = icmp eq i32 %i.ba, 0
  br i1 %.not29, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bb = and i32 %i.b, 4096
  %.not30 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not30, i32 25136, i32 16944 ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = select i1 %.not.i16, i32 %i.bc, i32 %i.bd
  %i.bf = or i32 %i.be, %2
  %i.bg = add i32 %i.bf, 33554432
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bh = trunc i64 %1 to i8
  %i.bi = and i32 %i.b, 7
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 %i.bk, ptr %4, align 1, !tbaa !514
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !515
  %i.bm = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN3fmt3v116detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ai, %bb.f ], [ %2, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.av, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bg, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.o, %bb.c ], [ %i.w, %bb.d ] ; 4 uses
  %.0.i.ptr.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.i.idx
  %i.bn = trunc i64 %.0.i.idx to i32
  %i.bo = sub i32 64, %i.bn                       ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !516 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !502 ; 4 uses
  %i.bt = add nsw i32 %i.bs, 1
  %i.bu = or i32 %i.bt, %i.bq
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = lshr i32 %.0, 24                        ; 2 uses
  %i.bx = add i32 %i.bo, %i.bw                    ; 4 uses
  br i1 %i.bv, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !518
  %i.cb = add i64 %i.ca, %i.by                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !519
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.l, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !520
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !12
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ch = and i32 %.0, 16777215                   ; 2 uses
  %.not.i38 = icmp eq i32 %i.ch, 0
  br i1 %.not.i38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not24.i.i = icmp eq i64 %.0.i.idx, 64
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !518
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ck = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.di, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph27.i.i ], [ %.01925.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.01925.i.i.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.01925.i.i.idx ; 3 uses
  %gepdiff41 = sub nsw i64 64, %.01925.i.i.idx    ; 2 uses
  %i.cl = add i64 %gepdiff41, %i.ck               ; 2 uses
  %i.cm = load i64, ptr %i.cc, align 8, !tbaa !519 ; 2 uses
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !520
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cl), !inline_history !13
  %.pre30.i.i = load i64, ptr %i.cc, align 8, !tbaa !519
  %.pre31.i.i = load i64, ptr %i.bz, align 8, !tbaa !518
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

end_hunk_0
