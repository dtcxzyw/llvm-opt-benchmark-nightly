inline.NumInlined: 3420
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.fr

bb.ef:                                            ; preds = %bb.ed
  %i.tv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #33
  unreachable

.critedge288:                                     ; preds = %bb.dw
  %i.tw = icmp eq i64 %.sroa.0553.0, 0
  %i.tx = icmp eq i64 %.sroa.0550.0, 0
  %spec.select622 = select i1 %i.tw, i1 %i.tx, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i64 64, ptr %8, align 8, !tbaa !71
  store ptr @.str.24, ptr %.sroa.24.0..sroa_idx.i437, align 8, !tbaa !75
  %i.ty = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %spec.select622, i64 %.sroa.096.0.copyload, i8 poison, ptr nonnull %8, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.eg unwind label %.loopexit649 ; 0 uses

bb.eg:                                            ; preds = %.critedge288
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.tz = load i64, ptr %i.af, align 8, !tbaa !271
  %i.ua = load ptr, ptr %.sroa.gep527, align 8, !tbaa !150
  %.not.i.i440 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i440, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc441 unwind label %.loopexit.split-lp650

.noexc441:                                        ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.eg
  %i.ub = load ptr, ptr %.sroa.gep528, align 8, !tbaa !323
  %i.uc = invoke noundef zeroext i1 %i.ub(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNKSt8functionIFbvEEclEv.exit unwind label %.loopexit649, !inline_history !325

_ZNKSt8functionIFbvEEclEv.exit:                   ; preds = %bb.ei
  br i1 %i.uc, label %.critedge290, label %bb.ej, !prof !161

bb.ej:                                            ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str.5, i32 noundef 759, ptr noundef nonnull @.str.25) #32
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 45, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi46EEERS2_RAT__Kc.exit unwind label %bb.en

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi46EEERS2_RAT__Kc.exit: ; preds = %bb.ek
  %.sroa.016.0.copyload = load i64, ptr %22, align 8, !tbaa !71
  %.sroa.217.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !75
  %i.ud = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 %.sroa.016.0.copyload, ptr %.sroa.217.0.copyload)
          to label %bb.el unwind label %bb.en     ; 2 uses

bb.el:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi46EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ud, i64 1, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.en

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.el
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ud)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit446 unwind label %bb.en

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit446: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #33
  unreachable

bb.em:                                            ; preds = %bb.ej
  %i.ue = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.fr

bb.en:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.el, %bb.ek, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi46EEERS2_RAT__Kc.exit
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %33) #33
  unreachable

.critedge290:                                     ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  %i.ug = load i64, ptr %i.af, align 8, !tbaa !271
  br label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434: ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit432, %.critedge290
  %.0600 = phi i64 [ %i.ug, %.critedge290 ], [ %i.tr, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit432 ] ; 3 uses
  %.0 = phi i64 [ %i.tz, %.critedge290 ], [ %i.tt, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit432 ] ; 2 uses
  %i.uh = icmp eq i64 %.0, %.0600
  br i1 %i.uh, label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread: ; preds = %bb.eb, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434
  %.0616 = phi i64 [ %.0600, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434 ], [ %i.ti, %bb.eb ] ; 6 uses
  %i.ui = load i8, ptr %i.bf, align 8, !tbaa !326, !range !14, !noundef !15
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.eo, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.eo:                                            ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread
  %i.uk = load i64, ptr %i.bh, align 8, !tbaa !334
  %i.ul = add i64 %i.uk, 1                        ; 2 uses
  %i.um = load ptr, ptr %i.bi, align 8, !tbaa !335 ; 4 uses
  %i.un = load ptr, ptr %i.bj, align 16, !tbaa !336
  %.not.i.i447 = icmp eq ptr %i.um, %i.un
  br i1 %.not.i.i447, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i64 %i.ul, ptr %i.um, align 8, !tbaa !71
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.uo, ptr %i.bi, align 8, !tbaa !335
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.eq:                                            ; preds = %bb.eo
  %i.up = load ptr, ptr %i.bg, align 16, !tbaa !337 ; 4 uses
  %i.uq = ptrtoint ptr %i.um to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur                    ; 6 uses
  %i.ut = icmp eq i64 %i.us, 9223372036854775800
  br i1 %i.ut, label %bb.er, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
          to label %.noexc450 unwind label %.loopexit.split-lp655

.noexc450:                                        ; preds = %bb.er
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eq
  %i.uu = ashr exact i64 %i.us, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.uu, i64 1)
  %i.uv = add nsw i64 %.sroa.speculated.i.i.i.i448, %i.uu ; 2 uses
  %i.uw = icmp ult i64 %i.uv, %i.uu
  %i.ux = call i64 @llvm.umin.i64(i64 %i.uv, i64 1152921504606846975)
  %i.uy = select i1 %i.uw, i64 1152921504606846975, i64 %i.ux ; 3 uses
  %.not.i.i.i.i449 = icmp ne i64 %i.uy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i449)
  %i.uz = shl nuw nsw i64 %i.uy, 3
  %i.va = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #30
          to label %.noexc451 unwind label %.loopexit654 ; 4 uses

.noexc451:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 %i.us ; 2 uses
  store i64 %i.ul, ptr %i.vb, align 8, !tbaa !71
  %i.vc = icmp sgt i64 %i.us, 0
  br i1 %i.vc, label %bb.es, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.es:                                            ; preds = %.noexc451
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.va, ptr align 8 %i.up, i64 %i.us, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.es, %.noexc451
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.up, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.us) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.et, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.va, ptr %i.bg, align 16, !tbaa !337
  store ptr %i.vd, ptr %i.bi, align 8, !tbaa !335
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.uy
  store ptr %i.ve, ptr %i.bj, align 16, !tbaa !336
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit654:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit656 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp655:                            ; preds = %bb.er
  %lpad.loopexit.split-lp657 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ep, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434
  %.0615 = phi i64 [ %.0, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434 ], [ %.0616, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread ], [ %.0616, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.0616, %bb.ep ] ; 2 uses
  %.0600613 = phi i64 [ %.0600, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434 ], [ %.0616, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit434.thread ], [ %.0616, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.0616, %bb.ep ] ; 2 uses
  %i.vf = add i64 %.02301163, 1                   ; 3 uses
  %i.vg = load i64, ptr %i.bl, align 8, !tbaa !163 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.vi = load ptr, ptr %i.db, align 8, !tbaa !117
  %i.vj = load ptr, ptr %i.ce, align 8, !tbaa !124 ; 2 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = sdiv exact i64 %i.vm, 24
  %i.vo = icmp ult i64 %i.vf, %i.vn
  br i1 %i.vo, label %bb.ev, label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461

bb.ev:                                            ; preds = %bb.eu
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.vj, i64 %i.vf ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load i8, ptr %i.vq, align 8, !tbaa !125, !range !14, !noundef !15
  %i.vs = trunc nuw i8 %i.vr to i1
  br i1 %i.vs, label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ev
  %.sroa.0508.0.copyload = load i64, ptr %i.vp, align 8, !tbaa !71 ; 3 uses
  %.sroa.7.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %.sroa.7.0.copyload510 = load ptr, ptr %.sroa.7.0..sroa_idx509, align 8, !tbaa !75 ; 3 uses
  %i.vt = load ptr, ptr %i.bk, align 8, !tbaa !131 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vg
  %i.vv = icmp eq i64 %.sroa.0508.0.copyload, 0
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph, %bb.ex
  %.sroa.0505.01150 = phi ptr [ %i.vt, %.lr.ph ], [ %i.vz, %bb.ex ] ; 2 uses
  br i1 %i.vv, label %bb.ex, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i455

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i455: ; preds = %bb.ew
  %37 = load i8, ptr %.sroa.0505.01150, align 1, !tbaa !76
  %lhsc628.a = load i8, ptr %.sroa.7.0.copyload510, align 1
  %i.vw = icmp eq i8 %lhsc628.a, %37
  br i1 %i.vw, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit459, label %bb.ex

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit459: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i455
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload510, i64 1
  %i.vy = add i64 %.sroa.0508.0.copyload, -1
  br label %.loopexit632

bb.ex:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i455, %bb.ew
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0505.01150, i64 1 ; 2 uses
  %.not627 = icmp eq ptr %i.vz, %i.vu
  br i1 %.not627, label %.loopexit632, label %bb.ew

.loopexit632:                                     ; preds = %bb.ex, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit459
  %.sroa.0508.1 = phi i64 [ %i.vy, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit459 ], [ %.sroa.0508.0.copyload, %bb.ex ]
  %.sroa.7.1 = phi ptr [ %i.vx, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit459 ], [ %.sroa.7.0.copyload510, %bb.ex ]
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %.sroa.7.1, i64 noundef %.sroa.0508.1)
          to label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461 unwind label %bb.ey

bb.ey:                                            ; preds = %.loopexit632
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461: ; preds = %.loopexit632, %bb.ev, %bb.eu, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.2232 = phi i64 [ %.02301163, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.02301163, %bb.ev ], [ %.02301163, %bb.eu ], [ %i.vf, %.loopexit632 ] ; 2 uses
  %i.wb = load i8, ptr %i.ao, align 8, !tbaa !212, !range !14, !noundef !15
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461
  %i.wd = load ptr, ptr %i.al, align 16, !tbaa !280 ; 3 uses
  %.not254 = icmp eq ptr %i.wd, null
  br i1 %.not254, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.010.0.copyload = load i64, ptr %i.bn, align 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !281
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8
  invoke void %i.wg(ptr noundef nonnull align 8 dereferenceable(8) %i.wd, i64 noundef %.0615, i64 noundef %.0600613, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 %.sroa.010.0.copyload)
          to label %bb.fc unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fc:                                            ; preds = %bb.fa, %bb.ez, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit461
  %i.wi = and i64 %.sroa.096.0.copyload, 16777216
  %.not1507 = icmp eq i64 %i.wi, 0
  br i1 %.not1507, label %bb.fk, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESA_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %.noexc464 unwind label %.loopexit659

.noexc464:                                        ; preds = %bb.fd
  %i.wj = load i8, ptr %i.bp, align 8, !tbaa !356, !range !14, !alias.scope !359, !noundef !15
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.fe, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit.thread

bb.fe:                                            ; preds = %.noexc464
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !359 ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %22, align 8, !tbaa !71, !noalias !360 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !75, !noalias !360 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.wl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !162
  %i.wm = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  %i.wn = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.wn, %i.wm
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ff

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.fe
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #29
          to label %.noexc465 unwind label %.loopexit.split-lp660

.noexc465:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !359
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !71, !noalias !359
  %i.wo = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.wo, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.ff
  %i.wp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc466 unwind label %.loopexit659 ; 2 uses

.noexc466:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.wp, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !131
  %i.wq = load i64, ptr %i.a, align 8, !tbaa !71, !noalias !359
  store i64 %i.wq, ptr %i.wl, align 8, !tbaa !76
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc466, %bb.ff
  %i.wr = phi ptr [ %i.wp, %.noexc466 ], [ %i.wl, %bb.ff ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fh [
    i64 1, label %bb.fg
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit
  ]

bb.fg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ws = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !76
  store i8 %i.ws, ptr %i.wr, align 1, !tbaa !76
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit

bb.fh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wr, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fg, %bb.fh
  %i.wt = load i64, ptr %i.a, align 8, !tbaa !71, !noalias !359 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.wt, ptr %i.wu, align 8, !tbaa !163
  %i.wv = load ptr, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !131
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wt
  store i8 0, ptr %i.ww, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !359
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 32
  store i64 %.0615, ptr %i.wx, align 8
  %.sroa.5502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 40
  store i64 %.0600613, ptr %.sroa.5502.0..sroa_idx, align 8
  %.pre1417 = load i8, ptr %i.bp, align 8, !tbaa !356, !range !14
  %i.wy = trunc nuw i8 %.pre1417 to i1
  br i1 %i.wy, label %bb.fj, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit.thread: ; preds = %.noexc464, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit
  %i.wz = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  store i64 1, ptr %i.xa, align 8, !tbaa !361
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 40
  store i64 0, ptr %i.xb, align 8, !tbaa !362
  br label %bb.fj

.loopexit659:                                     ; preds = %bb.fd, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit661 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp660:                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp662 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fi:                                            ; preds = %.loopexit.split-lp660, %.loopexit659
  %lpad.phi663 = phi { ptr, i32 } [ %lpad.loopexit661, %.loopexit659 ], [ %lpad.loopexit.split-lp662, %.loopexit.split-lp660 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.fr

bb.fj:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fc, %bb.fj, %bb.dd, %bb.du, %bb.da
  %.3233 = phi i64 [ %.02301163, %bb.da ], [ %.02301163, %bb.dd ], [ %.02301163, %bb.du ], [ %.2232, %bb.fj ], [ %.2232, %bb.fc ]
  %.7212 = phi i64 [ %.12061165, %bb.da ], [ %.12061165, %bb.dd ], [ %.6211, %bb.du ], [ %.6211, %bb.fj ], [ %.6211, %bb.fc ]
  %i.xc = load i8, ptr %i.ao, align 8, !tbaa !212, !range !14, !noundef !15
  %i.xd = trunc nuw i8 %i.xc to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !212
  br i1 %i.xd, label %bb.fl, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit471

bb.fl:                                            ; preds = %bb.fk
  %i.xe = load ptr, ptr %i.bm, align 8, !tbaa !131 ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.bq
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467: ; preds = %bb.fl
  %i.xg = load i64, ptr %i.bq, align 8, !tbaa !76
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i468: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467
  %i.xi = load ptr, ptr %28, align 8, !tbaa !242  ; 3 uses
  %.not.i.i.i.i.i.i.i.i469 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i.i.i.i.i.i469, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit471, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i468
  %i.xj = load ptr, ptr %i.br, align 8, !tbaa !240
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.xi to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xm) #31
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit471

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit471: ; preds = %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i468, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.xn = load i8, ptr %i.an, align 8, !tbaa !156, !range !14, !noundef !15
  %i.xo = trunc nuw i8 %i.xn to i1
  store i8 0, ptr %i.an, align 8, !tbaa !156
  br i1 %i.xo, label %bb.fn, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit476

bb.fn:                                            ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit471
  %i.xp = load ptr, ptr %i.bk, align 8, !tbaa !131 ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.bs
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i472: ; preds = %bb.fn
  %i.xr = load i64, ptr %i.bs, align 8, !tbaa !76
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i473: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i472
  %i.xt = load i8, ptr %i.be, align 8, !tbaa !159
  %i.xu = icmp eq i8 %i.xt, 0
  br i1 %i.xu, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit476, label %bb.fo
end_hunk_0
