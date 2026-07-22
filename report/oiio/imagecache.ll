inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i558: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  %.not1154 = icmp eq i32 %2, 1
  br i1 %.not1154, label %.thread1137, label %bb.fy

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i558
  %i.agb = load ptr, ptr %i.fd, align 8, !tbaa !789 ; 6 uses
  %i.agc = load ptr, ptr %17, align 8, !tbaa !793 ; 10 uses
  %.not265 = icmp eq ptr %i.agb, %i.agc
  br i1 %.not265, label %.thread1137, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.150, i64 25)
          to label %bb.ga unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.151, i64 83)
          to label %bb.gb unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.gb:                                            ; preds = %bb.ga
  %i.agd = ptrtoint ptr %i.agb to i64
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = sub i64 %i.agd, %i.age                 ; 2 uses
  %i.agg = ashr exact i64 %i.agf, 3
  %i.agh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agg, i1 true)
  %i.agi = shl nuw nsw i64 %i.agh, 1
  %i.agj = xor i64 %i.agi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.agc, ptr %i.agb, i64 noundef %i.agj, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc566 unwind label %.loopexit.split-lp1180.loopexit.split-lp

.noexc566:                                        ; preds = %bb.gb
  %i.agk = icmp sgt i64 %i.agf, 128
  br i1 %i.agk, label %bb.gc, label %bb.gl

bb.gc:                                            ; preds = %.noexc566
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agc, i64 128 ; 2 uses
  br label %bb.gd

bb.gd:                                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i, %bb.gc
  %.sroa.013.027.i.idx = phi i64 [ 8, %bb.gc ], [ %.sroa.013.027.i.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i ] ; 3 uses
  %.pn26.i = phi ptr [ %i.agc, %bb.gc ], [ %.sroa.013.027.i.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i ]
  %.sroa.013.027.i.ptr = getelementptr inbounds nuw i8, ptr %i.agc, i64 %.sroa.013.027.i.idx ; 5 uses
  %i.agm = load ptr, ptr %.sroa.013.027.i.ptr, align 8, !tbaa !553 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.agn, align 8, !tbaa !114 ; 3 uses
  %i.ago = load ptr, ptr %i.agc, align 8, !tbaa !553
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %i.agp, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i.i887 = icmp eq ptr %.sroa.0.0.copyload.i2.i, null
  br i1 %.not.i.i.i.i887, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.agq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2.i, i64 -24
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !207, !noalias !858
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i = phi i64 [ %i.agr, %bb.ge ], [ 0, %bb.gd ] ; 2 uses
  %.not.i.i.i.i.i888 = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i.i.i888, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i
  %i.ags = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -24
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !207, !noalias !861
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i: ; preds = %bb.gf, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.agt, %bb.gf ], [ 0, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i ] ; 2 uses
  %i.agu = call i64 @llvm.umin.i64(i64 %.0.i.i.i.i, i64 %.0.i.i.i.i.i) ; 2 uses
  %i.agv = icmp eq i64 %i.agu, 0
  br i1 %i.agv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i
  %i.agw = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i, ptr noundef %.sroa.0.0.copyload.i2.i, i64 noundef %i.agu) #5 ; 2 uses
  %.not.i.i2.i.i = icmp eq i32 %i.agw, 0
  br i1 %.not.i.i2.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i
  %i.agx = trunc i64 %.0.i.i.i.i.i to i32
  %i.agy = trunc i64 %.0.i.i.i.i to i32
  %i.agz = sub nsw i32 %i.agx, %i.agy
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit

_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %i.aha = phi i32 [ %i.agz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.agw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.ahb = icmp slt i32 %i.aha, 0
  br i1 %i.ahb, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.gk

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit
  store ptr null, ptr %.sroa.013.027.i.ptr, align 8, !tbaa !553
  %i.ahc = lshr exact i64 %.sroa.013.027.i.idx, 3
  %i.ahd = getelementptr inbounds nuw i8, ptr %.pn26.i, i64 16
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ahk, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i ], [ %i.ahc, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ahf, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i ], [ %i.ahd, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.ahe, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i ], [ %.sroa.013.027.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.ahe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ahf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ahg = load ptr, ptr %i.ahe, align 8, !tbaa !553
  store ptr null, ptr %i.ahe, align 8, !tbaa !553
  %i.ahh = load ptr, ptr %i.ahf, align 8, !tbaa !553 ; 4 uses
  store ptr %i.ahg, ptr %i.ahf, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ahi = atomicrmw sub ptr %i.ahh, i32 1 seq_cst, align 4
  %i.ahj = icmp eq i32 %i.ahi, 1
  br i1 %i.ahj, label %bb.gh, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i

bb.gh:                                            ; preds = %bb.gg
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.ahh) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.ahh, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i: ; preds = %bb.gh, %bb.gg, %.lr.ph.i.i.i.i.i.i
  %i.ahk = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ahl = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ahl, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i, !llvm.loop !864

.loopexit.i:                                      ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i
  %i.ahm = load ptr, ptr %i.agc, align 8, !tbaa !553 ; 4 uses
  store ptr %i.agm, ptr %i.agc, align 8, !tbaa !553
  %.not.i.i.i672 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i672, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i, label %bb.gi

bb.gi:                                            ; preds = %.loopexit.i
  %i.ahn = atomicrmw sub ptr %i.ahm, i32 1 seq_cst, align 4
  %i.aho = icmp eq i32 %i.ahn, 1
  br i1 %i.aho, label %bb.gj, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i

bb.gj:                                            ; preds = %bb.gi
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.ahm) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.ahm, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i

bb.gk:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.013.027.i.ptr, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i unwind label %.loopexit.split-lp1180.loopexit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i: ; preds = %bb.gk, %bb.gj, %bb.gi, %.loopexit.i
  %.sroa.013.027.i.add = add nuw nsw i64 %.sroa.013.027.i.idx, 8 ; 2 uses
  %.not.i671 = icmp eq i64 %.sroa.013.027.i.add, 128
  br i1 %.not.i671, label %.noexc567, label %bb.gd, !llvm.loop !865

.noexc567:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.agl, %i.agb
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564

.lr.ph.i.i.i.i564:                                ; preds = %.noexc567, %.noexc568
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ahp, %.noexc568 ], [ %i.agl, %.noexc567 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc568 unwind label %.loopexit1179

.noexc568:                                        ; preds = %.lr.ph.i.i.i.i564
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i565 = icmp eq ptr %i.ahp, %i.agb
  br i1 %.not.i.i.i.i565, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564, !llvm.loop !866

bb.gl:                                            ; preds = %.noexc566
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_(ptr %i.agc, ptr %i.agb, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit unwind label %.loopexit.split-lp1180.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit: ; preds = %.noexc568, %bb.gl, %.noexc567
  %i.ahq = load ptr, ptr %i.fd, align 8, !tbaa !789 ; 2 uses
  %i.ahr = load ptr, ptr %17, align 8, !tbaa !793 ; 3 uses
  %.not1326 = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not1326, label %._crit_edge1242, label %.lr.ph1241

.lr.ph1241:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %i.ahs = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  %i.ahw = ashr exact i64 %i.ahv, 3
  br label %bb.gm

._crit_edge1242:                                  ; preds = %bb.gv, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.ahx = uitofp i64 %.0 to double
  %i.ahy = fmul nnan double %i.ahx, f0x3F50000000000000
  %i.ahz = fmul nnan double %i.ahy, f0x3F50000000000000
  store double %i.ahz, ptr %i.r, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  %i.aia = uitofp i64 %.0149 to double
  %i.aib = fmul nnan double %i.aia, f0x3F50000000000000
  %i.aic = fmul nnan double %i.aib, f0x3F50000000000000
  store double %i.aic, ptr %i.s, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #5
  %i.aid = extractelement <2 x double> %i.ff, i64 0
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, double noundef %i.aid, i32 noundef 1)
          to label %bb.gy unwind label %bb.ha

bb.gm:                                            ; preds = %.lr.ph1241, %bb.gv
  %.02041239 = phi i64 [ 0, %.lr.ph1241 ], [ %i.ajc, %bb.gv ] ; 3 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %.02041239 ; 3 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !553 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 166
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !202
  %.not1155 = icmp eq i16 %i.aih, 0
  br i1 %.not1155, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 25
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !166, !range !368, !noundef !290
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aif, i64 80
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 88
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !276
  %i.aio = load ptr, ptr %i.ail, align 8, !tbaa !275
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = and i64 %i.air, 549755813760
  %i.ait = icmp eq i64 %i.ais, 0
  br i1 %i.ait, label %bb.gp, label %bb.gs

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #5
  %60 = load ptr, ptr %i.aie, align 8, !tbaa !553
  %i.aiu = getelementptr inbounds nuw i8, ptr %60, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aiu, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i, ptr %51, align 8
  invoke void @_ZN3fmt3v125printIJRA7_KcN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.152, i64 10, ptr noundef nonnull align 1 dereferenceable(7) @.str.153, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %bb.gv

bb.gr:                                            ; preds = %bb.gp
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %.body

bb.gs:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #5
  %i.aiw = trunc i64 %.02041239 to i32
  %i.aix = add i32 %i.aiw, 1
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aie, i32 noundef %i.aix, i1 noundef zeroext true)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.154, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.aiy = load ptr, ptr %52, align 8, !tbaa !36  ; 2 uses
  %i.aiz = icmp eq ptr %i.aiy, %i.ahs
  br i1 %i.aiz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.gu
  %i.aja = load i64, ptr %i.ahs, align 8, !tbaa !39
  %i.ajb = add i64 %i.aja, 1
  call void @_ZdlPvm(ptr noundef %i.aiy, i64 noundef %i.ajb) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.gq
  %i.ajc = add nuw i64 %.02041239, 1              ; 2 uses
  %i.ajd = icmp ult i64 %i.ajc, %i.ahw
  br i1 %i.ajd, label %bb.gm, label %._crit_edge1242, !llvm.loop !867

bb.gw:                                            ; preds = %bb.gs
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

bb.gx:                                            ; preds = %bb.gt
  %i.ajf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajg = load ptr, ptr %52, align 8, !tbaa !36  ; 2 uses
  %i.ajh = icmp eq ptr %i.ajg, %i.ahs
  br i1 %i.ajh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %bb.gx
  %i.aji = load i64, ptr %i.ahs, align 8, !tbaa !39
  %i.ajj = add i64 %i.aji, 1
  call void @_ZdlPvm(ptr noundef %i.ajg, i64 noundef %i.ajj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573, %bb.gw
  %.pn284 = phi { ptr, i32 } [ %i.aje, %bb.gw ], [ %i.ajf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573 ], [ %i.ajf, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %.body

bb.gy:                                            ; preds = %._crit_edge1242
  invoke void @_ZN3fmt3v125printIJRmS2_dS2_dNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.155, i64 52, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %i.ajk = load ptr, ptr %53, align 8, !tbaa !36  ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajk, %i.ajl
  br i1 %i.ajm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %bb.gz
  %i.ajn = load i64, ptr %i.ajl, align 8, !tbaa !39
  %i.ajo = add i64 %i.ajn, 1
  call void @_ZdlPvm(ptr noundef %i.ajk, i64 noundef %i.ajo) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.thread1137

bb.ha:                                            ; preds = %._crit_edge1242
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

bb.hb:                                            ; preds = %bb.gy
  %i.ajq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajr = load ptr, ptr %53, align 8, !tbaa !36  ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajr, %i.ajs
  br i1 %i.ajt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %bb.hb
  %i.aju = load i64, ptr %i.ajs, align 8, !tbaa !39
  %i.ajv = add i64 %i.aju, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.ajv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.ha
  %.pn266 = phi { ptr, i32 } [ %i.ajp, %bb.ha ], [ %i.ajq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ], [ %i.ajq, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.body

.thread1137:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %bb.fy
  %i.ajw = load i64, ptr %i.g, align 8, !tbaa !201
  %i.ajx = icmp ne i64 %i.ajw, 0
  %i.ajy = icmp samesign ugt i32 %2, 2            ; 5 uses
  %or.cond20 = or i1 %i.ajy, %i.ajx
  br i1 %or.cond20, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %.thread1137
  invoke void @_ZN3fmt3v125printIJRmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.156, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hd unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hd:                                            ; preds = %bb.hc, %.thread1137
  %i.ajz = load i64, ptr %i.e, align 8, !tbaa !201
  %.not268 = icmp eq i64 %i.ajz, 0
  br i1 %.not268, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.aka = load i64, ptr %i.f, align 8, !tbaa !201
  %.not269 = icmp eq i64 %i.aka, 0
  br i1 %.not269, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akb = load i8, ptr %i.ou, align 1, !tbaa !510, !range !368, !noundef !290
  %i.akc = trunc nuw i8 %i.akb to i1
  %or.cond22 = or i1 %i.ajy, %i.akc
  br i1 %or.cond22, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.he
  br i1 %i.ajy, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %bb.hd
  invoke void @_ZN3fmt3v125printIJRmS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.157, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.hi unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hi:                                            ; preds = %bb.hh, %bb.hf, %bb.hg
  %i.akd = load i64, ptr %i.h, align 8, !tbaa !201 ; 2 uses
  %i.ake = icmp ne i64 %i.akd, 0
  %or.cond25 = or i1 %i.ajy, %i.ake
  br i1 %or.cond25, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  %i.akf = icmp eq i64 %i.akd, 1
  %i.akg = select i1 %i.akf, ptr @.str.159, ptr @.str.160
  store ptr %i.akg, ptr %i.t, align 8, !tbaa !114
  invoke void @_ZN3fmt3v125printIJRmPKcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.158, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.akh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %.body

bb.hm:                                            ; preds = %bb.hi, %bb.hk
  %i.aki = load ptr, ptr %i.fd, align 8, !tbaa !789 ; 8 uses
  %i.akj = load ptr, ptr %17, align 8, !tbaa !793 ; 15 uses
  %i.akk = ptrtoint ptr %i.aki to i64
  %i.akl = ptrtoint ptr %i.akj to i64             ; 2 uses
  %i.akm = sub i64 %i.akk, %i.akl                 ; 2 uses
  %i.akn = ashr exact i64 %i.akm, 3               ; 2 uses
  %i.ako = icmp ugt i64 %i.akn, 49
  %or.cond28 = or i1 %i.ajy, %i.ako
  br i1 %or.cond28, label %bb.hn, label %bb.mr

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  %.not.i.i582 = icmp eq ptr %i.akj, %i.aki
  br i1 %.not.i.i582, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.akp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akn, i1 true)
  %i.akq = shl nuw nsw i64 %i.akp, 1
  %i.akr = xor i64 %i.akq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.akj, ptr %i.aki, i64 noundef %i.akr, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_117bytesread_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc587 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc587:                                        ; preds = %bb.ho
  %i.aks = icmp sgt i64 %i.akm, 128
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %i.amo = load i64, ptr %i.ame, align 8, !tbaa !752
  %i.amp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !553 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 192
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !752
  %i.ams = icmp ugt i64 %i.amo, %i.amr
  br i1 %i.ams, label %.lr.ph1258, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i
  %.pre1347 = load ptr, ptr %.sroa.0.0.i1257, align 8, !tbaa !553 ; 4 uses
  store ptr %i.amd, ptr %.sroa.0.0.i1257, align 8, !tbaa !553
  %.not.i.i1.i694 = icmp eq ptr %.pre1347, null
  br i1 %.not.i.i1.i694, label %.noexc589, label %bb.ia

bb.ia:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge
  %i.amt = atomicrmw sub ptr %.pre1347, i32 1 seq_cst, align 4
  %i.amu = icmp eq i32 %i.amt, 1
  br i1 %i.amu, label %bb.ib, label %.noexc589

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1347) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1347, i64 noundef 400) #46
  br label %.noexc589

.noexc589:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge.thread, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge, %bb.ib, %bb.ia
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i585, i64 8 ; 2 uses
  %.not.i.i.i.i586 = icmp eq ptr %i.amv, %i.aki
  br i1 %.not.i.i.i.i586, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %.lr.ph.i.i.i.i584, !llvm.loop !866

.preheader.i:                                     ; preds = %.noexc587
  %.sroa.013.024.i674 = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %.sroa.013.024.i674, %i.aki
  br i1 %.not25.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %.lr.ph.i675

.lr.ph.i675:                                      ; preds = %.preheader.i, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678
  %.sroa.013.027.i676 = phi ptr [ %.sroa.013.0.i679, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678 ], [ %.sroa.013.024.i674, %.preheader.i ] ; 9 uses
  %.pn26.i677 = phi ptr [ %.sroa.013.027.i676, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678 ], [ %i.akj, %.preheader.i ]
  %i.amw = load ptr, ptr %.sroa.013.027.i676, align 8, !tbaa !553 ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 192 ; 2 uses
  %i.amy = load i64, ptr %i.amx, align 8, !tbaa !752 ; 2 uses
  %i.amz = load ptr, ptr %i.akj, align 8, !tbaa !553
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 192
  %i.anb = load i64, ptr %i.ana, align 8, !tbaa !752
  %i.anc = icmp ugt i64 %i.amy, %i.anb
  store ptr null, ptr %.sroa.013.027.i676, align 8, !tbaa !553
  br i1 %i.anc, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %.lr.ph.i675
  %i.and = ptrtoint ptr %.sroa.013.027.i676 to i64
  %i.ane = sub i64 %i.and, %i.akl
  %i.anf = ashr exact i64 %i.ane, 3               ; 2 uses
  %i.ang = icmp sgt i64 %i.anf, 0
  br i1 %i.ang, label %.lr.ph.i.i.i.i.i.preheader.i683, label %.loopexit.i681

.lr.ph.i.i.i.i.i.preheader.i683:                  ; preds = %bb.ic
  %i.anh = getelementptr inbounds nuw i8, ptr %.pn26.i677, i64 16
  br label %.lr.ph.i.i.i.i.i.i684

.lr.ph.i.i.i.i.i.i684:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689, %.lr.ph.i.i.i.i.i.preheader.i683
  %.010.i.i.i.i.i.i685 = phi i64 [ %i.ano, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689 ], [ %i.anf, %.lr.ph.i.i.i.i.i.preheader.i683 ] ; 2 uses
  %.069.i.i.i.i.i.i686 = phi ptr [ %i.anj, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689 ], [ %i.anh, %.lr.ph.i.i.i.i.i.preheader.i683 ]
  %.078.i.i.i.i.i.i687 = phi ptr [ %i.ani, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689 ], [ %.sroa.013.027.i676, %.lr.ph.i.i.i.i.i.preheader.i683 ]
  %i.ani = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i687, i64 -8 ; 3 uses
  %i.anj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i686, i64 -8 ; 3 uses
  %i.ank = load ptr, ptr %i.ani, align 8, !tbaa !553
  store ptr null, ptr %i.ani, align 8, !tbaa !553
  %i.anl = load ptr, ptr %i.anj, align 8, !tbaa !553 ; 4 uses
  store ptr %i.ank, ptr %i.anj, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i688 = icmp eq ptr %i.anl, null
  br i1 %.not.i.i.i.i.i.i.i.i688, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689, label %bb.id

bb.id:                                            ; preds = %.lr.ph.i.i.i.i.i.i684
  %i.anm = atomicrmw sub ptr %i.anl, i32 1 seq_cst, align 4
  %i.ann = icmp eq i32 %i.anm, 1
  br i1 %i.ann, label %bb.ie, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689

bb.ie:                                            ; preds = %bb.id
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.anl) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.anl, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689: ; preds = %bb.ie, %bb.id, %.lr.ph.i.i.i.i.i.i684
  %i.ano = add nsw i64 %.010.i.i.i.i.i.i685, -1
  %i.anp = icmp sgt i64 %.010.i.i.i.i.i.i685, 1
  br i1 %i.anp, label %.lr.ph.i.i.i.i.i.i684, label %.loopexit.i681, !llvm.loop !864

.loopexit.i681:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i689, %bb.ic
  %i.anq = load ptr, ptr %i.akj, align 8, !tbaa !553 ; 4 uses
  store ptr %i.amw, ptr %i.akj, align 8, !tbaa !553
  %.not.i.i.i682 = icmp eq ptr %i.anq, null
  br i1 %.not.i.i.i682, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678, label %bb.if

bb.if:                                            ; preds = %.loopexit.i681
  %i.anr = atomicrmw sub ptr %i.anq, i32 1 seq_cst, align 4
  %i.ans = icmp eq i32 %i.anr, 1
  br i1 %i.ans, label %bb.ig, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678

bb.ig:                                            ; preds = %bb.if
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.anq) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.anq, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678

bb.ih:                                            ; preds = %.lr.ph.i675
  %.sroa.0.0.i8901243 = getelementptr inbounds i8, ptr %.sroa.013.027.i676, i64 -8 ; 2 uses
  %i.ant = load ptr, ptr %.sroa.0.0.i8901243, align 8, !tbaa !553 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 192
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !752
  %i.anw = icmp ugt i64 %i.amy, %i.anv
  br i1 %i.anw, label %.lr.ph1247, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge.thread: ; preds = %bb.ih
  store ptr %i.amw, ptr %.sroa.013.027.i676, align 8, !tbaa !553
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678

.lr.ph1247:                                       ; preds = %bb.ih, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899
  %i.anx = phi ptr [ %i.aoc, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899 ], [ %i.ant, %bb.ih ]
  %.sroa.0.0.i8901245 = phi ptr [ %.sroa.0.0.i890, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899 ], [ %.sroa.0.0.i8901243, %bb.ih ] ; 5 uses
  %.sroa.08.0.i8891244 = phi ptr [ %.sroa.0.0.i8901245, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899 ], [ %.sroa.013.027.i676, %bb.ih ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i8901245, align 8, !tbaa !553
  %i.any = load ptr, ptr %.sroa.08.0.i8891244, align 8, !tbaa !553 ; 4 uses
  store ptr %i.anx, ptr %.sroa.08.0.i8891244, align 8, !tbaa !553
  %.not.i.i.i898 = icmp eq ptr %i.any, null
  br i1 %.not.i.i.i898, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph1247
  %i.anz = atomicrmw sub ptr %i.any, i32 1 seq_cst, align 4
  %i.aoa = icmp eq i32 %i.anz, 1
  br i1 %i.aoa, label %bb.ij, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899

bb.ij:                                            ; preds = %bb.ii
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.any) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.any, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899: ; preds = %bb.ij, %bb.ii, %.lr.ph1247
  %.sroa.0.0.i890 = getelementptr inbounds i8, ptr %.sroa.0.0.i8901245, i64 -8 ; 2 uses
  %i.aob = load i64, ptr %i.amx, align 8, !tbaa !752
  %i.aoc = load ptr, ptr %.sroa.0.0.i890, align 8, !tbaa !553 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 192
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !752
  %i.aof = icmp ugt i64 %i.aob, %i.aoe
  br i1 %i.aof, label %.lr.ph1247, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i899
  %.pre = load ptr, ptr %.sroa.0.0.i8901245, align 8, !tbaa !553 ; 4 uses
  store ptr %i.amw, ptr %.sroa.0.0.i8901245, align 8, !tbaa !553
  %.not.i.i1.i894 = icmp eq ptr %.pre, null
  br i1 %.not.i.i1.i894, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678, label %bb.ik

bb.ik:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge
  %i.aog = atomicrmw sub ptr %.pre, i32 1 seq_cst, align 4
  %i.aoh = icmp eq i32 %i.aog, 1
  br i1 %i.aoh, label %bb.il, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678

bb.il:                                            ; preds = %bb.ik
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge.thread, %bb.ik, %bb.il, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i893._crit_edge, %bb.ig, %bb.if, %.loopexit.i681
  %.sroa.013.0.i679 = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i676, i64 8 ; 2 uses
  %.not.i680 = icmp eq ptr %.sroa.013.0.i679, %i.aki
  br i1 %.not.i680, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %.lr.ph.i675, !llvm.loop !865

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i678, %.noexc589, %.noexc588, %bb.hn, %.preheader.i
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.161, i64 27)
          to label %bb.im unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591
  store i32 0, ptr %i.u, align 4, !tbaa !3
  %i.aoi = load ptr, ptr %17, align 8, !tbaa !869 ; 15 uses
  %i.aoj = load ptr, ptr %i.fd, align 8, !tbaa !869 ; 8 uses
  %.not11561260 = icmp eq ptr %i.aoi, %i.aoj
  br i1 %.not11561260, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607, label %.lr.ph1263

.lr.ph1263:                                       ; preds = %bb.im
  %i.aok = uitofp i64 %.0 to double
  %i.aol = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  br label %bb.in

.loopexit1167:                                    ; preds = %.lr.ph.i.i.i.i622
  %lpad.loopexit1169 = landingpad { ptr, i32 }
          cleanup
  br label %.body697

.loopexit.split-lp1168.loopexit:                  ; preds = %bb.ko
  %lpad.loopexit1171 = landingpad { ptr, i32 }
          cleanup
  br label %.body697

.loopexit.split-lp1168.loopexit.split-lp.loopexit: ; preds = %bb.kx
  %lpad.loopexit1174 = landingpad { ptr, i32 }
          cleanup
  br label %.body697

.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, %._crit_edge1293.thread, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645, %bb.ho, %._crit_edge1264, %._crit_edge1287, %bb.ln
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body697

bb.in:                                            ; preds = %.lr.ph1263, %bb.it
  %.sroa.01026.01261 = phi ptr [ %i.aoi, %.lr.ph1263 ], [ %i.aph, %bb.it ] ; 5 uses
  %i.aom = load ptr, ptr %.sroa.01026.01261, align 8, !tbaa !553 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 25
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !166, !range !368, !noundef !290
  %i.aop = trunc nuw i8 %i.aoo to i1
  br i1 %i.aop, label %bb.it, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aom, i64 241
  %i.aor = load volatile i8, ptr %i.aoq, align 1, !tbaa !174, !range !368, !noundef !290
  %i.aos = trunc nuw i8 %i.aor to i1
  br i1 %i.aos, label %bb.ip, label %bb.it

bb.ip:                                            ; preds = %bb.io
  %i.aot = load i32, ptr %i.u, align 4, !tbaa !3  ; 2 uses
  %i.aou = add nsw i32 %i.aot, 1
  store i32 %i.aou, ptr %i.u, align 4, !tbaa !3
  %i.aov = icmp sgt i32 %i.aot, 2
  br i1 %i.aov, label %._crit_edge1264, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #5
  %61 = load ptr, ptr %.sroa.01026.01261, align 8, !tbaa !553
  %i.aow = getelementptr inbounds nuw i8, ptr %61, i64 192
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !752
  %i.aoy = uitofp i64 %i.aox to double
  %i.aoz = fmul nnan double %i.aoy, f0x3F50000000000000
  %i.apa = fmul nnan double %i.aoz, f0x3F50000000000000
  store double %i.apa, ptr %i.v, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #5
  %62 = load ptr, ptr %.sroa.01026.01261, align 8, !tbaa !553
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 192
  %64 = load i64, ptr %63, align 8, !tbaa !752
  %65 = uitofp i64 %64 to double
  %i.apb = fmul nnan double %65, 1.000000e+02
  %i.apc = fdiv double %i.apb, %i.aok
  store double %i.apc, ptr %i.w, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #5
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01026.01261, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.ir unwind label %bb.iu

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN3fmt3v125printIJRiddNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.162, i64 35, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.is unwind label %bb.iv

bb.is:                                            ; preds = %bb.ir
  %i.apd = load ptr, ptr %54, align 8, !tbaa !36  ; 2 uses
  %i.ape = icmp eq ptr %i.apd, %i.aol
  br i1 %i.ape, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592: ; preds = %bb.is
  %i.apf = load i64, ptr %i.aol, align 8, !tbaa !39
  %i.apg = add i64 %i.apf, 1
  call void @_ZdlPvm(ptr noundef %i.apd, i64 noundef %i.apg) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594: ; preds = %bb.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  br label %bb.it

bb.it:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, %bb.in, %bb.io
  %i.aph = getelementptr inbounds nuw i8, ptr %.sroa.01026.01261, i64 8 ; 2 uses
  %.not1156 = icmp eq ptr %i.aph, %i.aoj
  br i1 %.not1156, label %._crit_edge1264, label %bb.in

bb.iu:                                            ; preds = %bb.iq
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597

bb.iv:                                            ; preds = %bb.ir
  %i.apj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apk = load ptr, ptr %54, align 8, !tbaa !36  ; 2 uses
  %i.apl = icmp eq ptr %i.apk, %i.aol
  br i1 %i.apl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595: ; preds = %bb.iv
  %i.apm = load i64, ptr %i.aol, align 8, !tbaa !39
  %i.apn = add i64 %i.apm, 1
  call void @_ZdlPvm(ptr noundef %i.apk, i64 noundef %i.apn) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595, %bb.iu
  %.pn270 = phi { ptr, i32 } [ %i.api, %bb.iu ], [ %i.apj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595 ], [ %i.apj, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  br label %.body697

._crit_edge1264:                                  ; preds = %bb.ip, %bb.it
  %i.apo = ptrtoint ptr %i.aoj to i64
  %i.app = ptrtoint ptr %i.aoi to i64             ; 2 uses
  %i.apq = sub i64 %i.apo, %i.app                 ; 2 uses
  %i.apr = ashr exact i64 %i.apq, 3
  %i.aps = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.apr, i1 true)
  %i.apt = shl nuw nsw i64 %i.aps, 1
  %i.apu = xor i64 %i.apt, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.aoi, ptr %i.aoj, i64 noundef %i.apu, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114iotime_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc603 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc603:                                        ; preds = %._crit_edge1264
  %i.apv = icmp sgt i64 %i.apq, 128
  br i1 %i.apv, label %.preheader1672, label %.preheader.i719

.preheader1672:                                   ; preds = %.noexc603, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759
  %.sroa.013.027.i757.idx = phi i64 [ %.sroa.013.027.i757.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759 ], [ 8, %.noexc603 ] ; 3 uses
  %.pn26.i758 = phi ptr [ %.sroa.013.027.i757.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759 ], [ %i.aoi, %.noexc603 ]
  %.sroa.013.027.i757.ptr = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %.sroa.013.027.i757.idx ; 7 uses
  %i.apw = load ptr, ptr %.sroa.013.027.i757.ptr, align 8, !tbaa !553 ; 4 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 224 ; 2 uses
  %i.apy = load double, ptr %i.apx, align 8, !tbaa !71 ; 2 uses
  %i.apz = load ptr, ptr %i.aoi, align 8, !tbaa !553
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 224
  %i.aqb = load double, ptr %i.aqa, align 8, !tbaa !71
  %i.aqc = fcmp ogt double %i.apy, %i.aqb
  store ptr null, ptr %.sroa.013.027.i757.ptr, align 8, !tbaa !553
  br i1 %i.aqc, label %.lr.ph.i.i.i.i.i.preheader.i764, label %bb.ja

.lr.ph.i.i.i.i.i.preheader.i764:                  ; preds = %.preheader1672
  %i.aqd = lshr exact i64 %.sroa.013.027.i757.idx, 3
  %i.aqe = getelementptr inbounds nuw i8, ptr %.pn26.i758, i64 16
  br label %.lr.ph.i.i.i.i.i.i765

.lr.ph.i.i.i.i.i.i765:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770, %.lr.ph.i.i.i.i.i.preheader.i764
  %.010.i.i.i.i.i.i766 = phi i64 [ %i.aql, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770 ], [ %i.aqd, %.lr.ph.i.i.i.i.i.preheader.i764 ] ; 2 uses
  %.069.i.i.i.i.i.i767 = phi ptr [ %i.aqg, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770 ], [ %i.aqe, %.lr.ph.i.i.i.i.i.preheader.i764 ]
  %.078.i.i.i.i.i.i768 = phi ptr [ %i.aqf, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770 ], [ %.sroa.013.027.i757.ptr, %.lr.ph.i.i.i.i.i.preheader.i764 ]
  %i.aqf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i768, i64 -8 ; 3 uses
  %i.aqg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i767, i64 -8 ; 3 uses
  %i.aqh = load ptr, ptr %i.aqf, align 8, !tbaa !553
  store ptr null, ptr %i.aqf, align 8, !tbaa !553
  %i.aqi = load ptr, ptr %i.aqg, align 8, !tbaa !553 ; 4 uses
  store ptr %i.aqh, ptr %i.aqg, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i769 = icmp eq ptr %i.aqi, null
  br i1 %.not.i.i.i.i.i.i.i.i769, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph.i.i.i.i.i.i765
  %i.aqj = atomicrmw sub ptr %i.aqi, i32 1 seq_cst, align 4
  %i.aqk = icmp eq i32 %i.aqj, 1
  br i1 %i.aqk, label %bb.ix, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770

bb.ix:                                            ; preds = %bb.iw
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aqi) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aqi, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770: ; preds = %bb.ix, %bb.iw, %.lr.ph.i.i.i.i.i.i765
  %i.aql = add nsw i64 %.010.i.i.i.i.i.i766, -1
  %i.aqm = icmp sgt i64 %.010.i.i.i.i.i.i766, 1
  br i1 %i.aqm, label %.lr.ph.i.i.i.i.i.i765, label %.loopexit.i762, !llvm.loop !864

.loopexit.i762:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i770
  %i.aqn = load ptr, ptr %i.aoi, align 8, !tbaa !553 ; 4 uses
  store ptr %i.apw, ptr %i.aoi, align 8, !tbaa !553
  %.not.i.i.i763 = icmp eq ptr %i.aqn, null
  br i1 %.not.i.i.i763, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759, label %bb.iy

bb.iy:                                            ; preds = %.loopexit.i762
  %i.aqo = atomicrmw sub ptr %i.aqn, i32 1 seq_cst, align 4
  %i.aqp = icmp eq i32 %i.aqo, 1
  br i1 %i.aqp, label %bb.iz, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759

bb.iz:                                            ; preds = %bb.iy
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aqn) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aqn, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759

bb.ja:                                            ; preds = %.preheader1672
  %.sroa.0.0.i9321272 = getelementptr inbounds i8, ptr %.sroa.013.027.i757.ptr, i64 -8 ; 2 uses
  %i.aqq = load ptr, ptr %.sroa.0.0.i9321272, align 8, !tbaa !553 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 224
  %i.aqs = load double, ptr %i.aqr, align 8, !tbaa !71
  %i.aqt = fcmp ogt double %i.apy, %i.aqs
  br i1 %i.aqt, label %.lr.ph1276, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge.thread: ; preds = %bb.ja
  store ptr %i.apw, ptr %.sroa.013.027.i757.ptr, align 8, !tbaa !553
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759

.lr.ph1276:                                       ; preds = %bb.ja, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941
  %i.aqu = phi ptr [ %i.aqz, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941 ], [ %i.aqq, %bb.ja ]
  %.sroa.0.0.i9321274 = phi ptr [ %.sroa.0.0.i932, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941 ], [ %.sroa.0.0.i9321272, %bb.ja ] ; 5 uses
  %.sroa.08.0.i9311273 = phi ptr [ %.sroa.0.0.i9321274, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941 ], [ %.sroa.013.027.i757.ptr, %bb.ja ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i9321274, align 8, !tbaa !553
  %i.aqv = load ptr, ptr %.sroa.08.0.i9311273, align 8, !tbaa !553 ; 4 uses
  store ptr %i.aqu, ptr %.sroa.08.0.i9311273, align 8, !tbaa !553
  %.not.i.i.i940 = icmp eq ptr %i.aqv, null
  br i1 %.not.i.i.i940, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph1276
  %i.aqw = atomicrmw sub ptr %i.aqv, i32 1 seq_cst, align 4
  %i.aqx = icmp eq i32 %i.aqw, 1
  br i1 %i.aqx, label %bb.jc, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941

bb.jc:                                            ; preds = %bb.jb
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aqv) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aqv, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941: ; preds = %bb.jc, %bb.jb, %.lr.ph1276
  %.sroa.0.0.i932 = getelementptr inbounds i8, ptr %.sroa.0.0.i9321274, i64 -8 ; 2 uses
  %i.aqy = load double, ptr %i.apx, align 8, !tbaa !71
  %i.aqz = load ptr, ptr %.sroa.0.0.i932, align 8, !tbaa !553 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 224
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !71
  %i.arc = fcmp ogt double %i.aqy, %i.arb
  br i1 %i.arc, label %.lr.ph1276, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i941
  %.pre1349 = load ptr, ptr %.sroa.0.0.i9321274, align 8, !tbaa !553 ; 4 uses
  store ptr %i.apw, ptr %.sroa.0.0.i9321274, align 8, !tbaa !553
  %.not.i.i1.i936 = icmp eq ptr %.pre1349, null
  br i1 %.not.i.i1.i936, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759, label %bb.jd

bb.jd:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge
  %i.ard = atomicrmw sub ptr %.pre1349, i32 1 seq_cst, align 4
  %i.are = icmp eq i32 %i.ard, 1
  br i1 %i.are, label %bb.je, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759

bb.je:                                            ; preds = %bb.jd
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1349) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1349, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge.thread, %bb.jd, %bb.je, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i935._crit_edge, %bb.iz, %bb.iy, %.loopexit.i762
  %.sroa.013.027.i757.add = add nuw nsw i64 %.sroa.013.027.i757.idx, 8 ; 2 uses
  %.not.i761 = icmp eq i64 %.sroa.013.027.i757.add, 128
  br i1 %.not.i761, label %.noexc604, label %.preheader1672, !llvm.loop !865

.noexc604:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i759
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aoi, i64 128 ; 2 uses
  %.not7.i.i.i.i599 = icmp eq ptr %i.arf, %i.aoj
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %.sroa.08.0.i7391279 = phi ptr [ %.sroa.0.0.i7401280, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749 ], [ %.sroa.0.08.i.i.i.i601, %.lr.ph.i.i.i.i600 ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i7401280, align 8, !tbaa !553
  %i.aro = load ptr, ptr %.sroa.08.0.i7391279, align 8, !tbaa !553 ; 4 uses
  store ptr %i.arn, ptr %.sroa.08.0.i7391279, align 8, !tbaa !553
  %.not.i.i.i748 = icmp eq ptr %i.aro, null
  br i1 %.not.i.i.i748, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749, label %bb.jf

bb.jf:                                            ; preds = %.lr.ph1281
  %i.arp = atomicrmw sub ptr %i.aro, i32 1 seq_cst, align 4
  %i.arq = icmp eq i32 %i.arp, 1
  br i1 %i.arq, label %bb.jg, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749

bb.jg:                                            ; preds = %bb.jf
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aro) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aro, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749: ; preds = %bb.jg, %bb.jf, %.lr.ph1281
  %.sroa.0.0.i740 = getelementptr inbounds i8, ptr %.sroa.0.0.i7401280, i64 -8 ; 2 uses
  %i.arr = load double, ptr %i.arh, align 8, !tbaa !71
  %i.ars = load ptr, ptr %.sroa.0.0.i740, align 8, !tbaa !553 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 224
  %i.aru = load double, ptr %i.art, align 8, !tbaa !71
  %i.arv = fcmp ogt double %i.arr, %i.aru
  br i1 %i.arv, label %.lr.ph1281, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i743._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i743._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i749
  %.pre1350 = load ptr, ptr %.sroa.0.0.i7401280, align 8, !tbaa !553 ; 4 uses
  store ptr %i.arg, ptr %.sroa.0.0.i7401280, align 8, !tbaa !553
  %.not.i.i1.i744 = icmp eq ptr %.pre1350, null
  br i1 %.not.i.i1.i744, label %.noexc605, label %bb.jh

bb.jh:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i743._crit_edge
  %i.arw = atomicrmw sub ptr %.pre1350, i32 1 seq_cst, align 4
  %i.arx = icmp eq i32 %i.arw, 1
  br i1 %i.arx, label %bb.ji, label %.noexc605

bb.ji:                                            ; preds = %bb.jh
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1350) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1350, i64 noundef 400) #46
  br label %.noexc605

.noexc605:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i743._crit_edge.thread, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i743._crit_edge, %bb.ji, %bb.jh
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i601, i64 8 ; 2 uses
  %.not.i.i.i.i602 = icmp eq ptr %i.ary, %i.aoj
  br i1 %.not.i.i.i.i602, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607, label %.lr.ph.i.i.i.i600, !llvm.loop !866

.preheader.i719:                                  ; preds = %.noexc603
  %.sroa.013.024.i720 = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8 ; 2 uses
  %.not25.i721 = icmp eq ptr %.sroa.013.024.i720, %i.aoj
  br i1 %.not25.i721, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607, label %.lr.ph.i722

.lr.ph.i722:                                      ; preds = %.preheader.i719, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725
  %.sroa.013.027.i723 = phi ptr [ %.sroa.013.0.i726, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725 ], [ %.sroa.013.024.i720, %.preheader.i719 ] ; 9 uses
  %.pn26.i724 = phi ptr [ %.sroa.013.027.i723, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725 ], [ %i.aoi, %.preheader.i719 ]
  %i.arz = load ptr, ptr %.sroa.013.027.i723, align 8, !tbaa !553 ; 4 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 224 ; 2 uses
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !71 ; 2 uses
  %i.asc = load ptr, ptr %i.aoi, align 8, !tbaa !553
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 224
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !71
  %i.asf = fcmp ogt double %i.asb, %i.ase
  store ptr null, ptr %.sroa.013.027.i723, align 8, !tbaa !553
  br i1 %i.asf, label %bb.jj, label %bb.jo

bb.jj:                                            ; preds = %.lr.ph.i722
  %i.asg = ptrtoint ptr %.sroa.013.027.i723 to i64
  %i.ash = sub i64 %i.asg, %i.app
  %i.asi = ashr exact i64 %i.ash, 3               ; 2 uses
  %i.asj = icmp sgt i64 %i.asi, 0
  br i1 %i.asj, label %.lr.ph.i.i.i.i.i.preheader.i730, label %.loopexit.i728

.lr.ph.i.i.i.i.i.preheader.i730:                  ; preds = %bb.jj
  %i.ask = getelementptr inbounds nuw i8, ptr %.pn26.i724, i64 16
  br label %.lr.ph.i.i.i.i.i.i731

.lr.ph.i.i.i.i.i.i731:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736, %.lr.ph.i.i.i.i.i.preheader.i730
  %.010.i.i.i.i.i.i732 = phi i64 [ %i.asr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736 ], [ %i.asi, %.lr.ph.i.i.i.i.i.preheader.i730 ] ; 2 uses
  %.069.i.i.i.i.i.i733 = phi ptr [ %i.asm, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736 ], [ %i.ask, %.lr.ph.i.i.i.i.i.preheader.i730 ]
  %.078.i.i.i.i.i.i734 = phi ptr [ %i.asl, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736 ], [ %.sroa.013.027.i723, %.lr.ph.i.i.i.i.i.preheader.i730 ]
  %i.asl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i734, i64 -8 ; 3 uses
  %i.asm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i733, i64 -8 ; 3 uses
  %i.asn = load ptr, ptr %i.asl, align 8, !tbaa !553
  store ptr null, ptr %i.asl, align 8, !tbaa !553
  %i.aso = load ptr, ptr %i.asm, align 8, !tbaa !553 ; 4 uses
  store ptr %i.asn, ptr %i.asm, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i735 = icmp eq ptr %i.aso, null
  br i1 %.not.i.i.i.i.i.i.i.i735, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph.i.i.i.i.i.i731
  %i.asp = atomicrmw sub ptr %i.aso, i32 1 seq_cst, align 4
  %i.asq = icmp eq i32 %i.asp, 1
  br i1 %i.asq, label %bb.jl, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736

bb.jl:                                            ; preds = %bb.jk
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aso) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aso, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736: ; preds = %bb.jl, %bb.jk, %.lr.ph.i.i.i.i.i.i731
  %i.asr = add nsw i64 %.010.i.i.i.i.i.i732, -1
  %i.ass = icmp sgt i64 %.010.i.i.i.i.i.i732, 1
  br i1 %i.ass, label %.lr.ph.i.i.i.i.i.i731, label %.loopexit.i728, !llvm.loop !864

.loopexit.i728:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i736, %bb.jj
  %i.ast = load ptr, ptr %i.aoi, align 8, !tbaa !553 ; 4 uses
  store ptr %i.arz, ptr %i.aoi, align 8, !tbaa !553
  %.not.i.i.i729 = icmp eq ptr %i.ast, null
  br i1 %.not.i.i.i729, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725, label %bb.jm

bb.jm:                                            ; preds = %.loopexit.i728
  %i.asu = atomicrmw sub ptr %i.ast, i32 1 seq_cst, align 4
  %i.asv = icmp eq i32 %i.asu, 1
  br i1 %i.asv, label %bb.jn, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725

bb.jn:                                            ; preds = %bb.jm
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.ast) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.ast, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725

bb.jo:                                            ; preds = %.lr.ph.i722
  %.sroa.0.0.i9181266 = getelementptr inbounds i8, ptr %.sroa.013.027.i723, i64 -8 ; 2 uses
  %i.asw = load ptr, ptr %.sroa.0.0.i9181266, align 8, !tbaa !553 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 224
  %i.asy = load double, ptr %i.asx, align 8, !tbaa !71
  %i.asz = fcmp ogt double %i.asb, %i.asy
  br i1 %i.asz, label %.lr.ph1270, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge.thread: ; preds = %bb.jo
  store ptr %i.arz, ptr %.sroa.013.027.i723, align 8, !tbaa !553
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725

.lr.ph1270:                                       ; preds = %bb.jo, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927
  %i.ata = phi ptr [ %i.atf, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927 ], [ %i.asw, %bb.jo ]
  %.sroa.0.0.i9181268 = phi ptr [ %.sroa.0.0.i918, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927 ], [ %.sroa.0.0.i9181266, %bb.jo ] ; 5 uses
  %.sroa.08.0.i9171267 = phi ptr [ %.sroa.0.0.i9181268, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927 ], [ %.sroa.013.027.i723, %bb.jo ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i9181268, align 8, !tbaa !553
  %i.atb = load ptr, ptr %.sroa.08.0.i9171267, align 8, !tbaa !553 ; 4 uses
  store ptr %i.ata, ptr %.sroa.08.0.i9171267, align 8, !tbaa !553
  %.not.i.i.i926 = icmp eq ptr %i.atb, null
  br i1 %.not.i.i.i926, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927, label %bb.jp

bb.jp:                                            ; preds = %.lr.ph1270
  %i.atc = atomicrmw sub ptr %i.atb, i32 1 seq_cst, align 4
  %i.atd = icmp eq i32 %i.atc, 1
  br i1 %i.atd, label %bb.jq, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927

bb.jq:                                            ; preds = %bb.jp
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.atb) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.atb, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927: ; preds = %bb.jq, %bb.jp, %.lr.ph1270
  %.sroa.0.0.i918 = getelementptr inbounds i8, ptr %.sroa.0.0.i9181268, i64 -8 ; 2 uses
  %i.ate = load double, ptr %i.asa, align 8, !tbaa !71
  %i.atf = load ptr, ptr %.sroa.0.0.i918, align 8, !tbaa !553 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 224
  %i.ath = load double, ptr %i.atg, align 8, !tbaa !71
  %i.ati = fcmp ogt double %i.ate, %i.ath
  br i1 %i.ati, label %.lr.ph1270, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i927
  %.pre1348 = load ptr, ptr %.sroa.0.0.i9181268, align 8, !tbaa !553 ; 4 uses
  store ptr %i.arz, ptr %.sroa.0.0.i9181268, align 8, !tbaa !553
  %.not.i.i1.i922 = icmp eq ptr %.pre1348, null
  br i1 %.not.i.i1.i922, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725, label %bb.jr

bb.jr:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge
  %i.atj = atomicrmw sub ptr %.pre1348, i32 1 seq_cst, align 4
  %i.atk = icmp eq i32 %i.atj, 1
  br i1 %i.atk, label %bb.js, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725

bb.js:                                            ; preds = %bb.jr
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1348) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1348, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge.thread, %bb.jr, %bb.js, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i921._crit_edge, %bb.jn, %bb.jm, %.loopexit.i728
  %.sroa.013.0.i726 = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i723, i64 8 ; 2 uses
  %.not.i727 = icmp eq ptr %.sroa.013.0.i726, %i.aoj
  br i1 %.not.i727, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607, label %.lr.ph.i722, !llvm.loop !865

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i725, %.noexc605, %bb.im, %.noexc604, %.preheader.i719
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.163, i64 25)
          to label %bb.jt unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

bb.jt:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit607
  store i32 0, ptr %i.u, align 4, !tbaa !3
  %i.atl = load ptr, ptr %17, align 8, !tbaa !869 ; 15 uses
  %i.atm = load ptr, ptr %i.fd, align 8, !tbaa !869 ; 8 uses
  %.not11571283 = icmp eq ptr %i.atl, %i.atm
  br i1 %.not11571283, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, label %.lr.ph1286

.lr.ph1286:                                       ; preds = %bb.jt
  %i.atn = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.atp = extractelement <2 x double> %i.ff, i64 0
  br label %bb.ju

bb.ju:                                            ; preds = %.lr.ph1286, %bb.kb
  %.sroa.01018.01284 = phi ptr [ %i.atl, %.lr.ph1286 ], [ %i.aup, %bb.kb ] ; 5 uses
  %i.atq = load ptr, ptr %.sroa.01018.01284, align 8, !tbaa !553 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 25
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !166, !range !368, !noundef !290
  %i.att = trunc nuw i8 %i.ats to i1
  br i1 %i.att, label %bb.kb, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atq, i64 241
  %i.atv = load volatile i8, ptr %i.atu, align 1, !tbaa !174, !range !368, !noundef !290
  %i.atw = trunc nuw i8 %i.atv to i1
  br i1 %i.atw, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %bb.jv
  %i.atx = load i32, ptr %i.u, align 4, !tbaa !3  ; 2 uses
  %i.aty = add nsw i32 %i.atx, 1
  store i32 %i.aty, ptr %i.u, align 4, !tbaa !3
  %i.atz = icmp sgt i32 %i.atx, 2
  br i1 %i.atz, label %._crit_edge1287, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #5
  %66 = load ptr, ptr %.sroa.01018.01284, align 8, !tbaa !553
  %i.aua = getelementptr inbounds nuw i8, ptr %66, i64 224
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !71
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, double noundef %i.aub, i32 noundef 1)
          to label %bb.jy unwind label %bb.kc

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #5
  %i.auc = load ptr, ptr %.sroa.01018.01284, align 8, !tbaa !553
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 224
  %i.aue = load double, ptr %i.aud, align 8, !tbaa !71
  %i.auf = fmul double %i.aue, 1.000000e+02
  %i.aug = fdiv double %i.auf, %i.atp
  store double %i.aug, ptr %i.x, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #5
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01018.01284, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.jz unwind label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  invoke void @_ZN3fmt3v125printIJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdS8_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.164, i64 30, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.ka unwind label %bb.ke

bb.ka:                                            ; preds = %bb.jz
  %i.auh = load ptr, ptr %56, align 8, !tbaa !36  ; 2 uses
  %i.aui = icmp eq ptr %i.auh, %i.atn
  br i1 %i.aui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608: ; preds = %bb.ka
  %i.auj = load i64, ptr %i.atn, align 8, !tbaa !39
  %i.auk = add i64 %i.auj, 1
  call void @_ZdlPvm(ptr noundef %i.auh, i64 noundef %i.auk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  %i.aul = load ptr, ptr %55, align 8, !tbaa !36  ; 2 uses
  %i.aum = icmp eq ptr %i.aul, %i.ato
  br i1 %i.aum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %i.aun = load i64, ptr %i.ato, align 8, !tbaa !39
  %i.auo = add i64 %i.aun, 1
  call void @_ZdlPvm(ptr noundef %i.aul, i64 noundef %i.auo) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #5
  br label %bb.kb

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, %bb.ju, %bb.jv
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.01018.01284, i64 8 ; 2 uses
  %.not1157 = icmp eq ptr %i.aup, %i.atm
  br i1 %.not1157, label %._crit_edge1287, label %bb.ju

bb.kc:                                            ; preds = %bb.jx
  %i.auq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619

bb.kd:                                            ; preds = %bb.jy
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616

bb.ke:                                            ; preds = %bb.jz
  %i.aus = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aut = load ptr, ptr %56, align 8, !tbaa !36  ; 2 uses
  %i.auu = icmp eq ptr %i.aut, %i.atn
  br i1 %i.auu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614: ; preds = %bb.ke
  %i.auv = load i64, ptr %i.atn, align 8, !tbaa !39
  %i.auw = add i64 %i.auv, 1
  call void @_ZdlPvm(ptr noundef %i.aut, i64 noundef %i.auw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616: ; preds = %bb.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614, %bb.kd
  %.pn272 = phi { ptr, i32 } [ %i.aur, %bb.kd ], [ %i.aus, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614 ], [ %i.aus, %bb.ke ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  %i.aux = load ptr, ptr %55, align 8, !tbaa !36  ; 2 uses
  %i.auy = icmp eq ptr %i.aux, %i.ato
  br i1 %i.auy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616
  %i.auz = load i64, ptr %i.ato, align 8, !tbaa !39
  %i.ava = add i64 %i.auz, 1
  call void @_ZdlPvm(ptr noundef %i.aux, i64 noundef %i.ava) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617, %bb.kc
  %.pn272.pn = phi { ptr, i32 } [ %i.auq, %bb.kc ], [ %.pn272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617 ], [ %.pn272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #5
  br label %.body697

._crit_edge1287:                                  ; preds = %bb.jw, %bb.kb
  %i.avb = ptrtoint ptr %i.atm to i64
  %i.avc = ptrtoint ptr %i.atl to i64             ; 2 uses
  %i.avd = sub i64 %i.avb, %i.avc                 ; 2 uses
  %i.ave = ashr exact i64 %i.avd, 3
  %i.avf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ave, i1 true)
  %i.avg = shl nuw nsw i64 %i.avf, 1
  %i.avh = xor i64 %i.avg, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.atl, ptr %i.atm, i64 noundef %i.avh, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc625 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc625:                                        ; preds = %._crit_edge1287
  %i.avi = icmp sgt i64 %i.avd, 128
  br i1 %i.avi, label %bb.kf, label %.preheader.i773

bb.kf:                                            ; preds = %.noexc625
  %i.avj = getelementptr inbounds nuw i8, ptr %i.atl, i64 128 ; 2 uses
  br label %bb.kg

bb.kg:                                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799, %bb.kf
  %.sroa.013.027.i797.idx = phi i64 [ 8, %bb.kf ], [ %.sroa.013.027.i797.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799 ] ; 3 uses
  %.pn26.i798 = phi ptr [ %i.atl, %bb.kf ], [ %.sroa.013.027.i797.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799 ]
  %.sroa.013.027.i797.ptr = getelementptr inbounds nuw i8, ptr %i.atl, i64 %.sroa.013.027.i797.idx ; 5 uses
  %i.avk = load ptr, ptr %.sroa.013.027.i797.ptr, align 8, !tbaa !553 ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 224
  %i.avm = load double, ptr %i.avl, align 8, !tbaa !71 ; 2 uses
  %i.avn = fcmp oeq double %i.avm, 0.000000e+00
  br i1 %i.avn, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 192
  %i.avp = load i64, ptr %i.avo, align 8, !tbaa !752
  %i.avq = uitofp i64 %i.avp to double
  %i.avr = fmul nnan double %i.avq, f0x3EB0000000000000
  %i.avs = fdiv double %i.avr, %i.avm
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.avt = phi double [ %i.avs, %bb.kh ], [ 0.000000e+00, %bb.kg ]
  %i.avu = load ptr, ptr %i.atl, align 8, !tbaa !553 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 224
  %i.avw = load double, ptr %i.avv, align 8, !tbaa !71 ; 2 uses
  %i.avx = fcmp oeq double %i.avw, 0.000000e+00
  br i1 %i.avx, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit945, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avu, i64 192
  %i.avz = load i64, ptr %i.avy, align 8, !tbaa !752
  %i.awa = uitofp i64 %i.avz to double
  %i.awb = fmul nnan double %i.awa, f0x3EB0000000000000
  %i.awc = fdiv double %i.awb, %i.avw
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit945

_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit945: ; preds = %bb.ki, %bb.kj
  %i.awd = phi double [ %i.awc, %bb.kj ], [ 0.000000e+00, %bb.ki ]
  %i.awe = fcmp olt double %i.avt, %i.awd
  br i1 %i.awe, label %.lr.ph.i.i.i.i.i.preheader.i804, label %bb.ko

.lr.ph.i.i.i.i.i.preheader.i804:                  ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit945
  store ptr null, ptr %.sroa.013.027.i797.ptr, align 8, !tbaa !553
  %i.awf = lshr exact i64 %.sroa.013.027.i797.idx, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %.pn26.i798, i64 16
  br label %.lr.ph.i.i.i.i.i.i805

.lr.ph.i.i.i.i.i.i805:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810, %.lr.ph.i.i.i.i.i.preheader.i804
  %.010.i.i.i.i.i.i806 = phi i64 [ %i.awn, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810 ], [ %i.awf, %.lr.ph.i.i.i.i.i.preheader.i804 ] ; 2 uses
  %.069.i.i.i.i.i.i807 = phi ptr [ %i.awi, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810 ], [ %i.awg, %.lr.ph.i.i.i.i.i.preheader.i804 ]
  %.078.i.i.i.i.i.i808 = phi ptr [ %i.awh, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810 ], [ %.sroa.013.027.i797.ptr, %.lr.ph.i.i.i.i.i.preheader.i804 ]
  %i.awh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i808, i64 -8 ; 3 uses
  %i.awi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i807, i64 -8 ; 3 uses
  %i.awj = load ptr, ptr %i.awh, align 8, !tbaa !553
  store ptr null, ptr %i.awh, align 8, !tbaa !553
  %i.awk = load ptr, ptr %i.awi, align 8, !tbaa !553 ; 4 uses
  store ptr %i.awj, ptr %i.awi, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i809 = icmp eq ptr %i.awk, null
  br i1 %.not.i.i.i.i.i.i.i.i809, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810, label %bb.kk

bb.kk:                                            ; preds = %.lr.ph.i.i.i.i.i.i805
  %i.awl = atomicrmw sub ptr %i.awk, i32 1 seq_cst, align 4
  %i.awm = icmp eq i32 %i.awl, 1
  br i1 %i.awm, label %bb.kl, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.awk) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.awk, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810: ; preds = %bb.kl, %bb.kk, %.lr.ph.i.i.i.i.i.i805
  %i.awn = add nsw i64 %.010.i.i.i.i.i.i806, -1
  %i.awo = icmp sgt i64 %.010.i.i.i.i.i.i806, 1
  br i1 %i.awo, label %.lr.ph.i.i.i.i.i.i805, label %.loopexit.i802, !llvm.loop !864

.loopexit.i802:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i810
  %i.awp = load ptr, ptr %i.atl, align 8, !tbaa !553 ; 4 uses
  store ptr %i.avk, ptr %i.atl, align 8, !tbaa !553
  %.not.i.i.i803 = icmp eq ptr %i.awp, null
  br i1 %.not.i.i.i803, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799, label %bb.km

bb.km:                                            ; preds = %.loopexit.i802
  %i.awq = atomicrmw sub ptr %i.awp, i32 1 seq_cst, align 4
  %i.awr = icmp eq i32 %i.awq, 1
  br i1 %i.awr, label %bb.kn, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799

bb.kn:                                            ; preds = %bb.km
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.awp) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.awp, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799

bb.ko:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit945
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.013.027.i797.ptr, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799 unwind label %.loopexit.split-lp1168.loopexit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799: ; preds = %bb.ko, %bb.kn, %bb.km, %.loopexit.i802
  %.sroa.013.027.i797.add = add nuw nsw i64 %.sroa.013.027.i797.idx, 8 ; 2 uses
  %.not.i801 = icmp eq i64 %.sroa.013.027.i797.add, 128
  br i1 %.not.i801, label %.noexc626, label %bb.kg, !llvm.loop !865

.noexc626:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i799
  %.not7.i.i.i.i621 = icmp eq ptr %i.avj, %i.atm
  br i1 %.not7.i.i.i.i621, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, label %.lr.ph.i.i.i.i622

.lr.ph.i.i.i.i622:                                ; preds = %.noexc626, %.noexc627
  %.sroa.0.08.i.i.i.i623 = phi ptr [ %i.aws, %.noexc627 ], [ %i.avj, %.noexc626 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i623, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc627 unwind label %.loopexit1167

.noexc627:                                        ; preds = %.lr.ph.i.i.i.i622
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i623, i64 8 ; 2 uses
  %.not.i.i.i.i624 = icmp eq ptr %i.aws, %i.atm
  br i1 %.not.i.i.i.i624, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, label %.lr.ph.i.i.i.i622, !llvm.loop !866

.preheader.i773:                                  ; preds = %.noexc625
  %.sroa.013.024.i774 = getelementptr inbounds nuw i8, ptr %i.atl, i64 8 ; 2 uses
  %.not25.i775 = icmp eq ptr %.sroa.013.024.i774, %i.atm
  br i1 %.not25.i775, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, label %.lr.ph.i776

.lr.ph.i776:                                      ; preds = %.preheader.i773, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779
  %.sroa.013.027.i777 = phi ptr [ %.sroa.013.0.i780, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779 ], [ %.sroa.013.024.i774, %.preheader.i773 ] ; 7 uses
  %.pn26.i778 = phi ptr [ %.sroa.013.027.i777, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779 ], [ %i.atl, %.preheader.i773 ]
  %i.awt = load ptr, ptr %.sroa.013.027.i777, align 8, !tbaa !553 ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 224
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !71 ; 2 uses
  %i.aww = fcmp oeq double %i.awv, 0.000000e+00
  br i1 %i.aww, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph.i776
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awt, i64 192
  %i.awy = load i64, ptr %i.awx, align 8, !tbaa !752
  %i.awz = uitofp i64 %i.awy to double
  %i.axa = fmul nnan double %i.awz, f0x3EB0000000000000
  %i.axb = fdiv double %i.axa, %i.awv
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.lr.ph.i776
  %i.axc = phi double [ %i.axb, %bb.kp ], [ 0.000000e+00, %.lr.ph.i776 ]
  %i.axd = load ptr, ptr %i.atl, align 8, !tbaa !553 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 224
  %i.axf = load double, ptr %i.axe, align 8, !tbaa !71 ; 2 uses
  %i.axg = fcmp oeq double %i.axf, 0.000000e+00
  br i1 %i.axg, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axd, i64 192
  %i.axi = load i64, ptr %i.axh, align 8, !tbaa !752
  %i.axj = uitofp i64 %i.axi to double
  %i.axk = fmul nnan double %i.axj, f0x3EB0000000000000
  %i.axl = fdiv double %i.axk, %i.axf
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit

_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit: ; preds = %bb.kq, %bb.kr
  %i.axm = phi double [ %i.axl, %bb.kr ], [ 0.000000e+00, %bb.kq ]
  %i.axn = fcmp olt double %i.axc, %i.axm
  br i1 %i.axn, label %bb.ks, label %bb.kx

bb.ks:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit
  store ptr null, ptr %.sroa.013.027.i777, align 8, !tbaa !553
  %i.axo = ptrtoint ptr %.sroa.013.027.i777 to i64
  %i.axp = sub i64 %i.axo, %i.avc
  %i.axq = ashr exact i64 %i.axp, 3               ; 2 uses
  %i.axr = icmp sgt i64 %i.axq, 0
  br i1 %i.axr, label %.lr.ph.i.i.i.i.i.preheader.i784, label %.loopexit.i782

.lr.ph.i.i.i.i.i.preheader.i784:                  ; preds = %bb.ks
  %i.axs = getelementptr inbounds nuw i8, ptr %.pn26.i778, i64 16
  br label %.lr.ph.i.i.i.i.i.i785

.lr.ph.i.i.i.i.i.i785:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790, %.lr.ph.i.i.i.i.i.preheader.i784
  %.010.i.i.i.i.i.i786 = phi i64 [ %i.axz, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790 ], [ %i.axq, %.lr.ph.i.i.i.i.i.preheader.i784 ] ; 2 uses
  %.069.i.i.i.i.i.i787 = phi ptr [ %i.axu, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790 ], [ %i.axs, %.lr.ph.i.i.i.i.i.preheader.i784 ]
  %.078.i.i.i.i.i.i788 = phi ptr [ %i.axt, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790 ], [ %.sroa.013.027.i777, %.lr.ph.i.i.i.i.i.preheader.i784 ]
  %i.axt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i788, i64 -8 ; 3 uses
  %i.axu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i787, i64 -8 ; 3 uses
  %i.axv = load ptr, ptr %i.axt, align 8, !tbaa !553
  store ptr null, ptr %i.axt, align 8, !tbaa !553
  %i.axw = load ptr, ptr %i.axu, align 8, !tbaa !553 ; 4 uses
  store ptr %i.axv, ptr %i.axu, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i789 = icmp eq ptr %i.axw, null
  br i1 %.not.i.i.i.i.i.i.i.i789, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790, label %bb.kt

bb.kt:                                            ; preds = %.lr.ph.i.i.i.i.i.i785
  %i.axx = atomicrmw sub ptr %i.axw, i32 1 seq_cst, align 4
  %i.axy = icmp eq i32 %i.axx, 1
  br i1 %i.axy, label %bb.ku, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790

bb.ku:                                            ; preds = %bb.kt
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.axw) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.axw, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790: ; preds = %bb.ku, %bb.kt, %.lr.ph.i.i.i.i.i.i785
  %i.axz = add nsw i64 %.010.i.i.i.i.i.i786, -1
  %i.aya = icmp sgt i64 %.010.i.i.i.i.i.i786, 1
  br i1 %i.aya, label %.lr.ph.i.i.i.i.i.i785, label %.loopexit.i782, !llvm.loop !864

.loopexit.i782:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i790, %bb.ks
  %i.ayb = load ptr, ptr %i.atl, align 8, !tbaa !553 ; 4 uses
  store ptr %i.awt, ptr %i.atl, align 8, !tbaa !553
  %.not.i.i.i783 = icmp eq ptr %i.ayb, null
  br i1 %.not.i.i.i783, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779, label %bb.kv

bb.kv:                                            ; preds = %.loopexit.i782
  %i.ayc = atomicrmw sub ptr %i.ayb, i32 1 seq_cst, align 4
  %i.ayd = icmp eq i32 %i.ayc, 1
  br i1 %i.ayd, label %bb.kw, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779

bb.kw:                                            ; preds = %bb.kv
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.ayb) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.ayb, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779

bb.kx:                                            ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.013.027.i777, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_114iorate_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779: ; preds = %bb.kx, %bb.kw, %bb.kv, %.loopexit.i782
  %.sroa.013.0.i780 = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i777, i64 8 ; 2 uses
  %.not.i781 = icmp eq ptr %.sroa.013.0.i780, %i.atm
  br i1 %.not.i781, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629, label %.lr.ph.i776, !llvm.loop !865

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i779, %.noexc627, %bb.jt, %.noexc626, %.preheader.i773
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.165, i64 32)
          to label %bb.ky unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

bb.ky:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit629
  store i32 0, ptr %i.u, align 4, !tbaa !3
  %i.aye = load ptr, ptr %17, align 8, !tbaa !869 ; 16 uses
  %i.ayf = load ptr, ptr %i.fd, align 8, !tbaa !869 ; 10 uses
  %.not11581289 = icmp eq ptr %i.aye, %i.ayf      ; 2 uses
  br i1 %.not11581289, label %._crit_edge1293.thread, label %.lr.ph1292

.lr.ph1292:                                       ; preds = %bb.ky
  %i.ayg = icmp slt i32 %2, 3
  %i.ayh = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  br label %bb.kz

bb.kz:                                            ; preds = %.lr.ph1292, %bb.lg
  %.sroa.01010.01290 = phi ptr [ %i.aye, %.lr.ph1292 ], [ %i.aze, %bb.lg ] ; 5 uses
  %i.ayi = load ptr, ptr %.sroa.01010.01290, align 8, !tbaa !553 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 25
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !166, !range !368, !noundef !290
  %i.ayl = trunc nuw i8 %i.ayk to i1
  br i1 %i.ayl, label %bb.lg, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayi, i64 241
  %i.ayn = load volatile i8, ptr %i.aym, align 1, !tbaa !174, !range !368, !noundef !290
  %i.ayo = trunc nuw i8 %i.ayn to i1
  br i1 %i.ayo, label %bb.lb, label %bb.lg

bb.lb:                                            ; preds = %bb.la
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayi, i64 224
  %i.ayq = load double, ptr %i.ayp, align 8, !tbaa !71
  %i.ayr = fcmp olt double %i.ayq, 2.500000e-01
  %or.cond31 = and i1 %i.ayg, %i.ayr
  br i1 %or.cond31, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ays = load i32, ptr %i.u, align 4, !tbaa !3  ; 2 uses
  %i.ayt = add nsw i32 %i.ays, 1
  store i32 %i.ayt, ptr %i.u, align 4, !tbaa !3
  %i.ayu = icmp sgt i32 %i.ays, 2
  br i1 %i.ayu, label %.thread1147, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #5
  %67 = load ptr, ptr %.sroa.01010.01290, align 8, !tbaa !553
  %i.ayv = getelementptr inbounds nuw i8, ptr %67, i64 192
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !752
  %i.ayx = uitofp i64 %i.ayw to double
  %i.ayy = fmul nnan double %i.ayx, f0x3EB0000000000000 ; 2 uses
  store double %i.ayy, ptr %i.y, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #5
  %68 = load ptr, ptr %.sroa.01010.01290, align 8, !tbaa !553
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 224 ; 2 uses
  %70 = load double, ptr %69, align 8, !tbaa !71
  %i.ayz = fdiv double %i.ayy, %70
  store double %i.ayz, ptr %i.z, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #5
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01010.01290, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.le unwind label %bb.lh

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZN3fmt3v125printIJRiRdS3_S3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.166, i64 46, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(32) %57)
          to label %bb.lf unwind label %bb.li

bb.lf:                                            ; preds = %bb.le
  %i.aza = load ptr, ptr %57, align 8, !tbaa !36  ; 2 uses
  %i.azb = icmp eq ptr %i.aza, %i.ayh
  br i1 %i.azb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %bb.lf
  %i.azc = load i64, ptr %i.ayh, align 8, !tbaa !39
  %i.azd = add i64 %i.azc, 1
  call void @_ZdlPvm(ptr noundef %i.aza, i64 noundef %i.azd) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %bb.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  br label %bb.lg

bb.lg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %bb.kz, %bb.lb, %bb.la
  %i.aze = getelementptr inbounds nuw i8, ptr %.sroa.01010.01290, i64 8 ; 2 uses
  %.not1158 = icmp eq ptr %i.aze, %i.ayf
  br i1 %.not1158, label %._crit_edge1293, label %bb.kz

bb.lh:                                            ; preds = %bb.ld
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

bb.li:                                            ; preds = %bb.le
  %i.azg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azh = load ptr, ptr %57, align 8, !tbaa !36  ; 2 uses
  %i.azi = icmp eq ptr %i.azh, %i.ayh
  br i1 %i.azi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %bb.li
  %i.azj = load i64, ptr %i.ayh, align 8, !tbaa !39
  %i.azk = add i64 %i.azj, 1
  call void @_ZdlPvm(ptr noundef %i.azh, i64 noundef %i.azk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633, %bb.lh
  %.pn275 = phi { ptr, i32 } [ %i.azf, %bb.lh ], [ %i.azg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633 ], [ %i.azg, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  br label %.body697

._crit_edge1293:                                  ; preds = %bb.lg
  %.pr.pre = load i32, ptr %i.u, align 4, !tbaa !3
  %i.azl = icmp eq i32 %.pr.pre, 0
  br i1 %i.azl, label %._crit_edge1293.thread, label %.thread1147

._crit_edge1293.thread:                           ; preds = %bb.ky, %._crit_edge1293
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.167, i64 35)
          to label %bb.ll unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.thread1147:                                      ; preds = %bb.lc, %._crit_edge1293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #5
  %i.azm = getelementptr inbounds i8, ptr %i.ayf, i64 -8
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !553 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 192
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !752
  %i.azq = uitofp i64 %i.azp to double
  %i.azr = fmul nnan double %i.azq, f0x3EB0000000000000
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azn, i64 224
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !71
  %i.azu = fdiv double %i.azr, %i.azt
  store double %i.azu, ptr %i.aa, align 8, !tbaa !71
  invoke void @_ZN3fmt3v125printIJRdEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.168, i64 30, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.lj unwind label %bb.lk

bb.lj:                                            ; preds = %.thread1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #5
  br label %bb.ll

bb.lk:                                            ; preds = %.thread1147
  %i.azv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #5
  br label %.body697

bb.ll:                                            ; preds = %._crit_edge1293.thread, %bb.lj
  %i.azw = load i64, ptr %i.d, align 8, !tbaa !201
  %.not277 = icmp eq i64 %i.azw, 0
  br i1 %.not277, label %.loopexit1165, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  br i1 %.not11581289, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.azx = ptrtoint ptr %i.ayf to i64
  %i.azy = ptrtoint ptr %i.aye to i64             ; 2 uses
  %i.azz = sub i64 %i.azx, %i.azy                 ; 2 uses
  %i.baa = ashr exact i64 %i.azz, 3
  %i.bab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.baa, i1 true)
  %i.bac = shl nuw nsw i64 %i.bab, 1
  %i.bad = xor i64 %i.bac, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.aye, ptr %i.ayf, i64 noundef %i.bad, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_122redundantbytes_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc641 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc641:                                        ; preds = %bb.ln
  %i.bae = icmp sgt i64 %i.azz, 128
  br i1 %i.bae, label %.preheader1669, label %.preheader.i813

.preheader1669:                                   ; preds = %.noexc641, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853
  %.sroa.013.027.i851.idx = phi i64 [ %.sroa.013.027.i851.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853 ], [ 8, %.noexc641 ] ; 3 uses
  %.pn26.i852 = phi ptr [ %.sroa.013.027.i851.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853 ], [ %i.aye, %.noexc641 ]
  %.sroa.013.027.i851.ptr = getelementptr inbounds nuw i8, ptr %i.aye, i64 %.sroa.013.027.i851.idx ; 8 uses
  %i.baf = load ptr, ptr %.sroa.013.027.i851.ptr, align 8, !tbaa !553
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 208
  %i.bah = load atomic i64, ptr %i.bag seq_cst, align 8
  %i.bai = load ptr, ptr %i.aye, align 8, !tbaa !553
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 208
  %i.bak = load atomic i64, ptr %i.baj seq_cst, align 8
  %i.bal = icmp ugt i64 %i.bah, %i.bak
  %i.bam = load ptr, ptr %.sroa.013.027.i851.ptr, align 8, !tbaa !553 ; 3 uses
  store ptr null, ptr %.sroa.013.027.i851.ptr, align 8, !tbaa !553
  br i1 %i.bal, label %.lr.ph.i.i.i.i.i.preheader.i858, label %bb.lr

.lr.ph.i.i.i.i.i.preheader.i858:                  ; preds = %.preheader1669
  %i.ban = lshr exact i64 %.sroa.013.027.i851.idx, 3
  %i.bao = getelementptr inbounds nuw i8, ptr %.pn26.i852, i64 16
  br label %.lr.ph.i.i.i.i.i.i859

.lr.ph.i.i.i.i.i.i859:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864, %.lr.ph.i.i.i.i.i.preheader.i858
  %.010.i.i.i.i.i.i860 = phi i64 [ %i.bav, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864 ], [ %i.ban, %.lr.ph.i.i.i.i.i.preheader.i858 ] ; 2 uses
  %.069.i.i.i.i.i.i861 = phi ptr [ %i.baq, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864 ], [ %i.bao, %.lr.ph.i.i.i.i.i.preheader.i858 ]
  %.078.i.i.i.i.i.i862 = phi ptr [ %i.bap, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864 ], [ %.sroa.013.027.i851.ptr, %.lr.ph.i.i.i.i.i.preheader.i858 ]
  %i.bap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i862, i64 -8 ; 3 uses
  %i.baq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i861, i64 -8 ; 3 uses
  %i.bar = load ptr, ptr %i.bap, align 8, !tbaa !553
  store ptr null, ptr %i.bap, align 8, !tbaa !553
  %i.bas = load ptr, ptr %i.baq, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bar, ptr %i.baq, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i863 = icmp eq ptr %i.bas, null
  br i1 %.not.i.i.i.i.i.i.i.i863, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864, label %bb.lo

bb.lo:                                            ; preds = %.lr.ph.i.i.i.i.i.i859
  %i.bat = atomicrmw sub ptr %i.bas, i32 1 seq_cst, align 4
  %i.bau = icmp eq i32 %i.bat, 1
  br i1 %i.bau, label %bb.lp, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864

bb.lp:                                            ; preds = %bb.lo
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bas) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bas, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864: ; preds = %bb.lp, %bb.lo, %.lr.ph.i.i.i.i.i.i859
  %i.bav = add nsw i64 %.010.i.i.i.i.i.i860, -1
  %i.baw = icmp sgt i64 %.010.i.i.i.i.i.i860, 1
  br i1 %i.baw, label %.lr.ph.i.i.i.i.i.i859, label %.loopexit.i856, !llvm.loop !864

.loopexit.i856:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i864
  %i.bax = load ptr, ptr %i.aye, align 8, !tbaa !553 ; 3 uses
  store ptr %i.bam, ptr %i.aye, align 8, !tbaa !553
  %.not.i.i.i857 = icmp eq ptr %i.bax, null
  br i1 %.not.i.i.i857, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853, label %bb.lq

bb.lq:                                            ; preds = %.loopexit.i856
  %i.bay = atomicrmw sub ptr %i.bax, i32 1 seq_cst, align 4
  %i.baz = icmp eq i32 %i.bay, 1
  br i1 %i.baz, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853.sink.split, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i853

bb.lr:                                            ; preds = %.preheader1669
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bam, i64 208 ; 2 uses
  %.sroa.0.0.i9611300 = getelementptr inbounds i8, ptr %.sroa.013.027.i851.ptr, i64 -8 ; 2 uses
  %i.bbb = load atomic i64, ptr %i.bba seq_cst, align 8
  %i.bbc = load ptr, ptr %.sroa.0.0.i9611300, align 8, !tbaa !553
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 208
  %i.bbe = load atomic i64, ptr %i.bbd seq_cst, align 8
  %i.bbf = icmp ugt i64 %i.bbb, %i.bbe
  br i1 %i.bbf, label %.lr.ph1304, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i964._crit_edge

.lr.ph1304:                                       ; preds = %bb.lr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970
  %.sroa.0.0.i9611302 = phi ptr [ %.sroa.0.0.i961, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970 ], [ %.sroa.0.0.i9611300, %bb.lr ] ; 5 uses
  %.sroa.08.0.i9601301 = phi ptr [ %.sroa.0.0.i9611302, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970 ], [ %.sroa.013.027.i851.ptr, %bb.lr ] ; 2 uses
  %i.bbg = load ptr, ptr %.sroa.0.0.i9611302, align 8, !tbaa !553
  store ptr null, ptr %.sroa.0.0.i9611302, align 8, !tbaa !553
  %i.bbh = load ptr, ptr %.sroa.08.0.i9601301, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bbg, ptr %.sroa.08.0.i9601301, align 8, !tbaa !553
  %.not.i.i.i969 = icmp eq ptr %i.bbh, null
  br i1 %.not.i.i.i969, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970, label %bb.ls

bb.ls:                                            ; preds = %.lr.ph1304
  %i.bbi = atomicrmw sub ptr %i.bbh, i32 1 seq_cst, align 4
  %i.bbj = icmp eq i32 %i.bbi, 1
  br i1 %i.bbj, label %bb.lt, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bbh) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bbh, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i970: ; preds = %bb.lt, %bb.ls, %.lr.ph1304
  %.sroa.0.0.i961 = getelementptr inbounds i8, ptr %.sroa.0.0.i9611302, i64 -8 ; 2 uses
  %i.bbk = load atomic i64, ptr %i.bba seq_cst, align 8
  %i.bbl = load ptr, ptr %.sroa.0.0.i961, align 8, !tbaa !553
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 208
end_hunk_2
begin_hunk_3_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.lr.ph1309:                                       ; preds = %.lr.ph.i.i.i.i638, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843
  %.sroa.0.0.i8341308 = phi ptr [ %.sroa.0.0.i834, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843 ], [ %.sroa.0.0.i8341306, %.lr.ph.i.i.i.i638 ] ; 5 uses
  %.sroa.08.0.i8331307 = phi ptr [ %.sroa.0.0.i8341308, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843 ], [ %.sroa.0.08.i.i.i.i639, %.lr.ph.i.i.i.i638 ] ; 2 uses
  %i.bca = load ptr, ptr %.sroa.0.0.i8341308, align 8, !tbaa !553
  store ptr null, ptr %.sroa.0.0.i8341308, align 8, !tbaa !553
  %i.bcb = load ptr, ptr %.sroa.08.0.i8331307, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bca, ptr %.sroa.08.0.i8331307, align 8, !tbaa !553
  %.not.i.i.i842 = icmp eq ptr %i.bcb, null
  br i1 %.not.i.i.i842, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843, label %bb.lv

bb.lv:                                            ; preds = %.lr.ph1309
  %i.bcc = atomicrmw sub ptr %i.bcb, i32 1 seq_cst, align 4
  %i.bcd = icmp eq i32 %i.bcc, 1
  br i1 %i.bcd, label %bb.lw, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843

bb.lw:                                            ; preds = %bb.lv
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bcb) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bcb, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843: ; preds = %bb.lw, %bb.lv, %.lr.ph1309
  %.sroa.0.0.i834 = getelementptr inbounds i8, ptr %.sroa.0.0.i8341308, i64 -8 ; 2 uses
  %i.bce = load atomic i64, ptr %i.bbu seq_cst, align 8
  %i.bcf = load ptr, ptr %.sroa.0.0.i834, align 8, !tbaa !553
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 208
  %i.bch = load atomic i64, ptr %i.bcg seq_cst, align 8
  %i.bci = icmp ugt i64 %i.bce, %i.bch
  br i1 %i.bci, label %.lr.ph1309, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i837._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i837._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843, %.lr.ph.i.i.i.i638
  %.sroa.08.0.i833.lcssa = phi ptr [ %.sroa.0.08.i.i.i.i639, %.lr.ph.i.i.i.i638 ], [ %.sroa.0.0.i8341308, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i843 ] ; 2 uses
  %i.bcj = load ptr, ptr %.sroa.08.0.i833.lcssa, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bbt, ptr %.sroa.08.0.i833.lcssa, align 8, !tbaa !553
  %.not.i.i1.i838 = icmp eq ptr %i.bcj, null
  br i1 %.not.i.i1.i838, label %.noexc643, label %bb.lx

bb.lx:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i837._crit_edge
  %i.bck = atomicrmw sub ptr %i.bcj, i32 1 seq_cst, align 4
  %i.bcl = icmp eq i32 %i.bck, 1
  br i1 %i.bcl, label %bb.ly, label %.noexc643

bb.ly:                                            ; preds = %bb.lx
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bcj) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bcj, i64 noundef 400) #46
  br label %.noexc643

.noexc643:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i837._crit_edge, %bb.ly, %bb.lx
  %i.bcm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i639, i64 8 ; 2 uses
  %.not.i.i.i.i640 = icmp eq ptr %i.bcm, %i.ayf
  br i1 %.not.i.i.i.i640, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645, label %.lr.ph.i.i.i.i638, !llvm.loop !866

.preheader.i813:                                  ; preds = %.noexc641
  %.sroa.013.024.i814 = getelementptr inbounds nuw i8, ptr %i.aye, i64 8 ; 2 uses
  %.not25.i815 = icmp eq ptr %.sroa.013.024.i814, %i.ayf
  br i1 %.not25.i815, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645, label %.lr.ph.i816

.lr.ph.i816:                                      ; preds = %.preheader.i813, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819
  %.sroa.013.027.i817 = phi ptr [ %.sroa.013.0.i820, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819 ], [ %.sroa.013.024.i814, %.preheader.i813 ] ; 10 uses
  %.pn26.i818 = phi ptr [ %.sroa.013.027.i817, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819 ], [ %i.aye, %.preheader.i813 ]
  %i.bcn = load ptr, ptr %.sroa.013.027.i817, align 8, !tbaa !553
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 208
  %i.bcp = load atomic i64, ptr %i.bco seq_cst, align 8
  %i.bcq = load ptr, ptr %i.aye, align 8, !tbaa !553
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 208
  %i.bcs = load atomic i64, ptr %i.bcr seq_cst, align 8
  %i.bct = icmp ugt i64 %i.bcp, %i.bcs
  %i.bcu = load ptr, ptr %.sroa.013.027.i817, align 8, !tbaa !553 ; 3 uses
  store ptr null, ptr %.sroa.013.027.i817, align 8, !tbaa !553
  br i1 %i.bct, label %bb.lz, label %bb.md

bb.lz:                                            ; preds = %.lr.ph.i816
  %i.bcv = ptrtoint ptr %.sroa.013.027.i817 to i64
  %i.bcw = sub i64 %i.bcv, %i.azy
  %i.bcx = ashr exact i64 %i.bcw, 3               ; 2 uses
  %i.bcy = icmp sgt i64 %i.bcx, 0
  br i1 %i.bcy, label %.lr.ph.i.i.i.i.i.preheader.i824, label %.loopexit.i822

.lr.ph.i.i.i.i.i.preheader.i824:                  ; preds = %bb.lz
  %i.bcz = getelementptr inbounds nuw i8, ptr %.pn26.i818, i64 16
  br label %.lr.ph.i.i.i.i.i.i825

.lr.ph.i.i.i.i.i.i825:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830, %.lr.ph.i.i.i.i.i.preheader.i824
  %.010.i.i.i.i.i.i826 = phi i64 [ %i.bdg, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830 ], [ %i.bcx, %.lr.ph.i.i.i.i.i.preheader.i824 ] ; 2 uses
  %.069.i.i.i.i.i.i827 = phi ptr [ %i.bdb, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830 ], [ %i.bcz, %.lr.ph.i.i.i.i.i.preheader.i824 ]
  %.078.i.i.i.i.i.i828 = phi ptr [ %i.bda, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830 ], [ %.sroa.013.027.i817, %.lr.ph.i.i.i.i.i.preheader.i824 ]
  %i.bda = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i828, i64 -8 ; 3 uses
  %i.bdb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i827, i64 -8 ; 3 uses
  %i.bdc = load ptr, ptr %i.bda, align 8, !tbaa !553
  store ptr null, ptr %i.bda, align 8, !tbaa !553
  %i.bdd = load ptr, ptr %i.bdb, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bdc, ptr %i.bdb, align 8, !tbaa !553
  %.not.i.i.i.i.i.i.i.i829 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i.i.i.i.i.i.i829, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830, label %bb.ma

bb.ma:                                            ; preds = %.lr.ph.i.i.i.i.i.i825
  %i.bde = atomicrmw sub ptr %i.bdd, i32 1 seq_cst, align 4
  %i.bdf = icmp eq i32 %i.bde, 1
  br i1 %i.bdf, label %bb.mb, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830

bb.mb:                                            ; preds = %bb.ma
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bdd) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bdd, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830: ; preds = %bb.mb, %bb.ma, %.lr.ph.i.i.i.i.i.i825
  %i.bdg = add nsw i64 %.010.i.i.i.i.i.i826, -1
  %i.bdh = icmp sgt i64 %.010.i.i.i.i.i.i826, 1
  br i1 %i.bdh, label %.lr.ph.i.i.i.i.i.i825, label %.loopexit.i822, !llvm.loop !864

.loopexit.i822:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i830, %bb.lz
  %i.bdi = load ptr, ptr %i.aye, align 8, !tbaa !553 ; 3 uses
  store ptr %i.bcu, ptr %i.aye, align 8, !tbaa !553
  %.not.i.i.i823 = icmp eq ptr %i.bdi, null
  br i1 %.not.i.i.i823, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819, label %bb.mc

bb.mc:                                            ; preds = %.loopexit.i822
  %i.bdj = atomicrmw sub ptr %i.bdi, i32 1 seq_cst, align 4
  %i.bdk = icmp eq i32 %i.bdj, 1
  br i1 %i.bdk, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819.sink.split, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819

bb.md:                                            ; preds = %.lr.ph.i816
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bcu, i64 208 ; 2 uses
  %.sroa.0.0.i9471294 = getelementptr inbounds i8, ptr %.sroa.013.027.i817, i64 -8 ; 2 uses
  %i.bdm = load atomic i64, ptr %i.bdl seq_cst, align 8
  %i.bdn = load ptr, ptr %.sroa.0.0.i9471294, align 8, !tbaa !553
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 208
  %i.bdp = load atomic i64, ptr %i.bdo seq_cst, align 8
  %i.bdq = icmp ugt i64 %i.bdm, %i.bdp
  br i1 %i.bdq, label %.lr.ph1298, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i950._crit_edge

.lr.ph1298:                                       ; preds = %bb.md, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956
  %.sroa.0.0.i9471296 = phi ptr [ %.sroa.0.0.i947, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956 ], [ %.sroa.0.0.i9471294, %bb.md ] ; 5 uses
  %.sroa.08.0.i9461295 = phi ptr [ %.sroa.0.0.i9471296, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956 ], [ %.sroa.013.027.i817, %bb.md ] ; 2 uses
  %i.bdr = load ptr, ptr %.sroa.0.0.i9471296, align 8, !tbaa !553
  store ptr null, ptr %.sroa.0.0.i9471296, align 8, !tbaa !553
  %i.bds = load ptr, ptr %.sroa.08.0.i9461295, align 8, !tbaa !553 ; 4 uses
  store ptr %i.bdr, ptr %.sroa.08.0.i9461295, align 8, !tbaa !553
  %.not.i.i.i955 = icmp eq ptr %i.bds, null
  br i1 %.not.i.i.i955, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956, label %bb.me

bb.me:                                            ; preds = %.lr.ph1298
  %i.bdt = atomicrmw sub ptr %i.bds, i32 1 seq_cst, align 4
  %i.bdu = icmp eq i32 %i.bdt, 1
  br i1 %i.bdu, label %bb.mf, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956

bb.mf:                                            ; preds = %bb.me
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.bds) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.bds, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956: ; preds = %bb.mf, %bb.me, %.lr.ph1298
  %.sroa.0.0.i947 = getelementptr inbounds i8, ptr %.sroa.0.0.i9471296, i64 -8 ; 2 uses
  %i.bdv = load atomic i64, ptr %i.bdl seq_cst, align 8
  %i.bdw = load ptr, ptr %.sroa.0.0.i947, align 8, !tbaa !553
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 208
  %i.bdy = load atomic i64, ptr %i.bdx seq_cst, align 8
  %i.bdz = icmp ugt i64 %i.bdv, %i.bdy
  br i1 %i.bdz, label %.lr.ph1298, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i950._crit_edge, !llvm.loop !868

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i950._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956, %bb.md
  %.sroa.08.0.i946.lcssa = phi ptr [ %.sroa.013.027.i817, %bb.md ], [ %.sroa.0.0.i9471296, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i956 ] ; 2 uses
  %i.bea = load ptr, ptr %.sroa.08.0.i946.lcssa, align 8, !tbaa !553 ; 3 uses
  store ptr %i.bcu, ptr %.sroa.08.0.i946.lcssa, align 8, !tbaa !553
  %.not.i.i1.i951 = icmp eq ptr %i.bea, null
  br i1 %.not.i.i1.i951, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819, label %bb.mg

bb.mg:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i950._crit_edge
  %i.beb = atomicrmw sub ptr %i.bea, i32 1 seq_cst, align 4
  %i.bec = icmp eq i32 %i.beb, 1
  br i1 %i.bec, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819.sink.split, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819.sink.split: ; preds = %bb.mg, %bb.mc
  %.sink1668 = phi ptr [ %i.bdi, %bb.mc ], [ %i.bea, %bb.mg ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.sink1668) #5
  call void @_ZdlPvm(ptr noundef nonnull %.sink1668, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819.sink.split, %bb.mg, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i950._crit_edge, %bb.mc, %.loopexit.i822
  %.sroa.013.0.i820 = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i817, i64 8 ; 2 uses
  %.not.i821 = icmp eq ptr %.sroa.013.0.i820, %i.ayf
  br i1 %.not.i821, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645, label %.lr.ph.i816, !llvm.loop !865

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i819, %.noexc643, %.noexc642, %bb.lm, %.preheader.i813
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.169, i64 30)
          to label %bb.mh unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

bb.mh:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit645
  store i32 0, ptr %i.u, align 4, !tbaa !3
  %i.bed = load ptr, ptr %17, align 8, !tbaa !869 ; 3 uses
  %i.bee = load ptr, ptr %i.fd, align 8, !tbaa !869 ; 3 uses
  %.not11591311 = icmp eq ptr %i.bed, %i.bee
  br i1 %.not11591311, label %.loopexit1165, label %.lr.ph1314

.lr.ph1314:                                       ; preds = %bb.mh
  %i.bef = uitofp i64 %.0149 to double
  %i.beg = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  br label %bb.mi

bb.mi:                                            ; preds = %.lr.ph1314, %bb.mo
  %.sroa.0998.01312 = phi ptr [ %i.bed, %.lr.ph1314 ], [ %i.bfg, %bb.mo ] ; 5 uses
  %i.beh = load ptr, ptr %.sroa.0998.01312, align 8, !tbaa !553 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 25
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !166, !range !368, !noundef !290
  %i.bek = trunc nuw i8 %i.bej to i1
  br i1 %i.bek, label %bb.mo, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bel = getelementptr inbounds nuw i8, ptr %i.beh, i64 241
  %i.bem = load volatile i8, ptr %i.bel, align 1, !tbaa !174, !range !368, !noundef !290
  %i.ben = trunc nuw i8 %i.bem to i1
  br i1 %i.ben, label %bb.mk, label %bb.mo

bb.mk:                                            ; preds = %bb.mj
  %i.beo = load i32, ptr %i.u, align 4, !tbaa !3  ; 2 uses
  %i.bep = add nsw i32 %i.beo, 1
  store i32 %i.bep, ptr %i.u, align 4, !tbaa !3
  %i.beq = icmp sgt i32 %i.beo, 2
  br i1 %i.beq, label %.loopexit1165.loopexit, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #5
  %71 = load ptr, ptr %.sroa.0998.01312, align 8, !tbaa !553
  %i.ber = getelementptr inbounds nuw i8, ptr %71, i64 208
  %i.bes = load atomic i64, ptr %i.ber seq_cst, align 8
  %i.bet = uitofp i64 %i.bes to double
  %i.beu = fmul nnan double %i.bet, f0x3F50000000000000
  %i.bev = fmul nnan double %i.beu, f0x3F50000000000000
  store double %i.bev, ptr %i.ab, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #5
  %i.bew = load ptr, ptr %.sroa.0998.01312, align 8, !tbaa !553
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 208
  %i.bey = load atomic i64, ptr %i.bex seq_cst, align 8
  %i.bez = uitofp i64 %i.bey to double
  %i.bfa = fmul nnan double %i.bez, 1.000000e+02
  %i.bfb = fdiv double %i.bfa, %i.bef
  store double %i.bfb, ptr %i.ac, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #5
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0998.01312, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.mm unwind label %bb.mp

bb.mm:                                            ; preds = %bb.ml
  invoke void @_ZN3fmt3v125printIJRiddNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.162, i64 35, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.mn unwind label %bb.mq

bb.mn:                                            ; preds = %bb.mm
  %i.bfc = load ptr, ptr %58, align 8, !tbaa !36  ; 2 uses
  %i.bfd = icmp eq ptr %i.bfc, %i.beg
  br i1 %i.bfd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646: ; preds = %bb.mn
  %i.bfe = load i64, ptr %i.beg, align 8, !tbaa !39
  %i.bff = add i64 %i.bfe, 1
  call void @_ZdlPvm(ptr noundef %i.bfc, i64 noundef %i.bff) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #5
  br label %bb.mo

bb.mo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, %bb.mi, %bb.mj
  %i.bfg = getelementptr inbounds nuw i8, ptr %.sroa.0998.01312, i64 8 ; 2 uses
  %.not1159 = icmp eq ptr %i.bfg, %i.bee
  br i1 %.not1159, label %.loopexit1165.loopexit, label %bb.mi

bb.mp:                                            ; preds = %bb.ml
  %i.bfh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

bb.mq:                                            ; preds = %bb.mm
  %i.bfi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfj = load ptr, ptr %58, align 8, !tbaa !36  ; 2 uses
  %i.bfk = icmp eq ptr %i.bfj, %i.beg
  br i1 %i.bfk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %bb.mq
  %i.bfl = load i64, ptr %i.beg, align 8, !tbaa !39
  %i.bfm = add i64 %i.bfl, 1
  call void @_ZdlPvm(ptr noundef %i.bfj, i64 noundef %i.bfm) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649, %bb.mp
  %.pn278 = phi { ptr, i32 } [ %i.bfh, %bb.mp ], [ %i.bfi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %i.bfi, %bb.mq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #5
  br label %.body697

.loopexit1165.loopexit:                           ; preds = %bb.mo, %bb.mk
  %.pre1352.pre = load ptr, ptr %17, align 8, !tbaa !869
  %.pre1353.pre = load ptr, ptr %i.fd, align 8, !tbaa !869
  br label %.loopexit1165

.loopexit1165:                                    ; preds = %.loopexit1165.loopexit, %bb.mh, %bb.ll
  %.pre1353 = phi ptr [ %.pre1353.pre, %.loopexit1165.loopexit ], [ %i.bee, %bb.mh ], [ %i.ayf, %bb.ll ]
  %.pre1352 = phi ptr [ %.pre1352.pre, %.loopexit1165.loopexit ], [ %i.bed, %bb.mh ], [ %i.aye, %bb.ll ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  br label %bb.mr

.body697:                                         ; preds = %.loopexit1167, %.loopexit.split-lp1168.loopexit.split-lp.loopexit, %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1168.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %bb.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597
  %.pn278.pn = phi { ptr, i32 } [ %.pn278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651 ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597 ], [ %i.azv, %bb.lk ], [ %.pn275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %.pn272.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit619 ], [ %lpad.loopexit1169, %.loopexit1167 ], [ %lpad.loopexit1171, %.loopexit.split-lp1168.loopexit ], [ %lpad.loopexit1174, %.loopexit.split-lp1168.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  br label %.body

bb.mr:                                            ; preds = %bb.hm, %.loopexit1165
  %i.bfn = phi ptr [ %i.aki, %bb.hm ], [ %.pre1353, %.loopexit1165 ] ; 7 uses
  %i.bfo = phi ptr [ %i.akj, %bb.hm ], [ %.pre1352, %.loopexit1165 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #5
  store i32 0, ptr %i.ad, align 4, !tbaa !3
  %.not11601317 = icmp eq ptr %i.bfo, %i.bfn      ; 2 uses
  br i1 %.not11601317, label %._crit_edge1321, label %.lr.ph1320

._crit_edge1321:                                  ; preds = %bb.mt, %bb.mr
  invoke void @_ZN3fmt3v125printIJRiEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.170, i64 30, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
          to label %bb.mu unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph1320:                                       ; preds = %bb.mr, %bb.mt
  %.sroa.0992.01318 = phi ptr [ %i.bfw, %bb.mt ], [ %i.bfo, %bb.mr ] ; 2 uses
  %i.bfp = phi i32 [ %i.bfv, %bb.mt ], [ 0, %bb.mr ] ; 2 uses
  %i.bfq = load ptr, ptr %.sroa.0992.01318, align 8, !tbaa !553
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 25
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !166, !range !368, !noundef !290
  %i.bft = trunc nuw i8 %i.bfs to i1
  br i1 %i.bft, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %.lr.ph1320
  %i.bfu = add nsw i32 %i.bfp, 1                  ; 2 uses
  store i32 %i.bfu, ptr %i.ad, align 4, !tbaa !3
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %.lr.ph1320
  %i.bfv = phi i32 [ %i.bfu, %bb.ms ], [ %i.bfp, %.lr.ph1320 ]
  %i.bfw = getelementptr inbounds nuw i8, ptr %.sroa.0992.01318, i64 8 ; 2 uses
  %.not1160 = icmp eq ptr %i.bfw, %i.bfn
  br i1 %.not1160, label %._crit_edge1321, label %.lr.ph1320

bb.mu:                                            ; preds = %._crit_edge1321
  %i.bfx = load i32, ptr %i.ad, align 4, !tbaa !3
  %.not281 = icmp eq i32 %i.bfx, 0
  br i1 %.not281, label %bb.nl, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  br i1 %.not11601317, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit661, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bfy = ptrtoint ptr %i.bfn to i64
  %i.bfz = ptrtoint ptr %i.bfo to i64
  %i.bga = sub i64 %i.bfy, %i.bfz                 ; 2 uses
  %i.bgb = ashr exact i64 %i.bga, 3
  %i.bgc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bgb, i1 true)
  %i.bgd = shl nuw nsw i64 %i.bgc, 1
  %i.bge = xor i64 %i.bgd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.bfo, ptr %i.bfn, i64 noundef %i.bge, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc657 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc657:                                        ; preds = %bb.mw
  %i.bgf = icmp sgt i64 %i.bga, 128
  br i1 %i.bgf, label %bb.mx, label %bb.ng

bb.mx:                                            ; preds = %.noexc657
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfo, i64 128 ; 2 uses
  br label %bb.my

bb.my:                                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i873, %bb.mx
  %.sroa.013.027.i871.idx = phi i64 [ 8, %bb.mx ], [ %.sroa.013.027.i871.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i873 ] ; 3 uses
  %.pn26.i872 = phi ptr [ %i.bfo, %bb.mx ], [ %.sroa.013.027.i871.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i873 ]
  %.sroa.013.027.i871.ptr = getelementptr inbounds nuw i8, ptr %i.bfo, i64 %.sroa.013.027.i871.idx ; 5 uses
  %i.bgh = load ptr, ptr %.sroa.013.027.i871.ptr, align 8, !tbaa !553 ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16
  %.sroa.0.0.copyload.i.i974 = load ptr, ptr %i.bgi, align 8, !tbaa !114 ; 3 uses
  %i.bgj = load ptr, ptr %i.bfo, align 8, !tbaa !553
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 16
  %.sroa.0.0.copyload.i2.i975 = load ptr, ptr %i.bgk, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i.i976 = icmp eq ptr %.sroa.0.0.copyload.i2.i975, null
  br i1 %.not.i.i.i.i976, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.bgl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2.i975, i64 -24
  %i.bgm = load i64, ptr %i.bgl, align 8, !tbaa !207, !noalias !870
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977: ; preds = %bb.mz, %bb.my
  %.0.i.i.i.i978 = phi i64 [ %i.bgm, %bb.mz ], [ 0, %bb.my ] ; 2 uses
  %.not.i.i.i.i.i979 = icmp eq ptr %.sroa.0.0.copyload.i.i974, null
  br i1 %.not.i.i.i.i.i979, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i980, label %bb.na

bb.na:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977
  %i.bgn = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i974, i64 -24
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !207, !noalias !873
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i980

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i980: ; preds = %bb.na, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977
  %.0.i.i.i.i.i981 = phi i64 [ %i.bgo, %bb.na ], [ 0, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i977 ] ; 2 uses
  %i.bgp = call i64 @llvm.umin.i64(i64 %.0.i.i.i.i978, i64 %.0.i.i.i.i.i981) ; 2 uses
  %i.bgq = icmp eq i64 %i.bgp, 0
  br i1 %i.bgq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i984, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i982

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i982: ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i980
  %i.bgr = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i974, ptr noundef %.sroa.0.0.copyload.i2.i975, i64 noundef %i.bgp) #5 ; 2 uses
  %.not.i.i2.i.i983 = icmp eq i32 %i.bgr, 0
  br i1 %.not.i.i2.i.i983, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i984, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit985

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i984: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i982, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i.i.i980
  %i.bgs = trunc i64 %.0.i.i.i.i.i981 to i32
  %i.bgt = trunc i64 %.0.i.i.i.i978 to i32
  %i.bgu = sub nsw i32 %i.bgs, %i.bgt
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit985

_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit985: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i982, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i984
  %i.bgv = phi i32 [ %i.bgu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i984 ], [ %i.bgr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i982 ]
  %i.bgw = icmp slt i32 %i.bgv, 0
  br i1 %i.bgw, label %.lr.ph.i.i.i.i.i.preheader.i878, label %bb.nf

.lr.ph.i.i.i.i.i.preheader.i878:                  ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_.exit985
  store ptr null, ptr %.sroa.013.027.i871.ptr, align 8, !tbaa !553
  %i.bgx = lshr exact i64 %.sroa.013.027.i871.idx, 3
  %i.bgy = getelementptr inbounds nuw i8, ptr %.pn26.i872, i64 16
  br label %.lr.ph.i.i.i.i.i.i879

.lr.ph.i.i.i.i.i.i879:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i884, %.lr.ph.i.i.i.i.i.preheader.i878
end_hunk_3
