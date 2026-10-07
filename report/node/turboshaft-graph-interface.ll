Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8011
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface4LoopEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS2_7ControlE:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.av, %i.ay
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr %i.r, align 4
  %i.bb = load ptr, ptr %i.an, align 8
  %i.bc = load ptr, ptr %i.ap, align 8
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.t, align 4
  %i.bi = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.ap, align 8
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = add nsw i64 %i.bq, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 noundef %i.br)
  %.pre.i49 = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.bs = phi ptr [ %i.bi, %bb.f ], [ %.pre.i49, %bb.g ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.an, align 8
  store ptr %i.p, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.h, label %.preheader.i, !prof !37

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.p, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.bu, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = sub nsw i32 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = sub nsw i32 %i.cd, %i.cg
  %i.ci = icmp eq i32 %i.ce, %i.ch
  br i1 %i.ci, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.ck, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.07.lcssa.i, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.0.i.i, ptr %i.cm, align 8
  %i.cn = load i32, ptr %i.ca, align 4
  %i.co = add nsw i32 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.p, align 8
  store ptr %i.p, ptr %i.ct, align 8
  %.pre.i52 = load i32, ptr %i.cp, align 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i50, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.bu, %.preheader.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp sgt i32 %i.cw, %i.cy               ; 2 uses
  %spec.select.i.i = select i1 %i.cz, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cz, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.db = load i32, ptr %i.da, align 4            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.dd = load i32, ptr %i.dc, align 4
  %.not18.i.i = icmp eq i32 %i.dd, %i.db
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 8
  %.not6.i.i = icmp slt i32 %i.df, %i.db
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.dh = load i32, ptr %i.dg, align 4
  %.not.i.i = icmp eq i32 %i.dh, %i.db
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.k ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.k ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.dp, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.dl, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.do, %bb.j ], [ %i.dj, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !4

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i50 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i51 = icmp eq ptr %.0.i50, null
  br i1 %.not.i51, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.h
  %i.dq = phi i32 [ %.pre.i52, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 232 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dq)
  store i32 %.sroa.speculated, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 672
  store ptr %i.p, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.du, ptr noundef nonnull %i.p)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.e, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef ptr @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE21AnalyzeLoopAssignmentEPS6_PKhjPNS0_4ZoneEPb(ptr noundef nonnull %1, ptr noundef %i.dw, i32 noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull %i.a) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = load i32, ptr %i.dx, align 8            ; 2 uses
  %.not74 = icmp eq i32 %i.ed, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.m

._crit_edge:                                      ; preds = %bb.s, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8            ; 3 uses
  %.not = icmp eq i32 %i.ei, 0
  br i1 %.not, label %._crit_edge73, label %.lr.ph72

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %i.ej = phi i32 [ %i.ed, %.lr.ph ], [ %i.fl, %bb.s ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.ek = load ptr, ptr %i.ee, align 8
  %i.el = lshr i64 %indvars.iv, 6
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = and i64 %indvars.iv, 63
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.en, %i.ep
  %.not68 = icmp eq i64 %i.eq, 0
  br i1 %.not68, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = load ptr, ptr %i.b, align 8, !nonnull !39, !align !41 ; 2 uses
  %i.es = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv
  %.sroa.016.0.copyload = load i32, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.eg, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.ev, align 4 ; 3 uses
  %i.ew = and i32 %.sroa.0.0.copyload.i, 3
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ey = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.ez = add nsw i32 %i.ey, -5648                ; 2 uses
  %i.fa = call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 24) ; 2 uses
  %i.fb = icmp ult i32 %i.fa, 8
  br i1 %i.fb, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.fc = and i32 %.sroa.0.0.copyload.i, 268435427
  switch i32 %i.fc, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %bb.o
  %i.fd = shl nuw nsw i32 %i.fa, 3
  %switch.shiftamt = zext nneg i32 %i.fd to i64
  %switch.downshift = lshr i64 144115213896122624, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i: ; preds = %bb.q, %bb.q, %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, %bb.q
  %.sroa.0.0.i = phi i8 [ %switch.masked, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ 4, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 672
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit, label %bb.r, !prof !37

bb.r:                                             ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.fi = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16PendingLoopPhiOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fh, i32 %.sroa.016.0.copyload, i8 %.sroa.0.0.i)
  %.pre81 = load ptr, ptr %i.ef, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit, %bb.r
  %i.fj = phi ptr [ %.pre81, %bb.r ], [ %i.es, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit ]
  %.sroa.04.0.i.i = phi i32 [ %i.fi, %bb.r ], [ -1, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv
  store i32 %.sroa.04.0.i.i, ptr %i.fk, align 4
  %.pre82 = load i32, ptr %i.dx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit
  %i.fl = phi i32 [ %i.ej, %bb.m ], [ %.pre82, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next, %i.fm
  br i1 %i.fn, label %bb.m, label %._crit_edge, !llvm.loop !322

.lr.ph72:                                         ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = zext i32 %i.ei to i64
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.trip.count = zext i32 %i.ei to i64
  br label %bb.v

._crit_edge73:                                    ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60, %._crit_edge
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 859), align 1, !range !38, !noundef !39
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.t, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit, !prof !36

bb.t:                                             ; preds = %._crit_edge73
  %i.fw = load ptr, ptr %i.b, align 8, !nonnull !39, !align !41 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 672
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit, label %bb.u, !prof !37

bb.u:                                             ; preds = %bb.t
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16WasmStackCheckOpEJNS2_14JSStackCheckOp4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, i8 noundef zeroext 2) ; 0 uses
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit: ; preds = %._crit_edge73, %bb.t, %bb.u
  %i.gc = call noundef ptr @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16NewBlockWithPhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.eh)
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.gc, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.p, ptr %i.ge, align 8
  %i.gf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 962), align 2, !range !38, !noundef !39
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.aa, label %bb.ab, !prof !37

bb.v:                                             ; preds = %.lr.ph72, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60
  %indvars.iv77 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next78, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60 ] ; 3 uses
  %i.gh = load ptr, ptr %i.b, align 8, !nonnull !39, !align !41 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv77 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.gj, align 4
  %.sroa.0.0.copyload = load i32, ptr %i.gi, align 4 ; 3 uses
  %i.gk = and i32 %.sroa.0.0.copyload, 3
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gm = and i32 %.sroa.0.0.copyload, 268435440
  %i.gn = add nsw i32 %i.gm, -5648                ; 2 uses
  %i.go = call i32 @llvm.fshl.i32(i32 %i.gn, i32 %i.gn, i32 24) ; 2 uses
  %i.gp = icmp ult i32 %i.go, 8
  br i1 %i.gp, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i55, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.gq = and i32 %.sroa.0.0.copyload, 268435427
  switch i32 %i.gq, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58 [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i53
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i53
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i53
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i55: ; preds = %bb.w
  %i.gr = shl nuw nsw i32 %i.go, 3
  %switch.shiftamt97 = zext nneg i32 %i.gr to i64
  %switch.downshift98 = lshr i64 144115213896122624, %switch.shiftamt97
  %switch.masked99 = trunc i64 %switch.downshift98 to i8
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i53: ; preds = %bb.y, %bb.y, %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i55, %bb.y
  %.sroa.0.0.i54 = phi i8 [ %switch.masked99, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i55 ], [ 4, %bb.y ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 672
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60, label %bb.z, !prof !37

bb.z:                                             ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gw = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_16PendingLoopPhiOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i32 %.sroa.02.0.copyload, i8 %.sroa.0.0.i54)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14PendingLoopPhiENS2_7OpIndexENS2_22RegisterRepresentationE.exit60: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58, %bb.z
  %.sroa.04.0.i.i59 = phi i32 [ %i.gw, %bb.z ], [ -1, %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17RepresentationForENS1_13ValueTypeBaseE.exit58 ]
  %i.gx = load i32, ptr %i.eh, align 8
  %i.gy = icmp eq i32 %i.gx, 1
  %i.gz = load ptr, ptr %i.ft, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv77
  %i.hb = select i1 %i.gy, ptr %i.ft, ptr %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 %.sroa.04.0.i.i59, ptr %i.hc, align 4
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge73, label %bb.v, !llvm.loop !323

bb.aa:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface38EmitCoverageInstrumentationIfReachableEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, i32 noundef 3)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10StackCheckENS0_8compiler10turboshaft14JSStackCheckOp4KindEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE21AnalyzeLoopAssignmentEPS6_PKhjPNS0_4ZoneEPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp ult ptr %1, %i.b
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
end_hunk_0
