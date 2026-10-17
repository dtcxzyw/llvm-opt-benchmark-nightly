Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_secondary?download=true
inline.NumInlined: 7034
inline.NumDeleted: 3533
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb2DB14OpenAndCompactERKNS_21OpenAndCompactOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_PS9_RKNS_32CompactionServiceOptionsOverrideE:bb.a
  %i.tv = load ptr, ptr %11, align 8, !tbaa !1038 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !1039 ; 2 uses
  %.not4.i.i.i250 = icmp eq ptr %i.tv, %i.tx
  br i1 %.not4.i.i.i250, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i258, label %.lr.ph.i.i.i251

.lr.ph.i.i.i251:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254
  %.05.i.i.i252 = phi ptr [ %i.ue, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254 ], [ %i.tv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 32
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ty) #32
  %i.tz = load ptr, ptr %.05.i.i.i252, align 8, !tbaa !75 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i253: ; preds = %.lr.ph.i.i.i251
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !76
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #31
  br label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254

_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254: ; preds = %.lr.ph.i.i.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i253
  %i.ue = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 1008 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %i.ue, %i.tx
  br i1 %.not.i.i.i255, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i256, label %.lr.ph.i.i.i251, !llvm.loop !20

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i256: ; preds = %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i254
  %.pr.i257 = load ptr, ptr %11, align 8, !tbaa !1038
  br label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i258

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i258: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.uf = phi ptr [ %.pr.i257, %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i256 ], [ %i.tv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i259 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i1.i259, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit261, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i258
  %i.ug = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !1040
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.uf to i64
  %i.uk = sub i64 %i.ui, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uk) #31
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit261

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit261: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i258, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.ul = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !848 ; 8 uses
  %.not.i.i.i262 = icmp eq ptr %i.um, null
  br i1 %.not.i.i.i262, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit261
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8 ; 4 uses
  %i.uo = load atomic i64, ptr %i.un acquire, align 8 ; 2 uses
  %i.up = icmp eq i64 %i.uo, 4294967297
  %i.uq = trunc i64 %i.uo to i32                  ; 2 uses
  br i1 %i.up, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.un, align 8, !tbaa !851
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  store i32 0, ptr %i.ur, align 4, !tbaa !852
  %i.us = load ptr, ptr %i.um, align 8, !tbaa !78
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(16) %i.um) #32, !inline_history !1697
  %i.uv = load ptr, ptr %i.um, align 8, !tbaa !78
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(16) %i.um) #32, !inline_history !1697
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fp:                                            ; preds = %bb.fn
  %i.uy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i263 = icmp eq i8 %i.uy, 0
  br i1 %.not.i.i.i.i263, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uz = add nsw i32 %i.uq, -1
  store i32 %i.uz, ptr %i.un, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i264

bb.fr:                                            ; preds = %bb.fp
  %i.va = atomicrmw volatile add ptr %i.un, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i264

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i264: ; preds = %bb.fr, %bb.fq
  %.0.i.i.i.i.i265 = phi i32 [ %i.uq, %bb.fq ], [ %i.va, %bb.fr ]
  %i.vb = icmp eq i32 %.0.i.i.i.i.i265, 1
  br i1 %i.vb, label %bb.fs, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !853

bb.fs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i264
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.um) #32
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i264, %bb.fo, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit261
  %i.vc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !75 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZN7rocksdb13ConfigOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.vg = load i64, ptr %i.ve, align 8, !tbaa !76
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vh) #31
  br label %_ZN7rocksdb13ConfigOptionsD2Ev.exit

_ZN7rocksdb13ConfigOptionsD2Ev.exit:              ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.ft:                                            ; preds = %bb.fl, %bb.s
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn, %bb.fl ], [ %i.bi, %bb.s ] ; 2 uses
  %i.vi = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.vk = icmp eq ptr %i.vi, %i.vj
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.ft
  %i.vl = load i64, ptr %i.vj, align 8, !tbaa !76
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.r
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZN7rocksdb13ConfigOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %10) #32
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %bb.q
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %i.bg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %9) #32
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.p
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fu ], [ %i.bf, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.vn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !114 ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i275, label %_ZN7rocksdb6StatusD2Ev.exit277, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i276

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.f, %bb.g, %_ZN7rocksdb13ConfigOptionsD2Ev.exit
  %i.vp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !114 ; 2 uses
  %.not.i.i272 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i272, label %_ZN7rocksdb6StatusD2Ev.exit274, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i273

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i273: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.vq) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit274

_ZN7rocksdb6StatusD2Ev.exit274:                   ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7rocksdb22CompactionServiceInputD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.fw

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i276: ; preds = %bb.fv
  call void @_ZdaPv(ptr noundef nonnull %i.vo) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit277

_ZN7rocksdb6StatusD2Ev.exit277:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i276, %bb.fv, %bb.h
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i276 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7rocksdb22CompactionServiceInputD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.fw:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit274, %bb.c
  ret void
}

declare void @_ZN7rocksdb22CompactionServiceInput4ReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

declare void @_ZN7rocksdb9DBOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(753)) unnamed_addr #4

declare void @_ZN7rocksdb13ConfigOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN7rocksdb15OptionsFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare void @_ZN7rocksdb19LoadOptionsFromFileERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9DBOptionsEPSt6vectorINS_22ColumnFamilyDescriptorESaISE_EEPSt10shared_ptrINS_5CacheEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN7rocksdb19GetDBOptionsFromMapERKNS_13ConfigOptionsERKNS_9DBOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ESt8equal_toISC_ESaISt4pairIKSC_SC_EEEPS3_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !858  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !857    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !859
  %i.j = load ptr, ptr %0, align 8, !tbaa !857    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_M_allocateEm.exit.i, !prof !853

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !848  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !849
  store <2 x ptr> %i.s, ptr %.08.i.i.i.i.i, align 8, !tbaa !849
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !704
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !704
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.aa = icmp eq ptr %i.y, %i.b
  br i1 %i.aa, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !857   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !858 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !848 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !851
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !852
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !13
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !13
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i, !prof !853

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !857
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.aw = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !859
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !857
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !859
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !858 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bf, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp sgt i64 %i.g, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cj, %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !874
  store ptr %i.bh, ptr %.0811.i.i.i.i.i, align 8, !tbaa !874
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !848 ; 4 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !848 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !704
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !704
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !848
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.br = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bs, align 8, !tbaa !851
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !852
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1717
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1717
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !853

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !848
  br label %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !1718

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN7rocksdb13EventListenerEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !871
  %.pre63 = ptrtoint ptr %i.ci to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi64 = phi i64 [ %.pre63, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cl = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb13EventListenerEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
begin_hunk_1_@_ZN7rocksdb19ColumnFamilyOptionsaSEOS0_:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #32, !inline_history !1727
  br label %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i29 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i29, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

bb.ad:                                            ; preds = %bb.ab
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i31 = phi i32 [ %i.cy, %bb.ac ], [ %i.di, %bb.ad ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i31, 1
  br i1 %i.dj, label %bb.ae, label %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit, !prof !853

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #32
  br label %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit

_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIKN7rocksdb14SliceTransformEEaSEOS3_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30, %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !1041 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1042 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1043
  %i.dr = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !1051
  store <2 x ptr> %i.dr, ptr %i.dk, align 8, !tbaa !1051
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1043
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !1043
  %.not4.i.i.i.i.i = icmp eq ptr %i.dm, %i.do
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb6DbPathES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit, %_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i ], [ %i.dm, %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit ] ; 3 uses
  %i.du = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !76
  %i.dy = add i64 %i.dx, 1
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #31
  br label %_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.dz, %i.do
  br i1 %.not.i.i.i.i.i32, label %_ZSt8_DestroyIPN7rocksdb6DbPathES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN7rocksdb6DbPathES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb6DbPathEEvPT_.exit.i.i.i.i.i, %_ZNSt10shared_ptrIN7rocksdb12TableFactoryEEaSEOS2_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSEOS3_.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb6DbPathES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ea = ptrtoint ptr %i.dq to i64
  %i.eb = ptrtoint ptr %i.dm to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.ec) #31
  br label %_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb6DbPathES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.eg = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !848 ; 8 uses
  store <2 x ptr> %i.eg, ptr %i.ed, align 8, !tbaa !849
  %.not.i.i.i.i33 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i33, label %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSEOS3_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ei, align 8, !tbaa !851
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !852
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #32, !inline_history !1728
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #32, !inline_history !1728
  br label %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i34 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i34, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

bb.ak:                                            ; preds = %bb.ai
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i36 = phi i32 [ %i.el, %bb.aj ], [ %i.ev, %bb.ak ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i.i36, 1
  br i1 %i.ew, label %bb.al, label %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit, !prof !853

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #32
  br label %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit

_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit: ; preds = %_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSEOS3_.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35, %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.fa = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !848 ; 8 uses
  store <2 x ptr> %i.fa, ptr %i.ex, align 8, !tbaa !849
  %.not.i.i.i.i37 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i37, label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSEOS2_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fc, align 8, !tbaa !851
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !852
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #32, !inline_history !1729
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !78
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #32, !inline_history !1729
  br label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSEOS2_.exit

bb.ao:                                            ; preds = %bb.am
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i38 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i38, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39

bb.aq:                                            ; preds = %bb.ao
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i40 = phi i32 [ %i.ff, %bb.ap ], [ %i.fp, %bb.aq ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i40, 1
  br i1 %i.fq, label %bb.ar, label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSEOS2_.exit, !prof !853

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #32
  br label %_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSEOS2_.exit

_ZNSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEEaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEEaSEOS2_.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39, %bb.ar
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.ft = load i64, ptr %i.fs, align 8
  store i64 %i.ft, ptr %i.fr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1145 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1146   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1147
  %i.j = load ptr, ptr %0, align 8, !tbaa !1146   ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE11_M_allocateEm.exit.i, !prof !853

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !848  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !849
  store <2 x ptr> %i.s, ptr %.08.i.i.i.i.i, align 8, !tbaa !849
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !704
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !704
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.aa = icmp eq ptr %i.y, %i.b
  br i1 %i.aa, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1146  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1145 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !848 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !851
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !852
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !1732
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !1732
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i, !prof !853

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1146
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.aw = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !1147
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !1146
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !1147
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1145 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bf, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp sgt i64 %i.g, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cj, %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1742
  store ptr %i.bh, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1742
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !848 ; 4 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !848 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !704
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !704
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !848
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.br = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bs, align 8, !tbaa !851
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !852
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1733
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1733
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !704
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !853

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !848
  br label %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !1734

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !1148
  %.pre63 = ptrtoint ptr %i.ci to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi64 = phi i64 [ %.pre63, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cl = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_1
