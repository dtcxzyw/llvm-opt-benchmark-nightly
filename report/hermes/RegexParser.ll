Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE16closeAlternationERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit
  %i.cp = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.cf, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.m
  %.not.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  store ptr %i.bt, ptr %i.l, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bs, ptr %i.cv, align 8, !tbaa !55
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.br, ptr %i.cw, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cy = insertelement <2 x ptr> %i.k, ptr %i.cx, i64 1
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

bb.o:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  call void @_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cz = load <2 x ptr>, ptr %2, align 16, !tbaa !94
  %.pre22 = load ptr, ptr %i.m, align 16, !tbaa !62
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n, %bb.o
  %i.da = phi ptr [ %i.o, %bb.n ], [ %.pre22, %bb.o ]
  %i.db = phi <2 x ptr> [ %i.cy, %bb.n ], [ %i.cz, %bb.o ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x ptr> %i.db, ptr %4, align 16, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.da, ptr %i.de, align 16, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.df = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.dg = load ptr, ptr %4, align 16, !tbaa !93   ; 3 uses
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.do, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.dg, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.di = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.do, %i.dh
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit
  %i.dp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i ], [ %i.dg, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i
  %i.dq = load ptr, ptr %i.de, align 16, !tbaa !62
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, %bb.q
  %i.du = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ea = load ptr, ptr %2, align 16, !tbaa !93   ; 3 uses
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %.not4.i.i.i9 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not4.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.05.i.i.i11 = phi ptr [ %i.ei, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13 ], [ %i.ea, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %i.ec = load ptr, ptr %.05.i.i.i11, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i12, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i10
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !58
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13: ; preds = %bb.s, %.lr.ph.i.i.i10
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 24 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ei, %i.eb
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, label %.lr.ph.i.i.i10, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.pr.i16 = load ptr, ptr %2, align 16, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.ej = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15 ], [ %i.ea, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17
  %i.ek = load ptr, ptr %i.m, align 16, !tbaa !62
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10closeGroupERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::ParseStackElement", align 8 ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = load ptr, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %2, ptr noundef nonnull align 8 dereferenceable(74) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !94
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.n, ptr %i.l, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.q = load i16, ptr %i.p, align 8              ; 3 uses
  store i16 %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.c, align 8, !tbaa !40
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !40
  %i.t = load ptr, ptr %1, align 8, !tbaa !39
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  %i.aa = lshr i16 %i.q, 8                        ; 2 uses
  %5 = trunc nuw i16 %i.aa to i8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %bb.a
  %i.ai = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.c
  %i.ao = load i32, ptr %2, align 8, !tbaa !59
  switch i32 %i.ao, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit [
    i32 4, label %bb.n
    i32 2, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55, !noalias !295 ; 3 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !56, !noalias !295 ; 4 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %.not.i65 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i65, label %._crit_edge67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %._crit_edge67, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.i66 = phi i64 [ %i.az, %.lr.ph ], [ %i.ba, %bb.e ]
  %i.ba = add i64 %.0.i66, -1                     ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37, !noalias !295
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %._crit_edge, label %bb.e, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f
  br label %._crit_edge67, !llvm.loop !0

._crit_edge67:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %.lcssa.i = phi i64 [ %i.ba, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.e ]
  %i.be = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.lcssa.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !295
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.aw, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

.lr.ph.i:                                         ; preds = %._crit_edge67
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i, %.lr.ph.i
  %i.bm = phi ptr [ null, %.lr.ph.i ], [ %i.ch, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 5 uses
  %i.bn = phi ptr [ null, %.lr.ph.i ], [ %i.ci, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %i.bo = phi ptr [ null, %.lr.ph.i ], [ %i.cj, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %i.cl, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.ck, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i.i.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.bk, align 8, !tbaa !55
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #17 ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  %i.cd = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !37
  %i.ce = icmp sgt i64 %i.bt, 0
  br i1 %i.ce, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bm, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bt) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.cb, ptr %3, align 8, !tbaa !56
  store ptr %i.cf, ptr %i.bk, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz ; 2 uses
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !58
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.h
  %i.ch = phi ptr [ %i.bm, %bb.h ], [ %i.cb, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.ci = phi ptr [ %i.bn, %bb.h ], [ %i.cg, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.cj = phi ptr [ %i.bq, %bb.h ], [ %i.cf, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.cl = add nsw i64 %.07.i, -1
  %i.cm = icmp sgt i64 %.07.i, 1
  br i1 %i.cm, label %bb.g, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, !llvm.loop !1

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !35, !noalias !295
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, %._crit_edge67
  %i.cn = phi ptr [ %.pre, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ %i.au, %._crit_edge67 ]
  %.not.i.i.i = icmp eq ptr %i.bf, %i.cn
  br i1 %.not.i.i.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit
  %i.co = load ptr, ptr %i.as, align 8, !tbaa !35, !noalias !295 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.bg, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  store ptr %i.cr, ptr %i.at, align 8, !tbaa !55, !noalias !295
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !17
  %i.cu = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_23MarkedSubexpressionNodeEJSt6vectorIPNS0_4NodeESaIS8_EERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.db = trunc i16 %i.q to i1
  %i.dc = trunc i16 %i.aa to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.de = load i8, ptr %i.dd, align 4
  %6 = lshr i8 %i.de, 3
  %7 = xor i8 %6, -1
  %8 = and i8 %5, %7
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !296
  %i.dh = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 138
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !91
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 144 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 152 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !55, !noalias !297 ; 3 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !56, !noalias !297 ; 4 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %.not.i1069 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i1069, label %._crit_edge75, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.n
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %.not.i10 = icmp eq i64 %i.du, 0
  br i1 %.not.i10, label %._crit_edge75, label %bb.p, !llvm.loop !0

bb.p:                                             ; preds = %.lr.ph72, %bb.o
  %.0.i970 = phi i64 [ %i.dt, %.lr.ph72 ], [ %i.du, %bb.o ]
  %i.du = add i64 %.0.i970, -1                    ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37, !noalias !297
  %i.dx = icmp eq ptr %i.dw, %i.dl
  br i1 %i.dx, label %._crit_edge73, label %bb.o, !llvm.loop !0

._crit_edge73:                                    ; preds = %bb.p
  br label %._crit_edge75, !llvm.loop !0

._crit_edge75:                                    ; preds = %bb.o, %._crit_edge73, %bb.n
  %.lcssa.i11 = phi i64 [ %i.du, %._crit_edge73 ], [ -1, %bb.n ], [ -1, %bb.o ]
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %.lcssa.i11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.eb = sub i64 %i.dq, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3                 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i21, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34

.lr.ph.i21:                                       ; preds = %._crit_edge75, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge75 ] ; 5 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge75 ] ; 2 uses
  %i.ee = phi ptr [ %i.ey, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge75 ] ; 3 uses
  %i.ef = phi ptr [ %.sroa.8.0, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge75 ] ; 3 uses
  %.07.i24 = phi i64 [ %i.fa, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ %i.ec, %._crit_edge75 ] ; 2 uses
  %.056.i25 = phi ptr [ %i.ez, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ %i.dz, %._crit_edge75 ] ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.ef, %i.ee
  br i1 %.not.i.i.i.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i21
  %i.eg = load ptr, ptr %.056.i25, align 8, !tbaa !37
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !37
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27

bb.r:                                             ; preds = %.lr.ph.i21
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 5 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775800
  br i1 %i.ek, label %bb.s, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28: ; preds = %bb.r
  %i.el = ashr exact i64 %i.ej, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i.i.i.i.i29, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.em, i64 1152921504606846975)
  %i.ep = select i1 %i.en, i64 1152921504606846975, i64 %i.eo ; 3 uses
  %.not.i.i.i.i.i.i30 = icmp ne i64 %i.ep, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i30)
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #17 ; 4 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.ej ; 2 uses
  %i.et = load ptr, ptr %.056.i25, align 8, !tbaa !37
  store ptr %i.et, ptr %i.es, align 8, !tbaa !37
  %i.eu = icmp sgt i64 %i.ej, 0
  br i1 %i.eu, label %bb.t, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31

bb.t:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.er, ptr align 8 %.sroa.0.0, i64 %i.ej, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31: ; preds = %bb.t, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28
  %.not.i17.i.i.i.i.i32 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i17.i.i.i.i.i32, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31
  %i.ev = ptrtoint ptr %.sroa.12.0 to i64
  %i.ew = sub i64 %i.ev, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ew) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33: ; preds = %bb.u, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ep ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33, %bb.q
  %.sroa.0.1 = phi ptr [ %i.er, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %.sroa.0.0, %bb.q ] ; 2 uses
  %.pn = phi ptr [ %i.es, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %i.ef, %bb.q ]
  %.sroa.12.1 = phi ptr [ %i.ex, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %.sroa.12.0, %bb.q ] ; 2 uses
  %i.ey = phi ptr [ %i.ex, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %i.ee, %bb.q ]
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.056.i25, i64 8
  %i.fa = add nsw i64 %.07.i24, -1
  %i.fb = icmp sgt i64 %.07.i24, 1
  br i1 %i.fb, label %.lr.ph.i21, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit, !llvm.loop !1

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27
  %.pre39 = load ptr, ptr %i.dn, align 8, !tbaa !35, !noalias !297
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit, %._crit_edge75
  %i.fc = phi ptr [ %i.do, %._crit_edge75 ], [ %.pre39, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.0.2 = phi ptr [ null, %._crit_edge75 ], [ %.sroa.0.1, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.8.1 = phi ptr [ null, %._crit_edge75 ], [ %.sroa.8.0, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.12.2 = phi ptr [ null, %._crit_edge75 ], [ %.sroa.12.1, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.not.i.i.i12 = icmp eq ptr %i.dz, %i.fc
  br i1 %.not.i.i.i12, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34
  %i.fd = load ptr, ptr %i.dm, align 8, !tbaa !35, !noalias !297 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.ea, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ff
  store ptr %i.fg, ptr %i.dn, align 8, !tbaa !55, !noalias !297
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13
  %i.fh = load ptr, ptr %0, align 8, !tbaa !25
  store ptr %.sroa.0.2, ptr %4, align 8, !tbaa !56
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.8.1, ptr %i.fi, align 8, !tbaa !55
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sroa.12.2, ptr %i.fj, align 8, !tbaa !58
  %i.fk = trunc i32 %i.dg to i16
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE14pushLookaroundESt6vectorIPNS0_4NodeESaIS6_EEttbb(ptr noundef nonnull align 8 dereferenceable(336) %i.fh, ptr noundef nonnull %4, i16 noundef zeroext %i.fk, i16 noundef zeroext %i.dj, i1 noundef zeroext %i.db, i1 noundef zeroext %i.dc)
  %i.fl = load ptr, ptr %4, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !58
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18: ; preds = %bb.v, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14
  %9 = trunc nuw i8 %8 to i1
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %bb.m, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %.0 = phi i1 [ true, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit ], [ %9, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18 ], [ true, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ], [ true, %bb.m ]
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.fr = call noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeQuantifierPrefixEPNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %i.fq)
  br i1 %i.fr, label %bb.w, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.w:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !26 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i19, label %bb.y, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i: ; preds = %bb.w
  %i.fw = load i16, ptr %i.ft, align 2, !tbaa !43
  %i.fx = icmp eq i16 %i.fw, 63
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i, %bb.x
  %i.fz = phi i8 [ 0, %bb.x ], [ 1, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i.i ], [ 1, %bb.w ]
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.fz, ptr %i.ga, align 8, !tbaa !95
  br i1 %.0, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !28
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.aa, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.aa:                                            ; preds = %bb.z
  store i32 9, ptr %i.gb, align 8, !tbaa !28
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

bb.ab:                                            ; preds = %bb.y
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE15applyQuantifierERKNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit: ; preds = %bb.aa, %bb.z, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.ab
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ge, %i.gf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gm, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i ], [ %i.ge, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit ] ; 3 uses
  %i.gg = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !58
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, %i.gf
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit
  %i.gn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.ge, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE20tryConsumeQuantifierEPNS7_10QuantifierE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i
  %i.go = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #18
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, %bb.ad
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
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  store i32 0, ptr %9, align 8, !tbaa !96, !alias.scope !300
  store i32 -1, ptr %i.f, align 4, !tbaa !97, !alias.scope !300
  store i8 1, ptr %i.g, align 8, !tbaa !95, !alias.scope !300
  %i.y = load ptr, ptr %0, align 8, !tbaa !25, !noalias !300 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 138
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !91, !noalias !300
  store i16 %i.aa, ptr %i.i, align 2, !tbaa !98, !alias.scope !300
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35, !noalias !300
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37, !noalias !300
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !99, !alias.scope !300
  %i.af = load i16, ptr %i.x, align 2, !tbaa !43  ; 5 uses
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
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ag, align 8, !tbaa !29
  store i8 %.sroa.0.0.copyload.i.i, ptr %8, align 1
  %i.ah = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !26
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.ak = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15RightAnchorNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.y) ; 0 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.am, ptr %i.b, align 8, !tbaa !26
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !26
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.thread

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.ap, align 8, !tbaa !28
end_hunk_0
