Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-disassembler?download=true
inline.NumInlined: 6541
inline.NumDeleted: 2441
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv:bb.a
    i8 2, label %bb.v
    i8 3, label %bb.ab
    i8 4, label %bb.ae
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.dn = load ptr, ptr %i.f, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 200
  %i.dp = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_12WasmFunctionEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.951, ptr noundef nonnull %i.do, ptr noundef nonnull %i.a)
  %i.dq = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 %i.dp, ptr %i.dq, align 4
  %i.dr = load i32, ptr %i.ah, align 8
  %.not77 = icmp eq i32 %i.dr, -1
  br i1 %.not77, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %i.f, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 104 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8
  %i.dw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 25
  store i8 1, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 26
  store i8 1, ptr %i.dy, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ag

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8
  %i.dz = load ptr, ptr %i.f, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 272
  %i.eb = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_9WasmTableEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.943, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.b)
  %i.ec = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not39 = icmp eq ptr %i.ed, null
  br i1 %.not39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store i8 1, ptr %i.ee, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ag

bb.v:                                             ; preds = %bb.o
  %i.ef = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.eg = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp ult ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.w, label %.critedge.i.i, !prof !39

bb.w:                                             ; preds = %bb.v
  %i.ej = load i8, ptr %i.ef, align 1             ; 2 uses
  %.not.i.i46 = icmp sgt i8 %i.ej, -1
  br i1 %.not.i.i46, label %bb.x, label %.critedge.i.i, !prof !39

bb.x:                                             ; preds = %bb.w
  %i.ek = zext nneg i8 %i.ej to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i:                                    ; preds = %bb.w, %bb.v
  %i.el = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ef, ptr noundef nonnull @.str.1052) ; 3 uses
  %i.em = icmp ult i64 %i.el, 25769803776
  call void @llvm.assume(i1 %i.em)
  %i.en = lshr i64 %i.el, 32
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %.pre15.pre.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i, %bb.x
  %.pre15.i = phi ptr [ %i.ef, %bb.x ], [ %.pre15.pre.i, %.critedge.i.i ] ; 2 uses
  %.sroa.014.0.i = phi i64 [ %i.ek, %bb.x ], [ %i.el, %.critedge.i.i ] ; 2 uses
  %.sroa.5.0.i = phi i32 [ 1, %bb.x ], [ %i.eo, %.critedge.i.i ] ; 2 uses
  %.not.i45 = icmp eq ptr %i.eg, null
  br i1 %.not.i45, label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.ep = load ptr, ptr %i.eg, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef %.pre15.i, i32 noundef %.sroa.5.0.i) #20, !inline_history !12
  %i.es = load ptr, ptr %i.eg, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.1052) #20, !inline_history !12
  %.pre.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit

_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit: ; preds = %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i, %bb.y
  %i.ev = phi ptr [ %.pre.i, %bb.y ], [ %.pre15.i, %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.014.0.i to i32 ; 2 uses
  %i.ew = zext nneg i32 %.sroa.5.0.i to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  store ptr %i.ex, ptr %i.am, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 296
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 304
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = sdiv exact i64 %i.fg, 48                ; 2 uses
  %i.fi = and i64 %.sroa.014.0.i, 4294967295      ; 2 uses
  %.not38 = icmp ugt i64 %i.fh, %i.fi
  br i1 %.not38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.fj = icmp eq i64 %i.fg, 48
  %i.fk = select i1 %i.fj, ptr @.str.1054, ptr @.str.1055
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ef, ptr noundef nonnull @.str.1053, i32 noundef %.sroa.0.0.extract.trunc.i, i64 noundef %i.fh, ptr noundef nonnull %i.fk)
  br label %bb.ag

bb.aa:                                            ; preds = %_ZN2v88internal4wasm7Decoder12consume_u32vEPKcPNS1_7ITracerE.exit
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr %i.fd, i64 %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  store i8 1, ptr %i.fm, align 4
  br label %bb.ag

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr null, ptr %i.c, align 8
  %i.fn = load ptr, ptr %i.f, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 224
  %i.fp = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_10WasmGlobalEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.952, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.c)
  %i.fq = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 %i.fp, ptr %i.fq, align 4
  %i.fr = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not37 = icmp eq ptr %i.fr, null
  br i1 %.not37, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 22
  store i8 1, ptr %i.fs, align 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ag

bb.ae:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr null, ptr %i.d, align 8
  %i.ft = load ptr, ptr %i.f, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 368
  %i.fv = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_7WasmTagEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.953, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.d)
  %i.fw = getelementptr inbounds i8, ptr %i.cw, i64 -4
  store i32 %i.fv, ptr %i.fw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ag

bb.af:                                            ; preds = %bb.o
  %i.fx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.fy = load i8, ptr %i.fx, align 4
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_20ImportExportKindCodeEEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.1056, i8 noundef zeroext %i.fy)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.aa, %bb.af, %bb.ae, %bb.ad, %bb.u, %bb.r
  %i.fz = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not40 = icmp eq ptr %i.fz, null
  br i1 %.not40, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 160
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = add nuw i32 %.03084, 1                  ; 2 uses
  %i.ge = load i32, ptr %i.ah, align 8
  %.not.i = icmp eq i32 %i.ge, -1                 ; 2 uses
  %i.gf = icmp ult i32 %i.gd, %i.e
  %i.gg = select i1 %.not.i, i1 %i.gf, i1 false
  br i1 %i.gg, label %bb.c, label %._crit_edge, !llvm.loop !209

bb.aj:                                            ; preds = %._crit_edge
  %i.gh = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 704
  %i.gj = load i8, ptr %i.gi, align 8
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.ak, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 344 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 352 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %i.go = load ptr, ptr %i.gl, align 8            ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 4 uses
  %i.gs = icmp ugt i64 %i.gr, 16
  br i1 %i.gs, label %2, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

2:                                                ; preds = %bb.ak
  %.not.i.i.i.i47 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i.i47, label %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i, label %bb.al

bb.al:                                            ; preds = %2
  %i.gt = icmp ugt i64 %i.gr, 9223372036854775792
  br i1 %i.gt, label %bb.am, label %_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i, !prof !37

bb.am:                                            ; preds = %bb.al
  call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.al
  %3 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #21
  %.pre95 = load ptr, ptr %i.gl, align 8
  %.pre96 = load ptr, ptr %i.gm, align 8
  br label %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i, %2
  %4 = phi ptr [ %.pre96, %_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i ], [ %i.gn, %2 ] ; 2 uses
  %5 = phi ptr [ %.pre95, %_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i ], [ %i.go, %2 ] ; 2 uses
  %6 = phi ptr [ %3, %_ZNSt15__new_allocatorIN2v88internal4wasm10WasmExportEE8allocateEmPKv.exit.i.i.i.i ], [ null, %2 ] ; 10 uses
  %i.gu = icmp eq ptr %5, %4
  br i1 %i.gu, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread, label %.lr.ph.i.i.i.i.i

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm10WasmExportESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17ModuleDecoderImpl19DecodeExportSectionEvEUlRKS5_SF_E_EEEvT_SI_T0_(ptr %6, ptr %6, ptr nonnull %0)
  br label %.lr.ph88

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i.idx = phi i64 [ %.08.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i ], [ 0, %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %5, %_ZNSt12_Vector_baseIN2v88internal4wasm10WasmExportESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.08.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %6, i64 %.08.i.i.i.i.i.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.08.i.i.i.i.i.ptr, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %.08.i.i.i.i.i.add = add nuw nsw i64 %.08.i.i.i.i.i.idx, 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %4
  br i1 %i.gw, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !210

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %6, i64 %.08.i.i.i.i.i.add ; 2 uses
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm10WasmExportESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_17ModuleDecoderImpl19DecodeExportSectionEvEUlRKS5_SF_E_EEEvT_SI_T0_(ptr nonnull %6, ptr nonnull %.0.lcssa.i.i.i.i.i.ptr, ptr nonnull %0)
  %i.gx = icmp eq i64 %.08.i.i.i.i.i.idx, 0
  br i1 %i.gx, label %.loopexit.thread, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit
  %.0.lcssa.i.i.i.i.i.ptr133 = phi ptr [ %6, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit.thread ], [ %.0.lcssa.i.i.i.i.i.ptr, %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit ]
  %.sroa.056.085 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph88, %bb.ap
  %.sroa.056.087 = phi ptr [ %.sroa.056.085, %.lr.ph88 ], [ %.sroa.056.0, %bb.ap ] ; 4 uses
  %.086 = phi ptr [ %6, %.lr.ph88 ], [ %.sroa.056.087, %bb.ap ] ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.086, i64 4
  %i.hb = load i32, ptr %i.ha, align 4            ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.086, i64 20
  %i.hd = load i32, ptr %i.hc, align 4            ; 3 uses
  %.not.i48 = icmp eq i32 %i.hb, %i.hd
  br i1 %.not.i48, label %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit, label %.split

.split:                                           ; preds = %bb.an
  %i.he = icmp ult i32 %i.hb, %i.hd
  br i1 %i.he, label %bb.ap, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre97.a = load ptr, ptr %i.gy, align 8
  %.pre98.a = load i32, ptr %.sroa.056.087, align 4
  %.pre99.a = load i32, ptr %i.gz, align 8
  %.pre100 = sub i32 %.pre98.a, %.pre99.a
  %.pre101 = zext i32 %.pre100 to i64
  br label %split

_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit: ; preds = %bb.an
  %i.hf = load ptr, ptr %i.gy, align 8            ; 3 uses
  %i.hg = load i32, ptr %.086, align 4
  %i.hh = load i32, ptr %i.gz, align 8            ; 2 uses
  %i.hi = sub i32 %i.hg, %i.hh
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hj
  %i.hl = load i32, ptr %.sroa.056.087, align 4
  %i.hm = sub i32 %i.hl, %i.hh
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hn
  %i.hp = zext i32 %i.hb to i64
  %i.hq = call i32 @memcmp(ptr noundef %i.hk, ptr noundef %i.ho, i64 noundef %i.hp) #24
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ap, label %split

split:                                            ; preds = %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit, %.split._crit_edge
  %.pre-phi102 = phi i64 [ %.pre101, %.split._crit_edge ], [ %i.hn, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit ]
  %i.hs = phi ptr [ %.pre97.a, %.split._crit_edge ], [ %i.hf, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit ]
  %.lcssa = phi i32 [ %i.hd, %.split._crit_edge ], [ %i.hb, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.pre-phi102 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.ht, ptr %1, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.lcssa, i32 50) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.hu, align 8
  %i.hv = icmp ugt i32 %.lcssa, 50
  br i1 %i.hv, label %bb.ao, label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

bb.ao:                                            ; preds = %split
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(47) %i.hw, ptr noundef nonnull align 1 dereferenceable(47) %i.ht, i64 47, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hx, i8 46, i64 3, i1 false)
  store ptr %i.hw, ptr %1, align 8
  br label %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit

_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit: ; preds = %split, %bb.ao
  %i.hy = phi ptr [ %i.ht, %split ], [ %i.hw, %bb.ao ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.086, i64 8
  %i.ia = load i8, ptr %i.hz, align 4             ; 2 uses
  %i.ib = icmp ult i8 %i.ia, 5
  br i1 %i.ib, label %switch.lookup165, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

switch.lookup165:                                 ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit
  %i.ic = zext nneg i8 %i.ia to i64
  %switch.gep166 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.2, i64 %i.ic
  %switch.load167 = load ptr, ptr %switch.gep166, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51: ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit, %switch.lookup165
  %.0.i50 = phi ptr [ %switch.load167, %switch.lookup165 ], [ @.str.792, %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit ]
  %i.id = getelementptr inbounds nuw i8, ptr %.086, i64 12
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.ig = load i8, ptr %i.if, align 4             ; 2 uses
  %i.ih = icmp ult i8 %i.ig, 5
  br i1 %i.ih, label %switch.lookup168, label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

switch.lookup168:                                 ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51
  %i.ii = zext nneg i8 %i.ig to i64
  %switch.gep169 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.2, i64 %i.ii
  %switch.load170 = load ptr, ptr %switch.gep169, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53

_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53: ; preds = %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51, %switch.lookup168
  %.0.i52 = phi ptr [ %switch.load170, %switch.lookup168 ], [ @.str.792, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.086, i64 28
  %i.ik = load i32, ptr %i.ij, align 4
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJiPKcS5_jS5_jEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ht, ptr noundef nonnull @.str.1057, i32 noundef %.sroa.speculated.i.i, ptr noundef %i.hy, ptr noundef nonnull %.0.i50, i32 noundef %i.ie, ptr noundef nonnull %.0.i52, i32 noundef %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.loopexit

bb.ap:                                            ; preds = %.split, %_ZZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEvENKUlRKNS1_10WasmExportES5_E_clES5_S5_.exit
  %.sroa.056.0 = getelementptr inbounds nuw i8, ptr %.sroa.056.087, i64 16 ; 2 uses
  %i.il = icmp eq ptr %.sroa.056.0, %.0.lcssa.i.i.i.i.i.ptr133
  br i1 %i.il, label %.loopexit, label %bb.an, !llvm.loop !211

.loopexit:                                        ; preds = %bb.ap, %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit53
  %.not.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EEC2ERKS5_.exit, %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.gr) #22
  br label %_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm10WasmExportESaIS3_EED2Ev.exit: ; preds = %.loopexit.thread, %.loopexit, %bb.ak, %bb.aj, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl18DecodeStartSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 comdat align 2 {
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
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.n) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.w = call noundef i32 @_ZN2v88internal4wasm17ModuleDecoderImpl13consume_indexINS1_12WasmFunctionEEEjPKcPSt6vectorIT_SaIS8_EEPPS8_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.951, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a)
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
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #20
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
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.s, ptr noundef nonnull @.str.1060)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm17ModuleDecoderImpl17DecodeCodeSectionEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::vector.122", align 8   ; 12 uses
  %2 = alloca %"struct.std::pair.223", align 4    ; 5 uses
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
  store i32 %.128.i, ptr %i.j, align 8
  br label %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.038.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %.02537.i = phi i32 [ %.126.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.02736.i = phi i32 [ %.128.i, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.sroa.032.035.i = phi ptr [ %i.ak, %bb.g ], [ %i.d, %bb.c ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 4
  %i.m = load i8, ptr %i.l, align 4, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 21
  %i.p = load i8, ptr %i.o, align 1, !range !34
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = add i32 %.02537.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 16
  store i32 %.02537.i, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = load i32, ptr %.sroa.032.035.i, align 4  ; 2 uses
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 16
  store i32 %.02736.i, ptr %i.v, align 8
  %i.w = add i32 %.02736.i, 1
  br label %bb.g

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i: ; preds = %bb.e
  %i.x = lshr i32 %i.t, 8
  %i.y = add nuw nsw i32 %i.x, 2
  %i.z = and i32 %i.y, 7
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = add i32 %.038.i, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = sub nsw i32 0, %i.ad
  %i.ah = and i32 %i.af, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 16
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = add i32 %i.ah, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i, %bb.f, %bb.d
  %.128.i = phi i32 [ %.02736.i, %bb.d ], [ %i.w, %bb.f ], [ %.02736.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %.126.i = phi i32 [ %i.r, %bb.d ], [ %.02537.i, %bb.f ], [ %.02537.i, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ]
  %.1.i = phi i32 [ %.038.i, %bb.d ], [ %.038.i, %bb.f ], [ %i.aj, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit: ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add i32 %i.av, %i.at                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ult ptr %i.an, %i.ba
  br i1 %i.bb, label %bb.h, label %.critedge.i.i, !prof !39

bb.h:                                             ; preds = %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit
  %i.bc = load i8, ptr %i.an, align 1             ; 2 uses
  %.not.i.i = icmp sgt i8 %i.bc, -1
  br i1 %.not.i.i, label %bb.i, label %.critedge.i.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i8 %i.bc to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i:                                    ; preds = %bb.h, %_ZN2v88internal4wasm17ModuleDecoderImpl22CalculateGlobalOffsetsEPNS1_10WasmModuleE.exit
  %i.be = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.an, ptr noundef nonnull @.str.977) ; 3 uses
  %i.bf = icmp ult i64 %i.be, 25769803776
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = lshr i64 %i.be, 32
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %.pre15.pre.i = load ptr, ptr %i.am, align 8
end_hunk_0
