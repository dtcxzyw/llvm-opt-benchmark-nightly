inline.NumInlined: 6379
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241

_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i1234, %bb.ni, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1237, %bb.nm
  store ptr %i.api, ptr %i.asi, align 8, !tbaa !74
  %.pr2436 = load ptr, ptr %i.aph, align 8, !tbaa !74 ; 2 uses
  %.not.i.i1242 = icmp eq ptr %.pr2436, null
  br i1 %.not.i.i1242, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241.thread

_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241.thread: ; preds = %bb.nd, %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241
  %i.ate = phi ptr [ %.pr2436, %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241 ], [ %i.api, %bb.nd ] ; 7 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 4 uses
  %i.atg = load atomic i64, ptr %i.atf acquire, align 8 ; 2 uses
  %i.ath = icmp eq i64 %i.atg, 4294967297
  %i.ati = trunc i64 %i.atg to i32                ; 2 uses
  br i1 %i.ath, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241.thread
  store i32 0, ptr %i.atf, align 8, !tbaa !65
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ate, i64 12
  store i32 0, ptr %i.atj, align 4, !tbaa !67
  %i.atk = load ptr, ptr %i.ate, align 8, !tbaa !68
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8
  call void %i.atm(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #30, !inline_history !159
  %i.atn = load ptr, ptr %i.ate, align 8, !tbaa !68
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 24
  %i.atp = load ptr, ptr %i.ato, align 8
  call void %i.atp(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #30, !inline_history !159
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246

bb.no:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241.thread
  %i.atq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i1243 = icmp eq i8 %i.atq, 0
  br i1 %.not.i.i.i1243, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.atr = add nsw i32 %i.ati, -1
  store i32 %i.atr, ptr %i.atf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1244

bb.nq:                                            ; preds = %bb.no
  %i.ats = atomicrmw volatile add ptr %i.atf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1244: ; preds = %bb.nq, %bb.np
  %.0.i.i.i.i1245 = phi i32 [ %i.ati, %bb.np ], [ %i.ats, %bb.nq ]
  %i.att = icmp eq i32 %.0.i.i.i.i1245, 1
  br i1 %i.att, label %bb.nr, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246, !prof !78

bb.nr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ate) #30
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246

_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_18ImageBufEEaSERKS3_.exit1241, %bb.nn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1244, %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #30
  %i.atu = getelementptr inbounds nuw i8, ptr %135, i64 136 ; 2 uses
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !160 ; 3 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %135, i64 144
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !161 ; 2 uses
  %.not4.i.i.i.i1247 = icmp eq ptr %i.atv, %i.atx
  br i1 %.not4.i.i.i.i1247, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i1253, label %.lr.ph.i.i.i.i1248

.lr.ph.i.i.i.i1248:                               ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246, %.lr.ph.i.i.i.i1248
  %.05.i.i.i.i1249 = phi ptr [ %i.aty, %.lr.ph.i.i.i.i1248 ], [ %i.atv, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246 ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i1249) #30
  %i.aty = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1249, i64 40 ; 2 uses
  %.not.i.i.i.i1250 = icmp eq ptr %i.aty, %i.atx
  br i1 %.not.i.i.i.i1250, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i1251, label %.lr.ph.i.i.i.i1248, !llvm.loop !162

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i1251: ; preds = %.lr.ph.i.i.i.i1248
  %.pr.i.i1252 = load ptr, ptr %i.atu, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i1253

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i1253: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i1251, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246
  %i.atz = phi ptr [ %.pr.i.i1252, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i1251 ], [ %i.atv, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1246 ] ; 3 uses
  %.not.i.i1.i.i1254 = icmp eq ptr %i.atz, null
  br i1 %.not.i.i1.i.i1254, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255, label %bb.ns

bb.ns:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i1253
  %i.aua = getelementptr inbounds nuw i8, ptr %135, i64 152
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !164
  %i.auc = ptrtoint ptr %i.aub to i64
  %i.aud = ptrtoint ptr %i.atz to i64
  %i.aue = sub i64 %i.auc, %i.aud
  call void @_ZdlPvm(ptr noundef nonnull %i.atz, i64 noundef %i.aue) #31
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255: ; preds = %bb.ns, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i1253
  %i.auf = load ptr, ptr %i.alj, align 8, !tbaa !165 ; 3 uses
  %i.aug = load ptr, ptr %i.alk, align 8, !tbaa !166 ; 2 uses
  %.not4.i.i.i1.i1256 = icmp eq ptr %i.auf, %i.aug
  br i1 %.not4.i.i.i1.i1256, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1264, label %.lr.ph.i.i.i2.i1257

.lr.ph.i.i.i2.i1257:                              ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260
  %.05.i.i.i3.i1258 = phi ptr [ %i.aum, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260 ], [ %i.auf, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255 ] ; 3 uses
  %i.auh = load ptr, ptr %.05.i.i.i3.i1258, align 8, !tbaa !19 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i1258, i64 16 ; 2 uses
  %i.auj = icmp eq ptr %i.auh, %i.aui
  br i1 %i.auj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1259: ; preds = %.lr.ph.i.i.i2.i1257
  %i.auk = load i64, ptr %i.aui, align 8, !tbaa !21
  %i.aul = add i64 %i.auk, 1
  call void @_ZdlPvm(ptr noundef %i.auh, i64 noundef %i.aul) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260: ; preds = %.lr.ph.i.i.i2.i1257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1259
  %i.aum = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i1258, i64 32 ; 2 uses
  %.not.i.i.i4.i1261 = icmp eq ptr %i.aum, %i.aug
  br i1 %.not.i.i.i4.i1261, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1262, label %.lr.ph.i.i.i2.i1257, !llvm.loop !167

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1262: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1260
  %.pr.i5.i1263 = load ptr, ptr %i.alj, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1264

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1264: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1262, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255
  %i.aun = phi ptr [ %.pr.i5.i1263, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1262 ], [ %i.auf, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i1255 ] ; 3 uses
  %.not.i.i1.i6.i1265 = icmp eq ptr %i.aun, null
  br i1 %.not.i.i1.i6.i1265, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1266, label %bb.nt

bb.nt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1264
  %i.auo = load ptr, ptr %i.alx, align 8, !tbaa !168
  %i.aup = ptrtoint ptr %i.auo to i64
  %i.auq = ptrtoint ptr %i.aun to i64
  %i.aur = sub i64 %i.aup, %i.auq
  call void @_ZdlPvm(ptr noundef nonnull %i.aun, i64 noundef %i.aur) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1266

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1266: ; preds = %bb.nt, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1264
  %i.aus = getelementptr inbounds nuw i8, ptr %135, i64 72
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i7.i1267 = icmp eq ptr %i.aut, null
  br i1 %.not.i.i.i7.i1267, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit1269, label %bb.nu

bb.nu:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1266
  %i.auu = getelementptr inbounds nuw i8, ptr %135, i64 88
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !170
  %i.auw = ptrtoint ptr %i.auv to i64
  %i.aux = ptrtoint ptr %i.aut to i64
  %i.auy = sub i64 %i.auw, %i.aux
  call void @_ZdlPvm(ptr noundef nonnull %i.aut, i64 noundef %i.auy) #31
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit1269

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit1269:     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1266, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #30
  call void @_ZN11OpenImageIO4v3_112ImageBufAlgo10PixelStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %128) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #30
  br label %bb.nz

bb.nv:                                            ; preds = %bb.nc, %bb.mg
  %.pn652.pn.pn = phi { ptr, i32 } [ %.pn652.pn, %bb.nc ], [ %i.ard, %bb.mg ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %142) #30
  br label %.body2054

.body2054:                                        ; preds = %bb.me, %bb.ls, %bb.nv, %bb.mf
  %.pn652.pn.pn.pn = phi { ptr, i32 } [ %.pn652.pn.pn, %bb.nv ], [ %i.arc, %bb.mf ], [ %i.arb, %bb.me ], [ %i.apm, %bb.ls ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #30
  br label %bb.nw

bb.nw:                                            ; preds = %.body2054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1209
  %.pn652.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn652.pn.pn.pn, %.body2054 ], [ %i.aqw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224 ], [ %i.aqr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221 ], [ %i.aqm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1218 ], [ %i.aqh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1215 ], [ %i.aqc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212 ], [ %i.apx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1209 ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %135) #30
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.lx
  %.pn652.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn652.pn.pn.pn.pn, %bb.nw ], [ %i.apw, %bb.lx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #30
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.kx, %bb.ku
  %.pn652.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn652.pn.pn.pn.pn.pn, %bb.nx ], [ %.pn636, %bb.kx ], [ %i.alb, %bb.ku ]
  call void @_ZN11OpenImageIO4v3_112ImageBufAlgo10PixelStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %128) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #30
  br label %bb.atk

bb.nz:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit1269, %bb.kn
  %.1358 = phi i32 [ 0, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit1269 ], [ %.0357, %bb.kn ]
  store ptr @.str.89, ptr %150, align 8, !tbaa !7
  %i.auz = getelementptr inbounds nuw i8, ptr %150, i64 8
  store i64 10, ptr %i.auz, align 8, !tbaa !12
  %i.ava = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %150, i32 noundef 0)
          to label %bb.oa unwind label %bb.ha

bb.oa:                                            ; preds = %bb.nz
  %.not660 = icmp eq i32 %i.ava, 0
  br i1 %.not660, label %bb.pq, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  store ptr @.str.90, ptr %151, align 8, !tbaa !7
  %i.avb = getelementptr inbounds nuw i8, ptr %151, i64 8
  store i64 15, ptr %i.avb, align 8, !tbaa !12
  %i.avc = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %151, float noundef f0x3E2AAAAB)
          to label %bb.oc unwind label %bb.oi

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #30
  store ptr @.str.91, ptr %152, align 8, !tbaa !7
  %i.avd = getelementptr inbounds nuw i8, ptr %152, i64 8
  store i64 14, ptr %i.avd, align 8, !tbaa !12
  %i.ave = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %152, i32 noundef 8)
          to label %bb.od unwind label %bb.oj     ; 6 uses

bb.od:                                            ; preds = %bb.oc
  store i32 %i.ave, ptr %i.af, align 4, !tbaa !3
  %i.avf = shl nuw i32 1, %i.ave                  ; 3 uses
  %i.avg = sext i32 %i.avf to i64                 ; 7 uses
  %i.avh = fpext float %i.avc to double           ; 2 uses
  %i.avi = fmul double %i.avh, f0x4006A09E667F3BCD
  %i.avj = fdiv double 1.000000e+00, %i.avi
  %i.avk = fptrunc double %i.avj to float         ; 2 uses
  %i.avl = call float @llvm.fabs.f32(float %i.avk)
  %i.avm = fadd float %i.avl, -1.000000e+00
  %i.avn = fadd float %i.avm, 1.000000e+00        ; 6 uses
  %i.avo = fmul contract float %i.avn, 4.306380e-05
  %i.avp = fadd contract float %i.avo, f0x39910039
  %i.avq = fmul contract float %i.avn, %i.avp
  %i.avr = fadd contract float %i.avq, f0x391F6607
  %i.avs = fmul contract float %i.avn, %i.avr
  %i.avt = fadd contract float %i.avs, f0x3C17E369
  %i.avu = fmul contract float %i.avn, %i.avt
  %i.avv = fadd contract float %i.avu, f0x3D2D2FE7
  %i.avw = fmul contract float %i.avn, %i.avv
  %i.avx = fadd contract float %i.avw, f0x3D906E67
  %i.avy = fmul contract float %i.avn, %i.avx
  %i.avz = fadd contract float %i.avy, 1.000000e+00 ; 2 uses
  %i.awa = fmul float %i.avz, %i.avz              ; 2 uses
  %i.awb = fmul float %i.awa, %i.awa              ; 2 uses
  %i.awc = fmul float %i.awb, %i.awb              ; 2 uses
  %i.awd = fmul float %i.awc, %i.awc
  %i.awe = fdiv float 1.000000e+00, %i.awd
  %i.awf = fsub float 1.000000e+00, %i.awe
  %i.awg = call noundef float @llvm.copysign.f32(float %i.awf, float %i.avk) ; 2 uses
  br i1 %i.xw, label %bb.og, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.awh = load ptr, ptr %64, align 16, !tbaa !80
  %i.awi = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awh)
          to label %bb.of unwind label %bb.ok

bb.of:                                            ; preds = %bb.oe
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 60
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !3
  %.sroa.speculated2300 = call i32 @llvm.smin.i32(i32 %i.awk, i32 4)
  br label %bb.og

bb.og:                                            ; preds = %bb.od, %bb.of
  %i.awl = phi i32 [ %.sroa.speculated2300, %bb.of ], [ 6, %bb.od ] ; 2 uses
  %i.awm = icmp eq i32 %i.ave, 31
  br i1 %i.awm, label %bb.oh, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.oh:                                            ; preds = %bb.og
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #34
          to label %.noexc1273 unwind label %bb.ol

.noexc1273:                                       ; preds = %bb.oh
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.og
  %i.awn = shl nuw nsw i64 %i.avg, 2              ; 6 uses
  %i.awo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awn) #33
          to label %.noexc1274 unwind label %bb.ol ; 9 uses

.noexc1274:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  store float 0.000000e+00, ptr %i.awo, align 4, !tbaa !172
  %i.awp = getelementptr i8, ptr %i.awo, i64 4    ; 3 uses
  %i.awq = add nsw i64 %i.avg, -1                 ; 5 uses
  %i.awr = icmp eq i64 %i.awq, 0                  ; 2 uses
  br i1 %i.awr, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc1274
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.awq, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.awp, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !172
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awp, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275: ; preds = %.noexc1274, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i1272 = phi ptr [ %i.aws, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.awp, %.noexc1274 ]
  %i.awt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awn) #33
          to label %.noexc1281 unwind label %bb.om ; 6 uses

.noexc1281:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275
  store float 0.000000e+00, ptr %i.awt, align 4, !tbaa !172
  br i1 %i.awr, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277: ; preds = %.noexc1281
  %i.awu = getelementptr i8, ptr %i.awt, i64 4
  %.idx.i.i.i.i.i.i.i1278 = shl nuw nsw i64 %i.awq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.awu, i8 0, i64 %.idx.i.i.i.i.i.i.i1278, i1 false), !tbaa !172
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282:           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1277, %.noexc1281
  %i.awv = icmp sgt i32 %i.awl, 0
  br i1 %i.awv, label %.lr.ph2583, label %._crit_edge

.lr.ph2583:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit1282
  %i.aww = getelementptr inbounds nuw i8, ptr %154, i64 4
  %i.awx = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 2 uses
  %.not2589 = icmp eq i32 %i.ave, 0
  %i.awy = fmul double %i.avh, f0x3FF6A09E667F3BCD ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 5 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 7 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %155, i64 8
  %.sroa.52264.0.insert.ext = zext i32 %i.avf to i64
  %.sroa.52264.0.insert.shift = shl nuw i64 %.sroa.52264.0.insert.ext, 32
  %.sroa.02260.0.insert.insert = or disjoint i64 %.sroa.52264.0.insert.shift, 267 ; 2 uses
  %i.axd = uitofp i64 %i.awq to float             ; 2 uses
  %i.axe = ptrtoint ptr %.0.i.i.i.i.i1272 to i64
  %i.axf = ptrtoint ptr %i.awo to i64             ; 3 uses
  %i.axg = sub i64 %i.axe, %i.axf
  %i.axh = ashr exact i64 %i.axg, 2               ; 2 uses
  %i.axi = icmp sgt i64 %i.axh, 0
  %i.axj = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 5 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 7 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %158, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %i.avg, i64 2)
  %i.axn = add i64 %umax, -1                      ; 2 uses
  %xtraiter = and i64 %i.axn, 3                   ; 3 uses
  %i.axo = icmp ult i32 %i.ave, 3
  %unroll_iter = and i64 %i.axn, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3371 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp eq i32 %i.ave, 0
  %n.vec = and i64 %i.avg, -2                     ; 3 uses
  %broadcast.splatinsert3337 = insertelement <2 x float> poison, float %i.awg, i64 0
  %broadcast.splat3338 = shufflevector <2 x float> %broadcast.splatinsert3337, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3339 = insertelement <2 x double> poison, double %i.awy, i64 0
  %broadcast.splat3340 = shufflevector <2 x double> %broadcast.splatinsert3339, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.avg
  br label %bb.on

bb.oi:                                            ; preds = %bb.ob
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %bb.atk

bb.oj:                                            ; preds = %bb.oc
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.ok:                                            ; preds = %bb.oe
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.ol:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %bb.oh
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.om:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i1275
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit1346

bb.on:                                            ; preds = %.lr.ph2583, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328
  %.05732582 = phi i32 [ 0, %.lr.ph2583 ], [ %i.bji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 7 uses
  %.sroa.02272.02581 = phi ptr [ null, %.lr.ph2583 ], [ %i.axv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 4 uses
  %.sroa.13.02580 = phi ptr [ null, %.lr.ph2583 ], [ %i.axw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.axu = load ptr, ptr %64, align 16, !tbaa !80
  store i32 -2147483648, ptr %154, align 8, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aww, i8 0, i64 28, i1 false)
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo9histogramERKNS0_8ImageBufEiiffbNS0_3ROIEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.128") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.axu, i32 noundef %.05732582, i32 noundef %i.avf, float noundef 0.000000e+00, float noundef 1.000000e+00, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %154, i32 noundef %i.bq)
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.axv = load ptr, ptr %153, align 8, !tbaa !174 ; 13 uses
  %i.axw = load ptr, ptr %i.awx, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.02272.02581, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEEaSEOS1_.exit

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.oo
  %i.axx = ptrtoint ptr %.sroa.13.02580 to i64
  %i.axy = ptrtoint ptr %.sroa.02272.02581 to i64
  %i.axz = sub i64 %i.axx, %i.axy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02272.02581, i64 noundef %i.axz) #31
  %.pr2437 = load ptr, ptr %153, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i1283 = icmp eq ptr %.pr2437, null
  br i1 %.not.i.i.i1283, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.op

bb.op:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.aya = load ptr, ptr %i.awx, align 8, !tbaa !177
  %i.ayb = ptrtoint ptr %i.aya to i64
  %i.ayc = ptrtoint ptr %.pr2437 to i64
  %i.ayd = sub i64 %i.ayb, %i.ayc
  call void @_ZdlPvm(ptr noundef nonnull %.pr2437, i64 noundef %i.ayd) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.oo, %_ZNSt6vectorImSaImEEaSEOS1_.exit, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %.not2589, label %.preheader2520, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %load_initial = load i64, ptr %i.axv, align 8   ; 2 uses
  br i1 %i.axo, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader2520.loopexit.unr-lcssa:                ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader2520, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader2520.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph.preheader ], [ %i.bck, %.preheader2520.loopexit.unr-lcssa ]
  %.05722577.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bcl, %.preheader2520.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3371)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.ayg, %.lr.ph.epil ]
  %.05722577.epil = phi i64 [ %.05722577.epil.init, %.lr.ph.epil.preheader ], [ %i.ayh, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aye = getelementptr [8 x i8], ptr %i.axv, i64 %.05722577.epil ; 2 uses
  %i.ayf = load i64, ptr %i.aye, align 8, !tbaa !18
  %i.ayg = add i64 %i.ayf, %store_forwarded.epil  ; 2 uses
  store i64 %i.ayg, ptr %i.aye, align 8, !tbaa !18
  %i.ayh = add nuw i64 %.05722577.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader2520, label %.lr.ph.epil, !llvm.loop !178

.preheader2520:                                   ; preds = %.preheader2520.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %i.awq
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !18
  %i.ayk = uitofp i64 %i.ayj to float             ; 2 uses
  br i1 %min.iters.check, label %.noexc.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader2520
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ayk, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ayl = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %index
  %wide.load = load <2 x i64>, ptr %i.ayl, align 8, !tbaa !18
  %i.aym = uitofp <2 x i64> %wide.load to <2 x float>
  %i.ayn = fdiv <2 x float> %i.aym, %broadcast.splat
  %i.ayo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayn, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.ayp = fmul <2 x float> %broadcast.splat3338, %i.ayo ; 2 uses
  %i.ayq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ayp) ; 2 uses
  %i.ayr = fcmp ogt <2 x float> %i.ayq, splat (float f0x3F7FFFFF)
  %i.ays = select <2 x i1> %i.ayr, <2 x float> splat (float f0x3F7FFFFF), <2 x float> %i.ayq ; 2 uses
  %i.ayt = fsub <2 x float> splat (float 1.000000e+00), %i.ays
  %i.ayu = fadd <2 x float> %i.ays, splat (float 1.000000e+00)
  %i.ayv = fmul <2 x float> %i.ayt, %i.ayu        ; 2 uses
  %i.ayw = fcmp oge <2 x float> %i.ayv, splat (float f0x00800000)
  %i.ayx = select <2 x i1> %i.ayw, <2 x float> %i.ayv, <2 x float> splat (float f0x00800000) ; 2 uses
  %i.ayy = fcmp ogt <2 x float> %i.ayx, splat (float f0x7F7FFFFF)
  %i.ayz = bitcast <2 x float> %i.ayx to <2 x i32>
  %i.aza = select <2 x i1> %i.ayy, <2 x i32> splat (i32 2139095039), <2 x i32> %i.ayz ; 2 uses
  %i.azb = lshr <2 x i32> %i.aza, splat (i32 23)
  %i.azc = add nsw <2 x i32> %i.azb, splat (i32 -127)
  %i.azd = and <2 x i32> %i.aza, splat (i32 8388607)
  %i.aze = or disjoint <2 x i32> %i.azd, splat (i32 1065353216)
  %i.azf = bitcast <2 x i32> %i.aze to <2 x float>
  %i.azg = fadd <2 x float> %i.azf, splat (float -1.000000e+00) ; 9 uses
  %i.azh = fmul <2 x float> %i.azg, %i.azg        ; 2 uses
  %i.azi = fmul <2 x float> %i.azh, %i.azh
  %i.azj = fmul nnan contract <2 x float> %i.azg, splat (float f0x3C188B0D)
  %i.azk = fsub nnan contract <2 x float> splat (float f0x3D5541C9), %i.azj
  %i.azl = fmul nnan contract <2 x float> %i.azg, splat (float f0x3EF5162D)
  %i.azm = fadd nnan contract <2 x float> %i.azl, splat (float f0xBF389E54)
  %i.azn = fmul contract <2 x float> %i.azg, %i.azk
  %i.azo = fadd contract <2 x float> %i.azn, splat (float f0xBE0CD4FD)
  %i.azp = fmul contract <2 x float> %i.azg, %i.azo
  %i.azq = fadd contract <2 x float> %i.azp, splat (float f0x3E77ADBD)
  %i.azr = fmul contract <2 x float> %i.azg, %i.azq
  %i.azs = fadd contract <2 x float> %i.azr, splat (float f0xBEB1D206)
  %i.azt = fmul contract <2 x float> %i.azg, %i.azm
  %i.azu = fadd contract <2 x float> %i.azt, splat (float f0x3FB8AA10)
  %i.azv = fmul <2 x float> %i.azg, %i.azu
  %i.azw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azi, <2 x float> %i.azs, <2 x float> %i.azv)
  %i.azx = sitofp <2 x i32> %i.azc to <2 x float>
  %i.azy = fadd <2 x float> %i.azw, %i.azx
  %i.azz = fmul <2 x float> %i.azy, splat (float f0x3F317218) ; 3 uses
  %i.baa = fcmp ogt <2 x float> %i.azz, splat (float -5.000000e+00)
  %i.bab = fneg <2 x float> %i.azz
  %i.bac = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bab)
  %i.bad = fadd <2 x float> %i.bac, splat (float -3.000000e+00) ; 8 uses
  %i.bae = fmul contract <2 x float> %i.bad, splat (float f0x3951F09B)
  %i.baf = fsub contract <2 x float> splat (float f0x38D3B56B), %i.bae
  %i.bag = fmul contract <2 x float> %i.bad, %i.baf
  %i.bah = fadd contract <2 x float> %i.bag, splat (float f0x3AB0DC72)
  %i.bai = fmul contract <2 x float> %i.bad, %i.bah
  %i.baj = fadd contract <2 x float> %i.bai, splat (float f0xBB70BDE7)
  %i.bak = fmul contract <2 x float> %i.bad, %i.baj
  %i.bal = fadd contract <2 x float> %i.bak, splat (float f0x3BBC127B)
  %i.bam = fmul contract <2 x float> %i.bad, %i.bal
  %i.ban = fadd contract <2 x float> %i.bam, splat (float f0xBBF9C5D7)
  %i.bao = fmul contract <2 x float> %i.bad, %i.ban
  %i.bap = fadd contract <2 x float> %i.bao, splat (float f0x3C1AA57E)
  %i.baq = fmul contract <2 x float> %i.bad, %i.bap
  %i.bar = fadd contract <2 x float> %i.baq, splat (float f0x3F8036DB)
  %i.bas = fmul contract <2 x float> %i.bad, %i.bar
  %i.bat = fadd contract <2 x float> %i.bas, splat (float f0x40354F7E)
  %i.bau = fsub <2 x float> splat (float -2.500000e+00), %i.azz ; 8 uses
  %i.bav = fmul nnan contract <2 x float> %i.bau, splat (float f0x32F16588)
  %i.baw = fadd nnan contract <2 x float> %i.bav, splat (float f0x34B84B36)
  %i.bax = fmul contract <2 x float> %i.bau, %i.baw
  %i.bay = fadd contract <2 x float> %i.bax, splat (float f0xB66C7357)
  %i.baz = fmul contract <2 x float> %i.bau, %i.bay
  %i.bba = fadd contract <2 x float> %i.baz, splat (float f0xB6935AC1)
  %i.bbb = fmul contract <2 x float> %i.bau, %i.bba
  %i.bbc = fadd contract <2 x float> %i.bbb, splat (float f0x396532DB)
  %i.bbd = fmul contract <2 x float> %i.bau, %i.bbc
  %i.bbe = fadd contract <2 x float> %i.bbd, splat (float f0xBAA45408)
  %i.bbf = fmul contract <2 x float> %i.bau, %i.bbe
  %i.bbg = fadd contract <2 x float> %i.bbf, splat (float f0xBB88E4EF)
  %i.bbh = fmul contract <2 x float> %i.bau, %i.bbg
  %i.bbi = fadd contract <2 x float> %i.bbh, splat (float f0x3E7C8F63)
  %i.bbj = fmul contract <2 x float> %i.bau, %i.bbi
  %i.bbk = fadd contract <2 x float> %i.bbj, splat (float f0x3FC02E2F)
  %predphi = select <2 x i1> %i.baa, <2 x float> %i.bbk, <2 x float> %i.bat
  %i.bbl = fmul <2 x float> %i.ayp, %predphi
  %i.bbm = fpext <2 x float> %i.bbl to <2 x double>
  %i.bbn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat3340, <2 x double> %i.bbm, <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bbo = fptrunc <2 x double> %i.bbn to <2 x float>
  %i.bbp = fcmp ogt <2 x double> %i.bbn, splat (double f0x3690000000000000)
  %i.bbq = select <2 x i1> %i.bbp, <2 x float> %i.bbo, <2 x float> zeroinitializer ; 2 uses
end_hunk_0
