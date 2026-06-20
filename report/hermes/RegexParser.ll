inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE16closeAlternationERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE:bb.a

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %bb.c
  %i.am = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #16
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.e
  %.not.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.as = load <2 x ptr>, ptr %3, align 16, !tbaa !22
  store <2 x ptr> %i.as, ptr %i.l, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !47
  store ptr %i.av, ptr %i.at, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ax = insertelement <2 x ptr> %i.k, ptr %i.aw, i64 1
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  call void @_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ay = load <2 x ptr>, ptr %2, align 16, !tbaa !109
  %.pre19 = load ptr, ptr %i.m, align 16, !tbaa !46
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.f, %bb.g
  %i.az = phi ptr [ %i.o, %bb.f ], [ %.pre19, %bb.g ]
  %i.ba = phi <2 x ptr> [ %i.ax, %bb.f ], [ %i.ay, %bb.g ]
  %i.bb = load ptr, ptr %0, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x ptr> %i.ba, ptr %4, align 16, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.bd, align 16, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.be = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.bf = load ptr, ptr %4, align 16, !tbaa !100  ; 3 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.bf, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #16
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit
  %i.bo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i ], [ %i.bf, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i
  %i.bp = load ptr, ptr %i.bd, align 16, !tbaa !46
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #16
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, %bb.i
  %i.bt = load ptr, ptr %3, align 16, !tbaa !49   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !47
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bz = load ptr, ptr %2, align 16, !tbaa !100  ; 3 uses
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i15, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11
  %.05.i.i.i9 = phi ptr [ %i.ch, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11 ], [ %i.bz, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i9, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #16
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11: ; preds = %bb.k, %.lr.ph.i.i.i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ch, %i.ca
  br i1 %.not.i.i.i12, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i13, label %.lr.ph.i.i.i8, !llvm.loop !101

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i13: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i11
  %.pr.i14 = load ptr, ptr %2, align 16, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i15

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i15: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i13, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i14, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i13 ], [ %i.bz, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i16 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i16, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit17, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i15
  %i.cj = load ptr, ptr %i.m, align 16, !tbaa !46
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #16
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit17

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit17: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i15, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit17, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10closeGroupERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::ParseStackElement", align 8 ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 4 uses
  %4 = alloca %"class.std::vector", align 16      ; 7 uses
  %5 = alloca %"class.std::vector", align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %2, ptr noundef nonnull align 8 dereferenceable(74) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !109
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  store ptr %i.n, ptr %i.l, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.q = load i16, ptr %i.p, align 8              ; 3 uses
  store i16 %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.c, align 8, !tbaa !29
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !29
  %i.t = load ptr, ptr %1, align 8, !tbaa !27
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  %6 = lshr i16 %i.q, 8                           ; 2 uses
  %7 = trunc nuw i16 %6 to i8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #16
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %bb.a
  %i.ah = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #16
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.c
  %i.an = load i32, ptr %2, align 8, !tbaa !43
  switch i32 %i.an, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit [
    i32 4, label %bb.f
    i32 2, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(336) %i.ao, ptr noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.as, ptr %i.a, align 4, !tbaa !3
  %i.at = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_23MarkedSubexpressionNodeEJSt6vectorIPNS0_4NodeESaIS8_EERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.ba = trunc i16 %i.q to i1
  %8 = trunc i16 %6 to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load i8, ptr %i.bb, align 4
  %9 = lshr i8 %i.bc, 3
  %10 = xor i8 %9, -1
  %11 = and i8 %7, %10
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !110
  %i.bf = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 138
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !33
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %i.bf, ptr noundef %i.bj)
  %i.bk = load ptr, ptr %0, align 8, !tbaa !7
  %i.bl = load <2 x ptr>, ptr %4, align 16, !tbaa !22
  store <2 x ptr> %i.bl, ptr %5, align 16, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !47
  store ptr %i.bo, ptr %i.bm, align 16, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bp = trunc i32 %i.be to i16
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE14pushLookaroundESt6vectorIPNS0_4NodeESaIS6_EEttbb(ptr noundef nonnull align 8 dereferenceable(336) %i.bk, ptr noundef nonnull %5, i16 noundef zeroext %i.bp, i16 noundef zeroext %i.bh, i1 noundef zeroext %i.ba, i1 noundef zeroext %8)
  %i.bq = load ptr, ptr %5, align 16, !tbaa !49   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.bm, align 16, !tbaa !47
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9: ; preds = %bb.f, %bb.g
  %i.bv = load ptr, ptr %4, align 16, !tbaa !49   ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9
  %i.bw = load ptr, ptr %i.bn, align 16, !tbaa !47
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit11

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit11: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %12 = trunc nuw i8 %11 to i1
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit11, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %.0 = phi i1 [ true, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit ], [ %12, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit11 ], [ true, %bb.d ], [ true, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cb = call noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeQuantifierPrefixEPNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %i.ca)
  br i1 %i.cb, label %bb.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i.i12, label %bb.k, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i: ; preds = %bb.i
  %i.cg = load i16, ptr %i.cd, align 2, !tbaa !31
  %i.ch = icmp eq i16 %i.cg, 63
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i, %bb.j
  %i.cj = phi i8 [ 0, %bb.j ], [ 1, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i ], [ 1, %bb.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.cj, ptr %i.ck, align 8, !tbaa !111
  br i1 %.0, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !17
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.m, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.m:                                             ; preds = %bb.l
  store i32 9, ptr %i.cl, align 8, !tbaa !17
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.n:                                             ; preds = %bb.k
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE15applyQuantifierERKNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit: ; preds = %bb.m, %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.n
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !100 ; 3 uses
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i ], [ %i.co, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #16
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.cp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit
  %i.cx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.co, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #16
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE11consumeTermEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvh::SmallVector.271", align 8 ; 8 uses
  %2 = alloca %"class.hermes::regex::SyntaxFlags", align 1 ; 4 uses
  %3 = alloca %"class.llvh::SmallVector.271", align 8 ; 8 uses
  %4 = alloca %"class.hermes::regex::SyntaxFlags", align 1 ; 4 uses
  %5 = alloca %"class.llvh::SmallVector.271", align 8 ; 8 uses
  %6 = alloca %"class.hermes::regex::SyntaxFlags", align 1 ; 4 uses
  %7 = alloca %"class.hermes::regex::SyntaxFlags", align 1 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.hermes::regex::SyntaxFlags", align 1 ; 4 uses
  %9 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::Quantifier", align 8 ; 10 uses
  %10 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::Quantifier", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not80 = icmp eq ptr %i.d, %i.e
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit
  %i.w = phi ptr [ %i.e, %.lr.ph ], [ %i.ea, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit ] ; 5 uses
  %i.x = phi ptr [ %i.d, %.lr.ph ], [ %i.dz, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  store i32 0, ptr %9, align 8, !tbaa !115, !alias.scope !112
  store i32 -1, ptr %i.f, align 4, !tbaa !116, !alias.scope !112
  store i8 1, ptr %i.g, align 8, !tbaa !111, !alias.scope !112
  %i.y = load ptr, ptr %0, align 8, !tbaa !7, !noalias !112 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 138
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50, !noalias !112
  store i16 %i.aa, ptr %i.i, align 2, !tbaa !117, !alias.scope !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22, !noalias !112
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25, !noalias !112
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !118, !alias.scope !112
  %i.af = load i16, ptr %i.x, align 2, !tbaa !31  ; 5 uses
  switch i16 %i.af, label %bb.z [
    i16 94, label %bb.c
    i16 36, label %bb.d
    i16 92, label %bb.e
    i16 46, label %bb.k
    i16 91, label %bb.l
    i16 42, label %bb.m
    i16 43, label %bb.m
    i16 63, label %bb.m
    i16 123, label %bb.o
    i16 124, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.thread
    i16 40, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.thread
    i16 41, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.thread
    i16 125, label %bb.w
    i16 93, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ag, align 8, !tbaa !18
  store i8 %.sroa.0.0.copyload.i.i, ptr %8, align 1
  %i.ah = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !15
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.ak = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15RightAnchorNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.y) ; 0 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.am, ptr %i.b, align 8, !tbaa !15
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !15
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !17
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.thread

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.ap, align 8, !tbaa !17
end_hunk_0
