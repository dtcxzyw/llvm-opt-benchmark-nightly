inline.NumInlined: 8096
inline.NumDeleted: 3435
begin_hunk_0_@_ZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageE:bb.a
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !358 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 64
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !364
  %i.ahg = getelementptr inbounds i8, ptr %i.ahf, i64 -8
  %.not.i.i.i.i.i120 = icmp eq ptr %i.ahd, %i.ahg
  br i1 %.not.i.i.i.i.i120, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.noexc123
  store ptr %i.aex, ptr %i.ahd, align 8, !tbaa !93
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store ptr %i.ahh, ptr %i.ahc, align 8, !tbaa !358
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121

bb.fp:                                            ; preds = %.noexc123
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ahb, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121 unwind label %.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121: ; preds = %bb.fp, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121, %bb.fe
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 8 ; 2 uses
  %.not.i122 = icmp eq ptr %i.ahi, %i.aew
  br i1 %.not.i122, label %.noexc52, label %.lr.ph.i

bb.fq:                                            ; preds = %bb.el
  unreachable

bb.fr:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i
  %i.ahj = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 18
  %i.ahk = load i8, ptr %i.ahj, align 2
  %i.ahl = and i8 %i.ahk, 2
  %.not.i = icmp eq i8 %i.ahl, 0
  br i1 %.not.i, label %bb.fs, label %.noexc52

bb.fs:                                            ; preds = %bb.fr
  switch i8 %i.aay, label %bb.gi [
    i8 1, label %.noexc52
    i8 2, label %.noexc52
    i8 3, label %.noexc52
    i8 4, label %.noexc52
    i8 5, label %.noexc52
    i8 6, label %.noexc52
    i8 7, label %.noexc52
    i8 8, label %.noexc52
    i8 13, label %.noexc52
    i8 14, label %.noexc52
    i8 15, label %.noexc52
    i8 16, label %.noexc52
    i8 17, label %.noexc52
    i8 18, label %.noexc52
    i8 10, label %bb.ft
    i8 11, label %bb.ga
    i8 12, label %.noexc52
    i8 9, label %.noexc52
  ]

bb.ft:                                            ; preds = %bb.fs
  %.val.i = load ptr, ptr %6, align 8, !tbaa !432 ; 3 uses
  %i.ahm = load ptr, ptr %i.aav, align 8, !tbaa !31 ; 4 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !36 ; 3 uses
  %i.ahp = trunc i64 %i.aho to i1
  br i1 %i.ahp, label %bb.fu, label %bb.fv, !prof !38

bb.fu:                                            ; preds = %bb.ft
  %i.ahq = add nsw i64 %i.aho, -1
  %i.ahr = inttoptr i64 %i.ahq to ptr
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112

bb.fv:                                            ; preds = %bb.ft
  %i.aht = inttoptr i64 %i.aho to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i113 = phi ptr [ %i.ahs, %bb.fu ], [ %i.aht, %bb.fv ]
  %i.ahu = icmp eq ptr %.0.i.i.i.i113, null
  br i1 %i.ahu, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112
  %i.ahv = load ptr, ptr %.val.i, align 8, !tbaa !385, !nonnull !50
  store i8 1, ptr %i.ahv, align 1, !tbaa !263
  br label %.noexc52

bb.fx:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112
  %i.ahw = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !387, !nonnull !50, !align !388
  invoke fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ahx, ptr noundef nonnull align 8 dereferenceable(16) %i.ahm)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %bb.fx
  %i.ahy = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !403, !nonnull !50, !align !388 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  store ptr %i.ahm, ptr %i.g, align 8, !tbaa !93
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !358 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !364
  %i.aie = getelementptr inbounds i8, ptr %i.aid, i64 -8
  %.not.i.i.i.i.i114 = icmp eq ptr %i.aib, %i.aie
  br i1 %.not.i.i.i.i.i114, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %.noexc116
  store ptr %i.ahm, ptr %i.aib, align 8, !tbaa !93
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store ptr %i.aif, ptr %i.aia, align 8, !tbaa !358
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115

bb.fz:                                            ; preds = %.noexc116
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ahz, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  br label %.noexc52

bb.ga:                                            ; preds = %bb.fs
  %i.aig = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 24
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !442
  %.not79.i = icmp eq ptr %i.aih, null
  br i1 %.not79.i, label %bb.gb, label %.noexc63

bb.gb:                                            ; preds = %bb.ga
  %i.aii = load ptr, ptr %i.o, align 8, !tbaa !415
  %i.aij = load ptr, ptr %i.n, align 8, !tbaa !414
  %i.aik = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.aii, ptr noundef %i.aij, i32 noundef %i.aau)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc63:                                         ; preds = %bb.gb, %bb.ga
  %.val81.i = load ptr, ptr %6, align 8, !tbaa !432 ; 3 uses
  %i.ail = load ptr, ptr %i.aav, align 8, !tbaa !31 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !36 ; 3 uses
  %i.aio = trunc i64 %i.ain to i1
  br i1 %i.aio, label %bb.gc, label %bb.gd, !prof !38

bb.gc:                                            ; preds = %.noexc63
  %i.aip = add nsw i64 %i.ain, -1
  %i.aiq = inttoptr i64 %i.aip to ptr
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.gd:                                            ; preds = %.noexc63
  %i.ais = inttoptr i64 %i.ain to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i = phi ptr [ %i.air, %bb.gc ], [ %i.ais, %bb.gd ]
  %i.ait = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ait, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.aiu = load ptr, ptr %.val81.i, align 8, !tbaa !385, !nonnull !50
  store i8 1, ptr %i.aiu, align 1, !tbaa !263
  br label %.noexc52

bb.gf:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %.val81.i, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !387, !nonnull !50, !align !388
  invoke fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aiw, ptr noundef nonnull align 8 dereferenceable(16) %i.ail)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc110:                                        ; preds = %bb.gf
  %i.aix = getelementptr inbounds nuw i8, ptr %.val81.i, i64 16
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !403, !nonnull !50, !align !388 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #35
  store ptr %i.ail, ptr %i.h, align 8, !tbaa !93
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 48 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !358 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 64
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !364
  %i.ajd = getelementptr inbounds i8, ptr %i.ajc, i64 -8
  %.not.i.i.i.i.i109 = icmp eq ptr %i.aja, %i.ajd
  br i1 %.not.i.i.i.i.i109, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %.noexc110
  store ptr %i.ail, ptr %i.aja, align 8, !tbaa !93
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  store ptr %i.aje, ptr %i.aiz, align 8, !tbaa !358
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i

bb.gh:                                            ; preds = %.noexc110
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aiy, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i: ; preds = %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35
  br label %.noexc52

bb.gi:                                            ; preds = %bb.fs
  unreachable

.noexc52:                                         ; preds = %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i", %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133", %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fs, %bb.fr, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %bb.el, %.noexc59, %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i, %bb.em, %bb.fb, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115, %bb.fw, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i, %bb.ge
  %i.ajf = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 32 ; 2 uses
  %.not21.i.i.i.i.i = icmp eq ptr %i.ajf, %i.rr
  br i1 %.not21.i.i.i.i.i, label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNS4_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS6_E3$_0EEvS9_OT_EUlSB_E_EEvRSB_OT0_NS1_9FieldMaskEEUliSE_E_NS2_8PrefetchEEEvSB_SF_.exit.i.i.i", label %.lr.ph33.i.i.i.i.i, !llvm.loop !452

"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNS4_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS6_E3$_0EEvS9_OT_EUlSB_E_EEvRSB_OT0_NS1_9FieldMaskEEUliSE_E_NS2_8PrefetchEEEvSB_SF_.exit.i.i.i": ; preds = %.noexc52, %bb.cj, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  br label %bb.gj

bb.gj:                                            ; preds = %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNS4_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS6_E3$_0EEvS9_OT_EUlSB_E_EEvRSB_OT0_NS1_9FieldMaskEEUliSE_E_NS2_8PrefetchEEEvSB_SF_.exit.i.i.i", %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ajg = load ptr, ptr %i.aa, align 8, !tbaa !365
  %i.ajh = load ptr, ptr %i.ah, align 8, !tbaa !365 ; 2 uses
  %i.aji = icmp eq ptr %i.ajg, %i.ajh
  %i.ajj = load i8, ptr %i.p, align 1, !range !84
  %i.ajk = trunc nuw i8 %i.ajj to i1
  %i.ajl = select i1 %i.aji, i1 true, i1 %i.ajk
  br i1 %i.ajl, label %._crit_edge, label %bb.g, !llvm.loop !453

bb.gk:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gl:                                            ; preds = %bb.d
  %i.ajn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.gm:                                            ; preds = %bb.f
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  br label %bb.gq

bb.gn:                                            ; preds = %._crit_edge
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit267:                                     ; preds = %bb.fa, %bb.er, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i200
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i181, %bb.fg, %bb.fp
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.db, %bb.cs, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i238
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i219, %bb.dh, %bb.dq
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.ab, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i92
  %lpad.loopexit278.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.bc, %bb.bl
  %lpad.loopexit280.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.gf, %bb.fx, %bb.ek, %bb.gb, %bb.gh, %bb.fz
  %lpad.loopexit284 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.eg, %bb.dy, %bb.ea, %bb.ei, %bb.ec, %bb.cl
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bv, %bb.cf, %.noexc32.invoke, %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i, %bb.al, %.noexc28, %bb.am, %.noexc30, %.noexc31, %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i, %bb.bm, %.noexc37, %bb.bn, %.noexc39, %.noexc40, %bb.br, %bb.bx, %bb.bz, %bb.cb, %bb.ch
  %lpad.loopexit289 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cj, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE3popEv.exit
  %lpad.loopexit291 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j
  %lpad.loopexit.split-lp292 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit267, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.af, %bb.ev, %bb.cw, %bb.dl, %bb.fk, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.ni, %bb.bg ], [ %i.hq, %bb.af ], [ %i.agt, %bb.fk ], [ %i.adu, %bb.ev ], [ %i.yb, %bb.dl ], [ %i.vc, %bb.cw ], [ %lpad.loopexit, %.loopexit267 ], [ %lpad.loopexit268, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit274, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit278.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit280.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit284, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit286, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit289, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit291, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp292, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.gq

._crit_edge:                                      ; preds = %bb.gj, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.ajq = load ptr, ptr %1, align 8, !tbaa !149
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load ptr, ptr %i.ajr, align 8
  invoke void %i.ajs(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.loopexit unwind label %bb.gn

.loopexit:                                        ; preds = %._crit_edge
  %i.ajt = load ptr, ptr %8, align 8, !tbaa !454  ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i.i53, label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.go

bb.go:                                            ; preds = %.loopexit
  %i.aju = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ajv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !368 ; 2 uses
  %i.ajx = load ptr, ptr %i.aju, align 8, !tbaa !455 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ajz = icmp ult ptr %i.ajw, %i.ajy
  br i1 %i.ajz, label %.lr.ph.i.i.i.i54, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i54:                                 ; preds = %bb.go, %.lr.ph.i.i.i.i54
  %.06.i.i.i.i = phi ptr [ %i.akb, %.lr.ph.i.i.i.i54 ], [ %i.ajw, %bb.go ] ; 3 uses
  %i.aka = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !370
  call void @_ZdlPvm(ptr noundef %i.aka, i64 noundef 512) #39
  %i.akb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.akc = icmp ult ptr %.06.i.i.i.i, %i.ajx
  br i1 %i.akc, label %.lr.ph.i.i.i.i54, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !456

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i54
  %.pre.i.i.i55 = load ptr, ptr %8, align 8, !tbaa !454
  br label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.go
  %i.akd = phi ptr [ %.pre.i.i.i55, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.ajt, %bb.go ]
  %i.ake = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !457
  %i.akg = shl i64 %i.akf, 3
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akg) #39
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %.loopexit, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.val20 = load ptr, ptr %7, align 8             ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %.val20, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit
  %i.akh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val21 = load ptr, ptr %i.akh, align 8
  %i.aki = ptrtoint ptr %.val21 to i64
  %i.akj = ptrtoint ptr %.val20 to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %.val20, i64 noundef %i.akk) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit: ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  ret void

bb.gq:                                            ; preds = %.body, %bb.gn, %bb.gm
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ajp, %bb.gn ], [ %i.ajo, %bb.gm ]
  call void @_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #35
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gl
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.gq ], [ %i.ajn, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gk
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gr ], [ %i.ajm, %bb.gk ]
  %.val18 = load ptr, ptr %7, align 8             ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %.val18, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val19 = load ptr, ptr %i.akl, align 8
  %i.akm = ptrtoint ptr %.val19 to i64
  %i.akn = ptrtoint ptr %.val18 to i64
  %i.ako = sub i64 %i.akm, %i.akn
  call void @_ZdlPvm(ptr noundef nonnull %.val18, i64 noundef %i.ako) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58: ; preds = %bb.gs, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392
  %.not = icmp eq ptr %i.b, %i.d
end_hunk_0
