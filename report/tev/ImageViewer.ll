Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN3tev11ImageViewerC2EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbb:bb.a

bb.afs:                                           ; preds = %bb.abl
  %i.dcb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cte, i64 noundef 152) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1782

_ZNSt3__18functionIFvvEED2Ev.exit1782:            ; preds = %bb.afc, %_ZNSt3__18functionIFvvEED2Ev.exit1801, %_ZNSt3__18functionIFvvEED2Ev.exit1809, %bb.afs, %bb.aff, %.sink.split.i.i1780, %.sink.split.i.i1785, %bb.afi, %.sink.split.i.i1790, %bb.afl, %.sink.split.i.i1795, %bb.afo, %.sink.split.i.i1816, %bb.afr, %bb.afb, %bb.afa
  %.pn373.pn = phi { ptr, i32 } [ %i.czu, %bb.afb ], [ %i.czt, %bb.afa ], [ %.pn370, %.sink.split.i.i1816 ], [ %i.czv, %bb.afc ], [ %i.dcb, %bb.afs ], [ %.pn363, %.sink.split.i.i1795 ], [ %.pn360, %bb.afl ], [ %i.dbp, %_ZNSt3__18functionIFvvEED2Ev.exit1809 ], [ %.pn363, %bb.afo ], [ %i.dbo, %_ZNSt3__18functionIFvvEED2Ev.exit1801 ], [ %.pn360, %.sink.split.i.i1790 ], [ %.pn357, %.sink.split.i.i1785 ], [ %.pn355, %.sink.split.i.i1780 ], [ %.pn355, %bb.aff ], [ %.pn370, %bb.afr ], [ %.pn357, %bb.afi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.aft:                                           ; preds = %bb.abp
  %i.dcc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ctm, i64 noundef 160) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afu:                                           ; preds = %bb.abs
  %i.dcd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ctu, i64 noundef 152) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afv:                                           ; preds = %bb.abu
  %i.dce = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ctw, i64 noundef 32) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afw:                                           ; preds = %bb.aby
  %i.dcf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ctz, i64 noundef 152) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afx:                                           ; preds = %bb.aca
  %i.dcg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cub, i64 noundef 32) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afy:                                           ; preds = %bb.ace
  %i.dch = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cue, i64 noundef 152) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.afz:                                           ; preds = %bb.acg
  %i.dci = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cug, i64 noundef 152) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.aga:                                           ; preds = %bb.aci
  %i.dcj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cui, i64 noundef 32) #49
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.agb:                                           ; preds = %bb.acr
  %i.dck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %130) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #47
  br label %_ZNSt3__18functionIFvvEED2Ev.exit1704

bb.agc:                                           ; preds = %bb.acs, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  invoke void @_ZN3tev11ImageViewer23updateColorCapabilitiesEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
          to label %bb.agd unwind label %bb.is

bb.agd:                                           ; preds = %bb.agc
  invoke void @_ZN3tev11ImageViewer12updateLayoutEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
          to label %bb.age unwind label %bb.is

bb.age:                                           ; preds = %bb.agd
  store i8 1, ptr %i.cf, align 16, !tbaa !222
  ret void

_ZNSt3__18functionIFvvEED2Ev.exit1704:            ; preds = %bb.jl, %bb.jm, %bb.ku, %bb.hx, %bb.gt, %bb.gz, %bb.kd, %bb.dx, %bb.en, %bb.fj, %bb.fp, %bb.jt, %bb.ff, %bb.ed, %.sink.split.i.i832, %bb.jr, %bb.jo, %.sink.split.i.i828, %bb.ks, %bb.kt, %bb.kw, %bb.kx, %bb.ky, %bb.kz, %.body860, %bb.kv, %bb.ju, %bb.jv, %bb.jw, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit849.2, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit858, %bb.kn, %bb.km, %_ZNSt3__18functionIFvfEED2Ev.exit857, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit847, %bb.kf, %bb.ke, %bb.kr, %bb.js, %bb.jp, %bb.adw, %bb.ady, %bb.adx, %bb.adk, %bb.adm, %.sink.split.i.i1714, %bb.ado, %.sink.split.i.i1718, %bb.adq, %.sink.split.i.i1722, %bb.ads, %.sink.split.i.i1726, %bb.adu, %.sink.split.i.i1730, %bb.adc, %bb.ade, %.sink.split.i.i1702, %bb.adg, %.sink.split.i.i1706, %bb.adi, %.sink.split.i.i1710, %bb.io, %bb.ip, %bb.iq, %bb.ir, %bb.adz, %bb.aea, %_ZNSt3__18functionIFvvEED2Ev.exit1749, %_ZNSt3__18functionIFvvEED2Ev.exit1782, %bb.aft, %bb.afu, %bb.afv, %bb.afw, %bb.afx, %bb.aee, %bb.aef, %bb.aed, %bb.aec, %bb.aeb, %bb.aej, %bb.aei, %bb.aeh, %bb.aeg, %bb.aep, %.body1306, %bb.aem, %bb.ael, %bb.aek, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.agb, %bb.aga, %bb.afz, %bb.afy, %bb.adv, %bb.adj, %bb.adb, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.in, %bb.im, %bb.il, %bb.f
  %.pn399.pn.pn.pn = phi { ptr, i32 } [ %.pn399.pn.pn, %bb.il ], [ %i.cxz, %bb.ady ], [ %i.cv, %bb.f ], [ %i.acm, %bb.in ], [ %i.acl, %bb.im ], [ %i.aco, %bb.ip ], [ %i.acn, %bb.io ], [ %i.acq, %bb.ir ], [ %i.acp, %bb.iq ], [ %eh.lpad-body1119, %bb.adg ], [ %i.acr, %bb.is ], [ %eh.lpad-body1195, %.sink.split.i.i1722 ], [ %i.dck, %bb.agb ], [ %eh.lpad-body1179, %.sink.split.i.i1718 ], [ %i.dcj, %bb.aga ], [ %i.dci, %bb.afz ], [ %i.dch, %bb.afy ], [ %i.acy, %bb.iz ], [ %eh.lpad-body1227, %.sink.split.i.i1730 ], [ %eh.lpad-body1211, %bb.ads ], [ %i.cxw, %bb.adv ], [ %eh.lpad-body1135, %.sink.split.i.i1710 ], [ %eh.lpad-body1227, %bb.adu ], [ %i.cwq, %bb.adj ], [ %i.cym, %bb.ael ], [ %i.cxx, %bb.adw ], [ %i.cvw, %bb.adb ], [ %i.acs, %bb.it ], [ %i.acw, %bb.ix ], [ %i.acv, %bb.iw ], [ %i.acu, %bb.iv ], [ %eh.lpad-body1211, %.sink.split.i.i1726 ], [ %i.act, %bb.iu ], [ %i.acx, %bb.iy ], [ %i.cxy, %bb.adx ], [ %i.adj, %bb.jk ], [ %i.adi, %bb.jj ], [ %eh.lpad-body1135, %bb.adi ], [ %i.adh, %bb.ji ], [ %i.adg, %bb.jh ], [ %eh.lpad-body1195, %bb.adq ], [ %i.adf, %bb.jg ], [ %i.cwr, %bb.adk ], [ %i.ade, %bb.jf ], [ %i.add, %bb.je ], [ %i.adc, %bb.jd ], [ %i.adb, %bb.jc ], [ %i.ada, %bb.jb ], [ %i.acz, %bb.ja ], [ %i.cya, %bb.adz ], [ %i.dcg, %bb.afx ], [ %i.dcf, %bb.afw ], [ %i.dce, %bb.afv ], [ %i.dcd, %bb.afu ], [ %i.dcc, %bb.aft ], [ %.pn373.pn, %_ZNSt3__18functionIFvvEED2Ev.exit1782 ], [ %.pn351.pn.pn, %_ZNSt3__18functionIFvvEED2Ev.exit1749 ], [ %i.cyi, %bb.aeh ], [ %i.cyg, %bb.aef ], [ %i.cyb, %bb.aea ], [ %i.cyd, %bb.aec ], [ %i.cyc, %bb.aeb ], [ %i.cye, %bb.aed ], [ %i.cyf, %bb.aee ], [ %i.cyk, %bb.aej ], [ %i.cyh, %bb.aeg ], [ %i.cyj, %bb.aei ], [ %eh.lpad-body1164, %.sink.split.i.i1714 ], [ %i.cyl, %bb.aek ], [ %i.cyu, %bb.aep ], [ %.pn338, %.body1306 ], [ %eh.lpad-body1164, %bb.adm ], [ %i.cyn, %bb.aem ], [ %eh.lpad-body1179, %bb.ado ], [ %i.cvx, %bb.adc ], [ %eh.lpad-body1119, %.sink.split.i.i1706 ], [ %eh.lpad-body1104, %.sink.split.i.i1702 ], [ %eh.lpad-body1104, %bb.ade ], [ %i.adl, %bb.jm ], [ %i.adk, %bb.jl ], [ %i.abo, %bb.hx ], [ %i.td, %bb.fj ], [ %i.ads, %bb.jp ], [ %i.afk, %bb.kr ], [ %i.afq, %bb.kx ], [ %i.adz, %bb.js ], [ %eh.lpad-body, %.sink.split.i.i828 ], [ %i.aeb, %bb.ju ], [ %eh.lpad-body2830, %.sink.split.i.i832 ], [ %i.aej, %bb.kc ], [ %i.aea, %bb.jt ], [ %i.aei, %bb.kb ], [ %i.aeh, %bb.ka ], [ %i.yb, %bb.gt ], [ %i.aeg, %bb.jz ], [ %i.aef, %bb.jy ], [ %i.aek, %bb.kd ], [ %i.aee, %bb.jx ], [ %i.aed, %bb.jw ], [ %i.aec, %bb.jv ], [ %i.tm, %bb.fp ], [ %.pn304, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit858 ], [ %i.afc, %bb.kn ], [ %i.afb, %bb.km ], [ %i.aev, %_ZNSt3__18functionIFvfEED2Ev.exit857 ], [ %i.sv, %bb.ff ], [ %.pn297, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit849.2 ], [ %i.ael, %bb.ke ], [ %.pn295, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit847 ], [ %i.aem, %bb.kf ], [ %i.afm, %bb.kt ], [ %i.afl, %bb.ks ], [ %i.afo, %bb.kv ], [ %i.yk, %bb.gz ], [ %.pn390, %.body860 ], [ %i.afp, %bb.kw ], [ %i.afs, %bb.kz ], [ %i.afr, %bb.ky ], [ %i.qx, %bb.en ], [ %i.afn, %bb.ku ], [ %eh.lpad-body, %bb.jo ], [ %eh.lpad-body2830, %bb.jr ], [ %i.pi, %bb.dx ], [ %i.pr, %bb.ed ]
  call void @_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #47
  %i.dcl = load ptr, ptr %i.bl, align 16, !tbaa !379 ; 4 uses
  %.not.i.i1823 = icmp eq ptr %i.dcl, null
  br i1 %.not.i.i1823, label %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.agf

bb.agf:                                           ; preds = %_ZNSt3__18functionIFvvEED2Ev.exit1704
  %i.dcm = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %i.dcl, ptr %i.dcm, align 8, !tbaa !376
  %i.dcn = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dco = load ptr, ptr %i.dcn, align 16, !tbaa !377
  %i.dcp = ptrtoint ptr %i.dco to i64
  %i.dcq = ptrtoint ptr %i.dcl to i64
  %i.dcr = sub i64 %i.dcp, %i.dcq
  call void @_ZdlPvm(ptr noundef nonnull %i.dcl, i64 noundef %i.dcr) #49
  br label %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__18functionIFvvEED2Ev.exit1704, %bb.agf
  %i.dcs = load i8, ptr %i.be, align 16
  %i.dct = trunc i8 %i.dcs to i1
  br i1 %i.dct, label %bb.agg, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1824

bb.agg:                                           ; preds = %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.dcu = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.dcv = load ptr, ptr %i.dcu, align 16, !tbaa !220
  %i.dcw = load i64, ptr %i.be, align 16
  %i.dcx = and i64 %i.dcw, -2
  call void @_ZdlPvm(ptr noundef %i.dcv, i64 noundef %i.dcx) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1824

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1824: ; preds = %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, %bb.agg
  %i.dcy = load ptr, ptr %i.aw, align 8, !tbaa !328 ; 4 uses
  %.not.i.i1825 = icmp eq ptr %i.dcy, null
  br i1 %.not.i.i1825, label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.agh

bb.agh:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1824
  %i.dcz = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.dcy, ptr %i.dcz, align 16, !tbaa !325
  %i.dda = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !326
  %i.ddc = ptrtoint ptr %i.ddb to i64
  %i.ddd = ptrtoint ptr %i.dcy to i64
  %i.dde = sub i64 %i.ddc, %i.ddd
  call void @_ZdlPvm(ptr noundef nonnull %i.dcy, i64 noundef %i.dde) #49
  br label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1824, %bb.agh
  %i.ddf = load ptr, ptr %i.au, align 16, !tbaa !328 ; 4 uses
  %.not.i.i1826 = icmp eq ptr %i.ddf, null
  br i1 %.not.i.i1826, label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit1827, label %bb.agi

bb.agi:                                           ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.ddg = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %i.ddf, ptr %i.ddg, align 8, !tbaa !325
  %i.ddh = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ddi = load ptr, ptr %i.ddh, align 16, !tbaa !326
  %i.ddj = ptrtoint ptr %i.ddi to i64
  %i.ddk = ptrtoint ptr %i.ddf to i64
  %i.ddl = sub i64 %i.ddj, %i.ddk
  call void @_ZdlPvm(ptr noundef nonnull %i.ddf, i64 noundef %i.ddl) #49
  br label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit1827

_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit1827: ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.agi
  call void @_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.an) #47
  call void @_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #47
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ak) #47
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aj) #47
  %i.ddm = load ptr, ptr %i.ad, align 16, !tbaa !217 ; 2 uses
  %.not.i1828 = icmp eq ptr %i.ddm, null
  br i1 %.not.i1828, label %_ZNSt3__18weak_ptrIN3tev3IpcEED2Ev.exit, label %bb.agj

bb.agj:                                           ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit1827
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ddm) #47
  br label %_ZNSt3__18weak_ptrIN3tev3IpcEED2Ev.exit

_ZNSt3__18weak_ptrIN3tev3IpcEED2Ev.exit:          ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit1827, %bb.agj
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #47
  call void @_ZNSt3__110shared_ptrIN3tev22BackgroundImagesLoaderEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.v) #47
  %i.ddn = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ddn) #47
  call void @_ZNSt3__15dequeINS_8functionIFvvEEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(136) %i.e) #47
  call void @_ZN7nanogui6ScreenD2Ev(ptr noundef nonnull align 16 dead_on_return(520) dereferenceable(520) %0) #47
  resume { ptr, i32 } %.pn399.pn.pn.pn
}

declare void @_ZN7nanogui6ScreenC2ERKNS_5ArrayIiLm2EEENSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEbbbbbbjj(ptr noundef nonnull align 16 dereferenceable(520), ptr noundef nonnull align 4 dereferenceable(8), ptr, i64, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3tev13toggleConsoleEv() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare ptr @glfwGetMonitors(ptr noundef) local_unnamed_addr #5

declare void @glfwGetMonitorWorkarea(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare { i64, i64 } @_ZN3tev12framePaddingEP10GLFWwindow(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer24updateCurrentMonitorSizeEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.nanogui::Array.0", align 8 ; 8 uses
  %2 = alloca %"struct.nanogui::Array.0", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.c = tail call ptr @glfwGetWindowCurrentMonitor(ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i32 0, ptr %1, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store i32 0, ptr %2, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  store i32 0, ptr %i.e, align 4, !tbaa !227
  call void @glfwGetMonitorWorkarea(ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef nonnull %i.e)
  %i.f = load i32, ptr %2, align 8, !tbaa !227
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr %i.e, align 4
  %.not.1.i = icmp eq i32 %i.g, 0
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.i = call { i64, i64 } @_ZN3tev12framePaddingEP10GLFWwindow(ptr noundef %i.h) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 3 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %.sroa.030.4.extract.shift = lshr i64 %i.j, 32
  %.sroa.030.4.extract.trunc = trunc nuw i64 %.sroa.030.4.extract.shift to i32
  %3 = load <2 x i32>, ptr %1, align 8, !tbaa !227
  %4 = bitcast i64 %i.j to <2 x i32>
  %5 = add nsw <2 x i32> %3, %4
  store <2 x i32> %5, ptr %1, align 8, !tbaa !227
  %i.l = add i64 %i.k, %i.j
  %.sroa.7.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %.sroa.028.0.extract.trunc = trunc i64 %i.l to i32
  %i.m = load i32, ptr %2, align 8, !tbaa !227
  %i.n = sub nsw i32 %i.m, %.sroa.028.0.extract.trunc
  store i32 %i.n, ptr %2, align 8, !tbaa !227
  %i.o = load i32, ptr %i.e, align 4, !tbaa !227
  %i.p = add i32 %.sroa.7.12.extract.trunc, %.sroa.030.4.extract.trunc
  %i.q = sub i32 %i.o, %i.p
  store i32 %i.q, ptr %i.e, align 4, !tbaa !227
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1394 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2, !tbaa !224, !range !331, !noundef !385
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread, label %_ZN3tev11ImageViewer11isMaximizedEv.exit

_ZN3tev11ImageViewer11isMaximizedEv.exit:         ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.v = call i32 @glfwGetWindowAttrib(ptr noundef %i.u, i32 noundef 131080)
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN3tev11ImageViewer11isMaximizedEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1393
  %i.x = load i8, ptr %i.w, align 1, !tbaa !223, !range !331, !noundef !385
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !231 ; 7 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !428
  %i.ac = and i32 %i.ab, 4
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !429 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !430 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not12.i.i.i, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.aw, %bb.g ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !433 ; 2 uses
  %i.am = load i8, ptr %i.ah, align 8             ; 2 uses
  %i.an = trunc i8 %i.am to i1                    ; 2 uses
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = select i1 %i.an, ptr %i.ao, ptr %i.aj
  %i.aq = load i64, ptr %i.ak, align 8
  %i.ar = lshr i8 %i.am, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = select i1 %i.an, i64 %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr %i.ap, i64 %i.at, i32 noundef 4, ptr nonnull @.str.171, i64 67), !inline_history !1053
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.ag
  br i1 %.not.i.i.i, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.g

_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %bb.g, %bb.e, %bb.f
  store i8 1, ptr %i.r, align 2, !tbaa !224
  br label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread

_ZN3tev11ImageViewer11isMaximizedEv.exit.thread:  ; preds = %bb.c, %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.d, %_ZN3tev11ImageViewer11isMaximizedEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !229
  %i.az = load <2 x i32>, ptr %1, align 8, !tbaa !227
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fdiv <2 x float> %i.ba, %i.bc           ; 3 uses
  %i.be = load <2 x i32>, ptr %2, align 8, !tbaa !227
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>
  %i.bg = fdiv <2 x float> %i.bf, %i.bc           ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 16, !tbaa !87
  %i.bj = extractelement <2 x float> %i.bd, i64 0
  %i.bk = fcmp oeq float %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = extractelement <2 x float> %i.bd, i64 1
  %i.bo = fcmp oeq float %i.bn, %i.bm
  %.lcssa.i = select i1 %i.bk, i1 %i.bo, i1 false
  br i1 %.lcssa.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.bq = load <2 x float>, ptr %i.bp, align 8
  %i.br = fcmp oeq <2 x float> %i.bg, %i.bq       ; 2 uses
  %i.bs = extractelement <2 x i1> %i.br, i64 0
  %i.bt = extractelement <2 x i1> %i.br, i64 1
  %.lcssa.i8 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %.lcssa.i8, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread
  store <2 x float> %i.bd, ptr %i.bh, align 16, !tbaa !220
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  store <2 x float> %i.bg, ptr %i.bu, align 8, !tbaa !220
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !231
  call void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIfLm2EEES5_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i32 noundef 4, ptr nonnull @.str.172, i64 31, ptr noundef nonnull align 4 dereferenceable(8) %i.bh, ptr noundef nonnull align 4 dereferenceable(8) %i.bu)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN7nanogui6WidgetC1EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN7nanogui9BoxLayoutC1ENS_11OrientationENS_9AlignmentEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #5

declare void @_ZN7nanogui12VScrollPanelC1EPNS_6WidgetE(ptr noundef nonnull align 8 dereferenceable(157), ptr noundef) unnamed_addr #5

declare void @_ZN7nanogui6ButtonC1EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEEi(ptr noundef nonnull align 16 dereferenceable(360), ptr noundef, ptr, i64, i32 noundef) unnamed_addr #5

declare void @_ZN3tev11ImageCanvasC1EPN7nanogui6WidgetE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef) unnamed_addr #5

declare void @_ZN7nanogui5LabelC1EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEES7_i(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr, i64, ptr, i64, i32 noundef) unnamed_addr #5

declare void @_ZN7nanogui6SliderC1EPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(288), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer11setExposureEf(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, float noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1214", align 16 ; 4 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = fmul float %1, 1.000000e+01
  %i.b = tail call noundef float @llvm.round.f32(float %i.a)
  %i.c = fdiv float %i.b, 1.000000e+01            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !312 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 2 uses
  store float %i.c, ptr %i.f, align 4, !tbaa !393
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.h = load i8, ptr %i.g, align 8, !tbaa !318, !range !331, !noundef !385
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN7nanogui6Slider9set_valueEf.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.k = load float, ptr %i.j, align 8, !tbaa !87 ; 2 uses
  %i.l = fcmp olt float %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  %i.n = load float, ptr %i.m, align 4, !tbaa !87 ; 2 uses
  %i.o = select i1 %i.l, float %i.k, float %i.c   ; 2 uses
  %i.p = fcmp olt float %i.n, %i.o
  %i.q = select i1 %i.p, float %i.n, float %i.o
  store float %i.q, ptr %i.f, align 4, !tbaa !393
  br label %_ZN7nanogui6Slider9set_valueEf.exit

_ZN7nanogui6Slider9set_valueEf.exit:              ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !311  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !1060
  store float %i.c, ptr %4, align 16, !tbaa !220, !noalias !1060
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !1061
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !noalias !1061
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.u, align 8, !tbaa !366, !noalias !1061
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !367, !noalias !1061
  store i64 500, ptr %i.t, align 8, !tbaa !368, !noalias !1061
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47, !noalias !1061
  store ptr @.str.128, ptr %2, align 8, !tbaa !358, !noalias !1061
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 23, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !359, !noalias !1061
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !371, !noalias !1061
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.y, align 8, !tbaa !373, !noalias !1061
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 9, ptr %i.z, align 8, !tbaa !374, !noalias !1061
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
end_hunk_0
