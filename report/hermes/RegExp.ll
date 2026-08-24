Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm29regExpPrototypeSymbolMatchAllEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre200, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.t = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.s, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.l, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 5 uses
  %i.u = icmp ne i64 %.pre-phi, 0
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 60, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !26
  store ptr @.str.6, ptr %4, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !28
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ap

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !7
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ad
  %i.ae = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %.not109 = icmp eq ptr %i.ae, inttoptr (i64 -1 to ptr)
  br i1 %.not109, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = or i64 %i.af, -844424930131968          ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !32
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ao, %bb.e ]
  %i.ap = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 331, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.aq = extractvalue { i32, i64 } %i.ap, 0
  %i.ar = extractvalue { i32, i64 } %i.ap, 1      ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %bb.ap, label %bb.f, !prof !16

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ay = icmp ult ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !32
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ba = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.at, i64 %i.ar) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i32 = phi ptr [ %i.av, %bb.g ], [ %i.ba, %bb.h ]
  %i.bb = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i32) #12 ; 2 uses
  %.not110 = icmp eq ptr %i.bb, inttoptr (i64 -1 to ptr)
  br i1 %.not110, label %bb.ap, label %bb.i, !prof !16

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = or i64 %i.bc, -844424930131968          ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.k, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !32
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34

bb.k:                                             ; preds = %bb.i
  %i.bl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.be, i64 %i.bd) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i33 = phi ptr [ %i.bg, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bm = call fastcc ptr @_ZN6hermes2vmL25regExpConstructorFastCopyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, ptr %.0.i.i.i.i.i.i33) ; 3 uses
  %.not111 = icmp eq ptr %i.bm, inttoptr (i64 -1 to ptr)
  br i1 %.not111, label %bb.ap, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34
  %i.bn = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 342, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.bo = extractvalue { i32, i64 } %i.bn, 0
  %i.bp = extractvalue { i32, i64 } %i.bn, 1      ; 2 uses
  %i.bq = icmp eq i32 %i.bo, 0
  br i1 %i.bq, label %bb.ap, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 192 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41
  %i.bw = icmp ult ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !32
  store i64 %i.bp, ptr %i.bt, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37

bb.o:                                             ; preds = %bb.m
  %i.by = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.br, i64 %i.bp) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i.i36 = phi ptr [ %i.bt, %bb.n ], [ %i.by, %bb.o ]
  %i.bz = call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i36) #12 ; 2 uses
  %i.ca = extractvalue { i32, i64 } %i.bz, 0
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ap, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37
  %i.cc = extractvalue { i32, i64 } %i.bz, 1      ; 3 uses
  %i.cd = bitcast i64 %i.cc to double
  %i.ce = fptosi double %i.cd to i32
  %i.cf = shl i32 %i.ce, 3                        ; 2 uses
  %i.cg = ashr exact i32 %i.cf, 3
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = bitcast double %i.ch to i64
  %i.cj = icmp eq i64 %i.cc, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.r, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.ck = or disjoint i32 %i.cf, 4
  br label %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit

bb.r:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.cn, %i.cp
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cr = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, i32 noundef 16) #12
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.t:                                             ; preds = %bb.r
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !52
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cs = phi ptr [ %i.cr, %bb.s ], [ %i.cm, %bb.t ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cc, ptr %i.ct, align 8, !tbaa !58
  store i32 402653200, ptr %i.cs, align 8, !tbaa !27
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = or i32 %i.cx, 3
  br label %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit

_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit: ; preds = %bb.q, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %i.ck, %bb.q ], [ %i.cy, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ]
  %i.cz = call noundef i32 @_ZN6hermes2vm7Runtime20putNamedThrowOnErrorENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.bm, i32 noundef 0, i32 %.sroa.0.0.i.i) #12
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ap, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit
  %i.db = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i33) #12 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 9 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64              ; 4 uses
  %i.de = extractvalue { ptr, i64 } %i.db, 1      ; 7 uses
  %.sroa.7.8.extract.trunc = trunc i64 %i.de to i32 ; 4 uses
  %i.df = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  br i1 %i.df, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dg = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.dh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr               ; 5 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp ugt i32 %i.dj, 150994943
  br i1 %i.dk, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.y:                                             ; preds = %bb.w
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.dj, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ab [
    i32 134217728, label %bb.z
    i32 67108864, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.aa:                                            ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.ab:                                            ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.dp, align 8, !tbaa !17
  %i.dq = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us

bb.ac:                                            ; preds = %bb.u
  %.not.i1.i = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.dv = inttoptr i64 %i.du to ptr               ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 150994943
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.af:                                            ; preds = %bb.ad
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.dw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.ai [
    i32 117440512, label %bb.ag
    i32 50331648, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.ah:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

bb.ai:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.ec, align 8, !tbaa !17
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.us: ; preds = %bb.v, %bb.x, %bb.z, %bb.aa, %bb.ab
  %.0.i.sink.i.i = phi ptr [ %i.dc, %bb.v ], [ %i.dm, %bb.x ], [ %i.dn, %bb.z ], [ %i.do, %bb.aa ], [ %i.dt, %bb.ab ] ; 4 uses
  %.0.i.sink.i.i345 = ptrtoaddr ptr %.0.i.sink.i.i to i64 ; 4 uses
  %i.eh = and i64 %i.de, 1073741823               ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.eh ; 13 uses
  %.sroa.7.12.extract.shift222 = lshr i64 %i.de, 32 ; 5 uses
  %i.ej = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i48 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i48, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.7.12.extract.shift222 ; 2 uses
  %i.em = icmp uge ptr %i.ei, %i.el
  %.not.i.us.us265 = icmp eq ptr %.0.i.sink.i.i, null
  %brmerge187266 = select i1 %.not.i.us.us265, i1 true, i1 %i.em
  br i1 %brmerge187266, label %.split113.us, label %iter.check413

iter.check413:                                    ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us
  %i.en = add i64 %.sroa.7.12.extract.shift222, %i.dd
  %i.eo = xor i64 %.0.i.sink.i.i345, -1
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = freeze i64 %i.ep
  %i.er = xor i64 %.0.i.sink.i.i345, -1
  %i.es = sub i64 %i.er, %i.eh
  %umin390 = call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.es)
  %i.et = add i64 %umin390, 1                     ; 7 uses
  %min.iters.check391 = icmp ult i64 %i.et, 4
  br i1 %min.iters.check391, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %iter.check413
  %min.iters.check393 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check393, label %vec.epilog.ph417, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %i.eu = and i64 %i.et, 28
  %n.vec395 = and i64 %i.et, -32                  ; 4 uses
  %i.ev = getelementptr i8, ptr %i.ei, i64 %n.vec395
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next405, %vector.body396 ] ; 2 uses
  %vec.phi398.a = phi <16 x i1> [ zeroinitializer, %vector.ph394 ], [ %i.ez, %vector.body396 ]
  %vec.phi399.a = phi <16 x i1> [ zeroinitializer, %vector.ph394 ], [ %i.fa, %vector.body396 ]
  %vec.phi400.a = phi <16 x i1> [ zeroinitializer, %vector.ph394 ], [ %i.fd, %vector.body396 ]
  %vec.phi401 = phi <16 x i1> [ zeroinitializer, %vector.ph394 ], [ %i.fe, %vector.body396 ]
  %next.gep402 = getelementptr i8, ptr %i.ei, i64 %index397 ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep402, i64 16
  %wide.load403.a = load <16 x i8>, ptr %next.gep402, align 1, !tbaa !27 ; 2 uses
  %wide.load404 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !27 ; 2 uses
  %i.ex = icmp eq <16 x i8> %wide.load403.a, splat (i8 103)
  %i.ey = icmp eq <16 x i8> %wide.load404, splat (i8 103)
  %i.ez = or <16 x i1> %vec.phi398.a, %i.ex       ; 2 uses
  %i.fa = or <16 x i1> %vec.phi399.a, %i.ey       ; 2 uses
  %i.fb = icmp eq <16 x i8> %wide.load403.a, splat (i8 117)
  %i.fc = icmp eq <16 x i8> %wide.load404, splat (i8 117)
  %i.fd = or <16 x i1> %vec.phi400.a, %i.fb       ; 2 uses
  %i.fe = or <16 x i1> %vec.phi401, %i.fc         ; 2 uses
  %index.next405 = add nuw i64 %index397, 32      ; 2 uses
  %i.ff = icmp eq i64 %index.next405, %n.vec395
  br i1 %i.ff, label %middle.block406, label %vector.body396, !llvm.loop !69

middle.block406:                                  ; preds = %vector.body396
  %bin.rdx407.a = or <16 x i1> %i.fa, %i.ez
  %bin.rdx407.fr.a = freeze <16 x i1> %bin.rdx407.a
  %i.fg = bitcast <16 x i1> %bin.rdx407.fr.a to i16
  %i.fh = icmp ne i16 %i.fg, 0                    ; 3 uses
  %bin.rdx408 = or <16 x i1> %i.fe, %i.fd
  %bin.rdx408.fr = freeze <16 x i1> %bin.rdx408
  %i.fi = bitcast <16 x i1> %bin.rdx408.fr to i16
  %i.fj = icmp ne i16 %i.fi, 0                    ; 3 uses
  %cmp.n409 = icmp eq i64 %i.et, %n.vec395
  br i1 %cmp.n409, label %.split113.us, label %vec.epilog.iter.check415

vec.epilog.iter.check415:                         ; preds = %middle.block406
  %min.epilog.iters.check416 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check416, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, label %vec.epilog.ph417, !prof !73

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check415
  %vec.epilog.resume.val410 = phi i64 [ %n.vec395, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check392 ]
  %bc.merge.rdx411.a = phi i1 [ %i.fh, %vec.epilog.iter.check415 ], [ false, %vector.main.loop.iter.check392 ]
  %bc.merge.rdx412 = phi i1 [ %i.fj, %vec.epilog.iter.check415 ], [ false, %vector.main.loop.iter.check392 ]
  %n.vec418 = and i64 %i.et, -4                   ; 3 uses
  %i.fk = getelementptr i8, ptr %i.ei, i64 %n.vec418
  %broadcast.splatinsert419 = insertelement <4 x i1> poison, i1 %bc.merge.rdx411.a, i64 0
  %broadcast.splat420 = shufflevector <4 x i1> %broadcast.splatinsert419, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert421 = insertelement <4 x i1> poison, i1 %bc.merge.rdx412, i64 0
  %broadcast.splat422 = shufflevector <4 x i1> %broadcast.splatinsert421, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph417
  %index424 = phi i64 [ %vec.epilog.resume.val410, %vec.epilog.ph417 ], [ %index.next429, %vec.epilog.vector.body423 ] ; 2 uses
  %vec.phi425.a = phi <4 x i1> [ %broadcast.splat420, %vec.epilog.ph417 ], [ %i.fm, %vec.epilog.vector.body423 ]
  %vec.phi426 = phi <4 x i1> [ %broadcast.splat422, %vec.epilog.ph417 ], [ %i.fo, %vec.epilog.vector.body423 ]
  %next.gep427 = getelementptr i8, ptr %i.ei, i64 %index424
  %wide.load428 = load <4 x i8>, ptr %next.gep427, align 1, !tbaa !27
  %wide.load428.fr = freeze <4 x i8> %wide.load428 ; 2 uses
  %i.fl = icmp eq <4 x i8> %wide.load428.fr, splat (i8 103)
  %i.fm = or <4 x i1> %vec.phi425.a, %i.fl        ; 2 uses
  %i.fn = icmp eq <4 x i8> %wide.load428.fr, splat (i8 117)
  %i.fo = or <4 x i1> %vec.phi426, %i.fn          ; 2 uses
  %index.next429 = add nuw i64 %index424, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next429, %n.vec418
  br i1 %i.fp, label %vec.epilog.middle.block430, label %vec.epilog.vector.body423, !llvm.loop !74

vec.epilog.middle.block430:                       ; preds = %vec.epilog.vector.body423
  %i.fq = bitcast <4 x i1> %i.fm to i4
  %i.fr = icmp ne i4 %i.fq, 0                     ; 2 uses
  %i.fs = bitcast <4 x i1> %i.fo to i4
  %i.ft = icmp ne i4 %i.fs, 0                     ; 2 uses
  %cmp.n431 = icmp eq i64 %i.et, %n.vec418
  br i1 %cmp.n431, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader: ; preds = %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block430
  %.0.us.us269.ph = phi i1 [ false, %iter.check413 ], [ %i.fh, %vec.epilog.iter.check415 ], [ %i.fr, %vec.epilog.middle.block430 ]
  %.030.us.us268.ph = phi i1 [ false, %iter.check413 ], [ %i.fj, %vec.epilog.iter.check415 ], [ %i.ft, %vec.epilog.middle.block430 ]
  %.sroa.062.0.us.us267.ph = phi ptr [ %i.ei, %iter.check413 ], [ %i.ev, %vec.epilog.iter.check415 ], [ %i.fk, %vec.epilog.middle.block430 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us
  %.0.us.us269 = phi i1 [ %spec.select.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.0.us.us269.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.030.us.us268 = phi i1 [ %.131.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.030.us.us268.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ]
  %.sroa.062.0.us.us267 = phi ptr [ %i.fx, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.sroa.062.0.us.us267.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us.preheader ] ; 2 uses
  %i.fu = load i8, ptr %.sroa.062.0.us.us267, align 1, !tbaa !27 ; 2 uses
  %i.fv = icmp eq i8 %i.fu, 103
  %spec.select.us.us = select i1 %i.fv, i1 true, i1 %.0.us.us269 ; 2 uses
  %i.fw = icmp eq i8 %i.fu, 117
  %.131.us.us = select i1 %i.fw, i1 true, i1 %.030.us.us268 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us267, i64 1 ; 2 uses
  %.not444 = icmp ult ptr %i.fx, %i.el
  br i1 %.not444, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us, label %.split113.us, !llvm.loop !75

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us
  %.sroa.0.0.copyload.i.i.i.i.i49.us = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i.i.i49.us, 281474976710655
  %i.fz = inttoptr i64 %i.fy to ptr               ; 4 uses
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.gb = icmp ugt i32 %i.ga, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i50.us = and i32 %i.ga, 251658240
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  br i1 %i.gb, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !prof !16

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !62 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.eh
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.7.12.extract.shift222 ; 2 uses
  %i.gi = icmp uge ptr %i.ei, %i.gh
  %.not.i.us.us165258 = icmp eq ptr %.0.i.sink.i.i, null
  %brmerge189259 = select i1 %.not.i.us.us165258, i1 true, i1 %i.gi
  br i1 %brmerge189259, label %.split113.us, label %iter.check368

iter.check368:                                    ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us
  %i.gj = ptrtoaddr ptr %i.gf to i64
  %i.gk = add i64 %.sroa.7.12.extract.shift222, %i.gj
  %i.gl = xor i64 %.0.i.sink.i.i345, -1
  %i.gm = add i64 %i.gk, %i.gl
  %i.gn = freeze i64 %i.gm
  %i.go = xor i64 %.0.i.sink.i.i345, -1
  %i.gp = sub i64 %i.go, %i.eh
  %umin = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gp)
  %i.gq = add i64 %umin, 1                        ; 7 uses
  %min.iters.check346 = icmp ult i64 %i.gq, 4
  br i1 %min.iters.check346, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vector.main.loop.iter.check347

vector.main.loop.iter.check347:                   ; preds = %iter.check368
  %min.iters.check348 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check348, label %vec.epilog.ph372, label %vector.ph349

vector.ph349:                                     ; preds = %vector.main.loop.iter.check347
  %i.gr = and i64 %i.gq, 28
  %n.vec350 = and i64 %i.gq, -32                  ; 4 uses
  %i.gs = getelementptr i8, ptr %i.ei, i64 %n.vec350
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %vec.phi353.a = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.gw, %vector.body351 ]
  %vec.phi354.a = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.gx, %vector.body351 ]
  %vec.phi355.a = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.ha, %vector.body351 ]
  %vec.phi356 = phi <16 x i1> [ zeroinitializer, %vector.ph349 ], [ %i.hb, %vector.body351 ]
  %next.gep357 = getelementptr i8, ptr %i.ei, i64 %index352 ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep357, i64 16
  %wide.load358.a = load <16 x i8>, ptr %next.gep357, align 1, !tbaa !27 ; 2 uses
  %wide.load359 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !27 ; 2 uses
  %i.gu = icmp eq <16 x i8> %wide.load358.a, splat (i8 103)
  %i.gv = icmp eq <16 x i8> %wide.load359, splat (i8 103)
  %i.gw = or <16 x i1> %vec.phi353.a, %i.gu       ; 2 uses
  %i.gx = or <16 x i1> %vec.phi354.a, %i.gv       ; 2 uses
  %i.gy = icmp eq <16 x i8> %wide.load358.a, splat (i8 117)
  %i.gz = icmp eq <16 x i8> %wide.load359, splat (i8 117)
  %i.ha = or <16 x i1> %vec.phi355.a, %i.gy       ; 2 uses
  %i.hb = or <16 x i1> %vec.phi356, %i.gz         ; 2 uses
  %index.next360 = add nuw i64 %index352, 32      ; 2 uses
  %i.hc = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.hc, label %middle.block361, label %vector.body351, !llvm.loop !76

middle.block361:                                  ; preds = %vector.body351
  %bin.rdx362.a = or <16 x i1> %i.gx, %i.gw
  %bin.rdx362.fr.a = freeze <16 x i1> %bin.rdx362.a
  %i.hd = bitcast <16 x i1> %bin.rdx362.fr.a to i16
  %i.he = icmp ne i16 %i.hd, 0                    ; 3 uses
  %bin.rdx363 = or <16 x i1> %i.hb, %i.ha
  %bin.rdx363.fr = freeze <16 x i1> %bin.rdx363
  %i.hf = bitcast <16 x i1> %bin.rdx363.fr to i16
  %i.hg = icmp ne i16 %i.hf, 0                    ; 3 uses
  %cmp.n364 = icmp eq i64 %i.gq, %n.vec350
  br i1 %cmp.n364, label %.split113.us, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %middle.block361
  %min.epilog.iters.check371 = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check371, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, label %vec.epilog.ph372, !prof !73

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check347, %vec.epilog.iter.check370
  %vec.epilog.resume.val365 = phi i64 [ %n.vec350, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check347 ]
  %bc.merge.rdx366.a = phi i1 [ %i.he, %vec.epilog.iter.check370 ], [ false, %vector.main.loop.iter.check347 ]
  %bc.merge.rdx367 = phi i1 [ %i.hg, %vec.epilog.iter.check370 ], [ false, %vector.main.loop.iter.check347 ]
  %n.vec373 = and i64 %i.gq, -4                   ; 3 uses
  %i.hh = getelementptr i8, ptr %i.ei, i64 %n.vec373
  %broadcast.splatinsert374 = insertelement <4 x i1> poison, i1 %bc.merge.rdx366.a, i64 0
  %broadcast.splat375 = shufflevector <4 x i1> %broadcast.splatinsert374, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert376 = insertelement <4 x i1> poison, i1 %bc.merge.rdx367, i64 0
  %broadcast.splat377 = shufflevector <4 x i1> %broadcast.splatinsert376, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body378

vec.epilog.vector.body378:                        ; preds = %vec.epilog.vector.body378, %vec.epilog.ph372
  %index379 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph372 ], [ %index.next384, %vec.epilog.vector.body378 ] ; 2 uses
  %vec.phi380.a = phi <4 x i1> [ %broadcast.splat375, %vec.epilog.ph372 ], [ %i.hj, %vec.epilog.vector.body378 ]
  %vec.phi381 = phi <4 x i1> [ %broadcast.splat377, %vec.epilog.ph372 ], [ %i.hl, %vec.epilog.vector.body378 ]
  %next.gep382 = getelementptr i8, ptr %i.ei, i64 %index379
  %wide.load383 = load <4 x i8>, ptr %next.gep382, align 1, !tbaa !27
  %wide.load383.fr = freeze <4 x i8> %wide.load383 ; 2 uses
  %i.hi = icmp eq <4 x i8> %wide.load383.fr, splat (i8 103)
  %i.hj = or <4 x i1> %vec.phi380.a, %i.hi        ; 2 uses
  %i.hk = icmp eq <4 x i8> %wide.load383.fr, splat (i8 117)
  %i.hl = or <4 x i1> %vec.phi381, %i.hk          ; 2 uses
  %index.next384 = add nuw i64 %index379, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next384, %n.vec373
  br i1 %i.hm, label %vec.epilog.middle.block385, label %vec.epilog.vector.body378, !llvm.loop !77

vec.epilog.middle.block385:                       ; preds = %vec.epilog.vector.body378
  %i.hn = bitcast <4 x i1> %i.hj to i4
  %i.ho = icmp ne i4 %i.hn, 0                     ; 2 uses
  %i.hp = bitcast <4 x i1> %i.hl to i4
  %i.hq = icmp ne i4 %i.hp, 0                     ; 2 uses
  %cmp.n386 = icmp eq i64 %i.gq, %n.vec373
  br i1 %cmp.n386, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader: ; preds = %iter.check368, %vec.epilog.iter.check370, %vec.epilog.middle.block385
  %.0.us.us162262.ph = phi i1 [ false, %iter.check368 ], [ %i.he, %vec.epilog.iter.check370 ], [ %i.ho, %vec.epilog.middle.block385 ]
  %.030.us.us161261.ph = phi i1 [ false, %iter.check368 ], [ %i.hg, %vec.epilog.iter.check370 ], [ %i.hq, %vec.epilog.middle.block385 ]
  %.sroa.062.0.us.us160260.ph = phi ptr [ %i.ei, %iter.check368 ], [ %i.gs, %vec.epilog.iter.check370 ], [ %i.hh, %vec.epilog.middle.block385 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172
  %.0.us.us162262 = phi i1 [ %spec.select.us.us167, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.0.us.us162262.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.030.us.us161261 = phi i1 [ %.131.us.us168, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.030.us.us161261.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ]
  %.sroa.062.0.us.us160260 = phi ptr [ %i.hu, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ %.sroa.062.0.us.us160260.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172.preheader ] ; 2 uses
  %i.hr = load i8, ptr %.sroa.062.0.us.us160260, align 1, !tbaa !27 ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 103
  %spec.select.us.us167 = select i1 %i.hs, i1 true, i1 %.0.us.us162262 ; 2 uses
  %i.ht = icmp eq i8 %i.hr, 117
  %.131.us.us168 = select i1 %i.ht, i1 true, i1 %.030.us.us161261 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us.us160260, i64 1 ; 2 uses
  %.not441 = icmp ult ptr %i.hu, %i.gh
  br i1 %.not441, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172, label %.split113.us, !llvm.loop !78

_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us
  %.sroa.062.0.us = phi ptr [ %i.if, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ %i.ei, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 4 uses
  %.030.us = phi i1 [ %.131.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  %.0.us = phi i1 [ %spec.select.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split ] ; 2 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i50.us, label %bb.ak [
    i32 134217728, label %bb.aj
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  ]

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i53.us = load i64, ptr %i.gc, align 8, !tbaa !17
  %i.hv = and i64 %.sroa.0.0.copyload.i.i.i2.i.i53.us, 281474976710655
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, %bb.ak, %bb.aj
  %.0.i.sink.i.i52.us = phi ptr [ %i.hy, %bb.ak ], [ %i.gd, %bb.aj ], [ %i.gc, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i52.us, i64 %i.eh
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.7.12.extract.shift222
  %i.ib = icmp uge ptr %.sroa.062.0.us, %i.ia
  %.not.i.us = icmp eq ptr %.sroa.062.0.us, null
  %brmerge191 = select i1 %.not.i.us, i1 true, i1 %i.ib
  br i1 %brmerge191, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us
  %i.ic = load i8, ptr %.sroa.062.0.us, align 1, !tbaa !27 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 103
  %spec.select.us = select i1 %i.id, i1 true, i1 %.0.us
  %i.ie = icmp eq i8 %i.ic, 117
  %.131.us = select i1 %i.ie, i1 true, i1 %.030.us
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.062.0.us, i64 1
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split, !llvm.loop !79

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us: ; preds = %bb.ac
  %i.ig = and i64 %i.de, 1073741823               ; 2 uses
  %.idx = shl nuw nsw i64 %i.ig, 1                ; 6 uses
  %.sroa.7.12.extract.shift = lshr i64 %i.de, 31  ; 2 uses
  %.idx237 = shl nuw nsw i64 %i.ig, 1
  %i.ih = add nuw nsw i64 %.idx237, %.sroa.7.12.extract.shift ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ih
  %.not239 = icmp samesign ult i64 %.idx, %i.ih
  br i1 %.not239, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !80 ; 2 uses
  %i.il = icmp eq i16 %i.ik, 103                  ; 6 uses
  %i.im = icmp eq i16 %i.ik, 117                  ; 6 uses
  %.sroa.8.0.us115251 = getelementptr inbounds nuw i8, ptr %i.ij, i64 2 ; 5 uses
  %i.in = add nuw nsw i64 %.idx, 2
  %.not218252 = icmp samesign ult i64 %i.in, %i.ih
  br i1 %.not218252, label %iter.check321, label %.split113.us

iter.check321:                                    ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel
  %5 = add i64 %.sroa.7.12.extract.shift, %i.dd
  %6 = add i64 %5, %.idx
  %7 = add i64 %.idx, %i.dd
  %8 = add i64 %7, 4
  %umax296 = call i64 @llvm.umax.i64(i64 %6, i64 %8)
  %9 = add i64 %umax296, -3
  %i.io = add i64 %.idx, %i.dd
  %10 = sub i64 %9, %i.io                         ; 3 uses
  %i.ip = lshr i64 %10, 1
  %i.iq = add nuw i64 %i.ip, 1                    ; 5 uses
  %min.iters.check297 = icmp ult i64 %10, 6
  br i1 %min.iters.check297, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %iter.check321
  %min.iters.check299 = icmp ult i64 %10, 30
  br i1 %min.iters.check299, label %vec.epilog.ph325, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.ir = and i64 %i.iq, 12
  %n.vec301 = and i64 %i.iq, -16                  ; 4 uses
  %i.is = shl i64 %n.vec301, 1
  %i.it = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.is
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next311, %vector.body302 ] ; 2 uses
  %vec.phi304.a = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.iy, %vector.body302 ]
  %vec.phi305.a = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.iz, %vector.body302 ]
  %vec.phi306.a = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.jc, %vector.body302 ]
  %vec.phi307 = phi <8 x i1> [ zeroinitializer, %vector.ph300 ], [ %i.jd, %vector.body302 ]
  %i.iu = shl i64 %index303, 1
  %next.gep308 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309.a = load <8 x i16>, ptr %next.gep308, align 2, !tbaa !80 ; 2 uses
  %wide.load310 = load <8 x i16>, ptr %i.iv, align 2, !tbaa !80 ; 2 uses
  %i.iw = icmp eq <8 x i16> %wide.load309.a, splat (i16 103)
  %i.ix = icmp eq <8 x i16> %wide.load310, splat (i16 103)
  %i.iy = or <8 x i1> %vec.phi304.a, %i.iw        ; 2 uses
  %i.iz = or <8 x i1> %vec.phi305.a, %i.ix        ; 2 uses
  %i.ja = icmp eq <8 x i16> %wide.load309.a, splat (i16 117)
  %i.jb = icmp eq <8 x i16> %wide.load310, splat (i16 117)
  %i.jc = or <8 x i1> %vec.phi306.a, %i.ja        ; 2 uses
  %i.jd = or <8 x i1> %vec.phi307, %i.jb          ; 2 uses
  %index.next311 = add nuw i64 %index303, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next311, %n.vec301
  br i1 %i.je, label %middle.block312, label %vector.body302, !llvm.loop !82

middle.block312:                                  ; preds = %vector.body302
  %bin.rdx313 = or <8 x i1> %i.iz, %i.iy
  %bin.rdx313.fr = freeze <8 x i1> %bin.rdx313
  %i.jf = bitcast <8 x i1> %bin.rdx313.fr to i8
  %i.jg = icmp ne i8 %i.jf, 0
  %rdx.select314 = select i1 %i.jg, i1 true, i1 %i.il ; 3 uses
  %bin.rdx315 = or <8 x i1> %i.jd, %i.jc
  %bin.rdx315.fr = freeze <8 x i1> %bin.rdx315
  %i.jh = bitcast <8 x i1> %bin.rdx315.fr to i8
  %i.ji = icmp ne i8 %i.jh, 0
  %rdx.select316 = select i1 %i.ji, i1 true, i1 %i.im ; 3 uses
  %cmp.n317 = icmp eq i64 %i.iq, %n.vec301
  br i1 %cmp.n317, label %.split113.us, label %vec.epilog.iter.check323

vec.epilog.iter.check323:                         ; preds = %middle.block312
  %min.epilog.iters.check324 = icmp eq i64 %i.ir, 0
  br i1 %min.epilog.iters.check324, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, label %vec.epilog.ph325, !prof !84

vec.epilog.ph325:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check323
  %vec.epilog.resume.val318 = phi i64 [ %n.vec301, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check298 ]
  %bc.merge.rdx319.a = phi i1 [ %rdx.select314, %vec.epilog.iter.check323 ], [ %i.il, %vector.main.loop.iter.check298 ]
  %bc.merge.rdx320 = phi i1 [ %rdx.select316, %vec.epilog.iter.check323 ], [ %i.im, %vector.main.loop.iter.check298 ]
  %i.jj = xor i1 %bc.merge.rdx319.a, %i.il
  %i.jk = xor i1 %bc.merge.rdx320, %i.im
  %n.vec326 = and i64 %i.iq, -4                   ; 3 uses
  %i.jl = shl i64 %n.vec326, 1
  %i.jm = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.jl
  %broadcast.splatinsert327 = insertelement <4 x i1> poison, i1 %i.jj, i64 0
  %broadcast.splat328 = shufflevector <4 x i1> %broadcast.splatinsert327, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <4 x i1> poison, i1 %i.jk, i64 0
  %broadcast.splat330 = shufflevector <4 x i1> %broadcast.splatinsert329, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body331

vec.epilog.vector.body331:                        ; preds = %vec.epilog.vector.body331, %vec.epilog.ph325
  %index332 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph325 ], [ %index.next337, %vec.epilog.vector.body331 ] ; 2 uses
  %vec.phi333.a = phi <4 x i1> [ %broadcast.splat328, %vec.epilog.ph325 ], [ %.fr437.a, %vec.epilog.vector.body331 ]
  %vec.phi334 = phi <4 x i1> [ %broadcast.splat330, %vec.epilog.ph325 ], [ %.fr438, %vec.epilog.vector.body331 ]
  %i.jn = shl i64 %index332, 1
  %next.gep335 = getelementptr i8, ptr %.sroa.8.0.us115251, i64 %i.jn
  %wide.load336 = load <4 x i16>, ptr %next.gep335, align 2, !tbaa !80 ; 2 uses
  %i.jo = icmp eq <4 x i16> %wide.load336, splat (i16 103)
  %i.jp = or <4 x i1> %vec.phi333.a, %i.jo
  %.fr437.a = freeze <4 x i1> %i.jp               ; 2 uses
  %i.jq = icmp eq <4 x i16> %wide.load336, splat (i16 117)
  %i.jr = or <4 x i1> %vec.phi334, %i.jq
  %.fr438 = freeze <4 x i1> %i.jr                 ; 2 uses
  %index.next337 = add nuw i64 %index332, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next337, %n.vec326
  br i1 %i.js, label %vec.epilog.middle.block338, label %vec.epilog.vector.body331, !llvm.loop !85

vec.epilog.middle.block338:                       ; preds = %vec.epilog.vector.body331
  %i.jt = bitcast <4 x i1> %.fr437.a to i4
  %i.ju = icmp ne i4 %i.jt, 0
  %rdx.select339.a = select i1 %i.ju, i1 true, i1 %i.il ; 2 uses
  %i.jv = bitcast <4 x i1> %.fr438 to i4
  %i.jw = icmp ne i4 %i.jv, 0
  %rdx.select340 = select i1 %i.jw, i1 true, i1 %i.im ; 2 uses
  %cmp.n341 = icmp eq i64 %i.iq, %n.vec326
  br i1 %cmp.n341, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader: ; preds = %iter.check321, %vec.epilog.iter.check323, %vec.epilog.middle.block338
  %.sroa.8.0.us115255.ph = phi ptr [ %.sroa.8.0.us115251, %iter.check321 ], [ %i.it, %vec.epilog.iter.check323 ], [ %i.jm, %vec.epilog.middle.block338 ]
  %.0.us118254.ph = phi i1 [ %i.il, %iter.check321 ], [ %rdx.select314, %vec.epilog.iter.check323 ], [ %rdx.select339.a, %vec.epilog.middle.block338 ]
  %.030.us117253.ph = phi i1 [ %i.im, %iter.check321 ], [ %rdx.select316, %vec.epilog.iter.check323 ], [ %rdx.select340, %vec.epilog.middle.block338 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126
  %.sroa.8.0.us115255 = phi ptr [ %.sroa.8.0.us115, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.sroa.8.0.us115255.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ] ; 2 uses
  %.0.us118254 = phi i1 [ %spec.select100.us124, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.0.us118254.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %.030.us117253 = phi i1 [ %.131104.us125, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.030.us117253.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.preheader ]
  %i.jx = load i16, ptr %.sroa.8.0.us115255, align 2, !tbaa !80 ; 2 uses
  %i.jy = icmp eq i16 %i.jx, 103
  %spec.select100.us124 = select i1 %i.jy, i1 true, i1 %.0.us118254 ; 2 uses
  %i.jz = icmp eq i16 %i.jx, 117
  %.131104.us125 = select i1 %i.jz, i1 true, i1 %.030.us117253 ; 2 uses
  %.sroa.8.0.us115 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us115255, i64 2 ; 2 uses
  %.not218 = icmp ult ptr %.sroa.8.0.us115, %i.ii
  br i1 %.not218, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126, label %.split113.us, !llvm.loop !86

_ZNK6hermes2vm10StringView5beginEv.exit.split.split: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.0.i.sink.i4.i.ph = phi ptr [ %i.eg, %bb.ai ], [ %i.eb, %bb.ah ], [ %i.ea, %bb.ag ], [ %i.dz, %bb.ae ] ; 2 uses
  %.0.i.sink.i4.i.ph272 = ptrtoaddr ptr %.0.i.sink.i4.i.ph to i64 ; 2 uses
  %i.ka = and i64 %i.de, 1073741823               ; 5 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph, i64 %i.ka ; 6 uses
  %.sroa.7.12.extract.shift227 = lshr i64 %i.de, 32 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i39 = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.kc = and i64 %.sroa.0.0.copyload.i.i.i.i2.i39, 281474976710655
  %i.kd = inttoptr i64 %i.kc to ptr               ; 4 uses
  %i.ke = load i32, ptr %i.kd, align 4            ; 2 uses
  %i.kf = icmp ugt i32 %i.ke, 150994943
  %.mask.i.i.i.i.i.i.i.i.i3.i40 = and i32 %i.ke, 251658240 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 12 ; 2 uses
  br i1 %i.kf, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us, label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader, !prof !16

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i40, label %bb.am [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
    i32 50331648, label %bb.al
  ]

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.sroa.0.0.copyload.i.i.i2.i5.i47.peel = load i64, ptr %i.kg, align 8, !tbaa !17
  %i.ki = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i47.peel, 281474976710655
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel: ; preds = %bb.am, %bb.al, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader
  %.0.i.sink.i4.i42.peel = phi ptr [ %i.kl, %bb.am ], [ %i.kg, %bb.al ], [ %i.kh, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.preheader ]
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i42.peel, i64 %i.ka
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %.sroa.7.12.extract.shift227
  %.not235 = icmp ult ptr %i.kb, %i.kn
  br i1 %.not235, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel: ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel
  %i.ko = load i16, ptr %i.kb, align 2, !tbaa !80 ; 2 uses
  %i.kp = icmp eq i16 %i.ko, 103
  %i.kq = icmp eq i16 %i.ko, 117
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !65 ; 2 uses
  %i.kt = ptrtoaddr ptr %i.ks to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.ka
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %.sroa.7.12.extract.shift227 ; 3 uses
  %.not236 = icmp ult ptr %i.kb, %i.kv
  br i1 %.not236, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel, label %.split113.us

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us
  %i.kw = load i16, ptr %i.kb, align 2, !tbaa !80 ; 2 uses
  %i.kx = icmp eq i16 %i.kw, 103                  ; 6 uses
  %i.ky = icmp eq i16 %i.kw, 117                  ; 6 uses
  %.sroa.8.0.us135245 = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 6 uses
  %.not216246 = icmp ult ptr %.sroa.8.0.us135245, %i.kv
  br i1 %.not216246, label %iter.check, label %.split113.us

iter.check:                                       ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel
  %i.kz = shl nuw nsw i64 %.sroa.7.12.extract.shift227, 1
  %11 = add nuw i64 %i.kz, %i.kt
  %12 = shl nuw nsw i64 %i.ka, 1                  ; 3 uses
  %13 = add nuw i64 %11, %12
  %14 = add i64 %12, %.0.i.sink.i4.i.ph272
  %15 = add i64 %14, 4
  %umax = call i64 @llvm.umax.i64(i64 %13, i64 %15)
  %i.la = add i64 %umax, -3
  %i.lb = add i64 %12, %.0.i.sink.i4.i.ph272
  %i.lc = sub i64 %i.la, %i.lb                    ; 3 uses
  %i.ld = lshr i64 %i.lc, 1
  %i.le = add nuw i64 %i.ld, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.lc, 6
  br i1 %min.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.lc, 30
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lf = and i64 %i.le, 12
  %n.vec = and i64 %i.le, -16                     ; 4 uses
  %i.lg = shl i64 %n.vec, 1
  %i.lh = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.lg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.lm, %vector.body ]
  %vec.phi274 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ln, %vector.body ]
  %vec.phi275 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.lq, %vector.body ]
  %vec.phi276 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.lr, %vector.body ]
  %i.li = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.li ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !80 ; 2 uses
  %wide.load277 = load <8 x i16>, ptr %i.lj, align 2, !tbaa !80 ; 2 uses
  %i.lk = icmp eq <8 x i16> %wide.load, splat (i16 103)
  %i.ll = icmp eq <8 x i16> %wide.load277, splat (i16 103)
  %i.lm = or <8 x i1> %vec.phi, %i.lk             ; 2 uses
  %i.ln = or <8 x i1> %vec.phi274, %i.ll          ; 2 uses
  %i.lo = icmp eq <8 x i16> %wide.load, splat (i16 117)
  %i.lp = icmp eq <8 x i16> %wide.load277, splat (i16 117)
  %i.lq = or <8 x i1> %vec.phi275, %i.lo          ; 2 uses
  %i.lr = or <8 x i1> %vec.phi276, %i.lp          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ln, %i.lm
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.lt = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.lu = icmp ne i8 %i.lt, 0
  %rdx.select = select i1 %i.lu, i1 true, i1 %i.kx ; 3 uses
  %bin.rdx278 = or <8 x i1> %i.lr, %i.lq
  %bin.rdx278.fr = freeze <8 x i1> %bin.rdx278
  %i.lv = bitcast <8 x i1> %bin.rdx278.fr to i8
  %i.lw = icmp ne i8 %i.lv, 0
  %rdx.select279 = select i1 %i.lw, i1 true, i1 %i.ky ; 3 uses
  %cmp.n = icmp eq i64 %i.le, %n.vec
  br i1 %cmp.n, label %.split113.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %i.kx, %vector.main.loop.iter.check ]
  %bc.merge.rdx280 = phi i1 [ %rdx.select279, %vec.epilog.iter.check ], [ %i.ky, %vector.main.loop.iter.check ]
  %i.lx = xor i1 %bc.merge.rdx, %i.kx
  %i.ly = xor i1 %bc.merge.rdx280, %i.ky
  %n.vec281 = and i64 %i.le, -4                   ; 3 uses
  %i.lz = shl i64 %n.vec281, 1
  %i.ma = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.lz
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.lx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <4 x i1> poison, i1 %i.ly, i64 0
  %broadcast.splat283 = shufflevector <4 x i1> %broadcast.splatinsert282, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index284 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next289, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi285 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr435.a, %vec.epilog.vector.body ]
  %vec.phi286 = phi <4 x i1> [ %broadcast.splat283, %vec.epilog.ph ], [ %.fr436, %vec.epilog.vector.body ]
  %i.mb = shl i64 %index284, 1
  %next.gep287 = getelementptr i8, ptr %.sroa.8.0.us135245, i64 %i.mb
  %wide.load288 = load <4 x i16>, ptr %next.gep287, align 2, !tbaa !80 ; 2 uses
  %i.mc = icmp eq <4 x i16> %wide.load288, splat (i16 103)
  %i.md = or <4 x i1> %vec.phi285, %i.mc
  %.fr435.a = freeze <4 x i1> %i.md               ; 2 uses
  %i.me = icmp eq <4 x i16> %wide.load288, splat (i16 117)
  %i.mf = or <4 x i1> %vec.phi286, %i.me
  %.fr436 = freeze <4 x i1> %i.mf                 ; 2 uses
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next289, %n.vec281
  br i1 %i.mg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.mh = bitcast <4 x i1> %.fr435.a to i4
  %i.mi = icmp ne i4 %i.mh, 0
  %rdx.select290 = select i1 %i.mi, i1 true, i1 %i.kx ; 2 uses
  %i.mj = bitcast <4 x i1> %.fr436 to i4
  %i.mk = icmp ne i4 %i.mj, 0
  %rdx.select291 = select i1 %i.mk, i1 true, i1 %i.ky ; 2 uses
  %cmp.n292 = icmp eq i64 %i.le, %n.vec281
  br i1 %cmp.n292, label %.split113.us, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.8.0.us135249.ph = phi ptr [ %.sroa.8.0.us135245, %iter.check ], [ %i.lh, %vec.epilog.iter.check ], [ %i.ma, %vec.epilog.middle.block ]
  %.0.us138248.ph = phi i1 [ %i.kx, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select290, %vec.epilog.middle.block ]
  %.030.us137247.ph = phi i1 [ %i.ky, %iter.check ], [ %rdx.select279, %vec.epilog.iter.check ], [ %rdx.select291, %vec.epilog.middle.block ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148

_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148
  %.sroa.8.0.us135249 = phi ptr [ %.sroa.8.0.us135, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.sroa.8.0.us135249.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ] ; 2 uses
  %.0.us138248 = phi i1 [ %spec.select100.us146, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.0.us138248.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ]
  %.030.us137247 = phi i1 [ %.131104.us147, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.030.us137247.ph, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.preheader ]
  %i.ml = load i16, ptr %.sroa.8.0.us135249, align 2, !tbaa !80 ; 2 uses
  %i.mm = icmp eq i16 %i.ml, 103
  %spec.select100.us146 = select i1 %i.mm, i1 true, i1 %.0.us138248 ; 2 uses
  %i.mn = icmp eq i16 %i.ml, 117
  %.131104.us147 = select i1 %i.mn, i1 true, i1 %.030.us137247 ; 2 uses
  %.sroa.8.0.us135 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us135249, i64 2 ; 2 uses
  %.not216 = icmp ult ptr %.sroa.8.0.us135, %i.kv
  br i1 %.not216, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148, label %.split113.us, !llvm.loop !89

_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit
  %.sroa.8.0.pn = phi ptr [ %.sroa.8.0, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.kb, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ]
  %.030 = phi i1 [ %.131104, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.kq, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ] ; 2 uses
  %.0 = phi i1 [ %spec.select100, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit ], [ %i.kp, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.peel ] ; 2 uses
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.pn, i64 2 ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i40, label %bb.ao [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41
    i32 50331648, label %bb.an
  ]

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split
  %.sroa.0.0.copyload.i.i.i2.i5.i47 = load i64, ptr %i.kg, align 8, !tbaa !17
  %i.mo = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i47, 281474976710655
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41: ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split, %bb.ao, %bb.an
  %.0.i.sink.i4.i42 = phi ptr [ %i.mr, %bb.ao ], [ %i.kg, %bb.an ], [ %i.kh, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split ]
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i42, i64 %i.ka
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %.sroa.7.12.extract.shift227
  %.not215 = icmp ult ptr %.sroa.8.0, %i.mt
  br i1 %.not215, label %_ZN6hermes2vm10StringView14const_iteratorppEi.exit, label %.split113.us

.split113.us:                                     ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel, %vec.epilog.middle.block, %middle.block, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel, %vec.epilog.middle.block338, %middle.block312, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us, %vec.epilog.middle.block385, %middle.block361, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us, %vec.epilog.middle.block430, %middle.block406, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us
  %.us-phi = phi i1 [ %.131104.us147, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %.131.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.030.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us ], [ %.131104.us125, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %.131.us.us168, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us ], [ false, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us ], [ %i.ft, %vec.epilog.middle.block430 ], [ %i.fj, %middle.block406 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us ], [ %i.hq, %vec.epilog.middle.block385 ], [ %i.hg, %middle.block361 ], [ %i.im, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel ], [ %rdx.select340, %vec.epilog.middle.block338 ], [ %rdx.select316, %middle.block312 ], [ %i.ky, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel ], [ %rdx.select291, %vec.epilog.middle.block ], [ %rdx.select279, %middle.block ], [ %.030, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41 ]
  %.us-phi114 = phi i1 [ %spec.select100.us146, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148 ], [ %spec.select.us.us, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us ], [ %.0.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i51.us ], [ %spec.select100.us124, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126 ], [ %spec.select.us.us167, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us.us172 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.us ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split.us ], [ false, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41.peel ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.us ], [ %i.fr, %vec.epilog.middle.block430 ], [ %i.fh, %middle.block406 ], [ false, %_ZNK6hermes2vm10StringView5beginEv.exit.split.us.split.split.us ], [ %i.ho, %vec.epilog.middle.block385 ], [ %i.he, %middle.block361 ], [ %i.il, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us126.peel ], [ %rdx.select339.a, %vec.epilog.middle.block338 ], [ %rdx.select314, %middle.block312 ], [ %i.kx, %_ZN6hermes2vm10StringView14const_iteratorppEi.exit.us148.peel ], [ %rdx.select290, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.0, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41 ]
  %i.mu = call ptr @_ZN6hermes2vm22JSRegExpStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_15StringPrimitiveEEEbb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.bm, ptr %.0.i.i.i.i.i.i, i1 noundef zeroext %.us-phi114, i1 noundef zeroext %.us-phi) #12
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = or i64 %i.mv, -281474976710656
  br label %bb.ap

_ZN6hermes2vm10StringView14const_iteratorppEi.exit: ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i41
  %i.mx = load i16, ptr %.sroa.8.0, align 2, !tbaa !80 ; 2 uses
  %i.my = icmp eq i16 %i.mx, 103
  %spec.select100 = select i1 %i.my, i1 true, i1 %.0
  %i.mz = icmp eq i16 %i.mx, 117
  %.131104 = select i1 %i.mz, i1 true, i1 %.030
  br label %_ZNK6hermes2vm10StringView5beginEv.exit.split.split.split, !llvm.loop !90

bb.ap:                                            ; preds = %bb.b, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.l, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37, %.split113.us, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.099.6 = phi i32 [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.b ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34 ], [ 0, %bb.l ], [ 1, %.split113.us ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37 ], [ 0, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit ]
  %.sroa.10.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.b ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit34 ], [ undef, %bb.l ], [ %i.mw, %.split113.us ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit37 ], [ undef, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.099.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18regExpSourceGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !18, !noalias !91
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !17 ; 5 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = add i32 %i.e, -436207616
  %i.g = icmp ult i32 %i.f, 855638016
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %i.h = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = and i64 %i.h, 281474976710655
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k
  br i1 %i.l, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22: ; preds = %bb.a
  %i.m = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_:bb.a
  br label %_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit37

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.x, ptr noundef nonnull align 4 dereferenceable(9) %i.b, i64 9, i1 false), !tbaa.struct !422
  br label %_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit37

_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit37: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.029 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.r, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !47
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.029, %i.z
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !45
  %.idx42 = mul nuw nsw i64 %.029, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx42
  %i.ac = load ptr, ptr %0, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %.029
  %.idx4143 = sub nsw i64 %i.z, %.029
  %gepdiff = mul nsw i64 %.idx4143, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 4 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit: ; preds = %_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit37, %bb.p
  store i32 %i.n, ptr %i.p, align 8, !tbaa !47
  store i32 0, ptr %i.m, align 8, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %_ZSt4moveIPN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEES5_ET0_T_S7_S6_.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit, %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_11HiddenClassEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !423
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %2, ptr %i.a, align 8, !tbaa !17
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !62
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.f, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.h, ptr %i.g, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !424
  %i.j = load ptr, ptr %0, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.248") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !425
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !426
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #14
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !65
  store i64 %2, ptr %i.a, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !80
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !426
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !80
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef i32 @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeES3_NS2_INS0_15StringPrimitiveEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime20putNamedThrowOnErrorENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSRegExpEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"_ZTSN6hermes2vm10NativeArgsE", !9, i64 0, !4, i64 8, !10, i64 16}
!9 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!8, !10, i64 16}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN6hermes2vm11HermesValueE", !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!15, !15, i64 0}
!18 = !{!9, !10, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!21 = distinct !{!21, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!22 = !{!23, !24, i64 24}
!23 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !24, i64 8, !5, i64 16, !24, i64 24, !15, i64 32, !15, i64 40}
!24 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!25 = !{!23, !15, i64 32}
!26 = !{!23, !15, i64 40}
!27 = !{!5, !5, i64 0}
!28 = !{!23, !24, i64 8}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !31, i64 8}
!31 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!32 = !{!33, !10, i64 192}
!33 = !{!"_ZTSN6hermes2vm7GCScopeE", !34, i64 0, !31, i64 8, !5, i64 16, !35, i64 144, !10, i64 192, !10, i64 200, !4, i64 208}
!34 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!35 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !36, i64 0, !40, i64 16}
!36 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !37, i64 0}
!37 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !39, i64 0}
!39 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!40 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!41 = !{!33, !10, i64 200}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!34, !34, i64 0}
!44 = !{!33, !31, i64 8}
!45 = !{!39, !11, i64 0}
!46 = !{!39, !4, i64 12}
!47 = !{!39, !4, i64 8}
!48 = !{!33, !4, i64 208}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!51 = distinct !{!51, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!52 = !{!53, !55, i64 16}
!53 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !54, i64 0, !55, i64 16, !55, i64 24}
!54 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !55, i64 0, !56, i64 8}
!55 = !{!"p1 omnipotent char", !11, i64 0}
!56 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!57 = !{!53, !55, i64 24}
!58 = !{!59, !61, i64 8}
!59 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !60, i64 0, !61, i64 8}
!60 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!61 = !{!"double", !5, i64 0}
!62 = !{!63, !55, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !15, i64 8, !5, i64 16}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!65 = !{!66, !68, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !67, i64 0, !15, i64 8, !5, i64 16}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !68, i64 0}
!68 = !{!"p1 char16_t", !11, i64 0}
!69 = distinct !{!69, !70, !71, !72}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!"branch_weights", i32 4, i32 28}
!74 = distinct !{!74, !70, !71, !72}
!75 = distinct !{!75, !70, !72, !71}
!76 = distinct !{!76, !70, !71, !72}
!77 = distinct !{!77, !70, !71, !72}
!78 = distinct !{!78, !70, !72, !71}
!79 = distinct !{!79, !70}
!80 = !{!81, !81, i64 0}
!81 = !{!"char16_t", !5, i64 0}
!82 = distinct !{!82, !70, !83, !71, !72}
!83 = !{!"llvm.loop.peeled.count", i32 1}
!84 = !{!"branch_weights", i32 4, i32 12}
!85 = distinct !{!85, !70, !83, !71, !72}
!86 = distinct !{!86, !70, !83, !72, !71}
!87 = distinct !{!87, !70, !83, !71, !72}
!88 = distinct !{!88, !70, !83, !71, !72}
!89 = distinct !{!89, !70, !83, !72, !71}
!90 = distinct !{!90, !70, !83}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!93 = distinct !{!93, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!96 = distinct !{!96, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!97 = !{!98, !100, i64 8}
!98 = !{!"_ZTSN6hermes8OptValueINS_2vm16RegExpMatchRangeEEE", !99, i64 0, !100, i64 8}
!99 = !{!"_ZTSN6hermes2vm16RegExpMatchRangeE", !4, i64 0, !4, i64 4}
!100 = !{!"bool", !5, i64 0}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!99, !4, i64 0}
!104 = !{!99, !4, i64 4}
!105 = !{!106, !4, i64 4}
!106 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !107, i64 0, !4, i64 4}
!107 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !60, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!110 = distinct !{!110, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!111 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!115 = !{!10, !10, i64 0}
!116 = !{!"branch_weights", i32 1, i32 127}
!117 = !{!"branch_weights", i32 127, i32 255873}
!118 = distinct !{!118, !70}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!121 = distinct !{!121, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!124 = distinct !{!124, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!125 = !{!126, !10, i64 0}
!126 = !{!"_ZTSN6hermes2vm10HandleBaseE", !10, i64 0}
!127 = !{!54, !55, i64 0}
!128 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!129 = distinct !{!129, !70}
!130 = !{!131, !10, i64 9448}
!131 = !{!"_ZTSN6hermes2vm7RuntimeE", !30, i64 0, !132, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112, !133, i64 120, !133, i64 128, !133, i64 136, !133, i64 144, !133, i64 152, !133, i64 160, !133, i64 168, !133, i64 176, !133, i64 184, !133, i64 192, !133, i64 200, !133, i64 208, !133, i64 216, !133, i64 224, !133, i64 232, !133, i64 240, !133, i64 248, !133, i64 256, !133, i64 264, !133, i64 272, !133, i64 280, !133, i64 288, !133, i64 296, !133, i64 304, !133, i64 312, !133, i64 320, !133, i64 328, !133, i64 336, !133, i64 344, !133, i64 352, !133, i64 360, !133, i64 368, !133, i64 376, !133, i64 384, !133, i64 392, !133, i64 400, !133, i64 408, !133, i64 416, !133, i64 424, !133, i64 432, !133, i64 440, !133, i64 448, !133, i64 456, !133, i64 464, !133, i64 472, !133, i64 480, !133, i64 488, !133, i64 496, !133, i64 504, !133, i64 512, !133, i64 520, !133, i64 528, !133, i64 536, !133, i64 544, !133, i64 552, !133, i64 560, !133, i64 568, !133, i64 576, !133, i64 584, !133, i64 592, !133, i64 600, !133, i64 608, !133, i64 616, !133, i64 624, !133, i64 632, !133, i64 640, !133, i64 648, !133, i64 656, !133, i64 664, !133, i64 672, !133, i64 680, !133, i64 688, !133, i64 696, !133, i64 704, !133, i64 712, !133, i64 720, !133, i64 728, !133, i64 736, !134, i64 744, !134, i64 752, !135, i64 760, !100, i64 824, !100, i64 824, !100, i64 824, !100, i64 824, !100, i64 824, !140, i64 825, !141, i64 832, !148, i64 840, !153, i64 856, !266, i64 8968, !271, i64 8992, !276, i64 9016, !276, i64 9040, !100, i64 9064, !100, i64 9065, !100, i64 9066, !100, i64 9067, !100, i64 9068, !100, i64 9069, !100, i64 9070, !5, i64 9071, !100, i64 9072, !100, i64 9073, !4, i64 9076, !170, i64 9080, !5, i64 9088, !61, i64 9224, !4, i64 9232, !281, i64 9240, !296, i64 9328, !301, i64 9360, !308, i64 9368, !308, i64 9376, !309, i64 9384, !310, i64 9392, !315, i64 9408, !316, i64 9416, !10, i64 9432, !10, i64 9440, !10, i64 9448, !159, i64 9456, !318, i64 9472, !319, i64 9480, !320, i64 9496, !5, i64 9560, !321, i64 9568, !325, i64 9592, !330, i64 9616, !100, i64 9640, !335, i64 9648, !4, i64 9728, !4, i64 9732, !342, i64 9736, !349, i64 9744, !351, i64 9752, !356, i64 9776, !357, i64 9808}
!132 = !{!"_ZTSN6hermes2vm6GCBase11GCCallbacksE"}
!133 = !{!"_ZTSN6hermes2vm17PinnedHermesValueE", !14, i64 0}
!134 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !11, i64 0}
!135 = !{!"_ZTSN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !136, i64 0, !139, i64 16}
!136 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEE", !137, i64 0}
!137 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EEE", !138, i64 0}
!138 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEvEE", !39, i64 0}
!139 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEE", !5, i64 0}
!140 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!141 = !{!"_ZTSSt10unique_ptrIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_ELb1ELb1EE", !143, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EE", !144, i64 0}
!144 = !{!"_ZTSSt5tupleIJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !145, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm16SamplingProfilerESt14default_deleteIS2_EEE", !146, i64 0}
!146 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !147, i64 0}
!147 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !11, i64 0}
!148 = !{!"_ZTSSt10shared_ptrIN6hermes2vm16TimeLimitMonitorEE", !149, i64 0}
!149 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm16TimeLimitMonitorELN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0, !151, i64 8}
!150 = !{!"p1 _ZTSN6hermes2vm16TimeLimitMonitorE", !11, i64 0}
!151 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !152, i64 0}
!152 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!153 = !{!"_ZTSN6hermes2vm9GCStorageE", !154, i64 0}
!154 = !{!"_ZTSN6hermes2vm7HadesGCE", !155, i64 0, !15, i64 720, !15, i64 728, !195, i64 736, !200, i64 760, !202, i64 776, !203, i64 808, !206, i64 816, !61, i64 840, !212, i64 848, !184, i64 7520, !232, i64 7560, !234, i64 7568, !240, i64 7632, !100, i64 7633, !241, i64 7640, !248, i64 7648, !100, i64 7656, !100, i64 7657, !100, i64 7658, !100, i64 7659, !61, i64 7664, !178, i64 7672, !255, i64 7688, !255, i64 7696, !173, i64 7704, !173, i64 7864, !178, i64 8024, !15, i64 8040, !262, i64 8048, !15, i64 8096, !265, i64 8104}
!155 = !{!"_ZTSN6hermes2vm6GCBaseE", !4, i64 8, !15, i64 16, !156, i64 24, !157, i64 32, !158, i64 40, !159, i64 48, !162, i64 64, !163, i64 72, !165, i64 104, !100, i64 128, !100, i64 129, !100, i64 130, !100, i64 131, !170, i64 136, !172, i64 144, !15, i64 152, !15, i64 160, !173, i64 168, !63, i64 328, !176, i64 360, !180, i64 408, !183, i64 456, !5, i64 656, !194, i64 680, !4, i64 712, !100, i64 716}
!156 = !{!"_ZTSN6hermes2vm11GCExecTraceE"}
!157 = !{!"p1 _ZTSN6hermes2vm6GCBase11GCCallbacksE", !11, i64 0}
!158 = !{!"p1 _ZTSN6hermes2vm11PointerBaseE", !11, i64 0}
!159 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !160, i64 0}
!160 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !161, i64 0, !151, i64 8}
!161 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !11, i64 0}
!162 = !{!"_ZTSN6hermes2vm6GCBase8HeapKindE", !5, i64 0}
!163 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !164, i64 0, !11, i64 24}
!164 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!165 = !{!"_ZTSSt6vectorIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !166, i64 0}
!166 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE", !167, i64 0}
!167 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE12_Vector_implE", !168, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16GCAnalyticsEventESaIS2_EE17_Vector_impl_dataE", !169, i64 0, !169, i64 8, !169, i64 16}
!169 = !{!"p1 _ZTSN6hermes2vm16GCAnalyticsEventE", !11, i64 0}
!170 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !171, i64 0}
!171 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !15, i64 0}
!172 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !15, i64 0}
!173 = !{!"_ZTSN6hermes2vm6GCBase19CumulativeHeapStatsE", !4, i64 0, !174, i64 8, !174, i64 48, !4, i64 88, !175, i64 96, !175, i64 128}
!174 = !{!"_ZTSN6hermes16StatsAccumulatorIddEE", !4, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32}
!175 = !{!"_ZTSN6hermes16StatsAccumulatorIjmEE", !4, i64 0, !15, i64 8, !4, i64 16, !4, i64 20, !61, i64 24}
!176 = !{!"_ZTSN6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EEE", !177, i64 0, !15, i64 8, !178, i64 16, !179, i64 32, !61, i64 40}
end_hunk_1
