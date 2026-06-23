inline.NumInlined: 6143
inline.NumDeleted: 2639
begin_hunk_0_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv:bb.a
  %i.dy = load ptr, ptr %i.ah, align 8
  %i.dz = icmp ult ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.w, label %.critedge.i.i, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.ea = load i8, ptr %i.dw, align 1             ; 2 uses
  %.not.i.i46 = icmp sgt i8 %i.ea, -1
  br i1 %.not.i.i46, label %bb.x, label %.critedge.i.i, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.eb = zext nneg i8 %i.ea to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i:                                    ; preds = %bb.w, %bb.v
  %i.ec = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.dw, ptr noundef nonnull @.str.1045) ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 25769803776
  call void @llvm.assume(i1 %i.ed)
  %i.ee = lshr i64 %i.ec, 32
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %.pre15.pre.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i, %bb.x
  %.pre15.i = phi ptr [ %i.dw, %bb.x ], [ %.pre15.pre.i, %.critedge.i.i ] ; 2 uses
  %.sroa.014.0.i = phi i64 [ %i.eb, %bb.x ], [ %i.ec, %.critedge.i.i ] ; 2 uses
  %.sroa.5.0.i = phi i32 [ 1, %bb.x ], [ %i.ef, %.critedge.i.i ] ; 2 uses
  %.not.i45 = icmp eq ptr %i.dx, null
  br i1 %.not.i45, label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.eg = load ptr, ptr %i.dx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %.pre15.i, i32 noundef %.sroa.5.0.i) #25, !inline_history !110
  %i.ej = load ptr, ptr %i.dx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.1045) #25, !inline_history !110
  %.pre.i = load ptr, ptr %i.ag, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit

_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit: ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i, %bb.y
  %i.em = phi ptr [ %.pre.i, %bb.y ], [ %.pre15.i, %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.014.0.i to i32 ; 2 uses
  %i.en = zext nneg i32 %.sroa.5.0.i to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store ptr %i.eo, ptr %i.ag, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 296
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 304
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = sdiv exact i64 %i.ex, 48                ; 2 uses
  %i.ez = and i64 %.sroa.014.0.i, 4294967295      ; 2 uses
  %.not38 = icmp ugt i64 %i.ey, %i.ez
  br i1 %.not38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.fa = icmp eq i64 %i.ex, 48
  %i.fb = select i1 %i.fa, ptr @.str.1047, ptr @.str.1048
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.dw, ptr noundef nonnull @.str.1046, i32 noundef %.sroa.0.0.extract.trunc.i, i64 noundef %i.ey, ptr noundef nonnull %i.fb)
  br label %bb.ag

bb.aa:                                            ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.fc = getelementptr inbounds nuw [48 x i8], ptr %i.eu, i64 %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  store i8 1, ptr %i.fd, align 4
  br label %bb.ag

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8
  %i.fe = load ptr, ptr %i.f, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 224
  %i.fg = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_10WasmGlobalEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.c)
  %i.fh = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not37 = icmp eq ptr %i.fi, null
  br i1 %.not37, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 22
  store i8 1, ptr %i.fj, align 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ag

bb.ae:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8
  %i.fk = load ptr, ptr %i.f, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 368
  %i.fm = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_7WasmTagEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.223, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.d)
  %i.fn = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store i32 %i.fm, ptr %i.fn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ag

bb.af:                                            ; preds = %bb.o
  %i.fo = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.fp = load i8, ptr %i.fo, align 4
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_20ImportExportKindCodeEEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aw, ptr noundef nonnull @.str.1049, i8 noundef zeroext %i.fp)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.aa, %bb.af, %bb.ae, %bb.ad, %bb.u, %bb.r
  %i.fq = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not40 = icmp eq ptr %i.fq, null
  br i1 %.not40, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 160
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fq) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fu = add nuw i32 %.084, 1                    ; 2 uses
  %i.fv = load i32, ptr %i.ab, align 8
  %.not.i = icmp eq i32 %i.fv, -1                 ; 2 uses
  %i.fw = icmp ult i32 %i.fu, %i.e
  %i.fx = select i1 %.not.i, i1 %i.fw, i1 false
  br i1 %i.fx, label %bb.c, label %._crit_edge, !llvm.loop !181

bb.aj:                                            ; preds = %._crit_edge
  %i.fy = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 704
  %i.ga = load i8, ptr %i.fz, align 8
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.ak, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 344
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 352
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %i.gf = load ptr, ptr %i.gc, align 8            ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 4 uses
  %i.gj = icmp ugt i64 %i.gi, 16
  br i1 %i.gj, label %bb.al, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i.i47 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread, label %bb.am

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread: ; preds = %bb.al
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm10WasmExportESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17ModuleDecoderImpl19DecodeExportSectionEvEUlRKS5_SF_E_EEEvT_SI_T0_(ptr null, ptr null, ptr nonnull %0)
  br label %.lr.ph88

bb.am:                                            ; preds = %bb.al
  %i.gk = icmp ugt i64 %i.gi, 9223372036854775792
  br i1 %i.gk, label %bb.an, label %.lr.ph.i.i.i.i.i.preheader, !prof !22

bb.an:                                            ; preds = %bb.am
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.am
  %i.gl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #26 ; 5 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i.idx = phi i64 [ %.08.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.08.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.08.i.i.i.i.i.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.08.i.i.i.i.i.ptr, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %.08.i.i.i.i.i.add = add nuw nsw i64 %.08.i.i.i.i.i.idx, 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ge
  br i1 %i.gn, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.08.i.i.i.i.i.add ; 2 uses
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm10WasmExportESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17ModuleDecoderImpl19DecodeExportSectionEvEUlRKS5_SF_E_EEEvT_SI_T0_(ptr nonnull %i.gl, ptr nonnull %.0.lcssa.i.i.i.i.i.ptr, ptr nonnull %0)
  %i.go = icmp eq i64 %.08.i.i.i.i.i.idx, 0
  br i1 %i.go, label %.loopexit.thread, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit
  %.0.lcssa.i.i.i.i.i.ptr126 = phi ptr [ null, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread ], [ %.0.lcssa.i.i.i.i.i.ptr, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit ]
  %i.gp = phi ptr [ null, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread ], [ %i.gl, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit ] ; 4 uses
  %.sroa.056.085 = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8            ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gt = load i32, ptr %i.gs, align 8            ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph88, %bb.ar
  %.sroa.056.087 = phi ptr [ %.sroa.056.085, %.lr.ph88 ], [ %.sroa.056.0, %bb.ar ] ; 4 uses
  %.03086 = phi ptr [ %i.gp, %.lr.ph88 ], [ %.sroa.056.087, %bb.ar ] ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.03086, i64 4
  %i.gv = load i32, ptr %i.gu, align 4            ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.03086, i64 20
  %i.gx = load i32, ptr %i.gw, align 4            ; 4 uses
  %.not.i48 = icmp eq i32 %i.gv, %i.gx
  br i1 %.not.i48, label %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = icmp ult i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.ar, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.ap
  %.pre94 = load i32, ptr %.sroa.056.087, align 4
  %.pre95 = sub i32 %.pre94, %i.gt
  %.pre96 = zext i32 %.pre95 to i64
  br label %split

_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit: ; preds = %bb.ao
  %i.gz = load i32, ptr %.03086, align 4
  %i.ha = sub i32 %i.gz, %i.gt
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hb
  %i.hd = load i32, ptr %.sroa.056.087, align 4
  %i.he = sub i32 %i.hd, %i.gt
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hf
  %i.hh = zext i32 %i.gv to i64
  %i.hi = call i32 @memcmp(ptr noundef %i.hc, ptr noundef %i.hg, i64 noundef %i.hh) #30
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.ar, label %split

split:                                            ; preds = %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit, %._crit_edge93
  %.pre-phi97 = phi i64 [ %.pre96, %._crit_edge93 ], [ %i.hf, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.pre-phi97 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.hk, ptr %1, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 50) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.hl, align 8
  %i.hm = icmp ugt i32 %i.gx, 50
  br i1 %i.hm, label %bb.aq, label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

bb.aq:                                            ; preds = %split
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(47) %i.hn, ptr noundef nonnull align 1 dereferenceable(47) %i.hk, i64 47, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ho, i8 46, i64 3, i1 false)
  store ptr %i.hn, ptr %1, align 8
  br label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit: ; preds = %split, %bb.aq
  %i.hp = phi ptr [ %i.hk, %split ], [ %i.hn, %bb.aq ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.03086, i64 8
  %i.hr = load i8, ptr %i.hq, align 4             ; 2 uses
  %i.hs = icmp ult i8 %i.hr, 5
  br i1 %i.hs, label %switch.lookup148, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

switch.lookup148:                                 ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit
  %i.ht = zext nneg i8 %i.hr to i64
  %switch.gep149 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.ht
  %switch.load150 = load ptr, ptr %switch.gep149, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51: ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit, %switch.lookup148
  %.0.i50 = phi ptr [ %switch.load150, %switch.lookup148 ], [ @.str.133, %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.03086, i64 12
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.03086, i64 24
  %i.hx = load i8, ptr %i.hw, align 4             ; 2 uses
  %i.hy = icmp ult i8 %i.hx, 5
  br i1 %i.hy, label %switch.lookup151, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

switch.lookup151:                                 ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51
  %i.hz = zext nneg i8 %i.hx to i64
  %switch.gep152 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.hz
  %switch.load153 = load ptr, ptr %switch.gep152, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53: ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51, %switch.lookup151
  %.0.i52 = phi ptr [ %switch.load153, %switch.lookup151 ], [ @.str.133, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.03086, i64 28
  %i.ib = load i32, ptr %i.ia, align 4
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJiPKcS5_jS5_jEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.hk, ptr noundef nonnull @.str.1050, i32 noundef %.sroa.speculated.i.i, ptr noundef %i.hp, ptr noundef nonnull %.0.i50, i32 noundef %i.hv, ptr noundef nonnull %.0.i52, i32 noundef %i.ib)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit
  %.sroa.056.0 = getelementptr inbounds nuw i8, ptr %.sroa.056.087, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %.sroa.056.0, %.0.lcssa.i.i.i.i.i.ptr126
  br i1 %i.ic, label %.loopexit, label %bb.ao, !llvm.loop !183

.loopexit:                                        ; preds = %bb.ar, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit, %.loopexit
  %i.id = phi ptr [ %i.gp, %.loopexit ], [ %i.gl, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.gi) #28
  br label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit: ; preds = %.loopexit.thread, %.loopexit, %bb.ak, %bb.aj, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeStartSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, %i.k
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.n) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.w = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_12WasmFunctionEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.221, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a)
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 %i.w, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not4 = icmp eq ptr %i.z, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not5 = icmp eq ptr %i.ad, null
  br i1 %.not5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %.not6 = icmp eq i64 %i.ag, 0
  br i1 %.not6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.ae, align 8
  %.not7 = icmp eq i64 %i.ah, 0
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.s, ptr noundef nonnull @.str.1052)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl17DecodeCodeSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::vector.91", align 8    ; 12 uses
  %2 = alloca %"struct.std::pair.434", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not29.i = icmp eq i32 %i.k, 0
  br i1 %.not29.i, label %.lr.ph.i, label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

._crit_edge.i:                                    ; preds = %bb.g
  store i32 %.1.i, ptr %i.h, align 4
  store i32 %.126.i, ptr %i.j, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.038.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %.02537.i = phi i32 [ %.126.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.02736.i = phi i32 [ %.128.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.sroa.032.035.i = phi ptr [ %i.ak, %bb.g ], [ %i.d, %bb.c ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 4
  %i.m = load i8, ptr %i.l, align 4, !range !38, !noundef !39
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 21
  %i.p = load i8, ptr %i.o, align 1, !range !38
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = add i32 %.02736.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 16
  store i32 %.02736.i, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = load i32, ptr %.sroa.032.035.i, align 4  ; 2 uses
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 16
  store i32 %.02537.i, ptr %i.v, align 8
  %i.w = add i32 %.02537.i, 1
  br label %bb.g
end_hunk_0
