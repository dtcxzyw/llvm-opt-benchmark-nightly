Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParallelLoopFusion?download=true
inline.NumInlined: 5994
inline.NumDeleted: 3409
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4mlir3scf22naivelyFuseParallelOpsERNS_6RegionEN4llvm12function_refIFbNS_5ValueES5_EEE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.dq = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %39, i64 68
  %i.dv = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %39, i64 44
  %i.dx = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %40, i64 28
  br label %bb.e

.loopexit193:                                     ; preds = %._crit_edge241, %._crit_edge
  %.sroa.0148.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0148.0249, i64 8
  %.sroa.0148.0 = load ptr, ptr %.sroa.0148.0.in, align 8, !tbaa !24 ; 2 uses
  %.not182 = icmp eq ptr %.sroa.0148.0, %0
  br i1 %.not182, label %._crit_edge251, label %bb.e

._crit_edge251:                                   ; preds = %.loopexit193
  %.pre300 = load ptr, ptr %43, align 8, !tbaa !26 ; 3 uses
  %.pre301 = load i32, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre301, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge251
  %i.eb = zext i32 %.pre301 to i64
  %.idx.i = shl nuw nsw i64 %i.eb, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre300, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ed, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i ], [ %i.ec, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !26 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.ee) #19
  br label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre300, %i.ed
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %43, align 8, !tbaa !26
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %._crit_edge251
  %i.eh = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %.pre300, %._crit_edge251 ] ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.l
  br i1 %i.ei, label %_ZN4llvm11SmallVectorINS0_IN4mlir3scf10ParallelOpELj6EEELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.i
  call void @free(ptr noundef %i.eh) #19
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir3scf10ParallelOpELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir3scf10ParallelOpELj6EEELj1EED2Ev.exit: ; preds = %_ZN4mlir9OpBuilderC2ERNS_6RegionEPNS0_8ListenerE.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE13destroy_rangeEPS5_S7_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  ret void

bb.e:                                             ; preds = %.lr.ph250, %.loopexit193
  %.sroa.0148.0249 = phi ptr [ %.sroa.0148.0247.pre, %.lr.ph250 ], [ %.sroa.0148.0, %.loopexit193 ] ; 3 uses
  %i.ej = load ptr, ptr %43, align 8, !tbaa !26   ; 2 uses
  %i.ek = load i32, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %.not4.i.i33 = icmp eq i32 %i.ek, 0
  br i1 %.not4.i.i33, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit, label %.lr.ph.i.preheader.i34

.lr.ph.i.preheader.i34:                           ; preds = %bb.e
  %i.el = zext i32 %i.ek to i64
  %.idx.i35 = shl nuw nsw i64 %i.el, 6
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i35
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38, %.lr.ph.i.preheader.i34
  %.05.i.i37 = phi ptr [ %i.en, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38 ], [ %i.em, %.lr.ph.i.preheader.i34 ] ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.05.i.i37, i64 -64 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !26 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.05.i.i37, i64 -48
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i36
  call void @free(ptr noundef %i.eo) #19
  br label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38

_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38: ; preds = %bb.f, %.lr.ph.i.i36
  %.not.i.i39 = icmp eq ptr %i.ej, %i.en
  br i1 %.not.i.i39, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit, label %.lr.ph.i.i36, !llvm.loop !0

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit.i.i38, %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  store ptr %i.o, ptr %44, align 8, !tbaa !26
  store i32 0, ptr %i.p, align 8, !tbaa !27
  store i32 6, ptr %i.q, align 4, !tbaa !28
  %i.er = load i32, ptr %i.n, align 4, !tbaa !28
  %.not.i.i.not.i.not = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.not.i.not, label %.critedge.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i, !prof !30

.critedge.i.i.i:                                  ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %43, i64 noundef 1)
  %.pre = load i32, ptr %i.m, align 8, !tbaa !27
  %i.es = zext i32 %.pre to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i: ; preds = %.critedge.i.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit
  %i.et = phi i64 [ %i.es, %.critedge.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEEE5clearEv.exit ]
  %i.eu = load ptr, ptr %43, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [64 x i8], ptr %i.eu, i64 %i.et ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 0, ptr %i.ex, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 6, ptr %i.ey, align 4, !tbaa !28
  %i.ez = load i32, ptr %i.p, align 8, !tbaa !27
  %.not.i.i3.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i3.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i
  %i.fa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir3scf10ParallelOpEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, ptr noundef nonnull align 8 dereferenceable(64) %44) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i, %bb.g
  %i.fb = load i32, ptr %i.m, align 8, !tbaa !27
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.m, align 8, !tbaa !27
  %i.fd = load ptr, ptr %44, align 8, !tbaa !26   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.o
  br i1 %i.fe, label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit
  call void @free(ptr noundef %i.fd) #19
  br label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0148.0249, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0148.0249, i64 32 ; 2 uses
  %.sroa.0144.0217 = load ptr, ptr %i.ff, align 8, !tbaa !24 ; 2 uses
  %.not183218 = icmp eq ptr %.sroa.0144.0217, %i.fg
  br i1 %.not183218, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit
  %i.fh = load ptr, ptr %43, align 8, !tbaa !26   ; 2 uses
  %i.fi = load i32, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.fj = zext i32 %i.fi to i64
  %.idx = shl nuw nsw i64 %i.fj, 6
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx
  %.not242 = icmp eq i32 %i.fi, 0
  br i1 %.not242, label %.loopexit193, label %.lr.ph245

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread
  %.sroa.0144.0220 = phi ptr [ %.sroa.0144.0, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread ], [ %.sroa.0144.0217, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit ] ; 2 uses
  %.031219 = phi i8 [ %.3, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread ], [ 1, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit ] ; 2 uses
  %i.fl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0144.0220) #19 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !tbaa !32
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !35
  %i.fp = icmp eq ptr %i.fo, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  br i1 %i.fp, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %.lr.ph
  %46 = trunc nuw i8 %.031219 to i1
  br i1 %46, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.fq = load ptr, ptr %43, align 8, !tbaa !26
  %i.fr = load i32, ptr %i.m, align 8, !tbaa !27
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %i.fq, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -64 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -56 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !27 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 -52
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !28
  %.not.i = icmp ult i32 %i.fw, %i.fy
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !36

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr nonnull %i.fl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.fz = zext i32 %i.fw to i64
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !26
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fz
  store ptr %i.fl, ptr %i.gb, align 1
  %i.gc = load i32, ptr %i.fv, align 8, !tbaa !27
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.fv, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.ge = ptrtoint ptr %i.fl to i64
  store ptr %i.r, ptr %45, align 8, !tbaa !26
  store i32 6, ptr %i.t, align 4, !tbaa !28
  store i64 %i.ge, ptr %i.r, align 8
  store i32 1, ptr %i.s, align 8, !tbaa !27
  %i.gf = load i32, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %i.gi = load i32, ptr %i.n, align 4, !tbaa !28
  %.not.i.i.not.i42 = icmp ult i32 %i.gf, %i.gi
  %.pre4.i43 = load ptr, ptr %43, align 8, !tbaa !26 ; 4 uses
  br i1 %.not.i.i.not.i42, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47, label %bb.n, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw [64 x i8], ptr %.pre4.i43, i64 %i.gg
  %i.gk = icmp uge ptr %45, %.pre4.i43
  %i.gl = icmp ult ptr %45, %i.gj
  %spec.select.i.i.i.i.i44 = and i1 %i.gk, %i.gl
  br i1 %spec.select.i.i.i.i.i44, label %bb.o, label %.critedge.i.i.i45, !prof !30

bb.o:                                             ; preds = %bb.n
  %i.gm = ptrtoint ptr %.pre4.i43 to i64
  %i.gn = sub i64 %i.u, %i.gm
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %43, i64 noundef %i.gh)
  %i.go = load ptr, ptr %43, align 8, !tbaa !26   ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.gn
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47

.critedge.i.i.i45:                                ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %43, i64 noundef %i.gh)
  %.pre.i46 = load ptr, ptr %43, align 8, !tbaa !26
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47: ; preds = %.critedge.i.i.i45, %bb.o, %bb.m
  %i.gq = phi ptr [ %.pre4.i43, %bb.m ], [ %i.go, %bb.o ], [ %.pre.i46, %.critedge.i.i.i45 ]
  %.016.i.i.i48 = phi ptr [ %45, %bb.m ], [ %i.gp, %bb.o ], [ %45, %.critedge.i.i.i45 ] ; 7 uses
  %i.gr = load i32, ptr %i.m, align 8, !tbaa !27
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %i.gs ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  store i32 0, ptr %i.gv, align 8, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12 ; 2 uses
  store i32 6, ptr %i.gw, align 4, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %.016.i.i.i48, i64 8 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !27 ; 6 uses
  %.not.i.i3.i49 = icmp eq i32 %i.gy, 0
  %i.gz = icmp eq ptr %i.gt, %.016.i.i.i48
  %or.cond = or i1 %i.gz, %.not.i.i3.i49
  br i1 %or.cond, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47
  %i.ha = load ptr, ptr %.016.i.i.i48, align 8, !tbaa !26 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.016.i.i.i48, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %bb.q, label %_ZN4llvm15SmallVectorImplIN4mlir3scf10ParallelOpEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir3scf10ParallelOpEE12assignRemoteEOS4_.exit.i: ; preds = %bb.p
  store ptr %i.ha, ptr %i.gt, align 8, !tbaa !26
  store i32 %i.gy, ptr %i.gv, align 8, !tbaa !27
  %i.hd = getelementptr inbounds nuw i8, ptr %.016.i.i.i48, i64 12 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !28
  store i32 %i.he, ptr %i.gw, align 4, !tbaa !28
  store ptr %i.hb, ptr %.016.i.i.i48, align 8, !tbaa !26
  store i32 0, ptr %i.hd, align 4, !tbaa !28
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50.sink.split

bb.q:                                             ; preds = %bb.p
  %i.hf = icmp ugt i32 %i.gy, 6
  br i1 %i.hf, label %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.q
  %i.hg = zext i32 %i.gy to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.gt, ptr noundef nonnull %i.gu, i64 noundef %i.hg, i64 noundef 8) #19
  %.pre295 = load i32, ptr %i.gx, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i60 = icmp eq i32 %.pre295, 0
  br i1 %.not.i.i.i60, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.q, %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i
  %i.hh = phi i32 [ %.pre295, %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i ], [ %i.gy, %bb.q ]
  %i.hi = zext i32 %i.hh to i64
  %i.hj = load ptr, ptr %.016.i.i.i48, align 8, !tbaa !26
  %i.hk = load ptr, ptr %i.gt, align 8, !tbaa !26
  %gepdiff.i = shl nuw nsw i64 %i.hi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr align 8 %i.hj, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPN4mlir3scf10ParallelOpES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.gy, ptr %i.gv, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50.sink.split

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir3scf10ParallelOpEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.gx, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50.sink.split, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE28reserveForParamAndGetAddressERS5_m.exit.i47
  %i.hl = load i32, ptr %i.m, align 8, !tbaa !27
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.m, align 8, !tbaa !27
  %i.hn = load ptr, ptr %45, align 8, !tbaa !26   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.r
  br i1 %i.ho, label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50
  call void @free(ptr noundef %i.hn) #19
  br label %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit51

_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit51: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir3scf10ParallelOpELj6EEELb0EE9push_backEOS5_.exit50, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread

_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit: ; preds = %.lr.ph
  %i.hp = call noundef zeroext i1 @_ZN4mlir18isMemoryEffectFreeEPNS_9OperationE(ptr noundef nonnull %i.fl) #19
  br i1 %i.hp, label %bb.s, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fl, i64 44
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = and i32 %i.hr, 8388607
  %i.ht = icmp eq i32 %i.hs, 0
  %47 = and i8 %.031219, 1
  %48 = select i1 %i.ht, i8 %47, i8 0
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread

_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit, %bb.s, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit51, %bb.k, %bb.l
  %.3 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir3scf10ParallelOpELj6EED2Ev.exit51 ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE9push_backES3_.exit ], [ %48, %bb.s ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0144.0220, i64 8
  %.sroa.0144.0 = load ptr, ptr %i.hu, align 8, !tbaa !24 ; 2 uses
  %.not183 = icmp eq ptr %.sroa.0144.0, %i.fg
  br i1 %.not183, label %._crit_edge, label %.lr.ph

.lr.ph245:                                        ; preds = %._crit_edge, %._crit_edge241
  %.030243 = phi ptr [ %i.ia, %._crit_edge241 ], [ %i.fh, %._crit_edge ] ; 3 uses
  %i.hv = load ptr, ptr %.030243, align 8, !tbaa !26 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.030243, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !27 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %.lr.ph240.preheader, label %._crit_edge241

.lr.ph240.preheader:                              ; preds = %.lr.ph245
  %i.hz = add nsw i32 %i.hx, -1
  %wide.trip.count = zext nneg i32 %i.hz to i64
  br label %.lr.ph240

._crit_edge241:                                   ; preds = %_ZL11fuseIfLegalN4mlir3scf10ParallelOpERS1_NS_9OpBuilderEN4llvm12function_refIFbNS_5ValueES6_EEE.exit, %.lr.ph245
  %i.ia = getelementptr inbounds nuw i8, ptr %.030243, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.fk
  br i1 %.not, label %.loopexit193, label %.lr.ph245

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %_ZL11fuseIfLegalN4mlir3scf10ParallelOpERS1_NS_9OpBuilderEN4llvm12function_refIFbNS_5ValueES6_EEE.exit
  %indvars.iv289 = phi i64 [ 0, %.lr.ph240.preheader ], [ %indvars.iv.next290, %_ZL11fuseIfLegalN4mlir3scf10ParallelOpERS1_NS_9OpBuilderEN4llvm12function_refIFbNS_5ValueES6_EEE.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph240.preheader ], [ %indvars.iv.next, %_ZL11fuseIfLegalN4mlir3scf10ParallelOpERS1_NS_9OpBuilderEN4llvm12function_refIFbNS_5ValueES6_EEE.exit ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv289
  %.sroa.01.0.copyload = load ptr, ptr %i.ib, align 8 ; 5 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %i.c, ptr %42, align 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  store <2 x ptr> %i.k, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.01.0.copyload, ptr %38, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 44
  %i.ie = load i32, ptr %i.id, align 4            ; 3 uses
  %i.if = and i32 %i.ie, 8388607
  %i.ig = icmp ne i32 %i.if, 0
  call void @llvm.assume(i1 %i.ig)
  %i.ih = lshr i32 %i.ie, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ih, 1
  %i.ii = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.copyload, i64 %i.ii
  %i.ik = lshr i32 %i.ie, 21
  %i.il = and i32 %i.ik, 2040
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !51
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.in, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !24 ; 2 uses
  %i.iu = load ptr, ptr %i.ic, align 8, !tbaa !54 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 44
  %i.iw = load i32, ptr %i.iv, align 4            ; 3 uses
  %i.ix = and i32 %i.iw, 8388607
  %i.iy = icmp ne i32 %i.ix, 0
  call void @llvm.assume(i1 %i.iy)
  %i.iz = lshr i32 %i.iw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i33.i = and i32 %i.iz, 1
  %i.ja = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i33.i to i64
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.ja
  %i.jc = lshr i32 %i.iw, 21
  %i.jd = and i32 %i.jc, 2040
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !51
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %39, i8 0, i64 72, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 48 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !57 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 56 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !58 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !57 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !58 ; 2 uses
  %i.ju = icmp ne ptr %i.jp, %i.jn
  %i.jv = icmp ne ptr %i.jt, %i.jr
  %.not3.i18.i.i = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %.not3.i18.i.i, label %.lr.ph.i.i56, label %_ZN4mlir9IRMapping3mapIN4llvm15MutableArrayRefINS_13BlockArgumentEEES5_TnPNSt9enable_ifIXaaaantsr3stdE15is_assignable_vINS_5ValueET_Entsr3stdE15is_assignable_vIPNS_5BlockES8_Entsr3stdE15is_assignable_vIPNS_9OperationES8_EEvE4typeELPv0EEEvOS8_OT0_.exit.i

.lr.ph.i.i56:                                     ; preds = %.lr.ph240, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit
  %i.jw = phi i32 [ %i.no, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ 0, %.lr.ph240 ] ; 2 uses
  %i.jx = phi ptr [ %i.np, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ null, %.lr.ph240 ] ; 4 uses
  %i.jy = phi ptr [ %i.nq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ null, %.lr.ph240 ] ; 4 uses
  %.sroa.010.020.i.i = phi ptr [ %i.nt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ %i.jr, %.lr.ph240 ] ; 2 uses
  %.sroa.7.019.i.i = phi ptr [ %i.ns, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ], [ %i.jn, %.lr.ph240 ] ; 2 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %.sroa.7.019.i.i, align 8, !tbaa !60 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.010.020.i.i, align 8, !tbaa !60
  %i.jz = load i32, ptr %i.w, align 4, !tbaa !64, !noalias !397 ; 4 uses
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i56
  %i.kb = add i32 %i.jz, -1                       ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.kd = xor i64 %i.kc, -49064778989728563       ; 2 uses
  %i.ke = lshr i64 %i.kd, 30
  %i.kf = xor i64 %i.ke, %i.kd
  %i.kg = mul i64 %i.kf, -4658895280553007687     ; 2 uses
  %i.kh = lshr i64 %i.kg, 27
  %i.ki = xor i64 %i.kh, %i.kg
  %i.kj = mul i64 %i.ki, -7723592293110705685     ; 2 uses
  %i.kk = lshr i64 %i.kj, 31
  %i.kl = xor i64 %i.kk, %i.kj
  %i.km = trunc i64 %i.kl to i32
  %i.kn = and i32 %i.kb, %i.km                    ; 3 uses
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.ko ; 2 uses
  %i.kq = lshr i64 %i.ko, 5
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !65
  %i.kt = and i32 %i.kn, 31
  %i.ku = lshr i32 %i.ks, %i.kt
  %i.kv = trunc i32 %i.ku to i1
  br i1 %i.kv, label %.lr.ph.i.i100, label %.loopexit.i, !prof !66

.lr.ph.i.i100:                                    ; preds = %bb.t, %bb.u
  %i.kw = phi ptr [ %i.lb, %bb.u ], [ %i.kp, %bb.t ] ; 2 uses
  %.01926.i.i101 = phi i32 [ %i.kz, %bb.u ], [ %i.kn, %bb.t ]
  %.sroa.0.0.copyload.i.i102 = load ptr, ptr %i.kw, align 8, !tbaa !60
  %i.kx = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i102
  br i1 %i.kx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit, label %bb.u, !prof !36

bb.u:                                             ; preds = %.lr.ph.i.i100
  %i.ky = add nuw i32 %.01926.i.i101, 1
  %i.kz = and i32 %i.ky, %i.kb                    ; 3 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.la ; 2 uses
  %i.lc = lshr i64 %i.la, 5
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !65
  %i.lf = and i32 %i.kz, 31
  %i.lg = lshr i32 %i.le, %i.lf
  %i.lh = trunc i32 %i.lg to i1
  br i1 %i.lh, label %.lr.ph.i.i100, label %.loopexit.i, !prof !67, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.u, %bb.t, %.lr.ph.i.i56
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.kp, %bb.t ], [ null, %.lr.ph.i.i56 ], [ %i.lb, %bb.u ]
  %i.li = shl i32 %i.jw, 2
  %i.lj = add i32 %i.li, 4
  %i.lk = mul i32 %i.jz, 3
  %.not.i.i97 = icmp ult i32 %i.lj, %i.lk
  br i1 %.not.i.i97, label %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i_crit_edge, label %bb.v, !prof !36

.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i_crit_edge: ; preds = %.loopexit.i
  %.pre302 = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i

bb.v:                                             ; preds = %.loopexit.i
  %i.ll = shl i32 %i.jz, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(72) %39, i32 noundef %i.ll)
  %i.lm = load ptr, ptr %39, align 8, !tbaa !68, !noalias !398 ; 5 uses
  %i.ln = load ptr, ptr %i.v, align 8, !tbaa !69, !noalias !398 ; 5 uses
  %i.lo = load i32, ptr %i.w, align 4, !tbaa !64, !noalias !398 ; 2 uses
  %i.lp = icmp ne i32 %i.lo, 0
  call void @llvm.assume(i1 %i.lp)
  %i.lq = add i32 %i.lo, -1                       ; 2 uses
  %i.lr = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64 ; 4 uses
  %i.ls = xor i64 %i.lr, -49064778989728563       ; 2 uses
  %i.lt = lshr i64 %i.ls, 30
  %i.lu = xor i64 %i.lt, %i.ls
  %i.lv = mul i64 %i.lu, -4658895280553007687     ; 2 uses
  %i.lw = lshr i64 %i.lv, 27
  %i.lx = xor i64 %i.lw, %i.lv
  %i.ly = mul i64 %i.lx, -7723592293110705685     ; 2 uses
  %i.lz = lshr i64 %i.ly, 31
  %i.ma = xor i64 %i.lz, %i.ly
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = and i32 %i.lq, %i.mb                    ; 3 uses
  %i.md = zext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.md ; 2 uses
  %i.mf = lshr i64 %i.md, 5
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !65
  %i.mi = and i32 %i.mc, 31
  %i.mj = lshr i32 %i.mh, %i.mi
  %i.mk = trunc i32 %i.mj to i1
  br i1 %i.mk, label %.lr.ph.i121, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, !prof !66

.lr.ph.i121:                                      ; preds = %bb.v, %bb.w
  %i.ml = phi ptr [ %i.mq, %bb.w ], [ %i.me, %bb.v ] ; 2 uses
  %.01926.i = phi i32 [ %i.mo, %bb.w ], [ %i.mc, %bb.v ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ml, align 8, !tbaa !60
  %i.mm = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i
  br i1 %i.mm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.w, !prof !36

bb.w:                                             ; preds = %.lr.ph.i121
  %i.mn = add nuw i32 %.01926.i, 1
  %i.mo = and i32 %i.mn, %i.lq                    ; 3 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.mp ; 2 uses
end_hunk_0
