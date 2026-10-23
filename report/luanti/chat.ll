Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EE:bb.a
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i331, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i330

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i330: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i329
  %i.adc = load i64, ptr %i.ada, align 8, !tbaa !47
  %i.add = shl i64 %i.adc, 2
  %i.ade = add i64 %i.add, 4
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.ade) #27
  br label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i331

_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i331: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i329, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i330
  %i.adf = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 120 ; 2 uses
  %.not.i.i.i332 = icmp eq ptr %i.adf, %i.acl
  br i1 %.not.i.i.i332, label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i333, label %.lr.ph.i.i.i324, !llvm.loop !2

_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i333: ; preds = %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i331
  %.pr.i334 = load ptr, ptr %5, align 8, !tbaa !91
  br label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i335

_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i335: ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i333, %_ZN21ChatFormattedFragmentD2Ev.exit
  %i.adg = phi ptr [ %.pr.i334, %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i333 ], [ %i.acj, %_ZN21ChatFormattedFragmentD2Ev.exit ] ; 3 uses
  %.not.i.i1.i336 = icmp eq ptr %i.adg, null
  br i1 %.not.i.i1.i336, label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i335
  %i.adh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !84
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = ptrtoint ptr %i.adg to i64
  %i.adl = sub i64 %i.adj, %i.adk
  call void @_ZdlPvm(ptr noundef nonnull %i.adg, i64 noundef %i.adl) #27
  br label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339

_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339: ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i335, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.adm = load ptr, ptr %4, align 8, !tbaa !91   ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !83 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.adm, %i.ado
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339, %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aei, %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i ], [ %i.adm, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339 ] ; 7 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !46 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %i.ads = icmp eq ptr %i.adq, %i.adr
  br i1 %i.ads, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.adt = load i64, ptr %i.adr, align 8, !tbaa !47
  %i.adu = add i64 %i.adt, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !73
  %i.adz = ptrtoint ptr %i.ady to i64
  %i.aea = ptrtoint ptr %i.adw to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  call void @_ZdlPvm(ptr noundef nonnull %i.adw, i64 noundef %i.aeb) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aec = load ptr, ptr %.05.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.aef = load i64, ptr %i.aed, align 8, !tbaa !47
  %i.aeg = shl i64 %i.aef, 2
  %i.aeh = add i64 %i.aeg, 4
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aeh) #27
  br label %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i

_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aei, %i.ado
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI21ChatFormattedFragmentEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !91
  br label %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339
  %i.aej = phi ptr [ %.pr.i, %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.adm, %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit339 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aej, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !84
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aej to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aeo) #27
  br label %_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit

_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP21ChatFormattedFragmentS0_EvT_S2_RSaIT0_E.exit.i, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %.0

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i251, %bb.r
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn143.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i251 ], [ %i.as, %bb.r ], [ %.pn143.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ev

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.j
  %.pn143.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ], [ %i.z, %bb.j ]
  call void @_ZN21ChatFormattedFragmentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %6) #26
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.i
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn, %bb.ev ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatBuffer12deleteOldestEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr exact i64 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = trunc i64 %i.j to i32
  %i.o = sub nsw i32 %i.n, %i.l
  %.0.i = select i1 %i.m, i32 0, i32 %i.o
  %i.p = icmp eq i32 %i.b, %.0.i
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54   ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 168
  %i.y = ashr exact i64 %i.i, 5                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %.048 = phi i32 [ %1, %.lr.ph ], [ %i.al, %.critedge2 ]
  %.01847 = phi i32 [ 0, %.lr.ph ], [ %.2, %.critedge2 ] ; 4 uses
  %i.z = icmp ugt i64 %i.x, %indvars.iv
  br i1 %i.z, label %bb.c, label %.critedge.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = zext i32 %.01847 to i64                 ; 2 uses
  %i.ab = icmp ugt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !81, !range !49, !noundef !92
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 93, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10ChatBuffer12deleteOldestEj) #29
  unreachable

.preheader:                                       ; preds = %bb.d, %bb.f
  %.1.in = phi i32 [ %.1, %bb.f ], [ %.01847, %bb.d ]
  %.1 = add i32 %.1.in, 1                         ; 4 uses
  %i.ag = zext i32 %.1 to i64                     ; 2 uses
  %i.ah = icmp ugt i64 %i.y, %i.ag
  br i1 %i.ah, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !81, !range !49, !noundef !92
  %2 = trunc nuw i8 %i.ak to i1
  br i1 %2, label %.critedge2, label %.preheader, !llvm.loop !134

.critedge2:                                       ; preds = %bb.f, %.preheader, %bb.c
  %.2 = phi i32 [ %.01847, %bb.c ], [ %.1, %.preheader ], [ %.1, %bb.f ] ; 2 uses
  %i.al = add i32 %.048, -1                       ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !135

.critedge.split.loop.exit:                        ; preds = %bb.b
  %i.am = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.split.loop.exit
  %.019.lcssa = phi i32 [ %i.am, %.critedge.split.loop.exit ], [ %1, %.critedge2 ] ; 2 uses
  %.018.lcssa = phi i32 [ %.01847, %.critedge.split.loop.exit ], [ %.2, %.critedge2 ] ; 5 uses
  %i.an = zext i32 %.019.lcssa to i64
  %.idx = mul nuw nsw i64 %i.an, 168
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %.not.i.i = icmp eq i32 %.019.lcssa, 0          ; 3 uses
  br i1 %.not.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !93 ; 4 uses
  %.not11.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ap                    ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.h
  %i.av = udiv exact i64 %i.at, 168
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(168) ptr @_ZN8ChatLineaSEOS_(ptr noundef nonnull align 8 dereferenceable(168) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.0910.i.i.i.i.i.i.i) #26 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 168
  %i.az = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ba = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, !llvm.loop !136

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !tbaa !93
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, %bb.h, %bb.g
  %i.bb = phi ptr [ %i.ar, %bb.h ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.ar, %bb.g ] ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ap
  %i.be = getelementptr inbounds i8, ptr %i.t, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.be
  br i1 %.not.i.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8ChatLineEEvT_S4_(ptr noundef %i.be, ptr noundef %i.bb)
          to label %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i unwind label %bb.j

_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.i
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !55
  br label %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #28
  unreachable

_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %.critedge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ChatLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !138 ; 3 uses
  %i.bi = zext i32 %.018.lcssa to i64
  %.idx42 = shl nuw nsw i64 %i.bi, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx42 ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %.not.i.i23 = icmp eq i32 %.018.lcssa, 0
  br i1 %.not.i.i23, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !138 ; 3 uses
  %.not11.i.i24 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not11.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = sub i64 %i.bm, %i.bk
  %i.bo = ashr exact i64 %i.bn, 5                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i26, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i26
  %.012.i.i.i.i.i.i.i27 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bo, %bb.l ] ; 2 uses
  %.0811.i.i.i.i.i.i.i28 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bh, %bb.l ] ; 3 uses
  %.0910.i.i.i.i.i.i.i29 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.bj, %bb.l ] ; 3 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(25) %.0811.i.i.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(25) %.0910.i.i.i.i.i.i.i29) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i29, i64 24
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !81, !range !49, !noundef !92
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i28, i64 24
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i29, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i28, i64 32
  %i.bv = add nsw i64 %.012.i.i.i.i.i.i.i27, -1
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i27, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i26, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, !llvm.loop !137

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i26
  %.pre.i.i30 = load ptr, ptr %i.d, align 8, !tbaa !138 ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i30 to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i, %bb.l, %bb.k
  %.pre-phi14.i.i = phi i64 [ %i.bm, %bb.l ], [ %.pre13.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.bk, %bb.k ]
  %i.bx = phi ptr [ %i.bl, %bb.l ], [ %.pre.i.i30, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.by = sub i64 %.pre-phi14.i.i, %i.bk
  %i.bz = getelementptr inbounds i8, ptr %i.bh, i64 %i.by ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i.i.i25, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.bz, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i.i) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, %i.bx
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !51
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %bb.m

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i
  %.018.lcssa7481 = phi i32 [ %.018.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP17ChatFormattedLineSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i ], [ 0, %_ZNSt6vectorI8ChatLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit ] ; 2 uses
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %.018.lcssa748185 = phi i32 [ %.018.lcssa, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %.018.lcssa7481, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.cb, align 8, !tbaa !36
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread: ; preds = %bb.a, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.m, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %.018.lcssa748184 = phi i32 [ %.018.lcssa, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ %.018.lcssa748185, %bb.m ], [ %.018.lcssa7481, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit ], [ 0, %bb.a ]
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 5
  %i.ci = load i32, ptr %i.k, align 4, !tbaa !69  ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = trunc i64 %i.ch to i32
  %i.cl = sub nsw i32 %i.ck, %i.ci
  %.0.i31 = select i1 %i.cj, i32 0, i32 %i.cl
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit.thread
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !70
  %i.cn = sub i32 %i.cm, %.018.lcssa748184
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 5
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
  %i.cv = load i32, ptr %i.k, align 4, !tbaa !69  ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0                    ; 2 uses
  %.not.i.i32 = icmp slt i32 %i.cv, %i.cu
  %or.cond.i.i = or i1 %i.cw, %.not.i.i32
  %i.cx = sub nsw i32 %i.cu, %i.cv                ; 2 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.cx
  %.0.i7.i = select i1 %i.cw, i32 0, i32 %i.cx
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %.0.i.i)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %.0.i7.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi i32 [ %storemerge6.i, %bb.o ], [ %.0.i31, %bb.n ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ChatLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN10ChatPromptC2ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEj
define dso_local void @_ZN10ChatPromptC2ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !44
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !74
  %i.h = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi i64 [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 4 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %i.c, align 4, !tbaa !80
  store i32 %i.k, ptr %i.j, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef %i.j, ptr noundef %i.c, i64 noundef %i.e) #26 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.n = phi i64 [ %i.i, %._crit_edge.i.i ], [ %i.i, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 0, ptr %i.p, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !75
  store i32 0, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  store i32 %2, ptr %i.u, align 4, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ChatPrompt10getLineRefB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(120) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 72
  %.not = icmp ugt i64 %i.k, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.c
  %i.n = select i1 %.not, ptr %i.m, ptr %i.l
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN10ChatPrompt11makeLineRefB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 72
  %.not = icmp ugt i64 %i.l, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.d ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !105, !range !49, !noundef !92
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !78
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !44
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !74
  %i.y = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %bb.d
  %i.z = phi i64 [ %i.y, %.noexc.i.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %.noexc.i.i.i.i.i ], [ %i.s, %bb.d ] ; 4 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !80
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !80
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ac = call ptr @wmemcpy(ptr noundef %i.aa, ptr noundef %i.t, i64 noundef %i.v) #26 ; 0 uses
  %.pre6.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i.i.i.i.i ], [ %i.aa, %bb.e ], [ %.pre7.i.i.i.i.i.i, %bb.f ]
  %i.ae = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i.i ], [ %i.z, %bb.e ], [ %.pre6.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.p, align 8, !tbaa !105
  %.pre = load i32, ptr %i.b, align 8, !tbaa !101
  %.pre2 = load ptr, ptr %i.e, align 8, !tbaa !103
  %.pre3 = zext i32 %.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit, %bb.c
  %.pre-phi = phi i64 [ %.pre3, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit ], [ %i.d, %bb.c ]
  %i.ah = phi ptr [ %.pre2, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit ], [ %i.h, %bb.c ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.pre-phi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.ai, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN10ChatPrompt12HistoryEntryeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0                      ; 3 uses
  br i1 %i.f, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !74
  %i.h = load ptr, ptr %0, align 8, !tbaa !74
  %i.i = tail call i32 @wmemcmp(ptr noundef %i.h, ptr noundef %i.g, i64 noundef %i.b) #30
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8: ; preds = %bb.b, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105, !range !49, !noundef !92 ; 2 uses
  %2 = trunc nuw i8 %i.m to i1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !105, !range !49, !noundef !92 ; 2 uses
  %i.p = icmp eq i8 %i.m, %i.o                    ; 2 uses
  %brmerge.not.i = and i1 %i.p, %2
  br i1 %brmerge.not.i, label %bb.c, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit

bb.c:                                             ; preds = %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.split

.split:                                           ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.y = tail call i32 @wmemcmp(ptr noundef %i.x, ptr noundef %i.w, i64 noundef %i.r) #30
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.thread

_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit: ; preds = %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  br i1 %i.p, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit
  br i1 %2, label %..thread_crit_edge, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c, %.split
  %i.aa = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.r, %bb.c ], [ %i.r, %.split ]
  %i.ab = icmp eq i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.f, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10

bb.f:                                             ; preds = %.thread
  br i1 %i.f, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit

_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit: ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !74
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.ae = tail call i32 @wmemcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %i.b) #30
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10

_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread: ; preds = %bb.f, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit, %bb.e
  %i.ag = trunc nuw i8 %i.o to i1
  br i1 %i.ag, label %bb.g, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.g:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !75
  %i.aj = icmp eq i64 %i.ai, %i.b
  br i1 %i.aj, label %bb.h, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10

bb.h:                                             ; preds = %bb.g
  br i1 %i.f, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit7

_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit7: ; preds = %bb.h
  %i.ak = load ptr, ptr %1, align 8, !tbaa !74
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.am = tail call i32 @wmemcmp(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %i.b) #30
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10

_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10: ; preds = %bb.g, %.thread, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit7, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit
  br label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.h, %bb.d, %bb.a, %.split, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit7, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10
  %.0 = phi i1 [ false, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread10 ], [ false, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit ], [ true, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit7 ], [ true, %_ZSteqINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ESC_.exit.thread ], [ true, %bb.d ], [ false, %bb.a ], [ true, %.split ], [ true, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatPrompt5inputEw(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 72
  %.not.i = icmp ugt i64 %i.l, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.d ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !105, !range !49, !noundef !92
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !78
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !44
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !74
  %i.y = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %bb.d
  %i.z = phi i64 [ %i.y, %.noexc.i.i.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %.noexc.i.i.i.i.i.i ], [ %i.s, %bb.d ] ; 4 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !80
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !80
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ac = call ptr @wmemcpy(ptr noundef %i.aa, ptr noundef %i.t, i64 noundef %i.v) #26 ; 0 uses
  %.pre6.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ], [ %.pre7.i.i.i.i.i.i.i, %bb.f ]
  %i.ae = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i.i.i ], [ %i.z, %bb.e ], [ %.pre6.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.p, align 8, !tbaa !105
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !101
  %.pre2.i = load ptr, ptr %i.e, align 8, !tbaa !103
  %.pre3.i = zext i32 %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.d, %bb.c ]
  %i.ah = phi ptr [ %.pre2.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.h, %bb.c ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.pre-phi.i
  br label %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit

_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit:       ; preds = %bb.b, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.ai, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !106
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !75 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmmw.exit

bb.h:                                             ; preds = %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i64 noundef %i.al, i64 noundef %i.an) #29
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmmw.exit: ; preds = %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE14_M_replace_auxEmmmw(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 noundef %i.al, i64 noundef 0, i64 noundef 1, i32 noundef signext %1) ; 0 uses
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !106
  %i.as = load i32, ptr %i.b, align 8, !tbaa !101
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !103 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 72
  %.not.i.i = icmp ugt i64 %i.az, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.av, i64 %i.at
  %i.bc = select i1 %.not.i.i, ptr %i.bb, ptr %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !75
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !107 ; 3 uses
  %.not.not.i = icmp sgt i32 %i.bh, %i.bf
  br i1 %.not.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmmw.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.bi, align 4, !tbaa !108
  br label %_ZN10ChatPrompt9clampViewEv.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmmw.exit
  %i.bj = add nsw i32 %i.bf, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !108
  %i.bm = sub i32 %i.bj, %i.bh
  %..i = call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bm)
  %i.bn = call i32 @llvm.smin.i32(i32 %..i, i32 %i.ar)
  %reass.sub.i = add i32 %i.aq, 2
  %i.bo = sub i32 %reass.sub.i, %i.bh
  %i.bp = call i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bo)
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  store i32 %i.bq, ptr %i.bk, align 4, !tbaa !108
  br label %_ZN10ChatPrompt9clampViewEv.exit

_ZN10ChatPrompt9clampViewEv.exit:                 ; preds = %bb.i, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.br, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.bs, align 4, !tbaa !110
  ret void
end_hunk_1
