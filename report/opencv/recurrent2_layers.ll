Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/recurrent2_layers?download=true
inline.NumInlined: 1238
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn14LSTM2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.dz
  %.pn345.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn345.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lt ], [ %i.ro, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #22
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.dy
  %.pn345.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn345.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lu ], [ %i.rn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %bb.cn, %bb.ck, %bb.ch, %bb.bv, %bb.bs, %bb.bp, %bb.az, %bb.aw
  %.pn368.pn = phi { ptr, i32 } [ %.pn368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475 ], [ %i.jk, %bb.dk ], [ %.pn345.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lv ], [ %i.gy, %bb.ch ], [ %.pn226.pn, %bb.bv ], [ %.pn223.pn, %bb.bs ], [ %.pn220.pn, %bb.bp ], [ %.pn217.pn, %bb.cn ], [ %.pn214.pn, %bb.ck ], [ %.pn212, %bb.az ], [ %.pn210, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.act = load ptr, ptr %52, align 8, !tbaa !129 ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i559 = icmp eq ptr %i.act, %i.acv
  br i1 %.not4.i.i.i559, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i565, label %.lr.ph.i.i.i560

.lr.ph.i.i.i560:                                  ; preds = %bb.lw, %.lr.ph.i.i.i560
  %.05.i.i.i561 = phi ptr [ %i.acw, %.lr.ph.i.i.i560 ], [ %i.act, %bb.lw ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i561) #22
  %i.acw = getelementptr inbounds nuw i8, ptr %.05.i.i.i561, i64 208 ; 2 uses
  %.not.i.i.i562 = icmp eq ptr %i.acw, %i.acv
  br i1 %.not.i.i.i562, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i563, label %.lr.ph.i.i.i560, !llvm.loop !232

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i563: ; preds = %.lr.ph.i.i.i560
  %.pr.i564 = load ptr, ptr %52, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i565

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i565: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i563, %bb.lw
  %i.acx = phi ptr [ %.pr.i564, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i563 ], [ %i.act, %bb.lw ] ; 3 uses
  %.not.i.i1.i566 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i1.i566, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit567, label %bb.lx

bb.lx:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i565
  %i.acy = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !135
  %i.ada = ptrtoint ptr %i.acz to i64
  %i.adb = ptrtoint ptr %i.acx to i64
  %i.adc = sub i64 %i.ada, %i.adb
  call void @_ZdlPvm(ptr noundef nonnull %i.acx, i64 noundef %i.adc) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit567

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit567:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i565, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i391, %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit567, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %.pn368.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404 ], [ %.pn368.pn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit567 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ap, %bb.m ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i382 ], [ %i.aq, %bb.n ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i391 ]
  %i.add = load ptr, ptr %47, align 8, !tbaa !129 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i568 = icmp eq ptr %i.add, %i.adf
  br i1 %.not4.i.i.i568, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i574, label %.lr.ph.i.i.i569

.lr.ph.i.i.i569:                                  ; preds = %.body, %.lr.ph.i.i.i569
  %.05.i.i.i570 = phi ptr [ %i.adg, %.lr.ph.i.i.i569 ], [ %i.add, %.body ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i570) #22
  %i.adg = getelementptr inbounds nuw i8, ptr %.05.i.i.i570, i64 208 ; 2 uses
  %.not.i.i.i571 = icmp eq ptr %i.adg, %i.adf
  br i1 %.not.i.i.i571, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i572, label %.lr.ph.i.i.i569, !llvm.loop !232

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i572: ; preds = %.lr.ph.i.i.i569
  %.pr.i573 = load ptr, ptr %47, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i574

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i574: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i572, %.body
  %i.adh = phi ptr [ %.pr.i573, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i572 ], [ %i.add, %.body ] ; 3 uses
  %.not.i.i1.i575 = icmp eq ptr %i.adh, null
  br i1 %.not.i.i1.i575, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576, label %bb.ly

bb.ly:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i574
  %i.adi = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !135
  %i.adk = ptrtoint ptr %i.adj to i64
  %i.adl = ptrtoint ptr %i.adh to i64
  %i.adm = sub i64 %i.adk, %i.adl
  call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef %i.adm) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i574, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.adn = load ptr, ptr %46, align 8, !tbaa !129 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i577 = icmp eq ptr %i.adn, %i.adp
  br i1 %.not4.i.i.i577, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i583, label %.lr.ph.i.i.i578

.lr.ph.i.i.i578:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576, %.lr.ph.i.i.i578
  %.05.i.i.i579 = phi ptr [ %i.adq, %.lr.ph.i.i.i578 ], [ %i.adn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i579) #22
  %i.adq = getelementptr inbounds nuw i8, ptr %.05.i.i.i579, i64 208 ; 2 uses
  %.not.i.i.i580 = icmp eq ptr %i.adq, %i.adp
  br i1 %.not.i.i.i580, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i581, label %.lr.ph.i.i.i578, !llvm.loop !232

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i581: ; preds = %.lr.ph.i.i.i578
  %.pr.i582 = load ptr, ptr %46, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i583

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i583: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i581, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576
  %i.adr = phi ptr [ %.pr.i582, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i581 ], [ %i.adn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit576 ] ; 3 uses
  %.not.i.i1.i584 = icmp eq ptr %i.adr, null
  br i1 %.not.i.i1.i584, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585, label %bb.lz

bb.lz:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i583
  %i.ads = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !135
  %i.adu = ptrtoint ptr %i.adt to i64
  %i.adv = ptrtoint ptr %i.adr to i64
  %i.adw = sub i64 %i.adu, %i.adv
  call void @_ZdlPvm(ptr noundef nonnull %i.adr, i64 noundef %i.adw) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i583, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  %i.adx = load ptr, ptr %45, align 8, !tbaa !129 ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i586 = icmp eq ptr %i.adx, %i.adz
  br i1 %.not4.i.i.i586, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i592, label %.lr.ph.i.i.i587

.lr.ph.i.i.i587:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585, %.lr.ph.i.i.i587
  %.05.i.i.i588 = phi ptr [ %i.aea, %.lr.ph.i.i.i587 ], [ %i.adx, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i588) #22
  %i.aea = getelementptr inbounds nuw i8, ptr %.05.i.i.i588, i64 208 ; 2 uses
  %.not.i.i.i589 = icmp eq ptr %i.aea, %i.adz
  br i1 %.not.i.i.i589, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i590, label %.lr.ph.i.i.i587, !llvm.loop !232

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i590: ; preds = %.lr.ph.i.i.i587
  %.pr.i591 = load ptr, ptr %45, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i592

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i592: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i590, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585
  %i.aeb = phi ptr [ %.pr.i591, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i590 ], [ %i.adx, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit585 ] ; 3 uses
  %.not.i.i1.i593 = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i1.i593, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit594, label %bb.ma

bb.ma:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i592
  %i.aec = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !135
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = ptrtoint ptr %i.aeb to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %i.aeb, i64 noundef %i.aeg) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit594

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit594:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i592, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  resume { ptr, i32 } %.pn368.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(156), i32 noundef) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn14LSTM2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca [10 x i32], align 16              ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %14 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %22 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %23 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %24 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %25 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !233    ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ], [ %.pn49.pn.pn, %bb.aw ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67 ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 7 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !130
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %_ZNK2cv8MatShapeixEm.exit59, label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #23
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %9, align 8, !tbaa !28     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit59:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %14)
  %i.ad = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %13)
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit59
  %i.af = load i32, ptr %13, align 4, !tbaa !130  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.a, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

.lr.ph.i.a:                                       ; preds = %bb.h
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 9 uses
  %i.ah = zext nneg i32 %i.af to i64              ; 2 uses
  %xtraiter = and i64 %i.ah, 7                    ; 3 uses
  %27 = icmp ult i32 %i.af, 8
  br i1 %27, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i.a
  %unroll_iter = and i64 %i.ah, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02128.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %.02128.i, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !131
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !131
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !131
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bp, %i.bt                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !236

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %.lr.ph.i.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.a ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02128.i.epil.init = phi i64 [ 1, %.lr.ph.i.a ], [ %i.bu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod179)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.02128.i.epil = phi i64 [ %i.by, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.02128.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %indvars.iv.i.epil
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !131
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %.02128.i.epil, %i.bx           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !237

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.h
  %.021.lcssa.i = phi i64 [ 1, %bb.h ], [ %i.bu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.by, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bz = sext i32 %i.r to i64
  %i.ca = icmp eq i64 %.021.lcssa.i, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3dnn14LSTM2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.12, i32 noundef 132) #23
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.l ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.aw

bb.n:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit59
  call void @_ZN2cv8MatShape6assignEii(ptr noundef nonnull align 4 dereferenceable(52) %13, i32 noundef 1, i32 noundef %i.r)
  br label %bb.o

bb.o:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !58, !range !63, !noundef !64
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !130 ; 9 uses
  br i1 %i.ck, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.p
  %.not = icmp eq i32 %i.cl, 2
  br i1 %.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.preheader.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 9 uses
  %i.co = add nsw i32 %i.cl, -2
  %i.cp = add nsw i32 %i.cl, -3
  %.not33.not.i65 = icmp samesign ugt i32 %i.co, %i.cp
  br i1 %.not33.not.i65, label %_ZNK2cv8MatShapeixEm.exit.i70.preheader, label %bb.q

_ZNK2cv8MatShapeixEm.exit.i70.preheader:          ; preds = %.lr.ph.i64
  %umax = zext nneg i32 %i.cl to i64
  %i.cq = add nsw i64 %umax, -2                   ; 2 uses
  %xtraiter187 = and i64 %i.cq, 7                 ; 3 uses
  %i.cr = add nsw i32 %i.cl, -3
  %i.cs = icmp ult i32 %i.cr, 7
  br i1 %i.cs, label %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i70.preheader.new

_ZNK2cv8MatShapeixEm.exit.i70.preheader.new:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i70.preheader
  %unroll_iter192 = and i64 %i.cq, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i70

_ZNK2cv8MatShapeixEm.exit.i70:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i70, %_ZNK2cv8MatShapeixEm.exit.i70.preheader.new
  %indvars.iv.i71 = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i70.preheader.new ], [ %indvars.iv.next.i73.7, %_ZNK2cv8MatShapeixEm.exit.i70 ] ; 9 uses
  %.02128.i72 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i70.preheader.new ], [ %i.ef, %_ZNK2cv8MatShapeixEm.exit.i70 ]
  %niter193 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i70.preheader.new ], [ %niter193.next.7, %_ZNK2cv8MatShapeixEm.exit.i70 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !131
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %.02128.i72, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !131
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !131
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.db, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !131
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul i64 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !131
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul i64 %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !131
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul i64 %i.dq, %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !131
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul i64 %i.dv, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !131
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul i64 %i.ea, %i.ee                    ; 3 uses
  %indvars.iv.next.i73.7 = add nuw nsw i64 %indvars.iv.i71, 8 ; 2 uses
  %niter193.next.7 = add i64 %niter193, 8         ; 2 uses
  %niter193.ncmp.7 = icmp eq i64 %niter193.next.7, %unroll_iter192
  br i1 %niter193.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i70, !llvm.loop !236

bb.q:                                             ; preds = %.lr.ph.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #23
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.s
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !22
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i70
  %lcmp.mod189.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod189.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74, label %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i70.preheader
  %indvars.iv.i71.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i70.preheader ], [ %indvars.iv.next.i73.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa ]
  %.02128.i72.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i70.preheader ], [ %i.ef, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter187, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %_ZNK2cv8MatShapeixEm.exit.i70.epil

_ZNK2cv8MatShapeixEm.exit.i70.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i70.epil, %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.next.i73.epil, %_ZNK2cv8MatShapeixEm.exit.i70.epil ], [ %indvars.iv.i71.epil.init, %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader ] ; 2 uses
  %.02128.i72.epil = phi i64 [ %i.ep, %_ZNK2cv8MatShapeixEm.exit.i70.epil ], [ %.02128.i72.epil.init, %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader ]
  %epil.iter188 = phi i64 [ %epil.iter188.next, %_ZNK2cv8MatShapeixEm.exit.i70.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i70.epil.preheader ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i71.epil
  %i.en = load i32, ptr %i.em, align 4, !tbaa !131
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %.02128.i72.epil, %i.eo         ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter188.next = add i64 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i64 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74, label %_ZNK2cv8MatShapeixEm.exit.i70.epil, !llvm.loop !239

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i70.epil, %.preheader.i
  %.021.lcssa.i63 = phi i64 [ 1, %.preheader.i ], [ %i.ef, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74.loopexit.unr-lcssa ], [ %i.ep, %_ZNK2cv8MatShapeixEm.exit.i70.epil ]
  %i.eq = sext i32 %i.ab to i64
  %i.er = icmp eq i64 %.021.lcssa.i63, %i.eq
  br i1 %i.er, label %bb.y, label %bb.t

bb.t:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3dnn14LSTM2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.12, i32 noundef 142) #23
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.x:                                             ; preds = %bb.u
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.x
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !22
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.w
  %.pn49 = phi { ptr, i32 } [ %i.es, %bb.w ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.et, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.aw

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit74
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !52
  %i.fb = icmp eq i32 %i.fa, 0                    ; 2 uses
  %.038.in.v = select i1 %i.fb, i64 16, i64 12
  %.038.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.038.in.v
  %.0.in.v = select i1 %i.fb, i64 12, i64 16
  %.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.in.v
  %.038 = load i32, ptr %.038.in, align 4, !tbaa !131
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !131
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %14, i32 noundef %.0)
  br label %bb.aj

bb.z:                                             ; preds = %bb.o
  %narrow.i100 = call i32 @llvm.smax.i32(i32 %i.cl, i32 0) ; 3 uses
  %spec.select.i101 = zext nneg i32 %narrow.i100 to i64
  %i.fc = icmp sgt i32 %i.cl, 1
  br i1 %i.fc, label %.lr.ph.i106, label %bb.ad

.lr.ph.i106:                                      ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 10 uses
  %i.fe = add nsw i32 %i.cl, -1
  %i.ff = add nsw i32 %narrow.i100, -2
  %.not33.not.i107 = icmp ugt i32 %i.fe, %i.ff
  br i1 %.not33.not.i107, label %_ZNK2cv8MatShapeixEm.exit.i112.preheader, label %bb.aa

_ZNK2cv8MatShapeixEm.exit.i112.preheader:         ; preds = %.lr.ph.i106
  %i.fg = add nsw i64 %spec.select.i101, -1       ; 2 uses
  %xtraiter180 = and i64 %i.fg, 7                 ; 3 uses
  %i.fh = add nsw i32 %narrow.i100, -2
  %i.fi = icmp ult i32 %i.fh, 7
  br i1 %i.fi, label %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i112.preheader.new

_ZNK2cv8MatShapeixEm.exit.i112.preheader.new:     ; preds = %_ZNK2cv8MatShapeixEm.exit.i112.preheader
  %unroll_iter185 = and i64 %i.fg, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i112

_ZNK2cv8MatShapeixEm.exit.i112:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.i112, %_ZNK2cv8MatShapeixEm.exit.i112.preheader.new
  %indvars.iv.i113 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i112.preheader.new ], [ %indvars.iv.next.i115.7, %_ZNK2cv8MatShapeixEm.exit.i112 ] ; 9 uses
  %.02128.i114 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i112.preheader.new ], [ %i.gv, %_ZNK2cv8MatShapeixEm.exit.i112 ]
  %niter186 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i112.preheader.new ], [ %niter186.next.7, %_ZNK2cv8MatShapeixEm.exit.i112 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !131
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul i64 %.02128.i114, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !131
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul i64 %i.fm, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !131
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.fr, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !131
  %i.ga = sext i32 %i.fz to i64
  %i.gb = mul i64 %i.fw, %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !131
  %i.gf = sext i32 %i.ge to i64
  %i.gg = mul i64 %i.gb, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !131
  %i.gk = sext i32 %i.gj to i64
  %i.gl = mul i64 %i.gg, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !131
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul i64 %i.gl, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 28
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !131
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul i64 %i.gq, %i.gu                    ; 3 uses
  %indvars.iv.next.i115.7 = add nuw nsw i64 %indvars.iv.i113, 8 ; 2 uses
  %niter186.next.7 = add i64 %niter186, 8         ; 2 uses
  %niter186.ncmp.7 = icmp eq i64 %niter186.next.7, %unroll_iter185
  br i1 %niter186.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i112, !llvm.loop !236

bb.aa:                                            ; preds = %.lr.ph.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #23
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %i.gx = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108: ; preds = %bb.ac
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !22
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i112
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116, label %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader:    ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i112.preheader
  %indvars.iv.i113.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i112.preheader ], [ %indvars.iv.next.i115.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa ]
  %.02128.i114.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i112.preheader ], [ %i.gv, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter180, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %_ZNK2cv8MatShapeixEm.exit.i112.epil

_ZNK2cv8MatShapeixEm.exit.i112.epil:              ; preds = %_ZNK2cv8MatShapeixEm.exit.i112.epil, %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader
  %indvars.iv.i113.epil = phi i64 [ %indvars.iv.next.i115.epil, %_ZNK2cv8MatShapeixEm.exit.i112.epil ], [ %indvars.iv.i113.epil.init, %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader ] ; 2 uses
  %.02128.i114.epil = phi i64 [ %i.hf, %_ZNK2cv8MatShapeixEm.exit.i112.epil ], [ %.02128.i114.epil.init, %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader ]
  %epil.iter181 = phi i64 [ %epil.iter181.next, %_ZNK2cv8MatShapeixEm.exit.i112.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i112.epil.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i113.epil
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !131
  %i.he = sext i32 %i.hd to i64
  %i.hf = mul i64 %.02128.i114.epil, %i.he        ; 2 uses
  %indvars.iv.next.i115.epil = add nuw nsw i64 %indvars.iv.i113.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116, label %_ZNK2cv8MatShapeixEm.exit.i112.epil, !llvm.loop !240

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116: ; preds = %_ZNK2cv8MatShapeixEm.exit.i112.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa
  %.lcssa176 = phi i64 [ %i.gv, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116.unr-lcssa ], [ %i.hf, %_ZNK2cv8MatShapeixEm.exit.i112.epil ]
  %i.hg = sext i32 %i.ab to i64
  %i.hh = icmp eq i64 %.lcssa176, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn14LSTM2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.12, i32 noundef 154) #23
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.ah:                                            ; preds = %bb.ae
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.ah
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !22
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ag
  %.pn47 = phi { ptr, i32 } [ %i.hi, %bb.ag ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.hj, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.aw

bb.ai:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit116
  %i.hp = load i32, ptr %i.fd, align 4, !tbaa !131
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y
  %.1 = phi i32 [ %.038, %bb.y ], [ %i.hp, %bb.ai ] ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 2, !tbaa !56, !range !63, !noundef !64
  %narrow = add nuw nsw i8 %i.hr, 1
  %i.hs = zext nneg i8 %narrow to i32
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %14, i32 noundef %i.hs)
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %14, i32 noundef %.1)
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %14, i32 noundef %i.r)
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %14)
  %i.ht = load i8, ptr %i.hq, align 2, !tbaa !56, !range !63, !noundef !64
  %narrow53 = add nuw nsw i8 %i.ht, 1
  %i.hu = zext nneg i8 %narrow53 to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 %i.hu, ptr %i.e, align 16, !tbaa !131
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.1, ptr %i.hx, align 4, !tbaa !131
  %i.hy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.hw, ptr %i.hy, align 8, !tbaa !131
  call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %21)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  call void @_ZN2cv8MatShape7assign_EPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %21, ptr noundef nonnull %i.e, ptr noundef nonnull %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !54, !range !63, !noundef !64
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ak, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !241 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !242
  %.not.i129 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not.i129, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ie, ptr noundef nonnull align 4 dereferenceable(52) %21)
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !241
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 52
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !241
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit

bb.am:                                            ; preds = %bb.ak
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ie, ptr noundef nonnull align 4 dereferenceable(52) %21)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.am, %bb.al, %bb.aj
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.ik = load i8, ptr %i.ij, align 2, !tbaa !55, !range !63, !noundef !64
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.an, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131

bb.an:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !241 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !242
  %.not.i130 = icmp eq ptr %i.in, %i.ip
  br i1 %.not.i130, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.in, ptr noundef nonnull align 4 dereferenceable(52) %21)
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !241
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 52
  store ptr %i.ir, ptr %i.im, align 8, !tbaa !241
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131

bb.ap:                                            ; preds = %bb.an
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.in, ptr noundef nonnull align 4 dereferenceable(52) %21)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131: ; preds = %bb.ap, %bb.ao, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !243
  store i32 %.1, ptr %i.d, align 16, !tbaa !131, !noalias !243
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 %i.r, ptr %i.is, align 4, !tbaa !131, !noalias !243
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i32 -1, ptr %i.it, align 8, !tbaa !131, !noalias !243
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.iu, align 4, !tbaa !131, !noalias !243
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %22)
  %i.iv = icmp slt i32 %i.r, 0                    ; 3 uses
  %.sroa.sel.i = select i1 %i.iv, ptr %i.is, ptr %i.it
  call void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull %i.d, ptr noundef nonnull %.sroa.sel.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !243
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !246
  store i32 %.1, ptr %i.c, align 16, !tbaa !131, !noalias !246
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %i.r, ptr %i.iw, align 4, !tbaa !131, !noalias !246
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 -1, ptr %i.ix, align 8, !tbaa !131, !noalias !246
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 -1, ptr %i.iy, align 4, !tbaa !131, !noalias !246
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %23)
  %.sroa.sel.i132 = select i1 %i.iv, ptr %i.iw, ptr %i.ix
  call void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %23, ptr noundef nonnull %i.c, ptr noundef nonnull %.sroa.sel.i132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !246
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !241 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !242
  %.not.i.i = icmp eq ptr %i.ja, %i.jc
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ja, ptr noundef nonnull align 4 dereferenceable(52) %23)
  %i.jd = load ptr, ptr %i.iz, align 8, !tbaa !241
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 52
  store ptr %i.je, ptr %i.iz, align 8, !tbaa !241
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

bb.ar:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit131
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ja, ptr noundef nonnull align 4 dereferenceable(52) %23)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !249
  store i32 %.1, ptr %i.b, align 16, !tbaa !131, !noalias !249
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.jf, align 4, !tbaa !131, !noalias !249
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 -1, ptr %i.jg, align 8, !tbaa !131, !noalias !249
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 -1, ptr %i.jh, align 4, !tbaa !131, !noalias !249
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %24)
  call void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %24, ptr noundef nonnull %i.b, ptr noundef nonnull %i.jg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !249
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !241 ; 3 uses
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !242
  %.not.i.i134 = icmp eq ptr %i.ji, %i.jj
  br i1 %.not.i.i134, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ji, ptr noundef nonnull align 4 dereferenceable(52) %24)
  %i.jk = load ptr, ptr %i.iz, align 8, !tbaa !241
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 52
  store ptr %i.jl, ptr %i.iz, align 8, !tbaa !241
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit135

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ji, ptr noundef nonnull align 4 dereferenceable(52) %24)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit135

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit135: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.jm = shl nsw i32 %i.r, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !252
  store i32 %.1, ptr %i.a, align 16, !tbaa !131, !noalias !252
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !131, !noalias !252
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 -1, ptr %i.jo, align 8, !tbaa !131, !noalias !252
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 -1, ptr %i.jp, align 4, !tbaa !131, !noalias !252
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %25)
  %.sroa.sel.i136 = select i1 %i.iv, ptr %i.jn, ptr %i.jo
  call void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %25, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.sel.i136)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !252
  %i.jq = load ptr, ptr %i.iz, align 8, !tbaa !241 ; 3 uses
  %i.jr = load ptr, ptr %i.jb, align 8, !tbaa !242
  %.not.i.i137 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not.i.i137, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit135
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.jq, ptr noundef nonnull align 4 dereferenceable(52) %25)
  %i.js = load ptr, ptr %i.iz, align 8, !tbaa !241
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 52
  store ptr %i.jt, ptr %i.iz, align 8, !tbaa !241
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit138

bb.av:                                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit135
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.jq, ptr noundef nonnull align 4 dereferenceable(52) %25)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit138

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit138: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  ret i1 false

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn14LSTM2LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131
  %.off = add i32 %i.b, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn14LSTM2LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_, ptr noundef nonnull @.str.12, i32 noundef 192) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = sext i32 %2 to i64
  tail call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.j = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !230
  %i.m = load ptr, ptr %5, align 8, !tbaa !227    ; 7 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.g

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %i.r = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 3 uses
  %i.s = load i32, ptr %i.j, align 4, !tbaa !131
  %i.t = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.u, ptr %i.r, align 4, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !227    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !230
  store ptr %i.r, ptr %5, align 8, !tbaa !227
  store ptr %i.v, ptr %i.x, align 8, !tbaa !231
  store ptr %i.v, ptr %i.k, align 8, !tbaa !230
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !231 ; 8 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.af = sub i64 %i.ae, %i.o                     ; 2 uses
  %i.ag = icmp ult i64 %i.af, 16
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !131 ; 4 uses
  br i1 %i.ag, label %bb.h, label %.lr.ph.i.i.i.i12.i

bb.h:                                             ; preds = %bb.g
  %.not5.i.i.i.i.i = icmp eq ptr %i.m, %i.ad
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.ai = add i64 %i.ae, -4
  %i.aj = sub i64 %i.ai, %i.o                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.m, i64 %i.am
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.preheader30:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader30 ] ; 2 uses
  store i32 %i.ah, ptr %.06.i.i.i.i.i, align 4, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.ar, %i.ad
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !258

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !131
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit.i, %bb.h
  %i.as = phi i32 [ %.pre.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.idx.i.i.i.i.i.i = sub nuw nsw i64 16, %i.af
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.au = add i64 %i.o, 12
  %i.av = sub i64 %i.au, %i.ae                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check18 = icmp ult i64 %i.av, 28
  br i1 %min.iters.check18, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph19

vector.ph19:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i
  %n.vec20 = and i64 %i.ax, 9223372036854775800   ; 3 uses
  %i.ay = shl i64 %n.vec20, 2
  %i.az = getelementptr i8, ptr %i.ad, i64 %i.ay
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph19
  %index24 = phi i64 [ 0, %vector.ph19 ], [ %index.next26, %vector.body23 ] ; 2 uses
  %i.ba = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.ad, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %broadcast.splat22, ptr %next.gep25, align 4, !tbaa !131
  store <4 x i32> %broadcast.splat22, ptr %i.bb, align 4, !tbaa !131
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.bc, label %middle.block27, label %vector.body23, !llvm.loop !259

middle.block27:                                   ; preds = %vector.body23
  %cmp.n28 = icmp eq i64 %i.ax, %n.vec20
  br i1 %cmp.n28, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, %middle.block27
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i ], [ %i.az, %middle.block27 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.as, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !260

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block27
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !231
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

.lr.ph.i.i.i.i12.i:                               ; preds = %bb.g
  %i.be = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.bf, ptr %i.m, align 4, !tbaa !131
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.bg
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.lr.ph.i.i.i.i12.i
  store ptr %i.bg, ptr %i.ac, align 8, !tbaa !231
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.f, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, %.lr.ph.i.i.i.i12.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
end_hunk_0
