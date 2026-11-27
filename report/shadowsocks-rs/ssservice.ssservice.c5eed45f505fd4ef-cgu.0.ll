Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40154
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB7_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.ayt, ptr %i.ayu, align 8
  br label %bb.ad

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EECsgZAIVb0XKpv_9ssservice.exit120: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112, %bb.nt, %bb.nu
  %.sroa.10.sroa.4.1 = phi ptr [ %.sroa.425.sroa.4.0.copyload, %bb.nu ], [ undef, %bb.nt ], [ %.sroa.427.sroa.4.0.copyload, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.427.sroa.4.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.427.sroa.4.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.10.sroa.5.1 = phi ptr [ %.sroa.425.sroa.5.0.copyload, %bb.nu ], [ undef, %bb.nt ], [ %.sroa.427.sroa.5.0.copyload, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.427.sroa.5.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.427.sroa.5.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.10.sroa.6.1 = phi i8 [ %.sroa.425.sroa.6.0.copyload, %bb.nu ], [ undef, %bb.nt ], [ %.sroa.427.sroa.6.0.copyload, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.427.sroa.6.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.427.sroa.6.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.10.sroa.8.1 = phi ptr [ %.sroa.425.sroa.8.0.copyload, %bb.nu ], [ undef, %bb.nt ], [ %.sroa.427.sroa.8.0.copyload, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.427.sroa.8.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.427.sroa.8.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.10.sroa.9.1 = phi i8 [ %.sroa.425.sroa.9.0.copyload, %bb.nu ], [ undef, %bb.nt ], [ %.sroa.427.sroa.9.0.copyload, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.427.sroa.9.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.427.sroa.9.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.016.1 = phi i64 [ -1, %bb.nu ], [ -1, %bb.nt ], [ %.sroa.5267.0346, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.5267.0346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.5267.0346, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %.sroa.6.1 = phi i8 [ %.sroa.024.0.copyload, %bb.nu ], [ 10, %bb.nt ], [ %.sroa.11.0345, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsgZAIVb0XKpv_9ssservice.exit.i.i112 ], [ %.sroa.11.0345, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsgZAIVb0XKpv_9ssservice.exit.i.i119 ], [ %.sroa.11.0345, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit.i.i115 ]
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 786 ; 2 uses
  %i.ayw = load i8, ptr %i.ayv, align 2, !range !180, !noundef !177
  %i.ayx = trunc nuw i8 %i.ayw to i1
  br i1 %i.ayx, label %bb.oq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EECsgZAIVb0XKpv_9ssservice.exit217

bb.mf:                                            ; preds = %bb.aa
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 5 uses
  store i64 0, ptr %i.ayz, align 8, !alias.scope !58153
  store i64 0, ptr %i.ayy, align 8, !alias.scope !58153
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 786 ; 2 uses
  store i8 1, ptr %i.aza, align 2
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.azc = getelementptr i8, ptr %1, i64 624      ; 3 uses
  %.val74569 = load i64, ptr %i.azc, align 8, !noundef !177 ; 2 uses
  %i.azd = icmp eq i64 %.val74569, 0
  br i1 %i.azd, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.mf
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 6 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.azg = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 785
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  br label %bb.mg

bb.mg:                                            ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157
  %.val74570 = phi i64 [ %.val74569, %.lr.ph ], [ %.val74, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157 ]
  %i.azk = load i64, ptr %i.ayz, align 8, !alias.scope !58154, !noundef !177 ; 5 uses
  %i.azl = icmp ugt i64 %i.azk, 2                 ; 2 uses
  br i1 %i.azl, label %bb.mh, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit

bb.mh:                                            ; preds = %bb.mg
  %i.azm = load i64, ptr %i.aze, align 8, !alias.scope !58154, !noundef !177
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.mg, %bb.mh
  %.sink12.i.i145 = phi i64 [ %i.azm, %bb.mh ], [ %i.azk, %bb.mg ]
  %i.azn = load ptr, ptr %i.azf, align 8, !nonnull !177, !align !185, !noundef !177
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 24
  %.val46 = load ptr, ptr %i.azo, align 8, !nonnull !177, !noundef !177
  %i.azp = getelementptr inbounds nuw i8, ptr %.val46, i64 544
  %i.azq = load i64, ptr %i.azp, align 8, !noundef !177
  %i.azr = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.azq, i64 1)
  %i.azs = icmp ult i64 %.sink12.i.i145, %i.azr
  br i1 %i.azs, label %bb.mi, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157._RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge.loopexit_crit_edge
  %i.azt = phi i64 [ %.pre774.pre, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157._RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge.loopexit_crit_edge ], [ %i.azk, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.azu = icmp ugt i64 %i.azt, 2
  br i1 %i.azu, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.azw = load i64, ptr %i.azv, align 8, !alias.scope !58155, !noundef !177 ; 4 uses
  %i.azx = icmp eq i64 %i.azw, 0
  br i1 %i.azx, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread.thread, label %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge
  %i.azy = icmp eq i64 %i.azt, 0
  br i1 %i.azy, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread.thread, label %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread

bb.mi:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !58156)
  %i.azz = load i64, ptr %i.azg, align 8, !alias.scope !58156, !noundef !177 ; 2 uses
  %i.baa = add i64 %i.azz, 1                      ; 2 uses
  %i.bab = load i64, ptr %i.azb, align 8, !range !179, !alias.scope !58156, !noundef !177 ; 3 uses
  %.not.i146 = icmp ult i64 %i.baa, %i.bab
  %i.bac = select i1 %.not.i146, i64 0, i64 %i.bab
  %.sroa.01.0.i = sub nuw i64 %i.baa, %i.bac
  store i64 %.sroa.01.0.i, ptr %i.azg, align 8, !alias.scope !58156
  %i.bad = add i64 %.val74570, -1                 ; 2 uses
  store i64 %i.bad, ptr %i.azc, align 8, !alias.scope !58156
  %i.bae = icmp ult i64 %i.bad, %i.bab
  call void @llvm.assume(i1 %i.bae)
  %i.baf = load ptr, ptr %i.azh, align 8, !alias.scope !58156, !nonnull !177, !noundef !177
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.baf, i64 %i.azz
  %i.bah = load ptr, ptr %i.bag, align 8, !noalias !58156, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr %i.bah, ptr %i.cj, align 8
  %.val75 = load i8, ptr %i.azi, align 1
  %i.bai = getelementptr i8, ptr %i.bah, i64 160
  %.val76 = load ptr, ptr %i.bai, align 8, !nonnull !177, !noundef !177 ; 2 uses
  %i.baj = getelementptr i8, ptr %i.bah, i64 168
  %.val77 = load i64, ptr %i.baj, align 8, !noundef !177 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val77, 80
  %i.bak = getelementptr inbounds nuw i8, ptr %.val76, i64 %.idx.i
  %.0.val.fr.i = freeze i8 %.val75
  %i.bal = trunc i8 %.0.val.fr.i to i1
  %.not.not.not.i.not.not.i1354 = icmp eq i64 %.val77, 0 ; 2 uses
  br i1 %i.bal, label %.split.i.preheader, label %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit

.split.i.preheader:                               ; preds = %bb.mi
  br i1 %.not.not.not.i.not.not.i1354, label %.critedge40, label %.lr.ph1355

.split.i:                                         ; preds = %.lr.ph1355
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ban, i64 80 ; 2 uses
  %.not.not.not.i.not.not.i = icmp eq ptr %i.bam, %i.bak
  br i1 %.not.not.not.i.not.not.i, label %.critedge40, label %.lr.ph1355

.lr.ph1355:                                       ; preds = %.split.i.preheader, %.split.i
  %i.ban = phi ptr [ %i.bam, %.split.i ], [ %.val76, %.split.i.preheader ] ; 2 uses
  %.val5.i.i = load i64, ptr %i.ban, align 8, !range !209, !noalias !58157, !noundef !177
  %i.bao = icmp eq i64 %.val5.i.i, 0
  br i1 %i.bao, label %.split.i, label %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.mi
  br i1 %.not.not.not.i.not.not.i1354, label %.critedge40, label %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157: ; preds = %bb.ml, %.critedge40, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %.val74 = load i64, ptr %i.azc, align 8, !noundef !177 ; 2 uses
  %i.bap = icmp eq i64 %.val74, 0
  br i1 %i.bap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157._RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge.loopexit_crit_edge, label %bb.mg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157._RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge.loopexit_crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157
  %.pre774.pre = load i64, ptr %i.ayz, align 8, !alias.scope !58155
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E3lenCsgZAIVb0XKpv_9ssservice.exit._crit_edge

_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %.lr.ph1355, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.azl, label %bb.mj, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149

bb.mj:                                            ; preds = %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread
  %i.baq = load ptr, ptr %i.azj, align 8, !alias.scope !58158, !nonnull !177, !noundef !177
  %.pre773 = load i64, ptr %i.aze, align 8, !alias.scope !58159
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149: ; preds = %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread, %bb.mj
  %i.bar = phi i64 [ %.pre773, %bb.mj ], [ %i.azk, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread ] ; 2 uses
  %.sink12.i.i150 = phi ptr [ %i.baq, %bb.mj ], [ %i.aze, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread ]
  %.sink11.i.i151 = phi ptr [ %i.aze, %bb.mj ], [ %i.ayz, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread ]
  %.sink.i.i152 = phi i64 [ %i.azk, %bb.mj ], [ 2, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit.thread ]
  %i.bas = icmp eq i64 %i.bar, %.sink.i.i152
  br i1 %i.bas, label %bb.mk, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit156, !prof !186

bb.mk:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149
  call fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E21reserve_one_uncheckedCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ayy) #52
  %i.bat = load ptr, ptr %i.azj, align 8, !alias.scope !58159, !nonnull !177, !noundef !177
  %.pre.i155 = load i64, ptr %i.aze, align 8, !alias.scope !58159
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit156

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit156: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149, %bb.mk
  %i.bau = phi i64 [ %.pre.i155, %bb.mk ], [ %i.bar, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149 ]
  %.sroa.04.0.i153 = phi ptr [ %i.bat, %bb.mk ], [ %.sink12.i.i150, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149 ]
  %.sroa.0.0.i154 = phi ptr [ %i.aze, %bb.mk ], [ %.sink11.i.i151, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i149 ] ; 2 uses
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i153, i64 %i.bau
  store ptr %i.bah, ptr %i.bav, align 8
  %i.baw = load i64, ptr %.sroa.0.0.i154, align 8, !alias.scope !58159, !noundef !177
  %i.bax = add i64 %i.baw, 1
  store i64 %i.bax, ptr %.sroa.0.0.i154, align 8, !alias.scope !58159
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157

.critedge40:                                      ; preds = %.split.i, %.split.i.preheader, %_RINvMs6_NtCs8AjStw0eGtC_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderECsgZAIVb0XKpv_9ssservice.exit
  %i.bay = atomicrmw add ptr %i.bah, i64 -1 release, align 8, !noalias !58160
  %i.baz = icmp eq i64 %i.bay, 1
  br i1 %i.baz, label %bb.ml, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157

bb.ml:                                            ; preds = %.critedge40
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE9drop_slowB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #59
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit157

_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.bba = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.bba, i64 %i.azt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !58161
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store i64 0, ptr %i.bbc, align 8, !noalias !58161
  store i64 0, ptr %i.p, align 8, !noalias !58161
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8is_emptyCsgZAIVb0XKpv_9ssservice.exit
  %i.bbe = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.bbf = load ptr, ptr %i.bbe, align 8, !alias.scope !58162, !nonnull !177, !noundef !177 ; 4 uses
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.bbf, i64 %i.azw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !58161
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 7 uses
  store i64 0, ptr %i.bbh, align 8, !noalias !58161
  store i64 0, ptr %i.p, align 8, !noalias !58161
  call void @llvm.experimental.noalias.scope.decl(metadata !58163)
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %.not.i.i.i.i160 = icmp ugt i64 %i.azw, 2
  br i1 %.not.i.i.i.i160, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit
  %i.bbj = add nsw i64 %i.azw, -1
  %i.bbk = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bbj, i1 false)
  %i.bbl = sub nuw nsw i64 64, %i.bbk
  %i.bbm = shl nuw nsw i64 1, %i.bbl
  %i.bbn = call fastcc { i64, i64 } @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8try_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.bbm) #52, !noalias !58161 ; 2 uses
  %i.bbo = extractvalue { i64, i64 } %i.bbn, 0    ; 2 uses
  switch i64 %i.bbo, label %bb.mm [
    i64 -1, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i
    i64 0, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  ], !prof !58164

bb.mm:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.bbp = extractvalue { i64, i64 } %i.bbn, 1
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.bbo, i64 noundef %i.bbp) #61, !noalias !58161
  unreachable

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #62, !noalias !58161
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E11try_reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.pre.i.i.i163 = load i64, ptr %i.bbh, align 8, !alias.scope !58165, !noalias !58161 ; 3 uses
  %i.bbq = icmp ugt i64 %.pre.i.i.i163, 2
  br i1 %i.bbq, label %bb.mn, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.mn:                                            ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bbs = load ptr, ptr %i.bbr, align 8, !alias.scope !58165, !noalias !58161, !nonnull !177, !noundef !177
  %.pre.i.i164 = load i64, ptr %i.bbi, align 8, !alias.scope !58163, !noalias !58161
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread, %bb.mn
  %i.bbt = phi ptr [ %i.bbi, %bb.mn ], [ %i.bbi, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbi, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bbd, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 5 uses
  %i.bbu = phi ptr [ %i.bbh, %bb.mn ], [ %i.bbh, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbh, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bbc, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 2 uses
  %i.bbv = phi ptr [ %i.bbg, %bb.mn ], [ %i.bbg, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbg, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bbb, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 3 uses
  %.sink13.i.i158945 = phi ptr [ %i.bbf, %bb.mn ], [ %i.bbf, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbf, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bba, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 2 uses
  %i.bbw = phi i64 [ %.pre.i.i164, %bb.mn ], [ %.pre.i.i.i163, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 0, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ 0, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 3 uses
  %.sink12.i.i.i.i = phi ptr [ %i.bbs, %bb.mn ], [ %i.bbi, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbi, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bbd, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ]
  %.sink11.i.i.i.i = phi ptr [ %i.bbi, %bb.mn ], [ %i.bbh, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbh, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ %i.bbc, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 2 uses
  %.sink.i10.i.i.i = phi i64 [ %.pre.i.i.i163, %bb.mn ], [ 2, %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 2, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit ], [ 2, %_RNvXsg_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_ENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %1, i64 888
  %i.bby = icmp ult i64 %i.bbw, %.sink.i10.i.i.i
  br i1 %i.bby, label %.lr.ph.i.i.i162, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sink13.i.i158945, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bcs, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %storemerge.lcssa.i.i.i = phi i64 [ %i.bbw, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sink.i10.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  store i64 %storemerge.lcssa.i.i.i, ptr %.sink11.i.i.i.i, align 8, !alias.scope !58163, !noalias !58161
  %i.bbz = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.bbv
  br i1 %i.bbz, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph50.i.i.i

.lr.ph50.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.bca = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br label %bb.mq

.lr.ph.i.i.i162:                                  ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %storemerge46.i.i.i = phi i64 [ %i.bcu, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.bbw, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.0.045.i.i.i = phi ptr [ %i.bcs, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sink13.i.i158945, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %i.bcb = icmp eq ptr %.sroa.0.045.i.i.i, %i.bbv
  br i1 %i.bcb, label %bb.mu, label %bb.mo

bb.mo:                                            ; preds = %.lr.ph.i.i.i162
  %.val.i11.i.i.i = load ptr, ptr %.sroa.0.045.i.i.i, align 8, !noalias !58166, !nonnull !177, !noundef !177 ; 2 uses
  %i.bcc = atomicrmw add ptr %.val.i11.i.i.i, i64 1 monotonic, align 8, !noalias !58167
  %i.bcd = icmp slt i64 %i.bcc, 0
  br i1 %i.bcd, label %bb.mp, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.trap()
  unreachable

bb.mq:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %.lr.ph50.i.i.i
  %.sroa.028.048.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph50.i.i.i ], [ %i.bce, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.sroa.028.048.i.i.i, i64 8 ; 2 uses
  %.val.i13.i.i.i = load ptr, ptr %.sroa.028.048.i.i.i, align 8, !noalias !58168, !nonnull !177, !noundef !177 ; 2 uses
  %i.bcf = atomicrmw add ptr %.val.i13.i.i.i, i64 1 monotonic, align 8, !noalias !58169
  %i.bcg = icmp slt i64 %i.bcf, 0
  br i1 %i.bcg, label %bb.mr, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.trap()
  unreachable

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i: ; preds = %bb.mq
  %i.bch = load i64, ptr %i.bbu, align 8, !alias.scope !58170, !noalias !58161, !noundef !177 ; 3 uses
  %i.bci = icmp ugt i64 %i.bch, 2
  br i1 %i.bci, label %bb.ms, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.ms:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i
  %i.bcj = load ptr, ptr %i.bca, align 8, !alias.scope !58170, !noalias !58161, !nonnull !177, !noundef !177
  %.pre55.i.i.i = load i64, ptr %i.bbt, align 8, !alias.scope !58171, !noalias !58161
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i, %bb.ms
  %i.bck = phi i64 [ %.pre55.i.i.i, %bb.ms ], [ %i.bch, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i ] ; 2 uses
  %.sink12.i.i.i.i.i = phi ptr [ %i.bcj, %bb.ms ], [ %i.bbt, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i ]
  %.sink11.i.i.i.i.i = phi ptr [ %i.bbt, %bb.ms ], [ %i.bbu, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i ]
  %.sink.i.i16.i.i.i = phi i64 [ %i.bch, %bb.ms ], [ 2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit15.i.i.i ]
  %i.bcl = icmp eq i64 %i.bck, %.sink.i.i16.i.i.i
  br i1 %i.bcl, label %bb.mt, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i, !prof !186

bb.mt:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E21reserve_one_uncheckedCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #52, !noalias !58161
  %i.bcm = load ptr, ptr %i.bca, align 8, !alias.scope !58171, !noalias !58161, !nonnull !177, !noundef !177
  %.pre.i.i.i.i161 = load i64, ptr %i.bbt, align 8, !alias.scope !58171, !noalias !58161
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.mt, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.bcn = phi i64 [ %.pre.i.i.i.i161, %bb.mt ], [ %i.bck, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.04.0.i.i.i.i = phi ptr [ %i.bcm, %bb.mt ], [ %.sink12.i.i.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.0.0.i17.i.i.i = phi ptr [ %i.bbt, %bb.mt ], [ %.sink11.i.i.i.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %i.bco = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i.i.i.i, i64 %i.bcn
  store ptr %.val.i13.i.i.i, ptr %i.bco, align 8, !noalias !58161
  %i.bcp = load i64, ptr %.sroa.0.0.i17.i.i.i, align 8, !alias.scope !58171, !noalias !58161, !noundef !177
  %i.bcq = add i64 %i.bcp, 1
  store i64 %i.bcq, ptr %.sroa.0.0.i17.i.i.i, align 8, !alias.scope !58171, !noalias !58161
  %i.bcr = icmp eq ptr %i.bce, %i.bbv
  br i1 %i.bcr, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit, label %bb.mq

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.mo
  %i.bcs = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i, i64 8 ; 2 uses
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i.i.i.i, i64 %storemerge46.i.i.i
  store ptr %.val.i11.i.i.i, ptr %i.bct, align 8, !noalias !58161
  %i.bcu = add nuw i64 %storemerge46.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bcu, %.sink.i10.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i162

bb.mu:                                            ; preds = %.lr.ph.i.i.i162
  store i64 %storemerge46.i.i.i, ptr %.sink11.i.i.i.i, align 8, !alias.scope !58163, !noalias !58161
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E4pushCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %._crit_edge.i.i.i, %bb.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bbx, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !58161
  %i.bcv = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.bcw = call { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() #52 ; 2 uses
  %i.bcx = extractvalue { i64, i32 } %i.bcw, 0
  %i.bcy = extractvalue { i64, i32 } %i.bcw, 1
  store i64 %i.bcx, ptr %i.bcv, align 8
  %i.bcz = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i32 %i.bcy, ptr %i.bcz, align 8
  store i8 0, ptr %i.aza, align 2
  %.sroa.0253.0.copyload = load i64, ptr %i.ayy, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 760
  %.sroa.5255.0.copyload = load i64, ptr %.sroa.5255.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  %.sroa.7257.0.copyload = load i64, ptr %.sroa.7257.0..sroa_idx, align 8
  %.sroa.7259.0.copyload = load i64, ptr %i.ayz, align 8 ; 3 uses
  %i.bda = icmp ugt i64 %.sroa.7259.0.copyload, 2 ; 3 uses
  %.sink12.i7.i = select i1 %i.bda, i64 %.sroa.5255.0.copyload, i64 %.sroa.7259.0.copyload ; 2 uses
  %spec.select367 = select i1 %i.bda, i64 0, i64 %.sroa.5255.0.copyload
  %spec.select368 = select i1 %i.bda, i64 %.sroa.7259.0.copyload, i64 0 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bdc = getelementptr inbounds nuw i8, ptr %1, i64 785
  %i.bdd = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bde = load ptr, ptr %i.bdd, align 8, !nonnull !177, !align !185, !noundef !177
  %i.bdf = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.experimental.noalias.scope.decl(metadata !58172)
  call void @llvm.experimental.noalias.scope.decl(metadata !58173)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !58174
  %i.bdg = call noundef align 8 dereferenceable_or_null(1696) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1696, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !58174 ; 9 uses
  %i.bdh = icmp eq ptr %i.bdg, null
  br i1 %i.bdh, label %bb.mv, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !182

bb.mv:                                            ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1696) #61, !noalias !58174
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsjcToxTEWQ5H_8smallvec8SmallVecAB1n_j2_EECsgZAIVb0XKpv_9ssservice.exit
  store i64 1, ptr %i.bdg, align 8, !noalias !58175
  %.sroa.4.0..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx25.i.i.i, align 8, !noalias !58175
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 16 ; 3 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..sroa_idx26.i.i.i, align 8, !noalias !58175
  %.sroa.6.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx27.i.i.i, align 8, !noalias !58175
  %.sroa.729.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 1656
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 1688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.729.0..sroa_idx.i.i.i, i8 0, i64 32, i1 false), !noalias !58175
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !58175
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdg, i64 1689
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !noalias !58175
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !58176
  %i.bdi = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !58176 ; 10 uses
  %i.bdj = icmp eq ptr %i.bdi, null
  br i1 %i.bdj, label %bb.mw, label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E3newCsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !182

bb.mw:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #61, !noalias !58176
  unreachable

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E3newCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.bdk = ptrtoint ptr %.sroa.5.0..sroa_idx26.i.i.i to i64
  store i64 1, ptr %i.bdi, align 8, !noalias !58175
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !58175
  %.sroa.535.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 16
  store ptr %i.bdg, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !noalias !58175
  %.sroa.636.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 24
  store ptr null, ptr %.sroa.636.0..sroa_idx.i.i.i, align 8, !noalias !58175
  %.sroa.738.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 40
  store i64 0, ptr %.sroa.738.0..sroa_idx.i.i.i, align 8, !noalias !58175
end_hunk_0
begin_hunk_1_@_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice:bb.a
  store i64 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !93633
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !93635
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  call void @_RNvXsf_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ah) #52, !noalias !93634
  store i8 0, ptr %i.d, align 1, !noalias !93634
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93634
  br label %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1Q_8response8ResponseNtNtNtB12_4body8incoming8IncomingEENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit

_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1Q_8response8ResponseNtNtNtB12_4body8incoming8IncomingEENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h, %bb.j, %bb.m, %bb.p
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.d) #52
  br label %bb.q

bb.q:                                             ; preds = %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1Q_8response8ResponseNtNtNtB12_4body8incoming8IncomingEENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB10_4body8incoming8IncomingEINtNtB1O_8response8ResponseB2n_EENtNtB7_9unbounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [288 x i8], align 8               ; 6 uses
  %i.b = alloca [288 x i8], align 8               ; 6 uses
  %i.c = alloca [3 x i8], align 4                 ; 8 uses
  %i.d = alloca [2 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !198, !noundef !177
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread
    i8 1, label %bb.b
  ], !prof !225

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52
  store i8 0, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i8, ptr %i.h, align 4, !range !180, !noundef !177 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 69 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  br i1 %i.j, label %bb.d, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  tail call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i24 0, ptr %i.c, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.m) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -2, ptr %i.n, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.l, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.e ], [ %i.l, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i24 0, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit, %bb.a
  %.sroa.03.06.i17.off8 = phi i8 [ %i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit ], [ 0, %bb.a ]
  %.sroa.03.06.i17.off16 = phi i8 [ %i.l, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit ], [ 0, %bb.a ]
  store i8 %.sroa.03.06.i17.off8, ptr %i.d, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sroa.03.06.i17.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !177, !noundef !177 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93640
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  call fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB10_4body8incoming8IncomingEINtNtB1O_8response8ResponseB2n_EEE3popCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(288) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.t) #52, !noalias !93640
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.v = load i64, ptr %i.u, align 8, !range !240, !noalias !93640, !noundef !177
  switch i64 %i.v, label %bb.o [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93640
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.x = load ptr, ptr %2, align 8, !noalias !93640, !nonnull !177, !align !185, !noundef !177
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x) #52, !noalias !93640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93640
  call fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB10_4body8incoming8IncomingEINtNtB1O_8response8ResponseB2n_EEE3popCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(288) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.t) #52, !noalias !93640
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.z = load i64, ptr %i.y, align 8, !range !240, !noalias !93640, !noundef !177
  switch i64 %i.z, label %bb.l [
    i64 -2, label %bb.g
    i64 -1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93640
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 440
  %i.ab = load i8, ptr %i.aa, align 8, !range !180, !noalias !93640, !noundef !177
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -2, ptr %i.ad, align 8, !alias.scope !93639
  br label %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.af = call noundef zeroext i1 @_RNvXsf_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.ae) #52, !noalias !93640
  br i1 %i.af, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.d, align 1, !noalias !93640
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -1, ptr %.sroa.35.0..sroa_idx.i, align 8, !alias.scope !93639
  br label %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %bb.f
  store i8 0, ptr %i.d, align 1, !noalias !93640
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -1, ptr %.sroa.32.0..sroa_idx.i, align 8, !alias.scope !93639
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.a, i64 288, i1 false), !noalias !93641
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  call void @_RNvXsf_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ag) #52, !noalias !93640
  store i8 0, ptr %i.d, align 1, !noalias !93640
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93640
  br label %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit

bb.n:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread
  store i8 0, ptr %i.d, align 1, !noalias !93640
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !93639
  br label %bb.p

bb.o:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false), !noalias !93641
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  call void @_RNvXsf_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ah) #52, !noalias !93640
  store i8 0, ptr %i.d, align 1, !noalias !93640
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93640
  br label %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit

_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h, %bb.j, %bb.m, %bb.p
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.d) #52
  br label %bb.q

bb.q:                                             ; preds = %_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB12_4body8incoming8IncomingEINtNtB1Q_8response8ResponseB2p_EENtNtB9_9unbounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E21reserve_one_uncheckedCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93644, !noundef !177 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit, label %.thread

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !93644, !noundef !177 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.d, !prof !349

.thread:                                          ; preds = %bb.a, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit
  %.sink12.i47 = phi i64 [ %i.e, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit ], [ %i.b, %bb.a ]
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i47, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8try_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.i) #52 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 -1, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit
    i64 0, label %bb.c
  ], !prof !93645

bb.b:                                             ; preds = %.thread
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #61
  unreachable

bb.c:                                             ; preds = %.thread
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #62
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.thread
  ret void

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2343) #62
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E8try_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !177 ; 6 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !177
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val71   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !186

bb.a:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2344, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2345) #62
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit
  %i.j = icmp ult i64 %1, 3
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not45 = icmp eq i64 %i.c, %1
  br i1 %.not45, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.l, !prof !93648

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit
  %or.cond66 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond66, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47, label %bb.l, !prof !93648

bb.g:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.l = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #52 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #52 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.k, !prof !93648

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93649
  store i64 0, ptr %i.a, align 8, !noalias !93649
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1977, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #62, !noalias !93649
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #52
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47, %bb.g, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjcToxTEWQ5H_8smallvec10deallocateINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice.exit47 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E21reserve_one_uncheckedCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !93658, !noundef !177 ; 5 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !93658, !noundef !177 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !349

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !93659, !nonnull !177, !noundef !177
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !93660
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93660)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.c, %bb.b
  %.pn27 = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i42225 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ]
  %i.n = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 2, %bb.c ] ; 3 uses
  %.pn = sub nuw nsw i64 64, %.pn27
  %i.o = shl nuw i64 1, %.pn                      ; 4 uses
  %.not.i = icmp ult i64 %i.o, %i.n
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !186

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2344, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2345) #62, !noalias !93660
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsgZAIVb0XKpv_9ssservice.exit.i
  %i.p = icmp samesign ult i64 %.sink12.i42225, 2
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.o, %.sink.i.i
  br i1 %.not48.i, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, -9223372036854775807) %i.o, i64 17) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 0         ; 4 uses
  %i.s = extractvalue { i64, i1 } %i.q, 1
  %i.t = icmp slt i64 %i.r, 0
  %or.cond.not.i = or i1 %i.s, %i.t
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i, !prof !188

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i
  %i.u = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i.i, i64 17) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.u, 1
  %i.x = icmp slt i64 %i.v, 0
  %or.cond67.not.i = or i1 %i.w, %i.x
  br i1 %or.cond67.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit50.i, !prof !188

bb.j:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !93660
  %i.y = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef 1) #52, !noalias !93660 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %bb.l

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit50.i: ; preds = %bb.i
  %i.aa = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 1, i64 noundef %i.r) #52 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit50.i
  %.sroa.032.0.i = phi ptr [ %i.y, %bb.l ], [ %i.aa, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit50.i ]
  store i8 1, ptr %0, align 8, !alias.scope !93660
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !93660
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.032.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !93660
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !93660
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = mul nuw nsw i64 %i.n, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.sink12.i.i, i64 %i.ac, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i8 0, ptr %0, align 8, !alias.scope !93660
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = mul nuw nsw i64 %i.n, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx.i, ptr nonnull align 1 %.sink12.i.i, i64 %i.ad, i1 false)
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !93660
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i.i, i64 17) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0       ; 3 uses
  %i.ag = extractvalue { i64, i1 } %i.ae, 1
  %i.ah = icmp slt i64 %i.af, 0
  %or.cond.not.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i, !prof !188

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93661
  store i64 0, ptr %i.a, align 8, !noalias !93661
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.af, ptr %i.ai, align 8, !noalias !93661
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1977, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #62, !noalias !93661
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.af, i64 noundef 1) #52
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit

bb.o:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit50.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 1, i64 noundef %i.r) #61
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #62
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsgZAIVb0XKpv_9ssservice.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E6tripleCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2343) #62
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !180, !noundef !177
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !180, !noundef !177
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #60 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.l, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !177 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93665)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !93665, !noundef !177 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !93665 ; 2 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !93665 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ag, %bb.i ] ; 2 uses
  %i.z = sub nuw i64 %i.y, %i.n                   ; 2 uses
  %.not.i = icmp ugt i64 %i.y, %.val6
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.w)
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !93665, !noundef !177
  %i.ab = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr15memrchr_aligned(i8 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z) #52, !noalias !93666 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = extractvalue { i64, i64 } %i.ab, 1      ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.ae, %i.n                     ; 5 uses
  %.not15.i = icmp ult i64 %i.ag, %i.v
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !93665
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !93665
  %i.ah = icmp ult i64 %i.ag, %i.n
  br i1 %i.ah, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ai = sub nuw i64 %i.ag, %i.v                 ; 5 uses
  %i.aj = add i64 %i.ai, %i.u                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %.not16.i = icmp ugt i64 %i.aj, %.val6
end_hunk_1
begin_hunk_2_@llvm.ucmp.i32.i32
!149 = distinct !{null, null, null, null, null, null, null, null, null, null}
!150 = distinct !{null, null, null}
!151 = distinct !{null, null, null}
!152 = distinct !{null, null, null}
!153 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!154 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!155 = distinct !{null, null}
!156 = distinct !{null, null, null}
!157 = distinct !{null, null, null, null, null, null}
!158 = distinct !{null, null, null, null, null, null}
!159 = distinct !{null, null, null, null, null, null}
!160 = distinct !{null, null, null, null, null, null}
!161 = distinct !{null, null, null, null, null, null}
!162 = distinct !{null, null, null, null, null, null}
!163 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!164 = distinct !{null, null, null, null, null, null}
!165 = distinct !{null, null, null}
!166 = distinct !{null, ptr @_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind}
!167 = distinct !{null, ptr @_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind}
!168 = distinct !{ptr @_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withNtNtCs2dlyTE5y14r_2h25error5ErrorECsgZAIVb0XKpv_9ssservice, null, null}
!169 = distinct !{null, null}
!170 = distinct !{null}
!171 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!172 = !{i32 8, !"PIC Level", i32 2}
!173 = !{i32 7, !"PIE Level", i32 2}
!174 = !{i32 2, !"RtLibUseGOT", i32 1}
!175 = !{i32 7, !"uwtable", i32 2}
!176 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!177 = !{}
!178 = !{i16 0, i16 2}
!179 = !{i64 0, i64 -9223372036854775808}
!180 = !{i8 0, i8 2}
!181 = !{i64 0, i64 2}
!182 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!183 = !{i64 1, i64 536870913}
!184 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!185 = !{i64 8}
!186 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!187 = !{i8 0, i8 12}
!188 = !{!"branch_weights", i32 2002, i32 2000}
!189 = !{i64 -1, i64 -9223372036854775808}
!190 = !{i64 0, i64 3}
!191 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!192 = !{i32 0, i32 3}
!193 = !{i64 1, i64 0}
!194 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!195 = !{i32 0, i32 2}
!196 = !{i32 0, i32 10}
!197 = !{i32 -1, i32 1000000000}
!198 = !{i8 0, i8 3}
!199 = !{i64 -1, i64 -9223372036854775806}
!200 = !{!"branch_weights", i32 4000000, i32 4001}
!201 = !{i8 0, i8 81}
!202 = !{!"branch_weights", i32 1073205, i32 2146410443}
!203 = !{!"branch_weights", i32 2146410443, i32 1073205}
!204 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !{!"branch_weights", i32 4001, i32 4000000}
!207 = !{i8 -1, i8 3}
!208 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!209 = !{i64 0, i64 4}
!210 = !{i64 64}
!211 = !{!12}
!212 = !{i64 0, i64 -9223372036854775805}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = !{!"llvm.loop.isvectorized", i32 1}
!215 = !{i64 0, i64 5}
!216 = !{i64 -1, i64 -9223372036854775802}
!217 = !{i8 -1, i8 12}
!218 = !{i8 0, i8 9}
!219 = !{i8 0, i8 7}
!220 = !{i8 -1, i8 17}
!221 = !{!"branch_weights", !"expected", i32 2145336165, i32 2147483}
!222 = !{i64 4}
!223 = !{!"branch_weights", !"expected", i32 2145766842, i32 1716806}
!224 = !{i32 0, i32 -1}
!225 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!226 = !{i64 0, i64 -9223372036854775804}
!227 = !{i8 0, i8 5}
!228 = !{!"address", !"read_provenance"}
!229 = !{i16 -2, i16 3}
!230 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!231 = !{i8 0, i8 4}
!232 = !{i8 0, i8 6}
!233 = !{i32 -3, i32 3}
!234 = !{i64 -1, i64 3}
!235 = !{i8 -1, i8 13}
!236 = !{i128 0, i128 2}
!237 = !{i16 0, i16 3}
!238 = !{i16 -1, i16 3}
!239 = !{i8 -1, i8 18}
!240 = !{i64 -2, i64 3}
!241 = !{i64 -3, i64 3}
!242 = !{i32 -1, i32 3}
!243 = !{i16 -1, i16 29}
!244 = !{i8 -1, i8 22}
!245 = !{i64 -2, i64 -9223372036854775808}
!246 = !{i64 2}
!247 = !{i64 -1, i64 6}
!248 = !{i128 0, i128 3}
!249 = !{i8 0, i8 10}
!250 = !{!"branch_weights", i32 4001, i32 1}
!251 = !{i128 0, i128 4}
!252 = !{i16 0, i16 4}
!253 = !{i8 0, i8 8}
!254 = !{!30}
!255 = !{!37}
!256 = !{!40}
!257 = !{i32 0, i32 4}
!258 = !{i8 0, i8 11}
!259 = !{i8 0, i8 14}
!260 = !{i8 0, i8 13}
!261 = !{i8 0, i8 18}
!262 = !{!52, !50}
!263 = !{!54}
!264 = !{!58, !56}
!265 = !{i64 -1, i64 5}
!266 = !{!63}
!267 = !{i64 0, i64 6}
!268 = !{!77}
!269 = !{i64 0, i64 -9223372036854775806}
!270 = !{i8 0, i8 22}
!271 = !{i64 -1, i64 -9223372036854775787}
!272 = !{i64 0, i64 -9223372036854775786}
!273 = !{i64 0, i64 14}
!274 = !{i16 0, i16 29}
!275 = !{i64 -1, i64 -9223372036854775803}
!276 = !{i64 -2, i64 -9223372036854775806}
!277 = !{i64 -3, i64 -9223372036854775808}
!278 = !{i64 -1, i64 -9223372036854775804}
!279 = !{i16 0, i16 8}
!280 = !{i16 0, i16 12}
!281 = !{i64 0, i64 -9223372036854775781}
!282 = !{i64 0, i64 9}
!283 = !{i8 0, i8 23}
!284 = !{i8 -1, i8 37}
!285 = !{i64 -1, i64 4}
!286 = !{i8 0, i8 25}
!287 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!288 = !{!"branch_weights", i32 1, i32 4001}
!289 = !{!"branch_weights", !"expected", i32 3517879, i32 2143965769}
!290 = !{!"branch_weights", i32 1, i32 715827882, i32 0, i32 715827882, i32 715827882}
!291 = !{i8 0, i8 44}
!292 = !{!"llvm.loop.peeled.count", i32 1}
!293 = !{i64 0, i64 -9223372036854775807}
!294 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!295 = !{i16 0, i16 39}
!296 = !{i16 0, i16 7}
!297 = !{i32 0, i32 1000000000}
!298 = !{!"branch_weights", i32 0, i32 2000, i32 2000, i32 2000, i32 1}
!299 = !{i64 -3, i64 4}
!300 = !{i8 1, i8 4}
!301 = !{i64 -2, i64 5}
!302 = !{i8 0, i8 41}
!303 = !{i64 16}
!304 = !{!"branch_weights", i32 6000, i32 1}
!305 = !{!"branch_weights", i32 0, i32 6000, i32 1, i32 1}
!306 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!307 = !{i8 -2, i8 3}
!308 = !{i8 -2, i8 13}
!309 = !{!"branch_weights", i32 2548628, i32 2144935020}
!310 = !{!"branch_weights", i32 0, i32 2000, i32 2000, i32 1}
!311 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1}
!312 = !{i8 -2, i8 5}
!313 = !{!"branch_weights", i32 2000, i32 2001, i32 2001, i32 1}
!314 = !{i32 -2, i32 5}
!315 = !{i32 0, i32 5}
!316 = !{i64 -2, i64 7}
!317 = !{i64 0, i64 -9223372036854775795}
!318 = !{i64 -1, i64 -9223372036854775795}
!319 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!320 = !{!"branch_weights", !"expected", i32 1206797, i32 2146276851}
!321 = !{!"llvm.loop.unswitch.partial.disable"}
!322 = !{!"branch_weights", i32 1, i32 1999}
!323 = !{!"branch_weights", i32 0, i32 1}
!324 = !{i8 -2, i8 12}
!325 = !{i16 0, i16 21}
!326 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!327 = !{!"branch_weights", i32 0, i32 2000, i32 2000, i32 2000}
!328 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!329 = !{i8 -1, i8 41}
!330 = !{ptr @_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind}
!331 = !{!"branch_weights", i32 1, i32 4001, i32 2000, i32 2000}
!332 = !{!"branch_weights", i32 2, i32 0, i32 1073741824, i32 1073741823}
!333 = !{!"branch_weights", i32 8, i32 24}
!334 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!335 = !{i16 -2, i16 6}
!336 = !{i16 1, i16 0}
!337 = !{i8 -2, i8 8}
!338 = !{!"branch_weights", i32 2146625084, i32 858564}
!339 = !{!"branch_weights", i32 2146625083, i32 858565}
!340 = !{i8 0, i8 17}
!341 = !{i8 -1, i8 9}
!342 = !{i16 -1, i16 10}
!343 = !{!"branch_weights", i32 1, i32 127}
!344 = !{i16 0, i16 10}
!345 = !{!"branch_weights", i32 127, i32 255873}
!346 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!347 = !{i8 -2, i8 9}
!348 = !{!"branch_weights", !"expected", i32 1274872, i32 2146208776}
!349 = !{!"branch_weights", i32 -8583494, i32 8583493}
!350 = !{!"branch_weights", !"expected", i32 1431058, i32 2146052590}
!351 = !{!"branch_weights", !"expected", i32 8424812, i32 2139058836}
!352 = !{i8 -3, i8 5}
!353 = !{i8 0, i8 75}
!354 = !{i8 -3, i8 13}
!355 = !{!"branch_weights", !"expected", i32 4708254, i32 2142775394}
!356 = !{i16 -1, i16 5}
!357 = !{i8 0, i8 21}
!358 = distinct !{!358, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice"}
!359 = distinct !{!359, !358, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice: argument 1"}
!360 = distinct !{!360, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!361 = distinct !{!361, !360, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!362 = distinct !{!362, i1 true, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!363 = distinct !{!363, !362, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!364 = distinct !{!364, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!365 = distinct !{!365, !364, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!366 = distinct !{!366, !364, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!367 = distinct !{!367, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!368 = distinct !{!368, !367, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!369 = distinct !{!369, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!370 = distinct !{!370, !369, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!371 = distinct !{!371, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!372 = distinct !{!372, !371, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!373 = distinct !{!373, !360, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!374 = distinct !{!374, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!375 = distinct !{!375, !374, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!376 = distinct !{!376, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!377 = distinct !{!377, !376, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!378 = distinct !{!378, !376, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!379 = distinct !{!379, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!380 = distinct !{!380, !379, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!381 = distinct !{!381, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!382 = distinct !{!382, !381, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!383 = distinct !{!383, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!384 = distinct !{!384, !383, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!385 = distinct !{!385, !374, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!386 = distinct !{!386, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice"}
!387 = distinct !{!387, !386, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 1"}
!388 = distinct !{!388, !386, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 0"}
!389 = distinct !{!389, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice"}
!390 = distinct !{!390, !389, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 1"}
!391 = distinct !{!391, !389, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!392 = !{!359}
!393 = !{!361}
!394 = !{!372, !370, !368, !366, !365, !363}
!395 = !{!368}
!396 = !{!370}
!397 = !{!372}
!398 = !{!373}
!399 = !{!373, !372, !370, !368}
!400 = !{!366, !365, !363}
!401 = !{!375}
!402 = !{!384, !382, !380, !378, !377, !363}
!403 = !{!380}
!404 = !{!382}
!405 = !{!384}
!406 = !{!385}
!407 = !{!385, !384, !382, !380}
!408 = !{!378, !377, !363}
!409 = !{!387}
!410 = !{!388, !387}
!411 = !{!390}
!412 = !{!391}
!413 = distinct !{!413, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice"}
!414 = distinct !{!414, !413, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice: argument 1"}
!415 = distinct !{!415, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!416 = distinct !{!416, !415, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!417 = distinct !{!417, i1 true, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_3tun3udp19UdpTunInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!418 = distinct !{!418, !417, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_3tun3udp19UdpTunInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!419 = distinct !{!419, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!420 = distinct !{!420, !419, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!421 = distinct !{!421, !419, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!422 = distinct !{!422, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!423 = distinct !{!423, !422, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!424 = distinct !{!424, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_3tun3udp19UdpTunInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!425 = distinct !{!425, !424, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_3tun3udp19UdpTunInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!426 = distinct !{!426, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_3tun3udp19UdpTunInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!427 = distinct !{!427, !426, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_3tun3udp19UdpTunInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!428 = distinct !{!428, !415, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!429 = distinct !{!429, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!430 = distinct !{!430, !429, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!431 = distinct !{!431, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!432 = distinct !{!432, !431, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!433 = distinct !{!433, !431, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_3tun3udp19UdpTunInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!434 = distinct !{!434, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!435 = distinct !{!435, !434, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!436 = distinct !{!436, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_3tun3udp19UdpTunInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!437 = distinct !{!437, !436, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_3tun3udp19UdpTunInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!438 = distinct !{!438, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_3tun3udp19UdpTunInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!439 = distinct !{!439, !438, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_3tun3udp19UdpTunInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!440 = distinct !{!440, !429, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!441 = distinct !{!441, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice"}
!442 = distinct !{!442, !441, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 1"}
!443 = distinct !{!443, !441, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 0"}
!444 = distinct !{!444, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice"}
!445 = distinct !{!445, !444, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 1"}
!446 = distinct !{!446, !444, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!447 = !{!414}
!448 = !{!416}
!449 = !{!427, !425, !423, !421, !420, !418}
!450 = !{!423}
!451 = !{!425}
!452 = !{!427}
!453 = !{!428}
!454 = !{!428, !427, !425, !423}
!455 = !{!421, !420, !418}
!456 = !{!430}
!457 = !{!439, !437, !435, !433, !432, !418}
!458 = !{!435}
!459 = !{!437}
!460 = !{!439}
!461 = !{!440}
!462 = !{!440, !439, !437, !435}
!463 = !{!433, !432, !418}
!464 = !{!442}
!465 = !{!443, !442}
!466 = !{!445}
!467 = !{!446}
!468 = distinct !{!468, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice"}
!469 = distinct !{!469, !468, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice: argument 1"}
!470 = distinct !{!470, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!471 = distinct !{!471, !470, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!472 = distinct !{!472, i1 true, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!473 = distinct !{!473, !472, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!474 = distinct !{!474, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!475 = distinct !{!475, !474, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!476 = distinct !{!476, !474, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!477 = distinct !{!477, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!478 = distinct !{!478, !477, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!480 = distinct !{!480, !479, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!481 = distinct !{!481, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!482 = distinct !{!482, !481, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!483 = distinct !{!483, !470, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!484 = distinct !{!484, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!485 = distinct !{!485, !484, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!486 = distinct !{!486, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!487 = distinct !{!487, !486, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!488 = distinct !{!488, !486, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!489 = distinct !{!489, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!490 = distinct !{!490, !489, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!491 = distinct !{!491, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!492 = distinct !{!492, !491, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_5redir8udprelay21UdpRedirInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!493 = distinct !{!493, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!494 = distinct !{!494, !493, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_5redir8udprelay21UdpRedirInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!495 = distinct !{!495, !484, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice"}
!497 = distinct !{!497, !496, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 1"}
!498 = distinct !{!498, !496, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE6removeCsgZAIVb0XKpv_9ssservice: argument 0"}
!499 = distinct !{!499, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice"}
!500 = distinct !{!500, !499, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 1"}
!501 = distinct !{!501, !499, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!502 = !{!469}
!503 = !{!471}
!504 = !{!482, !480, !478, !476, !475, !473}
!505 = !{!478}
!506 = !{!480}
!507 = !{!482}
!508 = !{!483}
!509 = !{!483, !482, !480, !478}
!510 = !{!476, !475, !473}
!511 = !{!485}
!512 = !{!494, !492, !490, !488, !487, !473}
!513 = !{!490}
!514 = !{!492}
!515 = !{!494}
!516 = !{!495}
!517 = !{!495, !494, !492, !490}
!518 = !{!488, !487, !473}
!519 = !{!497}
!520 = !{!498, !497}
!521 = !{!500}
!522 = !{!501}
!523 = distinct !{!523, i1 true, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice"}
!524 = distinct !{!524, !523, !"_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice: argument 1"}
!525 = distinct !{!525, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!526 = distinct !{!526, !525, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!527 = distinct !{!527, i1 true, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!528 = distinct !{!528, !527, !"_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1f_4iter6traits8iterator8Iterator8try_folduNCINvNvB22_8position5checkRB19_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB3t_8LruCacheB19_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB4q_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB19_E0E0INtNtNtB1f_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!529 = distinct !{!529, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!530 = distinct !{!530, !529, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!531 = distinct !{!531, !529, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!532 = distinct !{!532, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!533 = distinct !{!533, !532, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!534 = distinct !{!534, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!535 = distinct !{!535, !534, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!536 = distinct !{!536, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!537 = distinct !{!537, !536, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!538 = distinct !{!538, !525, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 0"}
!539 = distinct !{!539, i1 true, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq"}
!540 = distinct !{!540, !539, !"_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq: argument 1"}
!541 = distinct !{!541, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice"}
!542 = distinct !{!542, !541, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 1"}
!543 = distinct !{!543, !541, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtBa_3net11socket_addr10SocketAddrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1m_8position5checkRBJ_NCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2M_8LruCacheBJ_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3I_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBJ_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECsgZAIVb0XKpv_9ssservice: argument 0"}
!544 = distinct !{!544, i1 true, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice"}
!545 = distinct !{!545, !544, !"_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRNtNtNtBb_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB2y_8LruCacheB1Q_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1Q_E0E0INtB7_5FnMutTuB1P_EE8call_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!546 = distinct !{!546, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice"}
!547 = distinct !{!547, !546, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8position5checkRNtNtNtBe_3net11socket_addr10SocketAddrNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB1Z_8LruCacheB1h_INtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2W_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyB1h_E0E0CsgZAIVb0XKpv_9ssservice: argument 0"}
!548 = distinct !{!548, i1 true, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice"}
!549 = distinct !{!549, !548, !"_RNCINvMCshXcoQFZsaxY_14lru_time_cacheINtB5_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1P_6tunnel8udprelay22TunnelUdpInboundWriterEE10update_keyBO_E0CsgZAIVb0XKpv_9ssservice: argument 0"}
end_hunk_2
begin_hunk_3_@llvm.ucmp.i32.i32
!57964 = !{!57333, !57331, !57325, !57320, !57318, !57319, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57965 = !{!57335, !57333, !57331, !57325, !57320, !57318, !57319, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57966 = !{!57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57967 = !{!57337, !57335, !57333, !57331, !57325, !57320, !57318, !57319, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57968 = !{!57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57969 = !{!57339}
!57970 = !{!57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57971 = !{!57342}
!57972 = !{!57342, !57339}
!57973 = !{!57345, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57974 = !{!57352, !57350, !57349, !57347, !57345, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57975 = !{!57354, !57352, !57350, !57349, !57347, !57345, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57976 = !{!57347, !57345, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57977 = !{!57345, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57319, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57978 = !{!57356}
!57979 = !{!57356, !57342, !57339}
!57980 = !{!57356, !57357, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57981 = !{!57364, !57362, !57361, !57359, !57356, !57357, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57982 = !{!57366, !57364, !57362, !57361, !57359, !57356, !57357, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57983 = !{!57359, !57356, !57357, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57984 = !{!57356, !57357, !57342, !57343, !57340, !57339, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57319, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57985 = !{!57357, !57343, !57340, !57337, !57335, !57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57986 = !{!57333, !57331, !57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57987 = !{!57325, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57988 = !{!57368}
!57989 = !{!57370}
!57990 = !{!57372}
!57991 = !{!57372, !57370, !57368}
!57992 = !{!57372, !57370, !57368, !57320, !57318, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57993 = !{!57374}
!57994 = !{!57375}
!57995 = !{!57374, !57375}
!57996 = !{!57379, !57377, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57997 = !{!57382, !57381, !57223, !57222, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57998 = !{!57389, !57388, !57386, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!57999 = !{!57391, !57389, !57388, !57386, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58000 = !{!57393}
!58001 = !{!57394}
!58002 = !{!57393, !57394, !57220, !57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58003 = !{!57393, !57394, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58004 = !{!57396, !57393, !57394, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58005 = !{!57393, !57394}
!58006 = !{!57400, !57398}
!58007 = !{!57402, !57401, !57220, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58008 = !{!57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58009 = !{!57219, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58010 = !{!57404}
!58011 = !{!57405, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58012 = !{!57405, !57404, !57406, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58013 = !{!57405, !57404, !57406, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58014 = !{!57405, !57406, !57217, !57216, !57214, !57213, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58015 = !{!57408}
!58016 = !{!57410}
!58017 = !{!57410, !57408}
!58018 = !{!57410, !57408, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58019 = !{!57412}
!58020 = !{!57414}
!58021 = !{!57416}
!58022 = !{!57418}
!58023 = !{!57418, !57416, !57414, !57412}
!58024 = !{!57420}
!58025 = !{!57420, !57418, !57416, !57414, !57412}
!58026 = !{!57420, !57418, !57416, !57414, !57412, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58027 = !{!57422, !57420, !57418, !57416, !57414, !57412, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58028 = !{!57424}
!58029 = !{!57426}
!58030 = !{!57426, !57424, !57420, !57418, !57416, !57414, !57412}
!58031 = !{!57426, !57424, !57420, !57418, !57416, !57414, !57412, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58032 = !{!57428}
!58033 = !{!57430}
!58034 = !{!57430, !57428, !57420, !57418, !57416, !57414, !57412}
!58035 = !{!57430, !57428, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58036 = !{!57216, !57213}
!58037 = !{!57432}
!58038 = !{!57433, !57432}
!58039 = !{!57433}
!58040 = !{!57435}
!58041 = !{!57437}
!58042 = !{!57437, !57435}
!58043 = !{!57437, !57435, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58044 = !{!57439}
!58045 = !{!57441}
!58046 = !{!57441, !57439}
!58047 = !{!57443}
!58048 = !{!57445}
!58049 = !{!57447}
!58050 = !{!57449}
!58051 = !{!57449, !57447, !57445, !57443, !57441, !57439}
!58052 = !{!57449, !57447, !57445, !57443, !57441, !57439, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58053 = !{!57451}
!58054 = !{!57451, !57445, !57443, !57441, !57439}
!58055 = !{!57453}
!58056 = !{!57453, !57451, !57445, !57443, !57441, !57439}
!58057 = !{!57453, !57451, !57445, !57443, !57441, !57439, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58058 = !{!57455}
!58059 = !{!57457}
!58060 = !{!57457, !57455}
!58061 = !{!57457, !57455, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58062 = !{!57459}
!58063 = !{!57461}
!58064 = !{!57463}
!58065 = !{!57465}
!58066 = !{!57465, !57463, !57461, !57459}
!58067 = !{!57467}
!58068 = !{!57467, !57465, !57463, !57461, !57459}
!58069 = !{!57467, !57465, !57463, !57461, !57459, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58070 = !{!57469, !57467, !57465, !57463, !57461, !57459, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58071 = !{!57471}
!58072 = !{!57473}
!58073 = !{!57473, !57471, !57467, !57465, !57463, !57461, !57459}
!58074 = !{!57473, !57471, !57467, !57465, !57463, !57461, !57459, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58075 = !{!57475}
!58076 = !{!57477}
!58077 = !{!57477, !57475, !57467, !57465, !57463, !57461, !57459}
!58078 = !{!57477, !57475, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58079 = !{!57479}
!58080 = !{!57481}
!58081 = !{!57481, !57479}
!58082 = !{!57481, !57479, !57217, !57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58083 = !{!57214, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58084 = !{!57201, !57202, !57198, !57199, !57120, !57196}
!58085 = !{!57485, !57483, !57205, !57201, !57202, !57204, !57198, !57199, !57203, !57120, !57196}
!58086 = !{!57489, !57487}
!58087 = !{!57487}
!58088 = !{!57490}
!58089 = !{!57492}
!58090 = !{!57494}
!58091 = !{!57494, !57492}
!58092 = !{!57496}
!58093 = !{!57498}
!58094 = !{!57498, !57496}
!58095 = !{!57500, !57498, !57496}
!58096 = !{!57500}
!58097 = !{!57502}
!58098 = !{!57504}
!58099 = !{!57504, !57502, !57496}
!58100 = !{!57506}
!58101 = !{!57508}
!58102 = !{!57508, !57506}
!58103 = !{!57510}
!58104 = !{!57512}
!58105 = !{!57512, !57510, !57514}
!58106 = !{!57516, !57508, !57506}
!58107 = !{!57512, !57510, !57516, !57508, !57506}
!58108 = !{!57518}
!58109 = !{!57520}
!58110 = !{!57520, !57518, !57508, !57506}
!58111 = !{!57520, !57518}
!58112 = !{!57524, !57522}
!58113 = !{!"branch_weights", i32 1, i32 1}
!58114 = !{!57528, !57526}
!58115 = !{!57536, !57534, !57532, !57530}
!58116 = !{!57538}
!58117 = !{!57540}
!58118 = !{!57542}
!58119 = !{!57542, !57540}
!58120 = !{!57544}
!58121 = !{!57546}
!58122 = !{!57546, !57544}
!58123 = !{!57548}
!58124 = !{!57550}
!58125 = !{!57550, !57548}
!58126 = !{!57552, !57550, !57548}
!58127 = !{!57552}
!58128 = !{!57554}
!58129 = !{!57556}
!58130 = !{!57556, !57554, !57548}
!58131 = !{!57558}
!58132 = !{!57560}
!58133 = !{!57560, !57558}
!58134 = !{!57562}
!58135 = !{!57564}
!58136 = !{!57564, !57562, !57566}
!58137 = !{!57568, !57560, !57558}
!58138 = !{!57564, !57562, !57568, !57560, !57558}
!58139 = !{!57570}
!58140 = !{!57572}
!58141 = !{!57572, !57570, !57560, !57558}
!58142 = !{!57572, !57570}
!58143 = !{!57576, !57574}
!58144 = !{!57578}
!58145 = !{!57580}
!58146 = !{!57580, !57578}
!58147 = !{!57584, !57582}
!58148 = !{!57582}
!58149 = !{!57588, !57586}
!58150 = !{!57590}
!58151 = !{!57592}
!58152 = !{!57592, !57590}
!58153 = !{!57594}
!58154 = !{!57598, !57596}
!58155 = !{!57602, !57600}
!58156 = !{!57604}
!58157 = !{!57606}
!58158 = !{!57610, !57608}
!58159 = !{!57608}
!58160 = !{!57614, !57612}
!58161 = !{!57618, !57616}
!58162 = !{!57622, !57620}
!58163 = !{!57624}
!58164 = !{!"branch_weights", i32 1395946, i32 2146087702, i32 0}
!58165 = !{!57626, !57624}
!58166 = !{!57628, !57624, !57618, !57616}
!58167 = !{!57628, !57618, !57616}
!58168 = !{!57630, !57624, !57618, !57616}
!58169 = !{!57630, !57618, !57616}
!58170 = !{!57634, !57632, !57624}
!58171 = !{!57632, !57624}
!58172 = !{!57636}
!58173 = !{!57638}
!58174 = !{!57644, !57642, !57638, !57640, !57636, !57639}
!58175 = !{!57642, !57638, !57640, !57636, !57639}
!58176 = !{!57646, !57642, !57638, !57640, !57636, !57639}
!58177 = !{!57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58178 = !{!57650, !57648, !57638, !57636}
!58179 = !{!57652}
!58180 = !{!57654, !57652}
!58181 = !{!57656, !57654, !57652}
!58182 = !{!57659, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58183 = !{!57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58184 = !{!57666, !57665, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58185 = !{!57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58186 = !{!57668}
!58187 = !{!57672, !57670, !57668, !57669, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58188 = !{!57674, !57672, !57670, !57668, !57669, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58189 = !{!57676, !57672, !57670, !57668, !57669, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58190 = !{!57670, !57668, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58191 = !{!57672, !57663, !57662, !57661, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58192 = !{!57682, !57680, !57678, !57652}
!58193 = !{!57638, !57636}
!58194 = !{!57652, !57658, !57657, !57649, !57648}
!58195 = !{!57652, !57658, !57657, !57649, !57648, !57640, !57639}
!58196 = !{!57678}
!58197 = !{!57680}
!58198 = !{!57682}
!58199 = !{!57684}
!58200 = !{!57686}
!58201 = !{!57686, !57684, !57688}
!58202 = !{!57690, !57682, !57680, !57678, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58203 = !{!57686, !57684, !57690, !57682, !57680, !57678, !57659, !57652, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58204 = !{!57692}
!58205 = !{!57694}
!58206 = !{!57694, !57692, !57682, !57680, !57678, !57652}
!58207 = !{!57694, !57692, !57659, !57658, !57657, !57650, !57649, !57648, !57638, !57640, !57636, !57639}
!58208 = !{!57696}
!58209 = !{!57700, !57698}
!58210 = !{!57704, !57702}
!58211 = !{!57702}
!58212 = !{!57706, !57702}
!58213 = !{!57708}
!58214 = !{!57710}
!58215 = !{!57720, !57718, !57716, !57714, !57710, !57712, !57708, !57711}
!58216 = !{!57718, !57716, !57714, !57710, !57712, !57708, !57711}
!58217 = !{!57722, !57718, !57716, !57714, !57710, !57712, !57708, !57711}
!58218 = !{!57726, !57724, !57718, !57716, !57714, !57710, !57712, !57708, !57711}
!58219 = !{!57728}
!58220 = !{!57728, !57710, !57708}
!58221 = !{!57710, !57708}
!58222 = !{!57728, !57710, !57712, !57708, !57711}
!58223 = !{!57730}
!58224 = !{!57730, !57728, !57710, !57708}
!58225 = !{!57730, !57728, !57710, !57712, !57708, !57711}
!58226 = !{!57712, !57711}
!58227 = !{!57710, !57712, !57708, !57711}
!58228 = !{!57740, !57738, !57736, !57734, !57732, !57710, !57712, !57708, !57711}
!58229 = !{!57738, !57736, !57734, !57732, !57710, !57712, !57708, !57711}
!58230 = !{!57744, !57742, !57738, !57736, !57734, !57732, !57710, !57712, !57708, !57711}
!58231 = !{!57752, !57750, !57748, !57746, !57710, !57712, !57708, !57711}
!58232 = !{!57750, !57748, !57746, !57710, !57712, !57708, !57711}
!58233 = !{!57754, !57750, !57748, !57746, !57710, !57712, !57708, !57711}
!58234 = !{!57758, !57756, !57750, !57748, !57746, !57710, !57712, !57708, !57711}
!58235 = !{!57760}
!58236 = !{!57762}
!58237 = !{!57764}
!58238 = !{!57764, !57762}
!58239 = !{!57766}
!58240 = !{!57768}
!58241 = !{!57768, !57766, !57770}
!58242 = !{!57772, !57764, !57762}
!58243 = !{!57768, !57766, !57772, !57764, !57762}
!58244 = !{!57774}
!58245 = !{!57776}
!58246 = !{!57776, !57774, !57764, !57762}
!58247 = !{!57776, !57774}
!58248 = !{!57778}
!58249 = !{!57780}
!58250 = !{!57780, !57778}
!58251 = !{!57782}
!58252 = !{!57784}
!58253 = !{!57784, !57782, !57786}
!58254 = !{!57788, !57780, !57778}
!58255 = !{!57784, !57782, !57788, !57780, !57778}
!58256 = !{!57790}
!58257 = !{!57792}
!58258 = !{!57792, !57790, !57780, !57778}
!58259 = !{!57792, !57790}
!58260 = !{!57794}
!58261 = !{!57796}
!58262 = !{!57796, !57794}
!58263 = !{!57798}
!58264 = !{!57800}
!58265 = !{!57800, !57798, !57802}
!58266 = !{!57804, !57796, !57794}
!58267 = !{!57800, !57798, !57804, !57796, !57794}
!58268 = !{!57806}
!58269 = !{!57808}
!58270 = !{!57808, !57806, !57796, !57794}
!58271 = !{!57808, !57806}
!58272 = !{!57810}
!58273 = !{!57812}
!58274 = !{!57812, !57810}
!58275 = !{!57814}
!58276 = !{!57816}
!58277 = !{!57818}
!58278 = !{!57820}
!58279 = !{!57820, !57818, !57816, !57814, !57812, !57810}
!58280 = !{!57822}
!58281 = !{!57822, !57816, !57814, !57812, !57810}
!58282 = !{!57824}
!58283 = !{!57824, !57822, !57816, !57814, !57812, !57810}
!58284 = distinct !{!58284, i1 true, !"_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultTjNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtB7_6option6OptionNtNtNtBQ_8udprelay7options20UdpSocketControlDataEENtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB24_12proxy_socket16ProxySocketErrorEE13from_residualCsgZAIVb0XKpv_9ssservice"}
!58285 = distinct !{!58285, !58284, !"_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultTjNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtB7_6option6OptionNtNtNtBQ_8udprelay7options20UdpSocketControlDataEENtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB24_12proxy_socket16ProxySocketErrorEE13from_residualCsgZAIVb0XKpv_9ssservice: argument 1"}
!58286 = distinct !{!58286, !58284, !"_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultTjNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtB7_6option6OptionNtNtNtBQ_8udprelay7options20UdpSocketControlDataEENtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtB24_12proxy_socket16ProxySocketErrorEE13from_residualCsgZAIVb0XKpv_9ssservice: argument 0"}
!58287 = !{!58286, !58285}
!58288 = !{!58286}
!58289 = distinct !{!58289, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!58290 = distinct !{!58290, !58289, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!58291 = distinct !{!58291, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!58292 = distinct !{!58292, !58291, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!58293 = distinct !{!58293, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCskKeNVlBCW6x_3tun5error5ErrorE7or_elseuNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB2c_3Tun3run0s_0ECsgZAIVb0XKpv_9ssservice"}
!58294 = distinct !{!58294, !58293, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCskKeNVlBCW6x_3tun5error5ErrorE7or_elseuNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB2c_3Tun3run0s_0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!58295 = distinct !{!58295, !58293, !"_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCskKeNVlBCW6x_3tun5error5ErrorE7or_elseuNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB2c_3Tun3run0s_0ECsgZAIVb0XKpv_9ssservice: argument 1"}
!58296 = distinct !{!58296, i1 true, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s_0CsgZAIVb0XKpv_9ssservice"}
!58297 = distinct !{!58297, !58296, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s_0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58298 = distinct !{!58298, !58296, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s_0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58299 = distinct !{!58299, i1 true, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCskKeNVlBCW6x_3tun5error5ErrorNtB5_12SpecToString14spec_to_stringCsgZAIVb0XKpv_9ssservice"}
!58300 = distinct !{!58300, !58299, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCskKeNVlBCW6x_3tun5error5ErrorNtB5_12SpecToString14spec_to_stringCsgZAIVb0XKpv_9ssservice: argument 1"}
!58301 = distinct !{!58301, !58299, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCskKeNVlBCW6x_3tun5error5ErrorNtB5_12SpecToString14spec_to_stringCsgZAIVb0XKpv_9ssservice: argument 0"}
!58302 = distinct !{!58302, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskKeNVlBCW6x_3tun5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!58303 = distinct !{!58303, !58302, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskKeNVlBCW6x_3tun5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!58304 = distinct !{!58304, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!58305 = distinct !{!58305, !58304, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!58306 = distinct !{!58306, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!58307 = distinct !{!58307, !58306, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!58308 = distinct !{!58308, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!58309 = distinct !{!58309, !58308, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!58310 = distinct !{!58310, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!58311 = distinct !{!58311, !58310, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!58312 = distinct !{!58312, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!58313 = distinct !{!58313, !58312, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!58314 = distinct !{!58314, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringuE6unwrapCsgZAIVb0XKpv_9ssservice"}
!58315 = distinct !{!58315, !58314, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringuE6unwrapCsgZAIVb0XKpv_9ssservice: argument 0"}
!58316 = distinct !{!58316, !58314, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringuE6unwrapCsgZAIVb0XKpv_9ssservice: argument 1"}
!58317 = distinct !{!58317, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!58318 = distinct !{!58318, !58317, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!58319 = distinct !{!58319, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!58320 = distinct !{!58320, !58319, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!58321 = distinct !{!58321, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!58322 = distinct !{!58322, !58321, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!58323 = distinct !{!58323, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!58324 = distinct !{!58324, !58323, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!58325 = distinct !{!58325, i1 true, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run00CsgZAIVb0XKpv_9ssservice"}
!58326 = distinct !{!58326, !58325, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run00CsgZAIVb0XKpv_9ssservice: argument 0"}
!58327 = distinct !{!58327, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!58328 = distinct !{!58328, !58327, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!58329 = distinct !{!58329, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!58330 = distinct !{!58330, !58329, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!58331 = distinct !{!58331, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB14_3Tun3run0s0_0ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!58332 = distinct !{!58332, !58331, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB14_3Tun3run0s0_0ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!58333 = distinct !{!58333, i1 true, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s0_0CsgZAIVb0XKpv_9ssservice"}
!58334 = distinct !{!58334, !58333, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s0_0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58335 = distinct !{!58335, !58331, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB14_3Tun3run0s0_0ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!58336 = distinct !{!58336, !58333, !"_RNCNCNvMs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tunNtB9_3Tun3run0s0_0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58337 = distinct !{!58337, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!58338 = distinct !{!58338, !58337, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtCskKeNVlBCW6x_3tun5async11unix_device11AsyncDeviceENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!58339 = distinct !{!58339, i1 true, !"_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3udpNtB4_6UdpTun11recv_packet0CsgZAIVb0XKpv_9ssservice"}
!58340 = distinct !{!58340, !58339, !"_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3udpNtB4_6UdpTun11recv_packet0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58341 = distinct !{!58341, !58339, !"_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3udpNtB4_6UdpTun11recv_packet0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58342 = distinct !{!58342, i1 true, !"_RNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB4_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv0CsgZAIVb0XKpv_9ssservice"}
!58343 = distinct !{!58343, !58342, !"_RNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB4_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58344 = distinct !{!58344, !58342, !"_RNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB4_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58345 = distinct !{!58345, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB11_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!58346 = distinct !{!58346, !58345, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB11_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!58347 = distinct !{!58347, i1 true, !"_RNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB6_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00CsgZAIVb0XKpv_9ssservice"}
!58348 = distinct !{!58348, !58347, !"_RNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB6_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00CsgZAIVb0XKpv_9ssservice: argument 1"}
!58349 = distinct !{!58349, i1 true, !"_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB7_7bounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice"}
!58350 = distinct !{!58350, !58349, !"_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB7_7bounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice: argument 1"}
!58351 = distinct !{!58351, !58349, !"_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB7_7bounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice: argument 2"}
!58352 = distinct !{!58352, !58345, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB11_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!58353 = distinct !{!58353, !58347, !"_RNCNCNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7boundedINtB6_8ReceiverNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutE4recv00CsgZAIVb0XKpv_9ssservice: argument 0"}
!58354 = distinct !{!58354, !58349, !"_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB7_7bounded9SemaphoreE4recvCsgZAIVb0XKpv_9ssservice: argument 0"}
!58355 = distinct !{!58355, i1 true, !"_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB9_7bounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice"}
!58356 = distinct !{!58356, !58355, !"_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB9_7bounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58357 = distinct !{!58357, !58355, !"_RNCNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB7_2RxNtNtCsknai52m1gBp_5bytes9bytes_mut8BytesMutNtNtB9_7bounded9SemaphoreE4recv0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58358 = distinct !{!58358, i1 true, !"_RNCNvMs0_NtNtCsczhfDQ1qNkX_5tokio4time8intervalNtB7_8Interval4tick0CsgZAIVb0XKpv_9ssservice"}
!58359 = distinct !{!58359, !58358, !"_RNCNvMs0_NtNtCsczhfDQ1qNkX_5tokio4time8intervalNtB7_8Interval4tick0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58360 = distinct !{!58360, i1 true, !"_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB7_6TcpTun11recv_packet0CsgZAIVb0XKpv_9ssservice"}
!58361 = distinct !{!58361, !58360, !"_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB7_6TcpTun11recv_packet0CsgZAIVb0XKpv_9ssservice: argument 1"}
!58362 = distinct !{!58362, !58360, !"_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB7_6TcpTun11recv_packet0CsgZAIVb0XKpv_9ssservice: argument 0"}
!58363 = distinct !{!58363, i1 true, !"_RNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtB7_17UnboundedReceiverNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun11virt_device11TokenBufferE4recv0CsgZAIVb0XKpv_9ssservice"}
!58364 = distinct !{!58364, !58363, !"_RNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtB7_17UnboundedReceiverNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun11virt_device11TokenBufferE4recv0CsgZAIVb0XKpv_9ssservice: argument 1"}
end_hunk_3
